#!/usr/bin/env python3
"""
replay-trace: Replay PVS proof traces step-by-step to detect discrepancies.

Reads a .trf trace file and replays the proof commands using pvs-cli.sh,
comparing actual output against expected sequents to identify where proofs diverge.
"""
from __future__ import annotations

import argparse
import json
import os
import re
import subprocess
import sys
from dataclasses import dataclass, field, asdict
from datetime import datetime
from pathlib import Path
from typing import Optional, List, Dict, Tuple

# State file location
STATE_FILE = Path(".replay-trace.log")

# Exit codes
EXIT_SUCCESS = 0
EXIT_DISCREPANCY = 1
EXIT_TIMEOUT = 2
EXIT_TYPECHECK_FAIL = 3
EXIT_SERVER_ERROR = 4
EXIT_PARSE_ERROR = 5

VERBOSITY = 0
DEFAULT_COLUMN_WIDTH = 60
USE_COLORS = True


class Colors:
    RED = '\033[91m'
    GREEN = '\033[92m'
    YELLOW = '\033[93m'
    CYAN = '\033[96m'
    RESET = '\033[0m'
    BOLD = '\033[1m'
    DIM = '\033[2m'


def color(text: str, color_code: str) -> str:
    """Apply color to text if colors are enabled."""
    if USE_COLORS:
        return f"{color_code}{text}{Colors.RESET}"
    return text


def highlight_diff_in_line(text: str, other_text: str, color_code: str) -> str:
    """Highlight only the parts of text that differ from other_text.

    color_code: The color to use for differing parts
    """
    if not USE_COLORS:
        return text

    # If no other text to compare, highlight the whole line
    if not other_text:
        return color(text, color_code)

    # Normalize both for comparison
    text_norm = text.lower().strip()
    other_norm = other_text.lower().strip()

    if text_norm == other_norm:
        return text  # No difference

    # Find common prefix and suffix by words
    text_words = text.split()
    other_words = other_text.split()

    if not text_words:
        return text

    # Find first differing word
    common_prefix = 0
    for i in range(min(len(text_words), len(other_words))):
        if text_words[i].lower() == other_words[i].lower():
            common_prefix = i + 1
        else:
            break

    # Find last differing word (from end)
    common_suffix = 0
    for i in range(1, min(len(text_words), len(other_words)) - common_prefix + 1):
        if text_words[-i].lower() == other_words[-i].lower():
            common_suffix = i
        else:
            break

    if common_suffix == 0:
        suffix_start = len(text_words)
    else:
        suffix_start = len(text_words) - common_suffix

    # If entire line differs or can't find meaningful diff, highlight all
    if common_prefix >= suffix_start:
        return color(text, color_code)

    # Build the highlighted string - only color the differing middle part
    result_parts = []
    for i, word in enumerate(text_words):
        if i < common_prefix or i >= suffix_start:
            result_parts.append(word)
        else:
            result_parts.append(color(word, color_code))

    return ' '.join(result_parts)


def log(msg: str):
    """Print message if verbosity >= 1."""
    if VERBOSITY >= 1:
        print(f"[replay-trace] {msg}")


def error(msg: str):
    """Print error message."""
    print(f"ERROR: {msg}", file=sys.stderr)


def format_sequent_pvs(seq: Sequent, width: int = DEFAULT_COLUMN_WIDTH) -> List[str]:
    """Format a sequent in PVS style, returning list of lines."""
    lines = []
    lines.append(f"{seq.name} :")
    lines.append("")

    for ant in seq.antecedents:
        # Wrap long formulas
        wrapped = wrap_formula(ant, width - 2)
        lines.extend(wrapped)

    lines.append("  |-------")

    for cons in seq.consequents:
        wrapped = wrap_formula(cons, width - 2)
        lines.extend(wrapped)

    return lines


def wrap_formula(formula: str, width: int) -> List[str]:
    """Wrap a formula to fit within width, preserving indentation."""
    if len(formula) <= width:
        return [formula]

    lines = []
    remaining = formula
    first_line = True

    while remaining:
        if len(remaining) <= width:
            lines.append(remaining)
            break

        # Find a good break point (space, comma, operator)
        break_point = width
        for i in range(width, max(width // 2, 10), -1):
            if remaining[i] in ' ,)':
                break_point = i + 1
                break

        lines.append(remaining[:break_point])
        remaining = "    " + remaining[break_point:].lstrip()  # Indent continuation

    return lines


def side_by_side(left_lines: List[str], right_lines: List[str],
                 width: int = DEFAULT_COLUMN_WIDTH, separator: str = " | ") -> str:
    """Display two column lists side by side."""
    # Pad to same length
    max_len = max(len(left_lines), len(right_lines))
    left_lines = left_lines + [""] * (max_len - len(left_lines))
    right_lines = right_lines + [""] * (max_len - len(right_lines))

    result = []
    for left, right in zip(left_lines, right_lines):
        # Truncate or pad left column
        if len(left) > width:
            left = left[:width - 3] + "..."
        left = left.ljust(width)
        result.append(f"{left}{separator}{right}")

    return "\n".join(result)


def diff_sequents(expected: Sequent, actual: Sequent, width: int = DEFAULT_COLUMN_WIDTH) -> str:
    """Show differences between two sequents with diff-like markers and colors.

    Colors: RED = missing from current (in old only)
            GREEN = new in current (not in old)
    """
    lines = []
    old_header = color("OLD (trace)", Colors.RED) if USE_COLORS else "OLD (trace)"
    current_header = color("CURRENT (proof)", Colors.GREEN) if USE_COLORS else "CURRENT (proof)"
    lines.append(f"{old_header:<{width + (len(Colors.RED) + len(Colors.RESET) if USE_COLORS else 0)}} | {current_header}")
    lines.append("=" * (width * 2 + 3))

    # Normalize for comparison
    exp_norm = expected.normalize()
    act_norm = actual.normalize()

    # Build left (expected) and right (actual) columns
    # Each entry: (text, is_diff, corresponding_other_text)
    left_lines = []
    right_lines = []

    # Compare names
    name_diff = expected.name.lower() != actual.name.lower()
    if name_diff:
        left_lines.append((f"  {expected.name} :", True, actual.name))
        right_lines.append((f"  {actual.name} :", True, expected.name))
    else:
        left_lines.append((f"  {expected.name} :", False, ""))
        right_lines.append((f"  {actual.name} :", False, ""))

    left_lines.append(("", False, ""))
    right_lines.append(("", False, ""))

    # Build sets and mappings for comparison
    exp_ants_set = set(exp_norm.antecedents)
    act_ants_set = set(act_norm.antecedents)
    exp_cons_set = set(exp_norm.consequents)
    act_cons_set = set(act_norm.consequents)

    # Try to pair up similar formulas for better diff
    def find_similar(norm_formula: str, candidates: List[str], norm_candidates: List[str]) -> Optional[str]:
        """Find the most similar formula from candidates."""
        best_match = None
        best_score = 0
        for cand, norm_cand in zip(candidates, norm_candidates):
            # Simple similarity: count common words
            words1 = set(norm_formula.split())
            words2 = set(norm_cand.split())
            if words1 and words2:
                score = len(words1 & words2) / max(len(words1), len(words2))
                if score > best_score and score > 0.3:  # At least 30% similar
                    best_score = score
                    best_match = cand
        return best_match

    # Process antecedents
    for i, ant in enumerate(expected.antecedents):
        norm_ant = exp_norm.antecedents[i]
        is_diff = norm_ant not in act_ants_set
        marker = "- " if is_diff else "  "
        # Find similar formula in actual for better highlighting
        similar = find_similar(norm_ant, actual.antecedents, act_norm.antecedents) if is_diff else ""
        wrapped = wrap_formula(ant, width - 2)
        for j, line in enumerate(wrapped):
            left_lines.append(((marker if j == 0 else "  ") + line, is_diff, similar))

    for i, ant in enumerate(actual.antecedents):
        norm_ant = act_norm.antecedents[i]
        is_diff = norm_ant not in exp_ants_set
        marker = "+ " if is_diff else "  "
        similar = find_similar(norm_ant, expected.antecedents, exp_norm.antecedents) if is_diff else ""
        wrapped = wrap_formula(ant, width - 2)
        for j, line in enumerate(wrapped):
            right_lines.append(((marker if j == 0 else "  ") + line, is_diff, similar))

    # Pad antecedents to same length
    max_ant_len = max(len(left_lines), len(right_lines))
    while len(left_lines) < max_ant_len:
        left_lines.append(("", False, ""))
    while len(right_lines) < max_ant_len:
        right_lines.append(("", False, ""))

    # Turnstile
    left_lines.append(("  |-------", False, ""))
    right_lines.append(("  |-------", False, ""))

    # Process consequents
    for i, cons in enumerate(expected.consequents):
        norm_cons = exp_norm.consequents[i]
        is_diff = norm_cons not in act_cons_set
        marker = "- " if is_diff else "  "
        similar = find_similar(norm_cons, actual.consequents, act_norm.consequents) if is_diff else ""
        wrapped = wrap_formula(cons, width - 2)
        for j, line in enumerate(wrapped):
            left_lines.append(((marker if j == 0 else "  ") + line, is_diff, similar))

    for i, cons in enumerate(actual.consequents):
        norm_cons = act_norm.consequents[i]
        is_diff = norm_cons not in exp_cons_set
        marker = "+ " if is_diff else "  "
        similar = find_similar(norm_cons, expected.consequents, exp_norm.consequents) if is_diff else ""
        wrapped = wrap_formula(cons, width - 2)
        for j, line in enumerate(wrapped):
            right_lines.append(((marker if j == 0 else "  ") + line, is_diff, similar))

    # Pad to same total length
    max_len = max(len(left_lines), len(right_lines))
    while len(left_lines) < max_len:
        left_lines.append(("", False, ""))
    while len(right_lines) < max_len:
        right_lines.append(("", False, ""))

    # Build output with word-level diff highlighting
    # RED = in old (expected) but missing from current
    # GREEN = in current (actual) but not in old
    for (left_text, left_diff, left_similar), (right_text, right_diff, right_similar) in zip(left_lines, right_lines):
        if len(left_text) > width:
            left_text = left_text[:width - 3] + "..."

        # Left column (OLD/expected): RED for parts missing from current
        if left_diff:
            left_display = highlight_diff_in_line(left_text, left_similar or right_text, Colors.RED)
        else:
            left_display = left_text

        # Right column (CURRENT/actual): GREEN for parts new in current
        if right_diff:
            right_display = highlight_diff_in_line(right_text, right_similar or left_text, Colors.GREEN)
        else:
            right_display = right_text

        # Handle padding with colors
        if USE_COLORS:
            visible_len = len(re.sub(r'\x1b\[[0-9;]*m', '', left_display))
            if visible_len < width:
                left_display += ' ' * (width - visible_len)
        else:
            left_display = f"{left_display:<{width}}"

        lines.append(f"{left_display} | {right_display}")

    return "\n".join(lines)


def show_sequents_side_by_side(expected: Optional[Sequent], actual: Optional[Sequent],
                                width: int = DEFAULT_COLUMN_WIDTH,
                                label: str = "") -> None:
    """Display expected and actual sequents side by side."""
    if label:
        print(f"\n{label}")

    if expected is None and actual is None:
        print("  (no sequent)")
        return

    print(f"{'EXPECTED':<{width}} | ACTUAL")
    print("-" * (width * 2 + 3))

    left_lines = format_sequent_pvs(expected, width) if expected else ["(no sequent)"]
    right_lines = format_sequent_pvs(actual, width) if actual else ["(no sequent)"]

    print(side_by_side(left_lines, right_lines, width))


def get_previous_expected_sequent(steps: List[ProofStep], step_index: int) -> Optional[Sequent]:
    """Get the expected sequent from before the given step.

    This looks at the previous step's expected_sequent (the result of that step).
    """
    if step_index > 0:
        prev_step = steps[step_index - 1]
        return prev_step.expected_sequent
    return None


def get_current_sequent_from_pvs() -> Optional[Sequent]:
    """Use (skip) command to get the current sequent state from PVS."""
    code, stdout, stderr = run_pvs_cli(["--proof-command", "(skip)"], timeout=30)
    if code == 0:
        return parse_sequent_from_output(stdout)
    return None


@dataclass
class ReplayState:
    """State of a proof replay session."""
    trace_file: str
    library: str
    theory: str
    formula: str
    last_line: int = 0
    last_step: int = 0
    status: str = "not-started"  # not-started, on-going, completed, discrepancy, timeout
    proof_id: Optional[str] = None
    timestamp: str = field(default_factory=lambda: datetime.now().isoformat())


@dataclass
class Sequent:
    """Represents a PVS sequent with antecedents and consequents."""
    name: str
    antecedents: List[str]
    consequents: List[str]

    def normalize(self) -> 'Sequent':
        """Return a normalized version for comparison (lowercase, stripped whitespace)."""
        def norm_formula(f: str) -> str:
            # Remove formula markers like {1}, [-2], etc.
            f = re.sub(r'^\s*[\[\{]-?\d+[\]\}]\s*', '', f)
            # Normalize whitespace
            f = ' '.join(f.split())
            # Case insensitive
            return f.lower()

        return Sequent(
            name=self.name.lower().strip(),
            antecedents=[norm_formula(a) for a in self.antecedents],
            consequents=[norm_formula(c) for c in self.consequents]
        )

    def __eq__(self, other: 'Sequent') -> bool:
        if not isinstance(other, Sequent):
            return False
        s1 = self.normalize()
        s2 = other.normalize()
        return (s1.antecedents == s2.antecedents and
                s1.consequents == s2.consequents)


@dataclass
class ProofStep:
    """A single proof step from the trace file."""
    line_number: int
    command: str
    expected_sequent: Optional[Sequent] = None
    effect: str = ""  # "simplifies to", "yields N subgoals", "completes proof", etc.
    auto_discharged_sequents: List[Sequent] = field(default_factory=list)  # Sequents that were trivially true


def parse_filename(filename: str) -> Tuple[str, str, str]:
    """Extract library, theory, formula from trace filename.

    Format: library-theory-formula-version-date[-hash][-BAD].trf
    Example: CCG-measures-card_measure_matrices-8.0-20260917-32f059fc.trf

    Returns: (library, theory, formula)
    """
    basename = Path(filename).stem
    # Remove -BAD suffix if present
    if basename.endswith("-BAD"):
        basename = basename[:-4]

    parts = basename.split("-")
    if len(parts) < 5:
        raise ValueError(f"Cannot parse filename: {filename}. Expected format: library-theory-formula-version-date.trf")

    # Library is first part, theory is second, formula is third
    # The rest are version, date, and optional hash
    library = parts[0]
    theory = parts[1]
    formula = parts[2]

    return library, theory, formula


def parse_formula_ref(ref: str) -> Tuple[str, str, str]:
    """Parse a formula reference in various formats.

    Accepts:
    - "formula" -> ("", "", "formula")
    - "lib-theory-formula" -> ("lib", "theory", "formula")
    - "lib@theory#formula" -> ("lib", "theory", "formula")

    Returns: (library, theory, formula)
    """
    # Try lib@theory#formula format
    if '@' in ref and '#' in ref:
        match = re.match(r'^([^@]+)@([^#]+)#(.+)$', ref)
        if match:
            return match.group(1), match.group(2), match.group(3)

    # Try lib-theory-formula format (at least 3 parts separated by dashes)
    parts = ref.split('-')
    if len(parts) >= 3:
        return parts[0], parts[1], '-'.join(parts[2:])

    # Just formula name
    return "", "", ref


def parse_sequent(lines: List[str], start_idx: int) -> Tuple[Optional[Sequent], int]:
    """Parse a sequent from trace lines starting at start_idx.

    Returns (Sequent, next_line_index) or (None, start_idx) if no sequent found.
    """
    if start_idx >= len(lines):
        return None, start_idx

    # Look for sequent name pattern: "name :" or "name (TCC):"
    # Must start at beginning of line (no leading spaces) and have at least one part
    # Sequent names always start with the formula name (like card_measure_matrices)
    # and optionally have branch suffixes (.1, .1.2, etc.) and possibly T suffix and (TCC)
    name_pattern = re.compile(r'^([a-zA-Z_][a-zA-Z0-9_]*(?:\.\d+)*(?:T)?(?:\s*\(TCC\))?)\s*:\s*$')

    idx = start_idx
    # Skip blank lines
    while idx < len(lines) and not lines[idx].strip():
        idx += 1

    if idx >= len(lines):
        return None, start_idx

    match = name_pattern.match(lines[idx].strip())
    if not match:
        return None, start_idx

    name = match.group(1).strip()
    idx += 1

    # Skip blank lines
    while idx < len(lines) and not lines[idx].strip():
        idx += 1

    antecedents = []
    consequents = []
    in_consequent = False

    # Formula marker pattern
    formula_marker = re.compile(r'^[\[\{]-?\d+[\]\}]\s+')

    # Parse formulas
    while idx < len(lines):
        line = lines[idx]
        stripped = line.strip()

        if not stripped:
            idx += 1
            continue

        # Check for turnstile
        if stripped == '|-------':
            in_consequent = True
            idx += 1
            continue

        # Check for formula start (starts with {n} or [n] or {-n} or [-n])
        if formula_marker.match(stripped):
            formula = stripped
            idx += 1
            # Collect multi-line formulas - continue while lines are indented
            while idx < len(lines):
                next_line = lines[idx]
                next_stripped = next_line.strip()

                if not next_stripped:
                    # Empty line - peek ahead to decide if we should stop
                    peek_idx = idx + 1
                    while peek_idx < len(lines) and not lines[peek_idx].strip():
                        peek_idx += 1
                    if peek_idx >= len(lines):
                        break
                    peek_line = lines[peek_idx]
                    peek_stripped = peek_line.strip()
                    # If next non-empty line is a structural element or effect message, stop
                    if (peek_stripped == '|-------' or
                        formula_marker.match(peek_stripped) or
                        name_pattern.match(peek_stripped) or
                        peek_stripped.startswith('Rerunning step:') or
                        peek_stripped.startswith('which is trivially true') or
                        peek_stripped.startswith('This completes the proof') or
                        peek_stripped.startswith('Q.E.D.')):
                        break
                    # Otherwise continue collecting
                    idx += 1
                    continue

                # Stop at turnstile
                if next_stripped == '|-------':
                    break

                # Stop at new formula marker
                if formula_marker.match(next_stripped):
                    break

                # Stop at effect messages
                if (next_stripped.startswith('which is trivially true') or
                    next_stripped.startswith('This completes the proof') or
                    next_stripped.startswith('Q.E.D.')):
                    break

                # Check for sequent name at start of line (not indented)
                if not next_line.startswith(' ') and not next_line.startswith('\t'):
                    if name_pattern.match(next_stripped):
                        break
                    if next_stripped.startswith('Rerunning step:'):
                        break

                # This is a continuation line
                formula += ' ' + next_stripped
                idx += 1

            if in_consequent:
                consequents.append(formula)
            else:
                antecedents.append(formula)
        else:
            # Not a formula line, stop parsing sequent
            break

    return Sequent(name=name, antecedents=antecedents, consequents=consequents), idx


def parse_trace_file(filepath: str) -> List[ProofStep]:
    """Parse a .trf trace file and extract proof steps."""
    with open(filepath, 'r') as f:
        lines = f.readlines()

    # Strip newlines but preserve content
    lines = [line.rstrip('\n') for line in lines]

    steps = []
    idx = 0

    # Skip header (rewrite rule installations, etc.) until first sequent
    while idx < len(lines):
        line = lines[idx]
        if 'Rerunning step:' in line:
            break
        idx += 1

    # Informational messages that appear after Rerunning step but before the effect
    info_patterns = [
        'Found matching substitution',
        'Instantiating',
        'Skolemizing',
        'Applying',
        'Case splitting',
        'Expanding',
        'Replacing',
        'Adding type constraints',
        'Rewriting using',
        'Splitting',
        'Hiding',
        'Using',
        'Deleting',
    ]

    # Parse proof steps
    while idx < len(lines):
        line = lines[idx]

        # Look for "Rerunning step: (command)"
        if 'Rerunning step:' in line:
            # Extract command - may span multiple lines
            command_start = line.find('Rerunning step:') + len('Rerunning step:')
            command = line[command_start:].strip()
            line_num = idx + 1  # 1-based line number
            idx += 1

            # Command may continue on next lines if it's still within parentheses
            # Commands are S-expressions so we can count parens
            paren_depth = command.count('(') - command.count(')')

            while idx < len(lines) and paren_depth > 0:
                next_line = lines[idx].strip()
                if not next_line:
                    idx += 1
                    continue
                command += ' ' + next_line
                paren_depth += next_line.count('(') - next_line.count(')')
                idx += 1

            # Parse effect and expected sequent
            effect = ""
            expected_sequent = None

            # Skip informational messages until we find effect or sequent
            while idx < len(lines):
                next_line = lines[idx].strip()

                if not next_line:
                    idx += 1
                    continue

                if 'this simplifies to:' in next_line:
                    effect = "simplifies"
                    idx += 1
                    expected_sequent, idx = parse_sequent(lines, idx)
                    # Check if this sequent was auto-discharged
                    while idx < len(lines):
                        while idx < len(lines) and not lines[idx].strip():
                            idx += 1
                        if idx >= len(lines):
                            break
                        peek_line = lines[idx].strip()
                        if 'which is trivially true' in peek_line:
                            # Auto-discharged, look for next sequent
                            idx += 1
                            while idx < len(lines):
                                check_line = lines[idx].strip()
                                if not check_line:
                                    idx += 1
                                    continue
                                if 'This completes the proof' in check_line:
                                    idx += 1
                                    continue
                                break
                            next_seq, idx = parse_sequent(lines, idx)
                            if next_seq:
                                expected_sequent = next_seq
                        break
                    break
                elif next_line.startswith('this yields'):
                    match = re.search(r'yields\s+(\d+)\s+subgoals?', next_line)
                    if match:
                        effect = f"yields {match.group(1)} subgoals"
                    else:
                        effect = "yields subgoals"
                    idx += 1
                    # Parse first sequent, but check if it's auto-discharged
                    expected_sequent, idx = parse_sequent(lines, idx)
                    # Keep collecting auto-discharged sequents until we find one that isn't
                    auto_discharged = []
                    while idx < len(lines):
                        # Skip blank lines
                        while idx < len(lines) and not lines[idx].strip():
                            idx += 1
                        if idx >= len(lines):
                            break
                        peek_line = lines[idx].strip()
                        if 'which is trivially true' in peek_line:
                            # This sequent was auto-discharged
                            if expected_sequent:
                                auto_discharged.append(expected_sequent)
                            idx += 1
                            # Skip "This completes the proof" messages
                            while idx < len(lines):
                                check_line = lines[idx].strip()
                                if not check_line:
                                    idx += 1
                                    continue
                                if 'This completes the proof' in check_line:
                                    idx += 1
                                    continue
                                break
                            # Try to parse the next sequent (the next branch)
                            expected_sequent, idx = parse_sequent(lines, idx)
                            if expected_sequent is None:
                                # No more sequents, restore last auto-discharged as expected
                                if auto_discharged:
                                    expected_sequent = auto_discharged[-1]
                                break
                        else:
                            # Not auto-discharged, we have our expected sequent
                            break
                    break
                elif 'which is trivially true' in next_line:
                    effect = "trivially true"
                    idx += 1
                    break
                elif 'This completes the proof' in next_line:
                    effect = "completes"
                    idx += 1
                    # Check for next sequent after completion
                    expected_sequent, idx = parse_sequent(lines, idx)
                    break
                elif 'Q.E.D.' in next_line:
                    effect = "QED"
                    idx += 1
                    break
                elif 'Rerunning step:' in next_line:
                    # Next command without explicit effect
                    break
                elif re.match(r'^\S+(?:\.\d+)*(?:\s*\(TCC\))?\s*:\s*$', next_line):
                    # Sequent without explicit effect
                    expected_sequent, idx = parse_sequent(lines, idx)
                    break
                else:
                    # Skip informational message
                    idx += 1

            steps.append(ProofStep(
                line_number=line_num,
                command=command,
                expected_sequent=expected_sequent,
                effect=effect
            ))
        else:
            idx += 1

    return steps


def load_state() -> Dict[str, ReplayState]:
    """Load replay states from state file."""
    if not STATE_FILE.exists():
        return {}

    try:
        with open(STATE_FILE, 'r') as f:
            data = json.load(f)
        return {k: ReplayState(**v) for k, v in data.items()}
    except (json.JSONDecodeError, TypeError) as e:
        log(f"Warning: Could not parse state file: {e}")
        return {}


def save_state(states: Dict[str, ReplayState]):
    """Save replay states to state file."""
    data = {k: asdict(v) for k, v in states.items()}
    with open(STATE_FILE, 'w') as f:
        json.dump(data, f, indent=2)


def get_state_key(library: str, theory: str, formula: str) -> str:
    """Generate a unique key for state tracking."""
    return f"{library}-{theory}-{formula}"


def find_matching_state(states: Dict[str, ReplayState], ref: str) -> Optional[str]:
    """Find a state key matching the given reference.

    ref can be:
    - A formula name: "card_measure_matrices"
    - lib-theory-formula: "CCG-measures-card_measure_matrices"
    - lib@theory#formula: "CCG@measures#card_measure_matrices"
    - A trace file path: "/path/to/CCG-measures-card_measure_matrices-8.0-date.trf"
    """
    # Check if ref looks like a file path (contains / or ends with .trf)
    if '/' in ref or ref.endswith('.trf'):
        # Try to extract library/theory/formula from filename
        try:
            lib, thy, form = parse_filename(ref)
            key = get_state_key(lib, thy, form)
            if key in states:
                return key
            # Also try matching by trace_file path
            for k, state in states.items():
                if state.trace_file == ref or os.path.basename(state.trace_file) == os.path.basename(ref):
                    return k
        except ValueError:
            pass

    lib, thy, form = parse_formula_ref(ref)

    # Exact match
    if lib and thy:
        key = get_state_key(lib, thy, form)
        if key in states:
            return key

    # Partial match (formula name only)
    for key, state in states.items():
        if state.formula.lower() == form.lower():
            return key

    return None


def find_pvs_cli() -> str:
    """Find pvs-cli.sh - first in same directory as this script, then in PATH."""
    # Check in same directory as replay-trace.py
    script_dir = Path(__file__).parent.resolve()
    local_pvs_cli = script_dir / "pvs-cli.sh"
    if local_pvs_cli.exists():
        return str(local_pvs_cli)
    # Fall back to PATH
    return "pvs-cli.sh"


# Cache the pvs-cli.sh path
_PVS_CLI_PATH: Optional[str] = None


def run_pvs_cli(args: List[str], timeout: int = 300) -> Tuple[int, str, str]:
    """Run pvs-cli.sh with given arguments.

    Returns: (return_code, stdout, stderr)
    """
    global _PVS_CLI_PATH
    if _PVS_CLI_PATH is None:
        _PVS_CLI_PATH = find_pvs_cli()

    cmd = [_PVS_CLI_PATH, "--no-color"] + args
    log(f"Running: {' '.join(cmd)}")

    try:
        result = subprocess.run(
            cmd,
            capture_output=True,
            text=True,
            timeout=timeout
        )
        return result.returncode, result.stdout, result.stderr
    except subprocess.TimeoutExpired:
        return -1, "", "Timeout"
    except FileNotFoundError:
        return -2, "", "pvs-cli.sh not found"


def check_pvs_server() -> bool:
    """Check if PVS server is running."""
    code, stdout, stderr = run_pvs_cli(["--ping"], timeout=10)
    return code == 0


def parse_sequent_from_output(output: str) -> Optional[Sequent]:
    """Parse a sequent from pvs-cli output."""
    lines = output.split('\n')

    # Look for sequent name pattern - must be an identifier, not just "f2:" which could be in a formula
    name_pattern = re.compile(r'^([a-zA-Z_][a-zA-Z0-9_]*(?:\.\d+)*(?:T)?(?:\s*\(TCC\))?)\s*:\s*$')

    # Find the sequent in output
    for i, line in enumerate(lines):
        stripped = line.strip()
        if name_pattern.match(stripped):
            seq, _ = parse_sequent(lines, i)
            return seq

    return None


def replay_proof(trace_file: str, max_steps: Optional[int], timeout: int,
                 resume_state: Optional[ReplayState] = None,
                 column_width: int = DEFAULT_COLUMN_WIDTH) -> int:
    """Replay a proof trace and detect discrepancies.

    Returns exit code.
    """
    # Parse filename for library/theory/formula
    try:
        library, theory, formula = parse_filename(trace_file)
    except ValueError as e:
        error(str(e))
        return EXIT_PARSE_ERROR

    log(f"Library: {library}, Theory: {theory}, Formula: {formula}")

    # Load or create state
    states = load_state()
    state_key = get_state_key(library, theory, formula)

    if resume_state:
        state = resume_state
        log(f"Resuming from step {state.last_step}, line {state.last_line}")
    else:
        state = ReplayState(
            trace_file=trace_file,
            library=library,
            theory=theory,
            formula=formula
        )

    # Parse trace file
    log(f"Parsing trace file: {trace_file}")
    try:
        steps = parse_trace_file(trace_file)
    except Exception as e:
        error(f"Failed to parse trace file: {e}")
        return EXIT_PARSE_ERROR

    log(f"Found {len(steps)} proof steps")

    # Check PVS server
    if not check_pvs_server():
        error("PVS server is not responsive. Start it with: pvs -port 23456")
        return EXIT_SERVER_ERROR

    # If not resuming, typecheck and start proof
    if not resume_state or state.status == "not-started":
        # Typecheck
        pvs_file = f"{library}/{theory}.pvs"
        log(f"Typechecking {pvs_file}")
        code, stdout, stderr = run_pvs_cli(["--typecheck", pvs_file], timeout=timeout)

        if code != 0:
            error(f"Typecheck failed:\n{stdout}\n{stderr}")
            state.status = "typecheck-failed"
            states[state_key] = state
            save_state(states)
            return EXIT_TYPECHECK_FAIL

        # Start proof
        log(f"Starting proof of {formula}")
        code, stdout, stderr = run_pvs_cli(["--prove", formula], timeout=timeout)

        if code != 0:
            error(f"Failed to start proof:\n{stdout}\n{stderr}")
            state.status = "start-failed"
            states[state_key] = state
            save_state(states)
            return EXIT_TYPECHECK_FAIL

        # Extract proof ID from output - format: "Proof ID: formula-N"
        match = re.search(r'Proof ID:\s*(\S+)', stdout)
        if match:
            state.proof_id = match.group(1)
            log(f"Proof ID: {state.proof_id}")

        state.status = "on-going"
    else:
        # Resuming - ensure our proof is the active one
        if state.proof_id:
            log(f"Setting active proof to {state.proof_id}")
            code, stdout, stderr = run_pvs_cli(["--set-active-proof", state.proof_id], timeout=30)
            if code != 0:
                error(f"Failed to set active proof {state.proof_id}: {stderr}")
                error("The proof session may have been lost. Try starting fresh without --resume")
                return EXIT_SERVER_ERROR

    # Determine starting step
    start_step = state.last_step

    # Track previous sequent for verbosity level 2
    prev_expected: Optional[Sequent] = None
    prev_actual: Optional[Sequent] = None

    # If resuming mid-proof, get the previous sequents
    if start_step > 0:
        # Get expected previous sequent from trace (result of step before start_step)
        prev_expected = get_previous_expected_sequent(steps, start_step)

        # Get actual current sequent from PVS using (skip)
        log("Getting current sequent state with (skip)")
        prev_actual = get_current_sequent_from_pvs()

    # Replay steps
    steps_executed = 0
    for i, step in enumerate(steps[start_step:], start=start_step):
        if max_steps is not None and steps_executed >= max_steps:
            log(f"Reached max steps ({max_steps})")
            state.last_step = i
            state.last_line = step.line_number
            states[state_key] = state
            save_state(states)
            print(f"Paused at step {i + 1}/{len(steps)} (line {step.line_number})")
            return EXIT_SUCCESS

        log(f"Step {i + 1}/{len(steps)}: {step.command[:60]}...")

        # Send proof command
        code, stdout, stderr = run_pvs_cli(
            ["--proof-command", step.command],
            timeout=timeout
        )

        if code == -1:  # Timeout
            error(f"Timeout on step {i + 1}: {step.command}")
            # Try to interrupt the proof
            if state.proof_id:
                run_pvs_cli(["--interrupt-proof", state.proof_id], timeout=10)
            state.status = "timeout"
            state.last_step = i + 1  # Save NEXT step so resume skips past timeout
            state.last_line = step.line_number
            states[state_key] = state
            save_state(states)
            return EXIT_TIMEOUT

        if code != 0:
            error(f"Command failed on step {i + 1}: {step.command}")
            error(f"Output: {stdout}\n{stderr}")
            state.status = "command-failed"
            state.last_step = i + 1  # Save NEXT step so resume skips past failure
            state.last_line = step.line_number
            states[state_key] = state
            save_state(states)
            return EXIT_DISCREPANCY

        # Check for Q.E.D. in output
        if 'Q.E.D.' in stdout:
            print(f"Proof completed successfully at step {i + 1}")
            state.status = "completed"
            state.last_step = i + 1
            state.last_line = step.line_number
            states[state_key] = state
            save_state(states)
            return EXIT_SUCCESS

        # Check for subgoal count mismatch (warning only, don't stop)
        if step.effect and step.effect.startswith("yields"):
            expected_match = re.search(r'yields\s+(\d+)\s+subgoals?', step.effect)
            actual_match = re.search(r'yields\s+(\d+)\s+subgoals?', stdout, re.IGNORECASE)

            if expected_match:
                expected_count = int(expected_match.group(1))
                if actual_match:
                    actual_count = int(actual_match.group(1))
                    if expected_count != actual_count:
                        print(color(f"\n⚠ WARNING: Subgoal count mismatch at step {i + 1} (line {step.line_number})", Colors.YELLOW))
                        print(color(f"  Command: {step.command}", Colors.DIM))
                        print(color(f"  Expected: yields {expected_count} subgoals", Colors.YELLOW))
                        print(color(f"  Actual:   yields {actual_count} subgoals", Colors.YELLOW))
                        if actual_sequent:
                            print(color("  Current sequent:", Colors.YELLOW))
                            for line in format_sequent_pvs(actual_sequent, column_width - 4):
                                print(f"    {line}")
                else:
                    # Expected subgoals but didn't get "yields N subgoals" message
                    # Check if it simplified instead (single result)
                    if 'simplifies to' in stdout.lower() or 'this simplifies' in stdout.lower():
                        print(color(f"\n⚠ WARNING: Subgoal count mismatch at step {i + 1} (line {step.line_number})", Colors.YELLOW))
                        print(color(f"  Command: {step.command}", Colors.DIM))
                        print(color(f"  Expected: yields {expected_count} subgoals", Colors.YELLOW))
                        print(color(f"  Actual:   simplifies (no split)", Colors.YELLOW))
                        if actual_sequent:
                            print(color("  Current sequent:", Colors.YELLOW))
                            for line in format_sequent_pvs(actual_sequent, column_width - 4):
                                print(f"    {line}")

        # Parse actual sequent
        actual_sequent = parse_sequent_from_output(stdout) if step.expected_sequent else None

        # Verbosity level 3: show all sequents
        if VERBOSITY >= 3 and step.expected_sequent:
            show_sequents_side_by_side(step.expected_sequent, actual_sequent,
                                       column_width,
                                       f"Step {i + 1}: {step.command[:50]}...")

        # Compare sequent if we have an expected one
        if step.expected_sequent and actual_sequent:
            if step.expected_sequent != actual_sequent:
                print(f"\n{'=' * (column_width * 2 + 3)}")
                print(color(f"DISCREPANCY at step {i + 1} (line {step.line_number})", Colors.BOLD + Colors.YELLOW))
                print(f"{'=' * (column_width * 2 + 3)}")

                # Always show previous sequents (state before command)
                if prev_expected or prev_actual:
                    print(color("\nBEFORE (state before command):", Colors.CYAN))
                    show_sequents_side_by_side(prev_expected, prev_actual, column_width)

                # Show the command
                print(color(f"\nCOMMAND:", Colors.CYAN))
                print(f"  {step.command}\n")

                # Show resulting sequents (state after command)
                print(color("AFTER (resulting state - showing differences):", Colors.CYAN))
                print(diff_sequents(step.expected_sequent, actual_sequent, column_width))

                state.status = "discrepancy"
                state.last_step = i + 1  # Save NEXT step so resume skips past discrepancy
                state.last_line = step.line_number
                states[state_key] = state
                save_state(states)
                return EXIT_DISCREPANCY

        # Update previous sequents for next iteration
        prev_expected = step.expected_sequent
        prev_actual = actual_sequent

        state.last_step = i + 1
        state.last_line = step.line_number
        steps_executed += 1

    # All steps completed
    print(f"All {len(steps)} steps replayed successfully")
    state.status = "completed"
    states[state_key] = state
    save_state(states)
    return EXIT_SUCCESS


def show_status():
    """Show status of all tracked replays."""
    states = load_state()

    if not states:
        print("No replay sessions tracked.")
        return

    print(f"{'Formula':<40} {'Status':<15} {'Step':<10} {'Timestamp'}")
    print("-" * 80)

    for key, state in sorted(states.items(), key=lambda x: x[1].timestamp, reverse=True):
        formula_ref = f"{state.library}@{state.theory}#{state.formula}"
        print(f"{formula_ref:<40} {state.status:<15} {state.last_step:<10} {state.timestamp[:19]}")


def clean_state():
    """Remove completed/failed entries from state file and quit their proofs in PVS."""
    states = load_state()

    # Find entries to remove (not on-going or not-started)
    to_remove = {k: v for k, v in states.items()
                 if v.status not in ("not-started", "on-going")}

    # Quit proofs for removed entries
    for key, state in to_remove.items():
        if state.proof_id:
            log(f"Quitting proof {state.proof_id} for {state.formula}")
            code, stdout, stderr = run_pvs_cli(["--fail-proof", state.proof_id], timeout=30)
            if code == 0:
                print(f"Quit proof {state.proof_id}")
            else:
                log(f"Warning: Failed to quit proof {state.proof_id}: {stderr}")

    # Keep only on-going replays
    active_states = {k: v for k, v in states.items()
                     if v.status in ("not-started", "on-going")}

    removed = len(states) - len(active_states)
    save_state(active_states)
    print(f"Removed {removed} completed/failed entries.")


def main():
    global VERBOSITY, USE_COLORS

    parser = argparse.ArgumentParser(
        description="Replay PVS proof traces to detect discrepancies",
        formatter_class=argparse.RawDescriptionHelpFormatter,
        epilog="""
Verbosity levels:
  0 (default)  Minimal output
  1 (-v)       Show progress and commands being sent
  2 (-vv)      Also show previous sequents on discrepancy
  3 (-vvv)     Show all expected vs actual sequents side by side

Examples:
  replay-trace.py trace.trf                    Replay entire proof
  replay-trace.py trace.trf --max-steps 10     Replay first 10 steps
  replay-trace.py trace.trf -vv                Replay with detailed output
  replay-trace.py --resume                     Resume last active replay
  replay-trace.py --resume formula_name        Resume specific formula
  replay-trace.py --status                     Show all tracked replays
        """
    )

    parser.add_argument("trace_file", nargs="?", help="Path to .trf trace file")
    parser.add_argument("--resume", nargs="?", const="", metavar="FORMULA",
                        help="Resume an ongoing replay. FORMULA can be: formula_name, lib-theory-formula, or lib@theory#formula")
    parser.add_argument("--max-steps", type=int, metavar="N",
                        help="Maximum number of proof steps to replay")
    parser.add_argument("--timeout", type=int, default=300, metavar="SECS",
                        help="Timeout per proof command in seconds (default: 300)")
    parser.add_argument("--column-width", type=int, default=DEFAULT_COLUMN_WIDTH, metavar="N",
                        help=f"Column width for side-by-side display (default: {DEFAULT_COLUMN_WIDTH})")
    parser.add_argument("--status", action="store_true",
                        help="Show status of all tracked replays")
    parser.add_argument("--clean", action="store_true",
                        help="Remove completed/failed entries from state file")
    parser.add_argument("-v", "--verbose", action="count", default=0,
                        help="Increase verbosity (use -v, -vv, or -vvv)")
    parser.add_argument("-V", "--verbosity", type=int, choices=[0, 1, 2, 3], metavar="N",
                        help="Set verbosity level directly (0-3)")
    parser.add_argument("--no-color", action="store_true",
                        help="Disable colored output")

    args = parser.parse_args()

    # Set verbosity: -V takes precedence, otherwise count -v flags
    if args.verbosity is not None:
        VERBOSITY = args.verbosity
    else:
        VERBOSITY = min(args.verbose, 3)  # Cap at 3

    # Set color mode
    if args.no_color:
        USE_COLORS = False

    # Check for pvs-cli.sh availability
    code, _, stderr = run_pvs_cli(["--help"], timeout=5)
    if code == -2:
        error("pvs-cli.sh not found.\n")
        print("replay-trace.py requires pvs-cli.sh to communicate with PVS.", file=sys.stderr)
        print("Either:", file=sys.stderr)
        print("  1. Place pvs-cli.sh in the same directory as replay-trace.py, or", file=sys.stderr)
        print('  2. Add pvs-scripts to your PATH: export PATH="/path/to/pvs-scripts:$PATH"\n', file=sys.stderr)
        return EXIT_SERVER_ERROR

    if args.status:
        show_status()
        return EXIT_SUCCESS

    if args.clean:
        clean_state()
        return EXIT_SUCCESS

    if args.resume is not None:
        states = load_state()

        if not states:
            error("No replay sessions to resume")
            return EXIT_PARSE_ERROR

        if args.resume == "":
            # Find most recent resumable replay (anything except "completed")
            resumable = [(k, v) for k, v in states.items() if v.status != "completed"]
            if not resumable:
                error("No resumable replays found")
                return EXIT_PARSE_ERROR
            # Sort by timestamp, most recent first
            resumable.sort(key=lambda x: x[1].timestamp, reverse=True)
            state_key, state = resumable[0]
        else:
            # Find matching state
            state_key = find_matching_state(states, args.resume)
            if not state_key:
                error(f"No replay found matching: {args.resume}")
                return EXIT_PARSE_ERROR
            state = states[state_key]

        # Allow resuming from any status except "completed"
        if state.status == "completed":
            error(f"Replay for {state.formula} is already completed. Use --clean to remove and start fresh.")
            return EXIT_PARSE_ERROR

        # If resuming from a failed state, reset to on-going
        if state.status not in ("on-going", "not-started"):
            log(f"Resuming from '{state.status}' status at step {state.last_step}")
            state.status = "on-going"

        log(f"Resuming replay of {state.trace_file}")
        return replay_proof(state.trace_file, args.max_steps, args.timeout, state, args.column_width)

    if not args.trace_file:
        parser.print_help()
        return EXIT_PARSE_ERROR

    if not os.path.exists(args.trace_file):
        error(f"Trace file not found: {args.trace_file}")
        return EXIT_PARSE_ERROR

    return replay_proof(args.trace_file, args.max_steps, args.timeout, column_width=args.column_width)


if __name__ == "__main__":
    sys.exit(main())
