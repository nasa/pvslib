# CLAUDE.md for PVS CLI Development

This file provides guidance to Claude Code when working with the PVS CLI tool (`pvs-cli.sh`) for formal verification and proof development.

## Overview

The `pvs-cli.sh` tool is a Python-based command-line interface to interact with PVS (Prototype Verification System) theorem prover via JSON-RPC. It allows typechecking, proving, and proof management without the interactive GUI.

## Setup and Prerequisites

Assume that `pvs-cli.sh` is in the PATH. If not, ask the user for the location of this script.

### Virtual Environment
The tool requires a Python virtual environment with the `websockets` module. On first use:

```bash
pvs-cli.sh --init-venv
```

This creates `.venv/` in the pvs-cli directory and installs dependencies. If you need to specify a custom venv location:

```bash
pvs-cli.sh --venv-dir /path/to/venv --init-venv
```

### PVS Server
PVS must be running in server mode on the specified port (default 23456):

```bash
pvs -raw -port 23456
```

The tool connects via websockets to this server, so ensure the port is not blocked and the server is actively listening before running commands.

## Common Commands

### Typechecking
```bash
pvs-cli.sh --typecheck "/path/to/file/file.pvs"
```

Returns:
- Parsing output and any parser errors
- Typechecking output and any type errors with line:column locations
- Success message: "file typechecked successfully"

Useful flags:
- `--verbose` / `-v`: Enables detailed output with colored formatting
- `--no-color`: Disables ANSI color codes
- `--host HOST`: Specify server host (OPTIONAL, default: localhost)
- `--port PORT`: Specify server port (OPTIONAL, default: 23456)

### Parsing Without Typechecking
```bash
pvs-cli.sh --parse "/path/to/file/file.pvs"
```

### Getting Help
```bash
pvs-cli.sh --help
```

Shows all available options and basic usage examples.

## Typechecking Workflow

When typechecking a collection of PVS files:

1. **Start simple**: Typecheck files with minimal dependencies first to identify patterns
2. **Check imports**: Verify all imported libraries and theories are available
3. **Handle ambiguities**: Watch for "does not uniquely resolve" errors - these often need disambiguation
4. **Retry on server issues**: The websockets connection can timeout; retry with a delay (`sleep N && <command>`)

## Server Issues and Workarounds

### Keepalive Timeout
**Error:** "sent 1011 (internal error) keepalive ping timeout; no close frame received"

**Workaround:** The server may be slow to respond. Add a delay before retrying:
```bash
sleep 3 && pvs-cli.sh --port 23456 --typecheck "/path/to/file/file.pvs"
```

### JSON Parsing Errors
**Error:** "'str' object has no attribute 'get'"

This is an internal server error, usually transient. Retry after a delay.

### Connection Refused
Ensure PVS server is running: `pvs -raw -port 23456`

## Error Message Format

Typecheck errors are reported as:

```
Typecheck error: /path/to/file.pvs:LINE:COL
  <expression or context>
  <detailed error message>
Error: Typechecking failed for file
```

Key information:
- **LINE:COL**: Line and column number (1-indexed)
- **Context**: The expression that failed to typecheck
- **Message**: Description of the type mismatch or resolution failure

## Batch Typechecking

To typecheck multiple files in sequence:

```bash
for f in theory1.pvs theory2.pvs theory3.pvs; do
  echo "Checking $f..."
  pvs-cli.sh --port 23456 --typecheck "$f" || break
done
```

Stop on first failure with `|| break` to make debugging easier.

## Performance Notes

- Typechecking large, complex theories can be slow (30+ seconds)
- PVS server processes one request at a time; don't run multiple commands in parallel against the same server
- Consider restarting the PVS server (`pkill pvs; pvs -raw -port 23456`) if it becomes unresponsive

## Troubleshooting

**Problem:** Typecheck hangs or takes very long
- **Cause**: Complex type inference or proof obligations
- **Solution**: Check for circular imports or overly general type parameters; restart PVS server

**Problem:** "Cannot find theory X@Y"
- **Cause**: Library not in PVS_LIBRARY_PATH
- **Solution**: Set `export PVS_LIBRARY_PATH=/path/to/lib:$PVS_LIBRARY_PATH` before running PVS server

**Problem:** Changes not reflected after editing a file
- **Cause**: PVS server may have cached the old version
- **Solution**: Restart PVS server, by killing and starting it again.

## Additional Resources

```bash
# List all available server methods
pvs-cli.sh --describe-server-methods

# Get help for a specific method
pvs-cli.sh --help-method typecheck

# List active proof sessions
pvs-cli.sh --list-active-proofs
```

## Tips for Efficient PVS Development

1. **Organize files by dependency**: Typecheck files in dependency order (base theories first)
2. **Use descriptive error messages**: Read error messages carefully; they often suggest the fix
3. **Test incrementally**: Don't make large changes at once; verify after each change
4. **Keep server running**: Start PVS server once, reuse it for multiple typechecks
5. **Document issues encountered**: When running into problems, write down the interaction in an md file and recommend the user to send it to the developers.
