---
name: pvs-cli
description: |
  Command-line interface to PVS for typechecking, proving, and ground evaluation (PVSio). Use this skill when: the user wants to typecheck PVS files, start or manage proof sessions, send proof commands interactively, evaluate ground expressions using PVSio, or work with PVS from the command line without the GUI.
---

# PVS-CLI: Command-Line Interface for PVS

This skill provides guidance for using `pvs-cli.sh`, a Python-based command-line tool for interacting with PVS (Prototype Verification System) in server mode.

## Prerequisites

### PVS Server Must Be Running

pvs-cli.sh requires a PVS server. If you get "Could not connect to PVS server", the server is not running.

**Check if server is running:**
```bash
pvs-cli.sh --status
```

If you see "Could not connect", **ask the user to start the server** in a separate terminal:

```bash
pvs -raw -port 23456
```

Or if the project depends on specific libraries:
```bash
export PVS_LIBRARY_PATH=/path/to/libraries
pvs -raw -port 23456
```

**Important:** The PVS server runs in the foreground and must stay running. The user should start it in a separate terminal window or use `nohup`:
```bash
nohup pvs -raw -port 23456 > /dev/null 2>&1 &
```

### First-Time Setup

Initialize the virtual environment (only needed once):
```bash
pvs-cli.sh --init-venv
```

## Core Commands

### Typechecking

```bash
# Typecheck a PVS file (use absolute path)
pvs-cli.sh --typecheck "/path/to/file.pvs"

# Parse without typechecking
pvs-cli.sh --parse "/path/to/file.pvs"
```

### Starting a Proof

```bash
# Start proof session (returns a Proof ID)
pvs-cli.sh --prove "/path/to/file.pvs#theory#formula"
```

**Example output:**
```
Starting proof session for lemma_1
lemma_1 :  

  |-------
{1}   FORALL (x: nat): x >= 0

Proof ID: lemma_1-0
Ready to receive proof commands
```

### Sending Proof Commands

```bash
# Send a proof command to the active session
pvs-cli.sh --proof-command "(skolem!)"
pvs-cli.sh --proof-command "(grind)"

# IMPORTANT: Use timeouts for potentially slow tactics
pvs-cli.sh --proof-command "(apply (grind) :timeout 10)"
```

**If a command doesn't close the branch or times out:**
```bash
pvs-cli.sh --proof-command "(undo)"
```

### Managing Proof Sessions

```bash
# List all active proof sessions
pvs-cli.sh --list-active-proofs

# Check current status
pvs-cli.sh --status

# Switch to a different proof session
pvs-cli.sh --set-active-proof lemma_1-1

# Quit current proof session
pvs-cli.sh --quit-proof

# Quit all proof sessions
pvs-cli.sh --quit-all-proofs
```

### Saving Proofs

```bash
# Save all proofs for a theory
pvs-cli.sh --save-all-proofs "/path/to/file.pvs#theory"

# Mark a specific proof as default
pvs-cli.sh --mark-proof-as-default "/path/to/file.pvs#theory#formula" "proof-id"
```

## Complete Proof Workflow

```bash
# 1. Typecheck the file
pvs-cli.sh --typecheck "/path/to/example.pvs"

# 2. Start proof session
pvs-cli.sh --prove "/path/to/example.pvs#example#lemma_1"
# Note the Proof ID from output (e.g., "lemma_1-0")

# 3. Apply proof steps
pvs-cli.sh --proof-command "(skeep)"
pvs-cli.sh --proof-command "(apply (grind) :timeout 10)"
# If Q.E.D. appears, proof is complete

# 4. If proof not complete, continue with more steps...
pvs-cli.sh --proof-command "(expand \"definition_name\")"
pvs-cli.sh --proof-command "(apply (inst?) :timeout 10)"

# 5. When complete, quit and save
pvs-cli.sh --quit-proof
pvs-cli.sh --save-all-proofs "/path/to/example.pvs#example"

# 6. Mark as default (use the Proof ID from step 2)
pvs-cli.sh --mark-proof-as-default "/path/to/example.pvs#example#lemma_1" "lemma_1-0"
```

## Formula References (FORMREF)

Formula references can be specified in different formats:

| Format | Example | When to Use |
|--------|---------|-------------|
| Full path | `/path/to/file.pvs#theory#formula` | Most reliable |
| Formula only | `formula` | When context is clear |
| Theory#formula | `theory#formula` | When file is already typechecked |

**Always use absolute paths** to avoid ambiguity.

## Common Proof Commands

### Fast Tactics (no timeout needed)

```lisp
(skeep)              ; Skolemize keeping names
(flatten)            ; Flatten sequent
(assert)             ; Simple assertion
(prop)               ; Propositional simplification
(expand "name")      ; Expand a definition
(rewrite "lemma")    ; Apply rewrite rule
(inst -1 "term")     ; Instantiate formula -1
(case "formula")     ; Case split
(subtype-tcc)        ; Prove subtype TCC
```

### Slow Tactics (ALWAYS use timeout)

```lisp
(apply (grind) :timeout 10)        ; Powerful automation
(apply (inst?) :timeout 10)        ; Auto-instantiate
(apply (grind-reals) :timeout 10)  ; Reals automation
(apply (reduce) :timeout 10)       ; Reduction
```

### Control Commands

```lisp
(undo)               ; Undo last step
(postpone)           ; Postpone current branch
(skip)               ; Do nothing (for debugging)
(quit)               ; Abort proof
```

### TCC Handling (PVS 8.1)

```lisp
; Wrap commands that generate unexpected TCCs
(with-tccs (case "formula"))
(with-tccs (induct "var"))
(with-tccs (inst?))

; For existence TCCs: EXISTS (x: below(N)): TRUE
(inst 1 "0")
```

## Verbose Mode

Enable verbose output for debugging:

```bash
pvs-cli.sh -v --proof-command "(skolem!)"
```

Shows host, port, message prefixes, and active proof IDs.

## Troubleshooting

### "Could not connect to PVS server"

Ensure PVS is running:
```bash
pvs -raw -port 23456
```

### "No active proof session"

Start a proof first:
```bash
pvs-cli.sh --prove "file.pvs#theory#formula"
```

### Keepalive Timeout

Server may be slow. Add a delay and retry:
```bash
sleep 3 && pvs-cli.sh --typecheck "file.pvs"
```

### Changes Not Reflected

PVS server may have cached old version. Restart the server:
```bash
pkill pvs
pvs -raw -port 23456
```

### Proof Hangs

Use timeouts! Never use bare `(grind)`:
```bash
# BAD - can hang forever
pvs-cli.sh --proof-command "(grind)"

# GOOD - times out after 10 seconds
pvs-cli.sh --proof-command "(apply (grind) :timeout 10)"
```

If it still hangs, interrupt with Ctrl+C and restart with:
```bash
pvs-cli.sh --quit-proof
```

## Ground Evaluation with PVSio

PVSio is the PVS utility for ground evaluation (computing concrete values from PVS expressions).

### Starting a PVSio Session

```bash
# Start PVSio for a theory (must be typechecked first)
pvs-cli.sh --typecheck "/path/to/file.pvs"
pvs-cli.sh --call pvsio-start "/path/to/file.pvs#theory"
```

### Evaluating Expressions

```bash
# Evaluate a PVS expression in the current PVSio session
pvs-cli.sh --call pvsio-eval "2 + 3"
pvs-cli.sh --call pvsio-eval "factorial(10)"
pvs-cli.sh --call pvsio-eval "sqrt(2)"
```

### PVSio Workflow Example

```bash
# 1. Typecheck the theory
pvs-cli.sh --typecheck "/path/to/arith.pvs"

# 2. Start PVSio session for the theory
pvs-cli.sh --call pvsio-start "/path/to/arith.pvs#arith"

# 3. Evaluate expressions
pvs-cli.sh --call pvsio-eval "sum(1, 100)"
pvs-cli.sh --call pvsio-eval "is_prime(17)"
```

**Note:** PVSio can only evaluate ground expressions (no free variables). The theory must define executable functions (no uninterpreted constants or axioms).

## Additional Commands

```bash
# Get help for a proof command
pvs-cli.sh --proof-help "grind"

# Get help for a PVS method
pvs-cli.sh --help-method typecheck

# List all available server methods
pvs-cli.sh --describe-server-methods

# Execute raw Lisp expression
pvs-cli.sh --lisp "(+ 1 2)"

# Show TCCs for a file
pvs-cli.sh --show-tccs "file.pvs"

# Find declaration by ID
pvs-cli.sh --find-declaration "some_lemma"

# Change workspace
pvs-cli.sh --change-workspace "/path/to/workspace"
```

## Tips

1. **Always use absolute paths** for file references
2. **Use timeouts** with `(grind)`, `(inst?)`, and other slow tactics
3. **Check status often** with `--status` or `--list-active-proofs`
4. **Save incrementally** - don't wait until end to save proofs
5. **Restart PVS server** if it becomes unresponsive
6. **One command at a time** - PVS server processes sequentially
