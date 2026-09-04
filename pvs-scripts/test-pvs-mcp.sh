#!/bin/bash
set -e

# Display help message
show_help() {
    cat << 'EOF'
test-pvs-mcp.sh - Test and configure PVS MCP server for Claude Code

SYNOPSIS
    test-pvs-mcp.sh [OPTIONS]

DESCRIPTION
    This script verifies that your PVS installation has the MCP (Model Context
    Protocol) server functionality available and configures Claude Code to use it.

    It performs the following checks and configurations:
    1. Verifies PVS is installed and in PATH
    2. Checks that the PVS-MCP package is available
    3. Checks for the START-MCP-STDIO-SERVER function in PVS-MCP
    4. Sets up .mcp.json with the PVS server definition (home or current dir)
    5. Enables the PVS server in .claude/settings.json (home or current dir)

    If configuration files are missing, the script will prompt you to choose
    whether to install them in your home directory or the current directory.
    Existing configuration is preserved and only the PVS entry is added.

OPTIONS
    -h, --help      Display this help message and exit

EXIT STATUS
    0               All checks passed and configuration is complete
    1               A check failed or user provided invalid input

EXAMPLES
    # Run the full setup check and configuration
    $ ./test-pvs-mcp.sh

    # Display this help message
    $ ./test-pvs-mcp.sh --help

EOF
    exit 0
}

# Check for help flag
if [[ "$1" == "-h" || "$1" == "--help" ]]; then
    show_help
fi

echo "🧪 Testing PVS MCP server setup..."
echo ""

# Check if pvs command exists
if ! command -v pvs &> /dev/null; then
    echo "❌ PVS not found in PATH"
    echo "   Please install PVS first."
    exit 1
fi

echo "✅ PVS found"

# Test package and function availability
echo ""
echo "Checking PVS-MCP package and function..."
pvs -raw -q -E '(progn (unless (find-package "PVS-MCP") (format *error-output* "Error: PVS-MCP package not found. Ensure PVS with pvs-mcp extension is installed.~%") (uiop:quit 1)) (unless (fboundp (intern "START-MCP-STDIO-SERVER" "PVS-MCP")) (format *error-output* "Error: START-MCP-STDIO-SERVER function not found in PVS-MCP package.~%") (uiop:quit 1)) (uiop:quit 0))'

EXIT_CODE=$?

if [ $EXIT_CODE -ne 0 ]; then
    echo ""
    echo "❌ PVS MCP check failed (exit code: $EXIT_CODE)"
    exit 1
fi

echo "✅ PVS MCP package and function found"

# ============================================================================
# Check and Configure Claude MCP Settings
# ============================================================================
echo ""
echo "Checking Claude MCP configuration..."
echo ""

# PVS MCP server definition as JSON
read -r -d '' PVS_MCP_JSON << 'EOF' || true
{
  "command": "/bin/bash",
  "args": [
    "-c",
    "exec pvs \"$@\" 3>&1 1>/dev/null",
    "--",
    "-raw",
    "-q",
    "-E",
    "(progn (unless (find-package \"PVS-MCP\") (format *error-output* \"Error: PVS-MCP package not found. Ensure PVS with pvs-mcp extension is installed.~%\") (uiop:quit 1)) (unless (fboundp (intern \"START-MCP-STDIO-SERVER\" \"PVS-MCP\")) (format *error-output* \"Error: START-MCP-STDIO-SERVER function not found in PVS-MCP package.~%\") (uiop:quit 1)) (let ((*standard-output* (sb-sys:make-fd-stream 3 :output t :buffering :line))) (funcall (intern \"START-MCP-STDIO-SERVER\" \"PVS-MCP\"))) (uiop:quit))"
  ]
}
EOF

# Helper to check if pvs MCP entry exists in mcpServers
has_pvs_mcp() {
    [ -f "$1" ] && grep -q '"mcpServers"' "$1" && grep -q '"pvs"' "$1"
}

# Helper to add or create .mcp.json with pvs entry
add_pvs_mcp_entry() {
    local file=$1

    if ! command -v jq &> /dev/null; then
        echo "❌ 'jq' is required to safely modify .mcp.json"
        echo "   Please install jq: apt-get install jq (Linux) or brew install jq (macOS)"
        exit 1
    fi

    if [ -f "$file" ]; then
        # File exists - add pvs to mcpServers if not present
        if ! grep -q '"pvs"' "$file"; then
            jq ".mcpServers.pvs = $PVS_MCP_JSON" "$file" > "$file.tmp"
            mv "$file.tmp" "$file"
        fi
    else
        # Create new file with mcpServers structure
        cat > "$file" << 'MCOFILE'
{
  "mcpServers": {
    "pvs": {
      "command": "/bin/bash",
      "args": [
        "-c",
        "exec pvs \"$@\" 3>&1 1>/dev/null",
        "--",
        "-raw",
        "-q",
        "-E",
        "(progn (unless (find-package \"PVS-MCP\") (format *error-output* \"Error: PVS-MCP package not found. Ensure PVS with pvs-mcp extension is installed.~%\") (uiop:quit 1)) (unless (fboundp (intern \"START-MCP-STDIO-SERVER\" \"PVS-MCP\")) (format *error-output* \"Error: START-MCP-STDIO-SERVER function not found in PVS-MCP package.~%\") (uiop:quit 1)) (let ((*standard-output* (sb-sys:make-fd-stream 3 :output t :buffering :line))) (funcall (intern \"START-MCP-STDIO-SERVER\" \"PVS-MCP\"))) (uiop:quit))"
      ]
    }
  }
}
MCOFILE
    fi
}

# Helper to enable pvs in settings
enable_pvs_in_settings() {
    local file=$1
    if [ -f "$file" ]; then
        if grep -q '"enabledMcpjsonServers"' "$file"; then
            # Update existing enabledMcpjsonServers
            sed -i.bak 's/"enabledMcpjsonServers": \[\([^]]*\)\]/"enabledMcpjsonServers": [\1, "pvs"]/g' "$file"
        else
            # Add new enabledMcpjsonServers field before closing brace
            sed -i.bak '$ s/^}/  "enabledMcpjsonServers": ["pvs"]\n}/' "$file"
        fi
        rm -f "$file.bak"
    else
        mkdir -p "$(dirname "$file")"
        echo '{
  "enabledMcpjsonServers": ["pvs"]
}' > "$file"
    fi
}

# Determine where to configure
MCP_JSON_HOME="$HOME/.mcp.json"
MCP_JSON_CWD=".mcp.json"
SETTINGS_HOME="$HOME/.claude/settings.json"
SETTINGS_CWD=".claude/settings.json"

# Check current state
if has_pvs_mcp "$MCP_JSON_HOME"; then
    echo "✅ .mcp.json with PVS entry found in: $MCP_JSON_HOME"
    MCP_LOCATION="$MCP_JSON_HOME"
elif has_pvs_mcp "$MCP_JSON_CWD"; then
    echo "✅ .mcp.json with PVS entry found in: $MCP_JSON_CWD"
    MCP_LOCATION="$MCP_JSON_CWD"
else
    echo "❌ .mcp.json with PVS entry not found"
    read -p "   Install .mcp.json in [h]ome or [c]urrent directory? " mcp_choice
    case $mcp_choice in
        h|H) MCP_LOCATION="$MCP_JSON_HOME" ;;
        c|C) MCP_LOCATION="$MCP_JSON_CWD" ;;
        *) echo "❌ Invalid choice"; exit 1 ;;
    esac
    echo "   Installing .mcp.json to: $MCP_LOCATION"
    add_pvs_mcp_entry "$MCP_LOCATION"
    echo "✅ .mcp.json configured"
fi

echo ""

if grep -q '"enabledMcpjsonServers".*"pvs"' "$SETTINGS_HOME" 2>/dev/null; then
    echo "✅ PVS enabled in: $SETTINGS_HOME"
elif grep -q '"enabledMcpjsonServers".*"pvs"' "$SETTINGS_CWD" 2>/dev/null; then
    echo "✅ PVS enabled in: $SETTINGS_CWD"
else
    echo "❌ PVS not enabled in .claude/settings.json"
    read -p "   Install .claude/settings.json in [h]ome or [c]urrent directory? " settings_choice
    case $settings_choice in
        h|H) SETTINGS_LOCATION="$SETTINGS_HOME" ;;
        c|C) SETTINGS_LOCATION="$SETTINGS_CWD" ;;
        *) echo "❌ Invalid choice"; exit 1 ;;
    esac
    echo "   Installing settings to: $SETTINGS_LOCATION"
    enable_pvs_in_settings "$SETTINGS_LOCATION"
    echo "✅ .claude/settings.json configured"
fi

echo ""
echo "🎉 All checks passed! PVS MCP server is properly configured for Claude."
exit 0
