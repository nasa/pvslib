#!/usr/bin/env python3
"""
prooftracethem.py - Process a CSV file and generate proof traces for each formula

Usage: prooftracethem.py [options] <alt_pvs_dir> <csv_file>

Options:
  --all-current       Run Phase 2 for all formulas (default: only those with a commit)
  --timeout <secs>    Timeout for each prooftrace.sh call (default: 300 seconds)
  -h, --help          Show this help message

CSV format: library,theory,formula,git_commit
(git_commit can be empty but the comma must be present)

Optimized flow:
1. Run ./cleanbin-all once
2. First pass: run prooftrace.sh for current version (only formulas with commits,
   or all if --all-current)
3. Second pass: only for unfinished proofs, group by commit and run alternate version
   (run ./cleanbin-all before each commit group)

Skips formulas if matching trf files already exist in output folder.
"""

import sys
import os
import subprocess
import csv
import shutil
import argparse
from pathlib import Path
from datetime import datetime
from collections import defaultdict
from dataclasses import dataclass
from typing import Optional


@dataclass
class FormulaResult:
    formula_ref: str
    library: str
    theory: str
    formula: str
    commit: str  # requested commit for alternate version

    # Current version results
    current_status: str = ""  # proved, unfinished, error, skipped, timeout
    current_file: str = ""
    current_commit: str = ""  # extracted from filename
    current_error: str = ""

    # Other version results
    other_status: str = "-"  # proved, unfinished, error, skipped, timeout, -
    other_file: str = ""
    other_commit: str = ""  # extracted from filename
    other_error: str = ""


def find_prooftrace():
    """Find prooftrace.sh in PATH or script directory."""
    if shutil.which("prooftrace.sh"):
        return "prooftrace.sh"

    script_dir = Path(__file__).parent
    prooftrace = script_dir / "prooftrace.sh"
    if prooftrace.is_file() and os.access(prooftrace, os.X_OK):
        return str(prooftrace)

    return None


def run_cleanbin_all():
    """Run ./cleanbin-all, suppressing output."""
    try:
        subprocess.run(["./cleanbin-all"], capture_output=True, check=False)
    except Exception:
        pass


def extract_commit_from_trf(filename: str) -> str:
    """Extract commit hash from trf filename.

    Format: <lib>-<theory>-<formula>-<version>-<date>-<commit>[-BAD].trf
    """
    base = filename.removesuffix(".trf").removesuffix("-BAD")
    return base.split("-")[-1]


def is_bad_trf(filename: str) -> bool:
    """Check if trf file indicates failure (has -BAD suffix)."""
    return "-BAD.trf" in filename


def find_trf_file(library: str, theory: str, formula: str, directory: str = ".") -> Optional[str]:
    """Find the most recent trf file for a formula in a directory."""
    pattern = f"{library}-{theory}-{formula}"
    try:
        files = os.listdir(directory)
        trf_files = sorted(
            [f for f in files if f.startswith(pattern) and f.endswith(".trf")],
            key=lambda f: os.path.getmtime(os.path.join(directory, f)),
            reverse=True
        )
        return trf_files[0] if trf_files else None
    except OSError:
        return None


def find_trf_with_commit(library: str, theory: str, formula: str, commit: str, directory: str) -> Optional[str]:
    """Find a trf file for a formula with a specific commit hash."""
    pattern = f"{library}-{theory}-{formula}"
    try:
        files = os.listdir(directory)
        for f in files:
            if f.startswith(pattern) and f.endswith(".trf"):
                file_commit = extract_commit_from_trf(f)
                if file_commit == commit:
                    return f
        return None
    except OSError:
        return None


def run_prooftrace(prooftrace: str, formula_ref: str,
                   git_commit: Optional[str] = None,
                   pvsdir: Optional[str] = None,
                   timeout: int = 300) -> tuple[bool, bool, str]:
    """Run prooftrace.sh and return (success, timed_out, error_message)."""
    cmd = [prooftrace]
    if git_commit and pvsdir:
        cmd.extend(["--git", git_commit, "--pvsdir", pvsdir])
    cmd.append(formula_ref)

    try:
        result = subprocess.run(cmd, capture_output=True, text=True, timeout=timeout)
        if result.returncode == 0:
            return True, False, ""
        elif result.returncode == 100:
            # Exit code 100 means proof unfinished, but trf was generated
            return True, False, ""
        else:
            return False, False, f"Exit code {result.returncode}: {result.stdout} {result.stderr}"
    except subprocess.TimeoutExpired:
        return False, True, f"Timeout after {timeout} seconds"
    except Exception as e:
        return False, False, str(e)


def print_markdown_report(results: list[FormulaResult], csv_file: str, output_dir: str):
    """Print the Markdown report to stdout."""
    # Find header commit from first result with a current commit
    header_commit = "unknown"
    for r in results:
        if r.current_commit:
            header_commit = r.current_commit
            break

    print("# Proof Trace Report")
    print()
    print(f"Generated: {datetime.now().strftime('%Y-%m-%d %H:%M:%S')}")
    print()
    print(f"CSV file: `{csv_file}`")
    print()
    print("## Summary")
    print()
    print(f"| Formula | Current - {header_commit} | Other | Commit |")
    print("| --- | --- | --- | --- |")

    for r in results:
        # Current version column with link
        if r.current_file:
            curr_link = f"[{r.current_status}]({output_dir}/{r.current_file})"
        else:
            curr_link = r.current_status

        # Other version column with link
        if r.other_file:
            other_link = f"[{r.other_status}]({output_dir}/{r.other_file})"
        else:
            other_link = r.other_status

        print(f"| `{r.formula_ref}` | {curr_link} | {other_link} | {r.other_commit} |")

    # Check for errors or timeouts
    has_errors = any(r.current_error or r.other_error for r in results)
    has_timeouts = any(r.current_status == "timeout" or r.other_status == "timeout" for r in results)

    if has_timeouts:
        print()
        print("## Timeouts")
        print()
        for r in results:
            if r.current_status == "timeout":
                print(f"- `{r.formula_ref}` (current version): {r.current_error}")
            if r.other_status == "timeout":
                print(f"- `{r.formula_ref}` (other version): {r.other_error}")

    if has_errors:
        print()
        print("## Errors")
        print()
        for r in results:
            if r.current_error and r.current_status != "timeout":
                print(f"### `{r.formula_ref}` (current version)")
                print()
                print("```")
                print(r.current_error)
                print("```")
                print()
            if r.other_error and r.other_status != "timeout":
                print(f"### `{r.formula_ref}` (other version)")
                print()
                print("```")
                print(r.other_error)
                print("```")
                print()

    print()
    print("## Legend")
    print()
    print("- **proved**: Proof completed successfully")
    print("- **unfinished**: Proof trace shows unfinished proof (-BAD suffix)")
    print("- **skipped**: Trace file already exists in output folder")
    print("- **timeout**: prooftrace.sh exceeded time limit")
    print("- **error**: Failed to generate trace file (see Errors section)")
    print("- **-**: No alternate version requested (or proof already succeeded)")


def main():
    parser = argparse.ArgumentParser(
        description="Process a CSV file and generate proof traces for each formula",
        formatter_class=argparse.RawDescriptionHelpFormatter,
        epilog="""
CSV format: library,theory,formula,git_commit
(git_commit can be empty but the comma must be present)

Optimized flow:
1. Run ./cleanbin-all once
2. First pass: run prooftrace.sh for current version
3. Second pass: only for unfinished proofs, group by commit and run alternate version
"""
    )
    parser.add_argument("alt_pvs_dir", help="Path to alternate PVS installation directory")
    parser.add_argument("csv_file", help="CSV file with formulas to process")
    parser.add_argument("--all-current", action="store_true",
                        help="Run Phase 2 for all formulas (default: only those with a commit)")
    parser.add_argument("--timeout", type=int, default=300,
                        help="Timeout in seconds for each prooftrace.sh call (default: 300)")

    args = parser.parse_args()

    alt_pvsdir = args.alt_pvs_dir
    csv_file = args.csv_file
    all_current = args.all_current
    timeout = args.timeout

    if not os.path.isfile(csv_file):
        print(f"Error: CSV file not found: {csv_file}", file=sys.stderr)
        sys.exit(1)

    prooftrace = find_prooftrace()
    if not prooftrace:
        print("Error: prooftrace.sh not found in PATH or script directory", file=sys.stderr)
        sys.exit(1)

    # Create output folder based on CSV filename
    output_dir = Path(csv_file).stem
    os.makedirs(output_dir, exist_ok=True)

    print(f"Processing: {csv_file}", file=sys.stderr)
    print(f"Output folder: {output_dir}", file=sys.stderr)
    print(f"Alternate PVS dir: {alt_pvsdir}", file=sys.stderr)
    print(f"Using prooftrace: {prooftrace}", file=sys.stderr)
    print(f"Timeout: {timeout} seconds", file=sys.stderr)
    print(f"All current: {all_current}", file=sys.stderr)
    print(file=sys.stderr)

    # Parse CSV file
    results: list[FormulaResult] = []
    with open(csv_file, "r") as f:
        reader = csv.reader(f)
        for row in reader:
            if not row or row[0].startswith("#"):
                continue

            if len(row) < 3:
                print(f"Warning: Skipping malformed row: {row}", file=sys.stderr)
                continue

            library = row[0].strip()
            theory = row[1].strip()
            formula = row[2].strip()
            commit = row[3].strip() if len(row) > 3 else ""

            if not library or not theory or not formula:
                print(f"Warning: Skipping row with missing fields: {row}", file=sys.stderr)
                continue

            formula_ref = f"{library}@{theory}.{formula}"
            results.append(FormulaResult(
                formula_ref=formula_ref,
                library=library,
                theory=theory,
                formula=formula,
                commit=commit
            ))

    if not results:
        print("Error: No valid formulas found in CSV file", file=sys.stderr)
        sys.exit(1)

    print(f"Found {len(results)} formulas in CSV", file=sys.stderr)
    print(file=sys.stderr)

    # Determine which formulas to include in Phase 2
    if all_current:
        phase2_formulas = results
    else:
        phase2_formulas = [r for r in results if r.commit]

    print(f"Phase 2 will process {len(phase2_formulas)} formulas", file=sys.stderr)
    print(file=sys.stderr)

    # ========================================
    # PHASE 1: Run cleanbin-all once
    # ========================================
    print("=" * 50, file=sys.stderr)
    print("PHASE 1: Cleaning binary files", file=sys.stderr)
    print("=" * 50, file=sys.stderr)
    run_cleanbin_all()
    print("Done", file=sys.stderr)
    print(file=sys.stderr)

    # ========================================
    # PHASE 2: Run prooftrace for current version
    # ========================================
    print("=" * 50, file=sys.stderr)
    print("PHASE 2: Running prooftrace for current version", file=sys.stderr)
    print("=" * 50, file=sys.stderr)

    for r in phase2_formulas:
        print(f"  {r.formula_ref}...", end="", file=sys.stderr, flush=True)

        # Check if trf file already exists in output folder
        existing_trf = find_trf_file(r.library, r.theory, r.formula, output_dir)
        if existing_trf:
            r.current_file = existing_trf
            r.current_commit = extract_commit_from_trf(existing_trf)
            r.current_status = "unfinished" if is_bad_trf(existing_trf) else "proved"
            print(f" skipped (exists: {r.current_status})", file=sys.stderr)
            continue

        success, timed_out, error = run_prooftrace(prooftrace, r.formula_ref, timeout=timeout)

        if timed_out:
            r.current_status = "timeout"
            r.current_error = error
            print(f" TIMEOUT", file=sys.stderr)
            continue

        # Find and move the trf file
        trf_file = find_trf_file(r.library, r.theory, r.formula, ".")
        if trf_file:
            shutil.move(trf_file, output_dir)
            r.current_file = trf_file
            r.current_commit = extract_commit_from_trf(trf_file)
            r.current_status = "unfinished" if is_bad_trf(trf_file) else "proved"
            print(f" {r.current_status}", file=sys.stderr)
        else:
            r.current_status = "error"
            r.current_error = error or "No trf file generated"
            print(f" ERROR", file=sys.stderr)

    print(file=sys.stderr)

    # ========================================
    # PHASE 3: Run prooftrace for alternate versions (only unfinished, grouped by commit)
    # ========================================

    # Group unfinished formulas by commit
    commit_groups: dict[str, list[FormulaResult]] = defaultdict(list)
    for r in phase2_formulas:
        if r.current_status == "unfinished" and r.commit:
            commit_groups[r.commit].append(r)

    if commit_groups:
        print("=" * 50, file=sys.stderr)
        print("PHASE 3: Running prooftrace for alternate versions", file=sys.stderr)
        print("=" * 50, file=sys.stderr)
        print(f"  {sum(len(v) for v in commit_groups.values())} unfinished formulas across {len(commit_groups)} commits", file=sys.stderr)
        print(file=sys.stderr)

        for commit, formulas in commit_groups.items():
            print(f"  --- Commit: {commit} ({len(formulas)} formulas) ---", file=sys.stderr)

            # Clean before each commit group
            run_cleanbin_all()

            for r in formulas:
                print(f"    {r.formula_ref}...", end="", file=sys.stderr, flush=True)

                # Check if trf file with this commit already exists
                existing_trf = find_trf_with_commit(r.library, r.theory, r.formula, commit, output_dir)
                if existing_trf:
                    r.other_file = existing_trf
                    r.other_commit = commit
                    r.other_status = "unfinished" if is_bad_trf(existing_trf) else "proved"
                    print(f" skipped (exists: {r.other_status})", file=sys.stderr)
                    continue

                success, timed_out, error = run_prooftrace(
                    prooftrace, r.formula_ref,
                    git_commit=commit, pvsdir=alt_pvsdir,
                    timeout=timeout
                )

                if timed_out:
                    r.other_status = "timeout"
                    r.other_commit = commit
                    r.other_error = error
                    print(f" TIMEOUT", file=sys.stderr)
                    continue

                # Find and move the trf file
                trf_file = find_trf_file(r.library, r.theory, r.formula, ".")
                if trf_file:
                    shutil.move(trf_file, output_dir)
                    r.other_file = trf_file
                    r.other_commit = extract_commit_from_trf(trf_file)
                    r.other_status = "unfinished" if is_bad_trf(trf_file) else "proved"
                    print(f" {r.other_status}", file=sys.stderr)
                else:
                    r.other_status = "error"
                    r.other_commit = commit
                    r.other_error = error or "No trf file generated"
                    print(f" ERROR", file=sys.stderr)

            print(file=sys.stderr)
    else:
        print("=" * 50, file=sys.stderr)
        print("PHASE 3: Skipped (no unfinished proofs with commits)", file=sys.stderr)
        print("=" * 50, file=sys.stderr)

    print(file=sys.stderr)

    # ========================================
    # Generate report
    # ========================================
    print("=" * 50, file=sys.stderr)
    print("REPORT", file=sys.stderr)
    print("=" * 50, file=sys.stderr)
    print(file=sys.stderr)

    # Report only the formulas that were processed in phase 2
    print_markdown_report(phase2_formulas, csv_file, output_dir)

    # Print summary to stderr
    print(file=sys.stderr)
    print("=" * 50, file=sys.stderr)
    print("DONE", file=sys.stderr)
    print("=" * 50, file=sys.stderr)
    print(file=sys.stderr)
    print(f"Output folder: {output_dir}", file=sys.stderr)
    print(file=sys.stderr)

    proved_current = sum(1 for r in phase2_formulas if r.current_status == "proved")
    unfinished_current = sum(1 for r in phase2_formulas if r.current_status == "unfinished")
    skipped_current = sum(1 for r in phase2_formulas if r.current_status == "skipped")
    timeout_current = sum(1 for r in phase2_formulas if r.current_status == "timeout")
    error_current = sum(1 for r in phase2_formulas if r.current_status == "error")

    proved_other = sum(1 for r in phase2_formulas if r.other_status == "proved")
    unfinished_other = sum(1 for r in phase2_formulas if r.other_status == "unfinished")
    skipped_other = sum(1 for r in phase2_formulas if r.other_status == "skipped")
    timeout_other = sum(1 for r in phase2_formulas if r.other_status == "timeout")
    error_other = sum(1 for r in phase2_formulas if r.other_status == "error")

    print("Summary:", file=sys.stderr)
    print(f"  Total formulas: {len(phase2_formulas)}", file=sys.stderr)
    print(f"  Current version: {proved_current} proved, {unfinished_current} unfinished, {skipped_current} skipped, {timeout_current} timeout, {error_current} errors", file=sys.stderr)
    if proved_other or unfinished_other or skipped_other or timeout_other or error_other:
        print(f"  Other version:   {proved_other} proved, {unfinished_other} unfinished, {skipped_other} skipped, {timeout_other} timeout, {error_other} errors", file=sys.stderr)


if __name__ == "__main__":
    main()
