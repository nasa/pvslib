#!/bin/bash
# Wrapper script for pvs-cli

# Get the directory where this script is located
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"/pvs-cli
DEFAULT_VENV="$SCRIPT_DIR/.venv"
VENV_DIR="$DEFAULT_VENV"

# Parse options
while [[ $# -gt 0 ]]; do
    case "$1" in
        --venv-dir)
            VENV_DIR="$2"
            shift 2
            ;;
        --init-venv)
            echo "Initializing virtual environment at $VENV_DIR..."
            python3 -m venv "$VENV_DIR" || {
                echo "Error: Failed to create virtual environment at $VENV_DIR"
                exit 1
            }
            "$VENV_DIR/bin/python3" -m pip install --upgrade pip websockets || {
                echo "Error: Failed to install dependencies"
                exit 1
            }
            echo "Virtual environment initialized successfully at $VENV_DIR"
            exit 0
            ;;
        *)
            break
            ;;
    esac
done

VENV_PYTHON="$VENV_DIR/bin/python3"

# Determine which Python to use
if [ -f "$VENV_PYTHON" ]; then
    PYTHON="$VENV_PYTHON"
else
    PYTHON="python3"
    # Warn user if system Python is being used and websockets might not be available
    if ! python3 -c "import websockets" 2>/dev/null; then
        echo "Warning: Virtual environment not found at $VENV_DIR"
        echo "Using system Python, but websockets module may not be installed."
        echo "To initialize virtual environment, run: $0 --init-venv"
        echo "Or specify a custom location: $0 --venv-dir /path/to/venv --init-venv"
    fi
fi

# Run pvs-cli using the selected Python
exec "$PYTHON" "$SCRIPT_DIR/pvs-cli.py" "$@"
