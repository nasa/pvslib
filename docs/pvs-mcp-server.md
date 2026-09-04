# PVS MCP Server

## Overview

The PVS MCP (Model Context Protocol) Server is an implementation that exposes PVS functionality through the Model Context Protocol, enabling AI agents and tools to interact with PVS programmatically. It is implemented in [pvs-patches/patch-20270101-pvs-mcp.lisp](../pvs-patches/patch-20270101-pvs-mcp.lisp).

The server allows MCP-compatible clients to access PVS tools, perform typechecking, manage proofs, and retrieve documentation resources. While the MCP protocol is agent-agnostic, the current implementation is specially tailored for integration with Claude Code, allowing a seamless workflow for formal verification tasks.

## Core Functionality

### 1. **PVS Tools as MCP Tools**

The server exposes all available PVS JSON-RPC methods as MCP tools that can be invoked by connected clients. These tools include:

- **Typechecking** — Verify PVS theories and expressions for type correctness
- **Proof Management** — Start, manage, and execute proof sessions
- **Ground Evaluation** — Execute PVS expressions using PVSio (the ground evaluator)
- **Library Management** — Browse and interact with PVS libraries
- **Error Handling** — Return detailed diagnostic information from PVS errors

Each tool is automatically discovered from PVS's internal request methods and presented with:
- A descriptive name
- Parameter schema (required and optional arguments)
- Input validation and type information

### 2. **Documentation Resources**

The server automatically discovers and makes available all Markdown documentation files found in `docs/mcp-manuals` directories across all paths listed in the `PVS_LIBRARY_PATH` environment variable.

#### Resource Discovery

The server automatically discovers documentation resources by scanning each directory listed in the `PVS_LIBRARY_PATH` environment variable for a `docs/mcp-manuals/` subdirectory, and collecting all Markdown (`.md`) files found within those subdirectories. This allows documentation to be distributed across multiple libraries and automatically aggregated when the server starts.

#### Resource Availability

Once discovered, documentation resources are made available to connected agents through the MCP `resources/list` and `resources/read` protocols. Clients can:

- **List available resources** — Query the server for all available documentation
- **Retrieve resource content** — Fetch the full content of any documentation file

Resources are identified by URIs in the format: `pvs://manual/<filename>`

#### Example

If your `PVS_LIBRARY_PATH` contains:
```
/Users/user/nasa/pvslib:/Users/user/nasa/custom-library
```

And you have documentation files at:
```
/Users/user/nasa/pvslib/docs/mcp-manuals/pvs-language-1-main-features.md
/Users/user/nasa/pvslib/docs/mcp-manuals/pvs-language-2-judgements.md
/Users/user/nasa/custom-library/docs/mcp-manuals/custom-tutorial.md
```

The server will make all three files available as resources:
- `pvs://manual/pvs-language-1-main-features`
- `pvs://manual/pvs-language-2-judgements`
- `pvs://manual/custom-tutorial`

### 3. **Transport Protocols**

The server supports two transport mechanisms:

#### Standard Input/Output (stdio)

The primary transport for Claude Code integration. All output streams are carefully managed to avoid corrupting the JSON-RPC channel:

- Standard output is redirected to standard error internally
- JSON-RPC responses are written to a private handle of the original stdout
- This ensures a clean communication channel for Claude Code

Started with: `pvs -raw -q -E '(pvs-mcp:start-mcp-stdio-server)'`

#### WebSocket (experimental)

An alternative transport for other integrations:

- Clack/Hunchentoot-based WebSocket server
- Default port: 23457
- Useful for web-based or remote debugging scenarios

Started with: `(pvs-mcp:start-mcp-websocket-server :port 23457)`

## Error Handling

The server provides structured error diagnostics for PVS errors, including:

- **Error message** — Human-readable error description
- **Error string** — Detailed error information from PVS
- **File location** — Path to the file where the error occurred
- **Line and column** — Precise location within the file
- **Context blocks** — Multiple formatted content blocks for comprehensive error information

## Integration with Claude Code

The PVS MCP Server integrates with Claude Code through:

1. **Configuration** — Set up in `.mcp.json` with the server definition
2. **Approval** — Enabled in `.claude/settings.json` with `"enabledMcpjsonServers": ["pvs"]`
3. **Setup Verification** — Use `test-pvs-mcp.sh` to verify installation and configuration

See [pvs-scripts/README.md#test-pvs-mcp](../pvs-scripts/README.md#test-pvs-mcp) for setup instructions.

## Requirements

- PVS with MCP extension support
- Proper `PVS_LIBRARY_PATH` configuration for resource discovery
- Documentation files in `docs/mcp-manuals/` directories (optional but recommended)

## Implementation Details

The server is implemented as a Lisp package providing:

- `start-mcp-stdio-server` — Start the stdio-based MCP server
- `start-mcp-websocket-server` — Start the WebSocket server (optional)
- `stop-mcp-websocket-server` — Stop the WebSocket server
- Tool schema generation from PVS method signatures
- Resource discovery and delivery
- Comprehensive error handling and diagnostics

See the source code in [pvs-patches/patch-20270101-pvs-mcp.lisp](../pvs-patches/patch-20270101-pvs-mcp.lisp) for detailed implementation.
