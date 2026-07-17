# PVS-CLI: Command-Line Interface for PVS

A Python-based command-line tool for interacting with PVS (Prototype Verification System) in server mode. This tool allows you to typecheck files, start proof sessions, and send proof commands directly from your terminal.

## Prerequisites

- **macOS** (or other Unix-like system)
- **Python 3.7+**
- **PVS 8.1** 

## Initialization

### Quick Start

1. Make scripts executable:
   ```bash
   chmod +x pvs-cli.sh pvs-cli/pvs-cli.py
   ```

2. Initialize the virtual environment (first time only):
   ```bash
   ./pvs-cli.sh --init-venv
   ```
   Note: `pvs-cli.py` is expected to be in the `pvs-cli/` subdirectory. The `pvs-cli.sh` wrapper script will automatically locate and run it.

### Optional: Add to PATH

To use `pvs-cli.sh` from anywhere, add it to your PATH:

1. Add `/path/to/nasalib/pvs-scripts` to your PATH in `~/.zshrc` or `~/.bash_profile`:
   ```bash
   export PATH="$HOME/path/to/nasalib/pvs-scripts:$PATH"
   ```

2. Reload your shell configuration:
   ```bash
   source ~/.zshrc  # or source ~/.bash_profile
   ```
**Note**: The rest of this document assumes that the path to `pvs-cli.sh` is in the `PATH` variable.

### Custom Virtual Environment Location

If you want to use a custom location for the virtual environment:

```bash
$ pvs-cli.sh --venv-dir /path/to/venv --init-venv
$ pvs-cli.sh --venv-dir /path/to/venv --typecheck example.pvs
```

## Usage

### Starting PVS Server

Before using `pvs-cli.sh`, ensure PVS is running in server mode.
To run PVS in server mode you can invoke the following command in a terminal.

```bash
$ pvs -raw -port 23456
```

### Viewing Available Methods

To see all available PVS JSON-RPC methods with their signatures:

```bash
$ pvs-cli.sh --describe-server-methods
```

This displays all 37 methods organized by category, with their parameters and description.

### Basic Commands

#### Typecheck a PVS file

```bash
$ pvs-cli.sh --typecheck "/path/to/example.pvs"
```

**Example output:**
```
Parsing example
example parsed successfully
Typechecking example
example typechecked successfully
```

#### Start a proof session

```bash
$ pvs-cli.sh --prove "/path/to/example.pvs#example#lemma_1"
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

#### Send proof commands

```bash
$ pvs-cli.sh --proof-command "(skolem!)"
```

**Example output:**
```
Skolemizing and keeping names of the universal formula in (+ -),
this simplifies to: 
lemma_1 :  

  |-------
{1}   x!1 >= 0

Ready to receive proof commands
```

#### List active proof sessions

```bash
$ pvs-cli.sh --list-active-proofs
```

**Example output:**
```
Active proof sessions:
  lemma_1-0: /path/to/example.pvs#example#lemma_1 *
  lemma_1-1: /path/to/example.pvs#example#lemma_1
(* = current active proof)
```

#### Set active proof session

When working with multiple proof sessions, you can switch between them:

```bash
$ pvs-cli.sh --set-active-proof lemma_1-1
```

**Example output:**
```
Active proof set to: lemma_1-1
Formula: /path/to/example.pvs#example#lemma_1
```

#### Check proof session status

```bash
$ pvs-cli.sh --status
```

**Example output:**
```
Total active proof sessions: 2
Current active proof: lemma_1-0
Formula: /path/to/example.pvs#example#lemma_1
Use --list-active-proofs to see all active proofs
```

#### Quit proof session

```bash
$ pvs-cli.sh --quit-proof
```

**Example output:**
```
All proof sessions closed
```

### Advanced Options

#### Verbose Mode

Enable verbose output to see additional information including host, port, message prefixes, and active proof IDs:

```bash
$ pvs-cli.sh --verbose --proof-command "(skolem!)"
``` 
or
```bash
$ pvs-cli.sh -v --proof-command "(skolem!)"
```

**Example verbose output:**
```
[pvs-cli] Host: localhost
[pvs-cli] Port: 23456
[pvs-cli] Using proof ID: lemma_1-0
[pvs-server] Skolemizing...
[pvs-cli] Ready to receive proof commands
[pvs-cli] Active proof ID: lemma_1-0
```

### Using PVS-CLI with AI-Agents

PVS-CLI can be used as a tool by AI agents running on agentic platforms like Claude Code.

**Quick Setup (5 minutes)**

1. Start PVS server in your terminal:
  If your project depends on specific libraries, remember to add the path to them to the `PVS_LIBRARY_PATH` environment variable ***before*** starting PVS.
  ```bash
  $ export PVS_LIBRARY_PATH=/path/to/libraries
  ```
  then, start the server by using the following command.
  ```bash
  $ pvs -raw -port 23456
  ```
2. Initialize `pvs-cli` as stated above.
3. Copy project instructions:
  ```shell
  cp /path/to/nasalib/pvs-scripts/pvs-cli/CLAUDE-usage-instructions.md /path/to/your/pvs-project/CLAUDE.local.md
  ```
4. Open in Claude Code:
  ```shell
  cd /path/to/your/pvs-project
  claude .
  ```

## Complete Workflow Example

### Working with a Single Proof

Here's a typical workflow for proving a theorem:

```bash
# 1. Typecheck your PVS file
$ pvs-cli.sh --typecheck example.pvs
Parsing example
example parsed successfully
Typechecking example
example typechecked successfully

# 2. Start a proof session
$ pvs-cli.sh --prove "/path/to/example.pvs#example#lemma_1"
Starting proof session for lemma_1
lemma_1 :  

  |-------
{1}   FORALL (x: nat): x >= 0

Proof ID: lemma_1-0
Ready to receive proof commands

# 3. Apply proof steps
$ pvs-cli.sh --proof-command "(skolem!)"
Skolemizing...
Ready to receive proof commands

$ pvs-cli.sh --proof-command "(grind)"
Q.E.D.
Proof complete!

# 4. Check status (session auto-closed after completion)
$ pvs-cli.sh --status
No active proof sessions
```

### Working with Multiple Proofs

You can work on multiple proofs simultaneously:

```bash
# 1. Start first proof
$ pvs-cli.sh --prove "/path/to/example.pvs#example#lemma_1"
Proof ID: lemma_1-0
Ready to receive proof commands

# 2. Start second proof
$ pvs-cli.sh --prove "/path/to/example.pvs#example#lemma_1"
Proof ID: lemma_1-1
Ready to receive proof commands

# 3. List active proofs
$ pvs-cli.sh --list-active-proofs
Active proof sessions:
  lemma_1-0: /path/to/example.pvs#example#lemma_1
  lemma_1-1: /path/to/example.pvs#example#lemma_1 *
(* = current active proof)

# 4. Work on current proof (lemma_2)
$ pvs-cli.sh --proof-command "(skolem!)"
Ready to receive proof commands

# 5. Switch to first proof
$ pvs-cli.sh --set-active-proof lemma_1-0
Active proof set to: lemma_1-0
Formula: /path/to/example.pvs#example#lemma_1

# 6. Continue working on lemma_1
$ pvs-cli.sh --proof-command "(grind)"
Ready to receive proof commands
```

### Using Verbose Mode for Debugging

```bash
# Start a proof with verbose output
$ pvs-cli.sh -v --prove "/path/to/example.pvs#example#lemma_1"
[pvs-cli] Host: localhost
[pvs-cli] Port: 23456
[pvs-server] Starting proof session for lemma_1
[pvs-server] lemma_1 :  
[pvs-server] 
[pvs-server]   |-------
[pvs-server] {1}   FORALL (x: nat): x >= 0
[pvs-server] 
[pvs-server] Proof ID: lemma_1-0
[pvs-server] Ready to receive proof commands

# Send command with verbose output
$ pvs-cli.sh -v --proof-command "(skolem!)"
[pvs-cli] Host: localhost
[pvs-cli] Port: 23456
[pvs-cli] Using proof ID: lemma_1-0
[pvs-server] Skolemizing...
[pvs-server] Ready to receive proof commands
[pvs-cli] Active proof ID: lemma_1-0
```

## Project Structure

```
pvs-cli/
├── README.md           # This file
├── pvs-cli.sh          # Wrapper script (handles venv management)
└── pvs-cli/
    └── pvs-cli.py      # Main Python script
    └── .venv/          # Virtual environment (created by --init-venv)
```

The `pvs-cli.sh` wrapper script automatically locates and runs `pvs-cli/pvs-cli.py` with the appropriate virtual environment.

## How It Works

1. **Session Persistence**: The tool saves proof session state in `~/.pvs-cli-state.pkl`, allowing you to run multiple commands across different terminal invocations. This includes:
   - All active proof session IDs
   - The currently selected proof session
   - Formula information for each proof

2. **Multiple Proof Sessions**: You can have multiple proof sessions open simultaneously and switch between them using `--set-active-proof`.

3. **WebSocket Communication**: Uses JSON-RPC over WebSockets to communicate with the PVS server.

4. **Flexible Virtual Environment**: Use the built-in `.venv` or specify a custom location with `--venv-dir`. Initialize with `--init-venv` on first use.

6. **Colored Output**: ANSI color codes are used to make output more readable, distinguishing server messages, client messages, errors, and verbose information.

## Command Reference

### Core Proof Commands

- `--typecheck FILE` - Typecheck a PVS file
- `--prove FORMULA` - Start a proof session for a formula (can be just formula name, or `file#theory#formula`)
- `--proof-command COMMAND` - Send a proof command to the current session
- `--set-active-proof PROOF-ID` - Set the active proof session by proof ID
- `--list-active-proofs` - List all active proof sessions
- `--quit-proof` - Quit all proof sessions
- `--status` - Show current proof session status

### Generic Method Calls

- `--call METHOD [PARAM1] [PARAM2]...` - Call any PVS JSON-RPC method with string parameters
  - Example: `pvs-cli.sh --call parse example`
  - Example: `pvs-cli.sh --call help typecheck`
  - All 37 PVS methods are accessible via `--call`

### File Operations

- `--parse FILE` - Parse a PVS file without typechecking
- `--names-info FILE` - Get names information from a file
- `--term-at FILE PLACE` - Find term at specific location (e.g., `file.pvs "10:5"`)
- `--show-tccs FILE` - Show type-checking conditions for file
- `--lisp EXPR` - Execute a Lisp expression
- `--find-declaration ID` - Find declaration by ID

### Proof Operations

- `--interrupt-proof ID` - Interrupt a specific proof session
- `--proof-help CMD` - Get help for a proof command
- `--prover-status [PROOF_ID]` - Get prover status (optionally for specific proof)
- `--proof-status FORMREF` - Get proof status for a formula (FORMREF: formula name or `file#theory#formula`)
- `--proof-script FORMREF` - Get proof script for a formula
- `--all-proofs-of-formula FORMREF` - List all proofs for a formula
- `--delete-proof FORMREF PROOF_ID` - Delete a proof
- `--mark-proof-as-default FORMREF PROOF_ID` - Mark proof as default

### Context Operations

- `--change-workspace DIR` - Change workspace directory
- `--clear-workspace [DIR]` - Clear workspace (optionally specify directory)
- `--collect-theory-usings THREF` - Collect theory dependencies
- `--add-pvs-library PATH` - Add PVS library

### Basic Operations

- `--help-method METHOD` - Get help for a PVS method
- `--describe-server-methods` - List all PVS methods with signatures
- `--reset` - Reset system **[STUB - NOT IMPLEMENTED BY SERVER]**
- `--interrupt` - Interrupt operation **[STUB - NOT IMPLEMENTED BY SERVER]**
  - Use `--interrupt-proof ID` instead for proof sessions

### Optional Arguments

- `--host HOST` - PVS server host (default: `localhost`)
- `--port PORT` - PVS server port (default: `23456`)
- `--verbose`, `-v` - Enable verbose output (shows host, port, and proof IDs)
- `--no-color` - Disable colored output
- `--help`, `-h` - Show help message

### Reference Types

**FORMREF** (Formula Reference):
- Just formula name: `lemma_1`
- Full format: `file#theory#formula` (e.g., `/path/to/file.pvs#theory#lemma_1`)
- The tool automatically normalizes relative file paths to absolute paths

**THREF** (Theory Reference):
- Format: `file#theory` (e.g., `/path/to/file.pvs#theory`)
- Used with `--save-all-proofs` and `--collect-theory-usings`

## Generic Method Calls (Advanced)

For access to all 37 PVS JSON-RPC methods, use the generic `--call` option:

```bash
# Query available methods
pvs-cli.sh --call list-methods

# Get help for a method
pvs-cli.sh --call help typecheck

# Parse a file
pvs-cli.sh --call parse example

# Start proof with optional parameter
pvs-cli.sh --call prove-formula "/path/to/example.pvs#example#lemma_1"

# Multiple parameters (all as strings)
pvs-cli.sh --call show-tccs example
```

Use `--describe-server-methods` to see all available methods with their signatures.

## Troubleshooting

### "Could not connect to PVS server"

Ensure PVS is running in server mode:
```bash
pvs -port 23456
```

### "No active proof session"

You need to start a proof session first:
```bash
pvs-cli.sh --prove "theory#formula"
```

### "Proof ID not found in active proofs"

The proof session may have been closed or the ID is incorrect. Use:
```bash
pvs-cli.sh --list-active-proofs
```

### "Command not found: pvs-cli.sh"

Make sure `~/bin` is in your PATH:
```bash
export PATH="$HOME/bin:$PATH"
```

Add this to your `~/.zshrc` or `~/.bash_profile` to make it permanent.

### Permission denied

Make sure scripts are executable:
```bash
chmod +x pvs-cli.py pvs-cli.sh
```

### Python module not found

Reinitialize the virtual environment:
```bash
cd /path/to/pvs-cli
./pvs-cli.sh --init-venv
```

### Colors not displaying correctly

Some terminals may not support ANSI color codes. Use `--no-color`:
```bash
pvs-cli.sh --no-color --proof-command "(skolem!)"
```

## References

- [PVS Official Website](https://pvs.csl.sri.com/)
- [PVS GitHub Repository](https://github.com/SRI-CSL/PVS)
- [PVS WebSocket Examples](https://github.com/SRI-CSL/PVS/tree/master/python/websocket-examples)

## Support

For issues or questions, please open an issue in the repository.