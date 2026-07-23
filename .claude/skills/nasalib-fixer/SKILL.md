---
name: nasalib-fixer
description: |
  Fix broken PVS proofs in NASALib. Use this skill when: a proof is marked as "unfinished" or "BAD", proveit reports proof failures, the user mentions broken/failing proofs, you see .trf files with "-BAD" suffix, or the user asks to repair/fix proofs. Also use when asked to analyze proof traces, compare working vs failing proof runs, or diagnose why a proof broke after a PVS version change.
---

# NASALib Proof Fixer

This skill helps diagnose and fix broken proofs in NASALib, a collection of formal developments for the PVS theorem prover.

## Background

NASALib contains hundreds of PVS theories with thousands of formally verified lemmas. Proofs can break when:
- PVS is upgraded (e.g., 8.0 to 8.1) and prover behavior changes
- Definitions or lemmas in dependencies change
- Proof strategies (tactics) produce different subgoals
- Type-checking generates different TCCs

## Key Tools

### pvs-cli.sh
The primary interface to PVS. Located at `pvs-scripts/pvs-cli.sh`.

**Assumption**: PVS server is already running on port 23456 (`pvs -port 23456`).

**Key Commands**:
```bash
# Typecheck a file
./pvs-scripts/pvs-cli.sh --typecheck file.pvs

# Start proving a formula
./pvs-scripts/pvs-cli.sh --prove "theory#lemma"

# Send proof commands interactively
./pvs-scripts/pvs-cli.sh --proof-command "(skeep)"
./pvs-scripts/pvs-cli.sh --proof-command "(grind)"

# Get current proof state
./pvs-scripts/pvs-cli.sh --status

# List active proofs
./pvs-scripts/pvs-cli.sh --list-active-proofs

# Quit proof session
./pvs-scripts/pvs-cli.sh --quit-proof

# Save all proofs to .prf file (run after quitting proof)
./pvs-scripts/pvs-cli.sh --save-all-proofs

# Mark a proof as the default
./pvs-scripts/pvs-cli.sh --mark-proof-as-default "<formref>" "<proof-id>"
```

**Saving and Marking Proofs**:

After completing a proof interactively:
1. Quit the proof with `--quit-proof`
2. Save to the .prf file with `--save-all-proofs`
3. Mark as default with `--mark-proof-as-default`

The `<formref>` format is: `<file-path>#<theory-name>#<formula>`
Example: `matrices/query_coeff.pvs#query_coeff#switch_is_with`

The `<proof-id>` is printed to stdout by pvs-cli.sh when:
- Starting a proof with `--prove`
- After each `--proof-command`

Watch for the proof-id in the output and use it when marking as default.

### diff for Comparing Traces
Use `diff` to compare working vs broken proof traces:
```bash
# Compare two trace files
diff -u good-version.trf bad-version-BAD.trf

# Highlight key differences
diff -u good.trf bad.trf | grep -A5 -B5 "Warning\|subgoal"
```

## Main Workflow: Iterative Replay and Fix

The workflow is **iterative and collaborative**: replay the proof step-by-step, stop at each divergence, analyze the issue together, apply a fix, then continue to the next divergence.

### Overview

```
┌─────────────────────────────────────────────────────────┐
│  1. Start proof session                                 │
│  2. Replay steps from working trace one at a time       │
│  3. Compare result with expected outcome                │
│         ↓                                               │
│  4. DIVERGENCE FOUND → Stop and analyze together        │
│         ↓                                               │
│  5. Discuss why it broke, suggest fix                   │
│         ↓                                               │
│  6. Apply fix (interactively or note for .prf edit)     │
│         ↓                                               │
│  7. Continue replaying from this point                  │
│         ↓                                               │
│  8. Repeat until proof completes or next divergence     │
└─────────────────────────────────────────────────────────┘
```

### Step 1: Initial Analysis with diff

Given two trace files:
- `<lib>-<theory>-<formula>-<good-version>.trf` - Working proof
- `<lib>-<theory>-<formula>-<bad-version>-BAD.trf` - Broken proof

```bash
# Quick diff to see all changes
diff -u good.trf bad-BAD.trf | head -100

# Find subgoal count differences (key divergence indicators)
diff good.trf bad-BAD.trf | grep "yields.*subgoals"

# Find warnings
grep "Warning:" bad-BAD.trf
```

### Step 2: Extract Steps from Working Trace

Steps appear as `Rerunning step: (COMMAND ...)`:
```bash
# List all proof steps with line numbers
grep -n "^Rerunning step:" good.trf

# List steps with their outcomes (key checkpoints)
grep -n "Rerunning step:\|yields.*subgoals" good.trf
```

### Step 3: Start Proof Session

```bash
./pvs-scripts/pvs-cli.sh --typecheck theory.pvs
./pvs-scripts/pvs-cli.sh --prove "theory#lemma"
```

### Step 4: Replay Steps Until Divergence

For each step in the working trace:
```bash
# Run the step
./pvs-scripts/pvs-cli.sh --proof-command "(command ...)"
```

**After each command, compare pvs-cli.sh output with the good trace:**

The output from `--proof-command` includes subgoal information. Compare this against what the working trace expected:

| Working Trace Says | pvs-cli.sh Output Shows | Action |
|-------------------|------------------------|--------|
| `this yields 3 subgoals` | `this yields 3 subgoals` | ✓ Continue |
| `this yields 3 subgoals` | `this yields 5 subgoals` | → DIVERGENCE (more subgoals) |
| `this simplifies to` | `this yields 2 subgoals` | → DIVERGENCE (expected single goal) |
| `This completes the proof of X` | No completion message | → DIVERGENCE (branch not closed) |

**Key patterns to look for in pvs-cli.sh output:**
- `this yields N subgoals` - count must match working trace
- `this simplifies to` - should produce exactly one goal
- `This completes the proof of` - branch should be closed
- `Q.E.D.` - entire proof complete

**When subgoal counts differ:**
- More subgoals than expected → new TCCs or case splits were generated
- Fewer subgoals than expected → automation closed goals differently (may still work)

**Also compare sequent content, not just counts:**

Subgoals may be generated in a different order. Compare the actual sequent formulas:

```bash
# Get current proof state with sequents
./pvs-scripts/pvs-cli.sh --status
```

Look at the sequent in the good trace:
```
{-1}  x > 0
{-2}  y < 10
  |-------
{1}   x + y > 0
```

And compare with pvs-cli.sh output. If the formulas match but appear in different order or with different numbering:
- The proof may still work, but subsequent steps using formula numbers (e.g., `(inst -1 ...)`) may need adjustment
- Note which formula numbers changed for later steps

**Reordering indicators:**
- Same formulas, different `{-N}` or `{N}` numbers → steps referencing formula numbers may break
- Same count but different formulas → true divergence, likely a different proof path
- **Branches in different order** → the subgoals themselves may be reordered

**Branch reordering:**

When a step yields multiple subgoals, they may appear in a different order than the working trace. For example, if the good trace shows:
```
Branch 1: prove x > 0
Branch 2: prove y > 0  
Branch 3: prove z > 0
```

But pvs-cli.sh shows them as:
```
Branch 1: prove y > 0  (was branch 2)
Branch 2: prove z > 0  (was branch 3)
Branch 3: prove x > 0  (was branch 1)
```

The proof script expects to handle branches in the original order. To fix:
1. Identify which branch you're currently on by examining the sequent
2. Find the corresponding proof steps from the working trace for that sequent
3. Apply those steps, then continue to the next branch
4. The `.prf` file may need branch handlers reordered to match the new order

```bash
# If needed, check current state
./pvs-scripts/pvs-cli.sh --status
```

### Step 5: At Divergence - Handle Systematically

When divergence is found, follow this procedure:

1. **Report the divergence**: 
   - Which step caused it
   - What the working trace expected
   - What actually happened

2. **Try an automated fix** (e.g., `WITH-TCCS`, `(apply (grind) :timeout 10)`):
   - If it closes the branch → continue to next step
   - If it doesn't close the branch → `(undo)` immediately

3. **Check for branch reordering**:
   - Look at the current sequent
   - Search the good trace for this exact sequent (it may appear in a sibling branch)
   - If found in a different branch → continue the proof using steps from that branch
   - Note the reordering for later .prf updates if needed

4. **If sequent not found in trace**:
   - `(postpone)` the current branch
   - Continue with the rest of the good trace
   - Come back to postponed branches later

5. **Show the user the sequent** before trying other approaches

### Step 6: Continue Replaying

After handling a divergence:
1. Continue replaying steps from the good trace
2. Match steps to the current branch (accounting for any reordering)
3. Repeat divergence handling as needed

### Step 7: Handle Postponed Branches

After replaying the main trace:
1. Return to any postponed branches
2. Analyze what's needed to close them
3. Ask the user for guidance on complex cases

### Step 8: Complete and Save

When proof completes with `Q.E.D.`:
1. Quit the proof with `--quit-proof`
2. Save with `--save-all-proofs`
3. Mark as default with `--mark-proof-as-default`

**IMPORTANT: Editing the .prf file directly is a LAST RESORT.** 
Always try to complete the proof interactively first. Only edit .prf if:
- The proof is too complex to replay interactively
- Multiple structural changes are needed
- The user explicitly requests it

## Trace File Format

### Naming Convention
```
<lib>-<theory>-<formula>-<PVS-version>-<date>-<git-commit>[-BAD].trf
```

Example:
- `matrices-query_coeff-switch_is_with-8.0-20260708-32f059fc.trf` - Working (PVS 8.0)
- `matrices-query_coeff-switch_is_with-8.1-20260711-3d893bf9-BAD.trf` - Broken (PVS 8.1)

### Key Patterns

**Working proof ends with:**
```
Q.E.D.
<theory>.<formula> proved in X.XX real, X.XX cpu seconds
```

**Broken proof ends with:**
```
Postponing <branch>.
...
<theory>.<formula> unproved in X.XX real, X.XX cpu seconds
```

**Warning (proof structure mismatch):**
```
***Warning: <lemma> has fewer subproofs (N) than subgoals (M)
```

### Quick Analysis Commands

```bash
# Count warnings in broken trace
grep -c "Warning:" broken-BAD.trf

# Find all postponed (unhandled) branches
grep "^Postponing" broken-BAD.trf

# Compare proof completion
tail -5 good.trf bad-BAD.trf
```

## Proof Files (.prf)

Located alongside `.pvs` theory files. Format is S-expression based:
```lisp
(|theory_name|
 (|lemma_name| <status>
  (|lemma_name-<branch>| <info> <timestamp> (<proof-script>) <deps> <refs>)))
```

Common proof commands:
- `(SKEEP)` - Skolemize keeping names
- `(EXPAND "name")` - Expand a definition
- `(INST? ...)` - Instantiate quantifiers automatically
- `(INST -1 "term")` - Instantiate explicitly
- `(GRIND)` - Powerful automation
- `(REWRITE "lemma")` - Apply rewrite rule
- `(LEMMA "name")` - Introduce a lemma
- `(CASE "formula")` - Case split
- `(SKIP)` - Do nothing (useful for debugging)

## Common Fix Patterns

### A. More Subgoals Than Expected
```
***Warning: lemma has fewer subproofs (3) than subgoals (5)
```

**Fix**: Add handlers for new branches in `.prf`:
```lisp
("4" (apply (grind) :timeout 10) NIL NIL)
("5" (apply (grind) :timeout 10) NIL NIL)
```

### B. TCC Branches (ending in T)
New type correctness conditions appeared:
```
Postponing switch_is_with.4T.
```

**Fix**: Usually `(apply (grind) :timeout 10)` or `(SUBTYPE-TCC)` works. If grind doesn't close it, `(undo)` and examine the sequent.

### C. Automation Strategy Changed
`(grind)` or `(inst?)` behaves differently.

**Fix**: Replace with explicit steps. Use diff to see what the working version did, then replicate manually.

### D. Branch Naming Shifted
```diff
-switch_is_with.2.3.2.1
+switch_is_with.2.3.2.1.1
```

Extra nesting = new intermediate branches were created.

### E. Deep TCC Branches (Existence TCCs)
When TCCs like `EXISTS (x: below(N)): TRUE` appear:
```
{1}   EXISTS (x: below(3)): TRUE
```

**Fix**: Use `(INST 1 "0")` to instantiate the existential with 0.

### F. Using `with-tccs` for Automatic TCC Handling
When a command generates unexpected TCCs, wrap it with `with-tccs`:
```lisp
; Instead of:
(CASE-REPLACE "n=0")

; Use:
(WITH-TCCS (CASE-REPLACE "n=0"))
```

This automatically handles TCCs generated by the command. Useful when:
- `inst`, `case-replace`, `typepred` steps generate extra subgoals
- You want to avoid manually adding TCC handlers for each branch

**Real example from `switch_is_with` fix:**
```lisp
; BAD: (CASE "...formula...") yielded 5 subgoals (3 were TCCs)
; GOOD: (WITH-TCCS (CASE "...formula...")) yields 2 subgoals

; BAD: (INDUCT "nn") yielded 6 subgoals (2 were TCCs)  
; GOOD: (WITH-TCCS (INDUCT "nn")) yields 4 subgoals
```

**Interactive debugging tip**: If a step produces extra subgoals, try:
1. `(undo)` to revert the step
2. `(with-tccs <step>)` to replay with automatic TCC handling

### G. Existence TCCs - Instantiate with a Witness
When TCCs of the form `EXISTS (x: below(N)): TRUE` appear as unhandled branches:
```
{1}   EXISTS (x: below(3)): TRUE
```

**Fix**: Instantiate with `0` (always valid for `below(N)` when `N > 0`):
```lisp
(INST 1 "0")
```

This pattern commonly appears when:
- `WITH-TCCS` is not used and TCCs become separate branches
- The prover generates existence obligations for bounded types
- Branches ending in `T` (e.g., `switch_is_with.2.3.2.1.1.1.2.2T`) are postponed

**Real example from `switch_is_with` fix:**
The BAD trace postponed many TCC branches like `*.2T`, `*.4T`, `*.5T`.
The fix used `(INST 1 "0")` to close each existence TCC immediately.

## Available Scripts

### `pvs-scripts/prooftrace.sh`
Generate trace files:
```bash
./pvs-scripts/prooftrace.sh [dir@]theory.formula1:formula2
```

Options:
- `--bad` - Only write traces for unfinished proofs
- `--label <label>` - Custom label for output file

### `pvs-scripts/fixproofs.sh`
Automated syntax fixes (PVS 7 migration):
```bash
./pvs-scripts/fixproofs.sh <file.prf>
./pvs-scripts/fixproofs.sh --dry-run <directory>
```

## Using Timeouts for Proof Steps

When a proof step hangs or takes too long (common with `(grind)` or `(inst?)`), use the `apply` rule with a `:timeout` parameter:

```lisp
; Run grind with a 10-second timeout
(apply (grind) :timeout 10)

; If it times out, it's treated as (skip) - proof state unchanged
```

**Syntax:**
```lisp
(apply <strategy> :timeout <seconds>)
```

**Additional options:**
- `:time? t` - Print elapsed time after the step completes
- `:comment "..."` - Add a descriptive comment
- `:save? t` - Save the step even if it does nothing

### Workflow for New Branches

When handling new/unexpected branches, use automatic tactic exploration but **always use timeouts** for potentially slow tactics:

**Slow tactics (always use timeout):**
- `(grind)` → `(apply (grind) :timeout 10)`
- `(inst?)` → `(apply (inst?) :timeout 10)`
- `(grind-reals)` → `(apply (grind-reals) :timeout 10)`

**Fast tactics (no timeout needed):**
- `(assert)`, `(simplify)`, `(prop)`, `(bddsimp)`
- `(skeep)`, `(skosimp)`, `(flatten)`
- `(expand "...")`, `(rewrite "...")`
- `(inst -1 "...")`, `(case "...")`
- `(subtype-tcc)`, `(trivial-tcc)`

**Exploration strategy for new branches:**

1. First try fast tactics that often work on TCCs:
   ```lisp
   (subtype-tcc)   ; for type correctness
   (assert)        ; simple automation
   ```

2. If those don't close it, try grind with timeout:
   ```lisp
   (apply (grind) :timeout 10)
   ```

3. **IMPORTANT:** If grind times out or doesn't close the branch:
   ```lisp
   (undo)
   ```
   Then **stop and show the user the current sequent** before continuing. Let the user examine the proof state and decide how to proceed. Do not automatically try other tactics after a failed grind.

## Tips

- **First divergence is key** - fix it first, others may resolve automatically
- **Use diff liberally** - compare traces to understand what changed
- **pvs-cli.sh is your debugger** - step through interactively when stuck
- **Minimal fixes** - don't rewrite entire proofs
- **`(SKIP)` is your friend** - use it to see remaining goals
- **Look for "Postponing"** - these are the unhandled branches
- **Extra branch depth** (`.1.1` vs `.1`) indicates new subgoals
- **Use timeouts** - when debugging, wrap slow tactics with `(apply ... :timeout N)` to avoid hanging

## Purging Non-Default Proofs

After fixing proofs, you may want to clean up the `.prf` file by removing non-default (obsolete) proofs. This reduces file size and avoids confusion.

### Using proveit --purge

When running `proveit` on a directory, purge is enabled by default:
```bash
# Purge is automatic for directories
proveit matrices

# Explicitly enable purge
proveit --purge myfile.pvs

# Disable purge (e.g., if you want to keep alternative proofs)
proveit --no-purge matrices
```

### Using Lisp Functions Directly

In a PVS session or via pvs-cli.sh:
```lisp
;; Purge a single formula (if its default proof is 'proved')
(purge-formula-proofs "theory_name" "formula_name")

;; Purge all proved formulas in a file
(purge-proved-formulas-file "filename")
```

These functions:
- Only purge formulas whose default proof status is `proved`
- Only purge if there are multiple proofs (keeps the default)
- Create no backup (use `cleanup-proofs-pvs-file` if you want a `.bak`)

## proveit and provethem Options

### Key Options for Proof Fixing

```bash
# Run proofs with purge (clean up after fixing)
proveit --purge mytheory.pvs

# Don't purge (keep all proof versions)
proveit --no-purge mytheory.pvs

# Force re-run all proofs
proveit -f mytheory.pvs

# Import chain (prove dependencies too)
proveit -a mytheory.pvs

# Generate trace files for analysis
./pvs-scripts/prooftrace.sh theory.formula

# Only generate traces for broken proofs
./pvs-scripts/prooftrace.sh --bad theory.formula
```

### provethem for Multiple Libraries

```bash
# Run all libraries with purge
provethem --purge

# Run specific libraries
provethem --do=matrices,digraphs

# Skip specific libraries
provethem --but=examples

# Start from a specific library
provethem --from=matrices
```

## Prioritizing Fixes by Dependency Order

NASALib libraries have dependencies defined in `nasalib.all`. Fix libraries in order to avoid cascading failures.

### Check Library Order

```bash
# View the library order
grep -v "^#" nasalib.all | grep -v "^:" | grep -v "^$" | head -30

# Find where a library appears in the order
grep -n "matrices" nasalib.all
```

### Sort Broken Formulas by Dependency Order

If you have a CSV of broken formulas, sort by nasalib.all order:
```bash
# Extract library order (normalize / to -)
grep -v "^#" nasalib.all | grep -v "^:" | grep -v "^$" | \
  sed 's/:.*//g' | sed 's|/|-|g' | sed 's/[[:space:]]*$//' > /tmp/lib_order.txt

# Sort CSV by library order
awk -F',' '
BEGIN {
    i = 1
    while ((getline line < "/tmp/lib_order.txt") > 0) {
        order[line] = i++
    }
}
{
    lib = $1
    if (lib in order) printf "%06d\t%s\n", order[lib], $0
    else printf "999999\t%s\n", $0
}' broken-formulas.csv | sort -t$'\t' -k1,1n | cut -f2-
```

### Fix Strategy

1. Start with libraries that have no NASALib dependencies (early in nasalib.all)
2. Fix all formulas in one library before moving to the next
3. Re-run `proveit` on dependent libraries after fixing a dependency

## Tracking Fixed Proofs

Keep a record of fixed proofs in `PVS81-PROOF-FIXES.md` (or similar) at the NASALib root:

```markdown
# PVS 8.1 Proof Fixes

| Date | Library | Theory | Formula | Issue | Fix Applied |
|------|---------|--------|---------|-------|-------------|
| 2026-07-14 | matrices | query_coeff | switch_to_array | CASE generates extra TCCs | WITH-TCCS wrapper |
| 2026-07-14 | matrices | query_coeff | switch_to_array_TCC1 | New existence TCC | (SKEEP) (INST 1 "0") |
```

Update this file after each fix session to track progress and document patterns.

## PVS 8.1 TCC Patterns

PVS 8.1 has stricter TCC (Type Correctness Condition) generation than PVS 8.0. Commands that worked before may now generate additional subgoals.

### Commands That Often Need WITH-TCCS in 8.1

| Command | Issue | Fix |
|---------|-------|-----|
| `(CASE "...")` | Generates existence TCCs for bounded types | `(WITH-TCCS (CASE "..."))` |
| `(INDUCT "var")` | Generates TCCs for induction variable | `(WITH-TCCS (INDUCT "var"))` |
| `(INST? ...)` | Generates TCCs when instantiating | `(WITH-TCCS (INST?))` |
| `(INST -N "..." ...)` | Generates TCCs for the instantiation | `(WITH-TCCS (INST -N "..."))` |
| `(TYPEPRED "expr")` | Generates existence TCCs | `(WITH-TCCS (TYPEPRED "expr"))` |
| `(CASE-REPLACE "...")` | Generates TCCs for the replacement | `(WITH-TCCS (CASE-REPLACE "..."))` |

### Existence TCCs

When you see a sequent like:
```
{1}   EXISTS (x: below(N)): TRUE
```

This is an existence TCC. Close it with:
```lisp
(INST 1 "0")
```

This works because `0` is always a valid witness for `below(N)` when `N > 0`.

### Diagnosing TCC Issues

1. **Count subgoals**: If a step yields more subgoals than the working trace, TCCs were generated
2. **Look for T suffix**: Branch names ending in `T` (e.g., `lemma.2.3T`) are TCC branches
3. **Check sequent**: Existence TCCs show `EXISTS (x: type): TRUE`

### Example Fix Session

```
Working trace: (CASE "n = 0") yields 2 subgoals
Broken trace:  (CASE "n = 0") yields 5 subgoals (3 are TCCs)

Fix:
1. (undo)
2. (WITH-TCCS (CASE "n = 0"))
   → Now yields 2 subgoals (TCCs handled automatically)
```

### When WITH-TCCS Isn't Enough

Sometimes TCCs need manual handling:

1. **Complex existence TCCs**: May need a specific witness, not just `0`
2. **Nested TCCs**: Multiple levels of TCC generation
3. **Type constraints**: The TCC requires proving a non-trivial property

In these cases:
1. Let the TCC become a separate branch
2. Examine the sequent
3. Provide an appropriate proof (often `(apply (grind) :timeout 10)` or explicit instantiation)

## Always Use Timeouts with GRIND

**IMPORTANT**: Never use bare `(GRIND)` - always use a timeout:

```lisp
;; BAD - can hang indefinitely
(GRIND)

;; GOOD - times out after 10 seconds
(apply (grind) :timeout 10)
```

### Workflow When Trying Grind

1. Try grind with timeout:
   ```lisp
   (apply (grind) :timeout 10)
   ```

2. If the branch closes → continue to next step

3. If grind times out OR doesn't close the branch:
   ```lisp
   (undo)
   ```
   Then **stop and examine the sequent** before trying other approaches.

### Why This Matters

- `(GRIND)` can run forever on complex goals
- A timeout prevents hanging the proof session
- `(undo)` after failure keeps the proof state clean
- Examining the sequent helps find a targeted fix instead of brute-force automation

### Other Tactics That Benefit from Timeouts

```lisp
;; These can also be slow
(apply (inst?) :timeout 10)
(apply (grind-reals) :timeout 10)
(apply (reduce) :timeout 10)
```

---
    name: nasalib-fixer
    description: |
      Fix broken PVS proofs in NASALib...
    allowedPrompts:
      - tool: Bash
        prompt: "Run proveit"
      - tool: Bash
        prompt: "Run prooftrace.sh"
      - tool: Bash
        prompt: "Run pvs-cli.sh"
---