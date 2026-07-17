#!/usr/bin/env python3
"""
pvs-cli: Command-line interface for interacting with PVS server
Assumes PVS is running in server mode on localhost:23456
"""
import asyncio
import websockets
import uuid
import json
import argparse
import sys
import os
import pickle
from typing import Optional, List, Dict, Any

# State file to persist session information
STATE_FILE = os.path.expanduser("~/.pvs-cli-state.pkl")

# ANSI color codes
class Colors:
    CYAN = '\033[96m'
    GREEN = '\033[92m'
    YELLOW = '\033[93m'
    RED = '\033[91m'
    RESET = '\033[0m'
    BOLD = '\033[1m'
    GRAY = '\033[90m'
    WHITE = '\033[97m'
    DARK_TEXT = '\033[30m'
    MAGENTA = '\033[95m'

# Global flags
VERBOSE = False
DEBUG = False
USE_COLORS = True
THEME = 'dark'  # 'dark' or 'light'

def detect_theme():
    """Detect terminal background theme from COLORFGBG environment variable"""
    colorfgbg = os.environ.get('COLORFGBG', '')
    if colorfgbg:
        parts = colorfgbg.split(';')
        if len(parts) >= 2:
            try:
                bg = int(parts[1])
                # Light backgrounds are typically 7, 15, or 230-255
                if bg in (7, 15) or (230 <= bg <= 255):
                    return 'light'
            except ValueError:
                pass
    return 'dark'

def print_server(msg):
    """Print a message with [pvs-server] prefix in cyan (only in verbose mode)"""
    if VERBOSE:
        if USE_COLORS:
            print(f"{Colors.CYAN}[pvs-server]{Colors.RESET} {msg}")
        else:
            print(f"[pvs-server] {msg}")
    else:
        print(msg)

def print_cli(msg):
    """Print a message with [pvs-cli] prefix in green (only in verbose mode)"""
    if VERBOSE:
        if USE_COLORS:
            print(f"{Colors.GREEN}[pvs-cli]{Colors.RESET} {msg}")
        else:
            print(f"[pvs-cli] {msg}")
    else:
        print(msg)

def print_cli_error(msg):
    """Print an error message with [pvs-cli] prefix in red (only in verbose mode)"""
    if VERBOSE:
        if USE_COLORS:
            print(f"{Colors.RED}[pvs-cli]{Colors.RESET} {msg}")
        else:
            print(f"[pvs-cli] {msg}")
    else:
        print(msg)

def print_verbose(msg):
    """Print a verbose message if verbose mode is enabled"""
    if VERBOSE:
        if USE_COLORS:
            print(f"{Colors.GREEN}[pvs-cli]{Colors.RESET} {msg}")
        else:
            print(f"[pvs-cli] {msg}")

def print_debug(msg):
    """Print a debug message if debug mode is enabled"""
    if DEBUG:
        if USE_COLORS:
            print(f"{Colors.MAGENTA}[pvs-debug]{Colors.RESET} {msg}")
        else:
            print(f"[pvs-debug] {msg}")

def format_error_message(error):
    """Format a PVS error response into a human-readable message"""
    if not isinstance(error, dict):
        return str(error)

    error_type = error.get('message', 'Error')
    data = error.get('data', {})

    # Handle case where data is a string instead of a dict
    if isinstance(data, str):
        return f"{error_type}: {data}"

    if data and isinstance(data, dict):
        error_string = data.get('error_string', '')
        file_name = data.get('file_name', '')
        place = data.get('place', [])

        if file_name and place and len(place) >= 2:
            line, col = place[0], place[1]
            # Format with file location and full error string
            if error_string:
                return f"{error_type}: {file_name}:{line}:{col}\n  {error_string}"
            else:
                return f"{error_type}: {file_name}:{line}:{col}"
        elif error_string:
            return f"{error_type}:\n  {error_string}"

    return f"{error_type}: {error.get('message', 'Unknown error')}"

async def request(method, params, ws):
    """Turns method, params into a json-rpc request"""
    id = uuid.uuid4().hex
    req = {"jsonrpc": "2.0", "id": id, "method": method, "params": params}

    if DEBUG:
        print_debug(f"Sending request: {json.dumps(req, indent=2)}")

    await ws.send(json.dumps(req))

    while True:
        response_str = await ws.recv()

        if DEBUG:
            print_debug(f"Received response: {response_str}")

        response = json.loads(response_str)

        # Handle info notifications
        if "method" in response and response["method"] == "info":
            if "params" in response and response["params"]:
                print_server(response['params'])
            continue

        # Check if this is our response
        if valid_response(id, response):
            if "result" in response:
                return response["result"]
            else:
                print_cli_error(format_error_message(response['error']))
                return None

def valid_response(id, response):
    """A valid response to a request is either a 'result' or 'error' with the
    corresponding id.
    """
    return (type(response) == dict and 'id' in response and response['id'] == id
            and ('result' in response or 'error' in response))

def print_commentary(msg):
    """Print commentary in gray"""
    if USE_COLORS:
        print(f"{Colors.GRAY}{msg}{Colors.RESET}")
    else:
        print(msg)

def print_sequent_text(msg):
    """Print sequent text in white (for dark theme) or dark text (for light theme)"""
    if USE_COLORS:
        if THEME == 'dark':
            print(f"{Colors.WHITE}{msg}{Colors.RESET}")
        else:
            print(f"{Colors.DARK_TEXT}{msg}{Colors.RESET}")
    else:
        print(msg)

def print_proofstate(ps):
    """Print the current proof state"""
    if not ps or not isinstance(ps, (list, dict)):
        # ps is None, empty, or not a valid type
        return

    if isinstance(ps, list) and len(ps) > 0:
        # Check if any element has QUIT status - if so, don't print sequent
        for element in ps:
            if isinstance(element, dict):
                status = element.get("status", "")
                if status.upper() == "QUIT":
                    return

        # Check if ALL elements have "!" status - if so, don't print sequent
        all_closed = all(
            isinstance(element, dict) and element.get("status", "") == "!"
            for element in ps
        )
        if all_closed:
            return

        # Find the first open branch (status != "!") to display
        # Prioritize leaf nodes (those without children) over parent nodes
        current_ps = None
        leaf_ps = None

        for element in ps:
            if isinstance(element, dict) and element.get("status", "") != "!":
                # Prefer leaf nodes (no children) over parent nodes
                if not element.get("children"):
                    leaf_ps = element
                    break
                if current_ps is None:
                    current_ps = element

        # Use leaf node if found, otherwise use first open branch
        if leaf_ps is not None:
            current_ps = leaf_ps
        elif current_ps is None:
            current_ps = ps[-1]
    else:
        current_ps = ps

    if not isinstance(current_ps, dict):
        # current_ps is not a dictionary, skip printing
        return

    if current_ps:
        # Print commentary if present (skip lines containing sequent markers)
        if "commentary" in current_ps:
            for line in current_ps["commentary"]:
                # Skip commentary lines that contain the sequent marker
                if "  |-------" not in line:
                    print_commentary(line)
            if current_ps["commentary"]:
                print_commentary("")

        # Print label if present
        if "label" in current_ps:
            print_sequent_text(f"{current_ps['label']} :  ")
            print_sequent_text("")

        # Print sequent if present
        if "sequent" in current_ps:
            print_sequent(current_ps["sequent"])
            print_sequent_text("")

def print_sequent(seq):
    """Print a sequent (antecedents and succedents)"""
    if seq.get("antecedents"):
        for sform in seq["antecedents"]:
            print_sform(sform)
    print_sequent_text("  |-------")
    if seq.get("succedents"):
        for sform in seq["succedents"]:
            print_sform(sform)

def print_sform(sform):
    """Print a sequent formula"""
    labels = sform.get("labels", [])
    formula = sform.get("formula", "")
    label_str = "{" + ", ".join(str(l) for l in labels) + "}" if labels else ""
    print_sequent_text(f"{label_str}   {formula}")

def save_state(state):
    """Save session state to file"""
    try:
        with open(STATE_FILE, 'wb') as f:
            pickle.dump(state, f)
    except Exception as e:
        print_cli_error(f"Warning: Could not save state: {e}")

def load_state():
    """Load session state from file"""
    default_state = {"active_proofs": {}, "current_proof_id": None}
    
    if os.path.exists(STATE_FILE):
        try:
            with open(STATE_FILE, 'rb') as f:
                state = pickle.load(f)
                # Ensure all required keys exist
                if "active_proofs" not in state:
                    state["active_proofs"] = {}
                if "current_proof_id" not in state:
                    state["current_proof_id"] = None
                return state
        except Exception as e:
            print_cli_error(f"Warning: Could not load state: {e}")
            return default_state
    return default_state

def clear_state():
    """Clear saved state"""
    if os.path.exists(STATE_FILE):
        os.remove(STATE_FILE)

def normalize_formref(formref: str) -> str:
    """Normalize a formula reference to standard form.

    Accepts formats:
    - "formula" -> returned as-is (just formula name)
    - "file#theory#formula" -> if file is in current dir, convert to absolute path
    - "dir/file#theory#formula" -> if exists, convert to absolute path
    - "lib@file#theory#formula" -> returned as-is (library reference)

    Note: "theory#formula" format is NOT supported on the server side.

    Returns the normalized formref.
    """
    # If it contains @ (library reference), return as-is
    if "@" in formref:
        return formref

    # Count # separators to determine format
    hash_count = formref.count("#")

    # Format: just formula name (no #) or invalid single # format
    if hash_count == 0:
        return formref
    elif hash_count == 1:
        # Single # is not supported (would be theory#formula)
        return formref

    # Format: "file#theory#formula" (3 components)
    if hash_count == 2:
        parts = formref.split("#")
        file_part = parts[0]

        # Check if it looks like a path (contains / or .)
        if "/" in file_part or file_part.endswith(".pvs"):
            # Already has path or extension, check if it exists
            if os.path.isfile(file_part):
                return f"{os.path.abspath(file_part)}#{parts[1]}#{parts[2]}"
            # If it doesn't have .pvs extension, try adding it
            if not file_part.endswith(".pvs"):
                file_with_ext = f"{file_part}.pvs"
                if os.path.isfile(file_with_ext):
                    return f"{os.path.abspath(file_with_ext)}#{parts[1]}#{parts[2]}"
        else:
            # No path separator, assume it's a file in current directory
            file_with_ext = f"{file_part}.pvs"
            if os.path.isfile(file_with_ext):
                return f"{os.path.abspath(file_with_ext)}#{parts[1]}#{parts[2]}"
            # Try without extension
            if os.path.isfile(file_part):
                return f"{os.path.abspath(file_part)}#{parts[1]}#{parts[2]}"

        # File not found locally, return as-is (let server handle it)
        return formref

    # Invalid format, return as-is
    return formref

async def typecheck_file(filepath, ws):
    """Typecheck a PVS file"""
    # Get absolute path
    abs_path = os.path.abspath(filepath)
    if not os.path.exists(abs_path):
        print_cli_error(f"Error: File '{filepath}' not found")
        return False
    
    # Extract theory name from filename
    theory_name = os.path.splitext(os.path.basename(filepath))[0]
    theory_dir = os.path.dirname(abs_path)
    
    print_server(f"Parsing {theory_name}")
    
    # Change context to the directory containing the file
    await request("change-context", [theory_dir], ws)
    
    # Parse the file
    parse_result = await request("parse", [theory_name], ws)
    if parse_result:
        print_server(f"{theory_name} parsed successfully")
    else:
        print_cli_error(f"Error: Failed to parse {theory_name}")
        return False
    
    # Typecheck the file
    print_server(f"Typechecking {theory_name}")
    typecheck_result = await request("typecheck", [theory_name], ws)
    
    if typecheck_result:
        print_server(f"{theory_name} typechecked successfully")
        return True
    else:
        print_cli_error(f"Error: Typechecking failed for {theory_name}")
        return False

async def prove_formula(formula_spec, ws):
    """Start a proof session for a formula"""
    # formula_spec can be:
    # - just formula name (e.g., "lemma_1")
    # - "file#theory#formula" format

    hash_count = formula_spec.count("#")

    # If just a formula name (no #), pass through as-is
    if hash_count == 0:
        pass  # Formula name only, let server handle it
    # If format is "file#theory#formula", normalize the file path
    elif hash_count == 2:
        parts = formula_spec.split("#")
        file_part = parts[0]

        # Try to convert relative path to absolute
        if file_part and not file_part.startswith("/"):
            # Try with .pvs extension
            if os.path.isfile(f"{file_part}.pvs"):
                formula_spec = f"{os.path.abspath(file_part)}.pvs#{parts[1]}#{parts[2]}"
            elif os.path.isfile(file_part):
                formula_spec = f"{os.path.abspath(file_part)}#{parts[1]}#{parts[2]}"
    else:
        # Invalid format (has # but not 2)
        print_cli_error(f"Error: Invalid formula reference format: {formula_spec}")
        return False

    print_server(f"Starting proof session for {formula_spec}")

    ps = await request("prove-formula", [formula_spec], ws)
    if ps and len(ps) > 0:
        # Get the proof ID from the first state
        proof_id = ps[0]["id"]

        # Print initial proof state
        print_proofstate(ps)

        # Load existing state
        state = load_state()

        # Add this proof to active proofs
        state["active_proofs"][proof_id] = {
            "formula_spec": formula_spec,
            "status": "active"
        }

        # Set as current proof
        state["current_proof_id"] = proof_id

        # Save state
        save_state(state)

        print_cli(f"Proof ID: {proof_id}")
        if VERBOSE:
            print_cli("Ready to receive proof commands")
        return True
    else:
        print_cli_error(f"Error: Could not start proof session for {formula_spec}")
        return False

async def send_proof_command(command, ws, proof_id=None, save_proof=True):
    """Send a proof command to the current proof session"""
    state = load_state()
    
    # Determine which proof ID to use
    if proof_id is None:
        proof_id = state.get("current_proof_id")
    
    if proof_id is None:
        print_cli_error("Error: No active proof session. Use --prove first or --set-active-proof.")
        return False
    
    if proof_id not in state.get("active_proofs", {}):
        print_cli_error(f"Error: Proof ID '{proof_id}' not found in active proofs.")
        return False
    
    print_verbose(f"Using proof ID: {proof_id}")
    
    # Send the proof command
    ps = await request("proof-command", [proof_id, command], ws)
    
    if ps:
        print_proofstate(ps)

        # Check if proof is complete or quit
        if isinstance(ps, list) and len(ps) > 0:
            # First pass: check if any element is QUIT
            quit_found = False
            for ps_element in ps:
                if not isinstance(ps_element, dict):
                    continue
                status = ps_element.get("status", "").upper()
                if status == "QUIT":
                    quit_found = True
                    break

            if quit_found:
                # Proof session was quit by the server
                print_cli("Proof attempt cancelled")
                # Handle quit...
                formula_spec = state.get("active_proofs", {}).get(proof_id, {}).get("formula_spec", "")
                if formula_spec and formula_spec.count("#") >= 2:
                    parts = formula_spec.split("#")
                    theory_ref = f"{parts[0]}#{parts[1]}"
                    if save_proof:
                        print_verbose(f"Marking proof {proof_id} as default for {formula_spec}")
                        result = await request("mark-proof-as-default", [formula_spec, proof_id], ws)
                        if result is not None:
                            print_verbose(f"Proof marked as default")
                        else:
                            print_cli_error(f"Error: Could not mark proof as default")
                        print_verbose(f"Saving all proofs for theory {theory_ref}")
                        result = await request("save-all-proofs", [theory_ref], ws)
                        if result is not None:
                            print_cli("Proof saved")
                        else:
                            print_cli_error(f"Error: Could not save proofs")
                    else:
                        print_cli_error("Warning: Proof is not being saved")
                        print_cli(f"Tip: To mark this proof as default, use --mark-proof-as-default \"{formula_spec}\" \"{proof_id}\"")
                        print_cli(f"Tip: To save the proof, use --save-all-proofs \"{theory_ref}\"")
                else:
                    print_cli_error("Error: Invalid formula reference for saving proof")
                if proof_id in state.get("active_proofs", {}):
                    del state["active_proofs"][proof_id]
                if state.get("current_proof_id") == proof_id:
                    state["current_proof_id"] = None
                save_state(state)
                return True

            # Check for PROVED status
            for ps_element in ps:
                if not isinstance(ps_element, dict):
                    continue
                status = ps_element.get("status", "").upper()
                if status == "PROVED":
                    print_cli("Q.E.D.")
                    print_cli("Proof complete!")
                    if proof_id in state.get("active_proofs", {}):
                        del state["active_proofs"][proof_id]
                    if state.get("current_proof_id") == proof_id:
                        state["current_proof_id"] = None
                    save_state(state)
                    return True

            # Check if ALL elements have "!" status (proof closed on all branches)
            all_closed = all(
                isinstance(ps_element, dict) and ps_element.get("status", "") == "!"
                for ps_element in ps
            )

            if all_closed:
                # All branches closed - proof is complete
                print_cli("Proof finished (Q.E.D.)")

                # Get the formula spec from active proof (format: file#theory#formula)
                formula_spec = state.get("active_proofs", {}).get(proof_id, {}).get("formula_spec", "")
                if formula_spec and formula_spec.count("#") >= 2:
                    # Extract file#theory from file#theory#formula
                    parts = formula_spec.split("#")
                    theory_ref = f"{parts[0]}#{parts[1]}"

                    if save_proof:
                        # Mark proof as default
                        print_verbose(f"Marking proof {proof_id} as default for {formula_spec}")
                        result = await request("mark-proof-as-default", [formula_spec, proof_id], ws)
                        if result is not None:
                            print_verbose(f"Proof marked as default")
                        else:
                            print_cli_error(f"Error: Could not mark proof as default")

                        # Save all proofs for the theory
                        print_verbose(f"Saving all proofs for theory {theory_ref}")
                        result = await request("save-all-proofs", [theory_ref], ws)
                        if result is not None:
                            print_cli("Proof saved")
                        else:
                            print_cli_error(f"Error: Could not save proofs")
                    else:
                        # Not saving the proof - show warning and tips
                        print_cli_error("Warning: Proof is not being saved")
                        print_cli(f"Tip: To mark this proof as default, use --mark-proof-as-default \"{formula_spec}\" \"{proof_id}\"")
                        print_cli(f"Tip: To save the proof, use --save-all-proofs \"{theory_ref}\"")
                else:
                    print_cli_error("Error: Invalid formula reference for saving proof")

                # Remove from active proofs
                if proof_id in state.get("active_proofs", {}):
                    del state["active_proofs"][proof_id]

                # Clear current proof if this was it
                if state.get("current_proof_id") == proof_id:
                    state["current_proof_id"] = None

                save_state(state)
                return True

        if VERBOSE:
            print_cli("Ready to receive proof commands")
            print_verbose(f"Active proof ID: {proof_id}")
        return True
    else:
        print_cli_error("Error: Failed to execute proof command")
        return False

async def fail_proof(proof_id, ws):
    """Quit a proof without saving it"""
    # Send quit command with save_proof=False to skip auto-save
    return await send_proof_command("(quit)", ws, proof_id, save_proof=False)

async def set_active_proof(proof_id, ws):
    """Set the active proof session"""
    state = load_state()

    if proof_id not in state.get("active_proofs", {}):
        print_cli_error(f"Error: Proof ID '{proof_id}' not found in active proofs.")
        print_cli("Use --list-active-proofs to see available proof sessions.")
        return False

    state["current_proof_id"] = proof_id
    save_state(state)

    formula_spec = state["active_proofs"][proof_id].get("formula_spec", state["active_proofs"][proof_id].get("formula", ""))
    print_cli(f"Active proof set to: {proof_id}")
    print_cli(f"Formula: {formula_spec}")
    return True

def list_active_proofs():
    """List all active proof sessions"""
    state = load_state()
    active_proofs = state.get("active_proofs", {})
    current_proof_id = state.get("current_proof_id")
    
    if not active_proofs:
        print_cli("No active proof sessions")
        return True
    
    print_cli("Active proof sessions:")
    for proof_id, info in active_proofs.items():
        marker = " *" if proof_id == current_proof_id else ""
        formula_spec = info.get("formula_spec", info.get("formula", ""))
        print_cli(f"  {proof_id}: {formula_spec}{marker}")
    
    if current_proof_id:
        print_cli("(* = current active proof)")
    
    return True

async def quit_proof_session(ws, proof_id=None):
    """Quit a specific proof session or all sessions"""
    state = load_state()

    if proof_id:
        # Quit specific proof session
        if proof_id not in state.get("active_proofs", {}):
            print_cli_error(f"Error: Proof ID '{proof_id}' not found in active proofs.")
            return False
        
        # Remove from active proofs
        del state["active_proofs"][proof_id]
        
        # Clear current proof if this was it
        if state.get("current_proof_id") == proof_id:
            state["current_proof_id"] = None
        
        save_state(state)
        print_cli(f"Proof session {proof_id} closed")
    else:
        # Quit all proof sessions
        if not state.get("active_proofs"):
            print_cli("No active proof sessions")
            return True
        
        result = await request("quit-all-proof-sessions", [], ws)
        clear_state()
        print_cli("All proof sessions closed")
    
    return True

async def show_proof_status(ws):
    """Show the current proof status"""
    state = load_state()
    active_proofs = state.get("active_proofs", {})
    current_proof_id = state.get("current_proof_id")

    if not active_proofs:
        print_cli("No active proof sessions")
        return

    print_cli(f"Total active proof sessions: {len(active_proofs)}")

    if current_proof_id and current_proof_id in active_proofs:
        formula_spec = active_proofs[current_proof_id].get("formula_spec", active_proofs[current_proof_id].get("formula", ""))
        print_cli(f"Current active proof: {current_proof_id}")
        print_cli(f"Formula: {formula_spec}")
    else:
        print_cli("No current active proof selected")

    print_cli("Use --list-active-proofs to see all active proofs")

def list_all_pvs_methods():
    """List all PVS JSON-RPC methods with signatures"""
    methods = {
        "Basic Operations": [
            "list-methods() - List all available PVS methods",
            "list-client-methods() - List client-callable methods",
            "help(methodname) - Get help for a specific method",
            "lisp(string) - Execute Lisp expression",
            "reset() - Reset system [STUB - NOT IMPLEMENTED BY SERVER]",
            "interrupt() - Interrupt current operation [STUB - NOT IMPLEMENTED BY SERVER]",
        ],
        "File Operations": [
            "parse(filename) - Parse a PVS file",
            "typecheck(filename [content] [force]) - Typecheck file",
            "names-info(filename) - Get names information from file",
            "term-at(file, place [typecheck]) - Get term at location",
            "show-tccs(fname) - Show type-checking conditions",
            "latex-pvs-file(filename [content]) - Generate LaTeX for PVS file",
        ],
        "Proof Operations": [
            "prove-formula(formula-ref [rerun]) - Start proof session",
            "proof-command(proof-id, form) - Send proof command",
            "proof-help(cmd) - Get help for proof command",
            "interrupt-proof(id) - Interrupt specific proof session",
            "prover-status([proof-id]) - Get prover status",
            "proof-status(formula-ref) - Get proof status for formula",
            "proof-script(formula-ref) - Get proof script",
            "all-proofs-of-formula(formula-ref) - List all proofs for formula",
            "delete-proof-of-formula(formula-ref, proof-id) - Delete proof",
            "mark-proof-as-default(formula-ref, proof-id) - Mark proof as default",
            "quit-all-proof-sessions() - Quit all proofs",
        ],
        "Context Operations": [
            "change-context(dir) - Change context directory",
            "change-workspace(dir) - Change workspace directory",
            "clear-workspace([workspace] [empty-pvs-context] [delete-binfiles] [dont-load-prelude-libraries]) - Clear workspace",
            "find-declaration(id) - Find declaration by ID",
            "collect-theory-usings(theory-ref [exclude] [in-context]) - Collect theory dependencies",
        ],
        "Proof Management": [
            "add-prover-hook(hook-fun) - Add prover hook",
            "prove-tccs(fname) - Prove type-checking conditions",
            "get-proof-scripts(pvsfilename) - Get proof scripts",
            "save-all-proofs(theory-ref) - Save all proofs",
        ],
        "Library Operations": [
            "add-pvs-library(string) - Add PVS library",
        ],
        "LaTeX/Documentation": [
            "latex-theory(theory-ref) - Generate LaTeX for theory",
            "latex-importchain(theory-ref) - Generate LaTeX for import chain",
        ],
        "PVS I/O": [
            "pvsio-start(theory-ref) - Start PVS I/O session",
            "pvsio-eval(session-id, expr, kind) - Evaluate expression in PVS I/O",
        ],
    }

    print_cli("\n" + "="*70)
    print_cli("PVS JSON-RPC Methods Reference")
    print_cli("="*70)

    print_cli("\nREFERENCE TYPES:")
    print_cli("  theory-ref (THREF):")
    print_cli("    Format: [file-ref] [#theory-id]")
    print_cli("    file-ref: [workspace-ref] name [.pvs]")
    print_cli("    workspace-ref: dir/ (relative/absolute) or lib@ (library)")
    print_cli("    Example: theories/mylib#my_theory  or  /path/to/file.pvs#theory")
    print_cli("")
    print_cli("  formula-ref (FORMREF):")
    print_cli("    Format: dir/file.pvs#theory#formula  or  lib@file.pvs#theory#formula")
    print_cli("    where dir is a relative/absolute path, lib is usually in PVS_LIBRARY_PATH")
    print_cli("    Example: /path/to/file.pvs#theory#my_lemma  or  lib@file.pvs#theory#lemma")

    for category, method_list in methods.items():
        print_cli(f"\n{category}:")
        for method in method_list:
            print_server(f"  {method}")

    print_cli("\n" + "="*70)
    print_cli("USAGE:")
    print_cli("  Generic call: pvs-cli.sh --call METHOD [PARAM1] [PARAM2]...")
    print_cli("  Example: pvs-cli.sh --call parse example")
    print_cli("  Example: pvs-cli.sh --call help parse")
    print_cli("="*70)

async def generic_call(method_name: str, params: List[str], ws):
    """Generic handler for any PVS JSON-RPC method"""
    print_verbose(f"Calling '{method_name}' with {len(params)} parameter(s)")

    result = await request(method_name, params, ws)

    if result is not None:
        print_cli(f"Result from '{method_name}':")
        print_server(json.dumps(result, indent=2))
        return True
    else:
        print_cli_error(f"Error: Method '{method_name}' failed or returned no result")
        return False

async def parse_file(filepath: str, ws):
    """Parse a PVS file without typechecking"""
    abs_path = os.path.abspath(filepath)
    if not os.path.exists(abs_path):
        print_cli_error(f"Error: File '{filepath}' not found")
        return False

    theory_name = os.path.splitext(os.path.basename(filepath))[0]
    theory_dir = os.path.dirname(abs_path)

    print_verbose(f"Parsing {theory_name} from {theory_dir}")

    await request("change-context", [theory_dir], ws)
    result = await request("parse", [theory_name], ws)

    if result:
        print_server(f"{theory_name} parsed successfully")
        return True
    else:
        print_cli_error(f"Error: Failed to parse {theory_name}")
        return False

async def get_names_info(filepath: str, ws):
    """Get names information from a PVS file"""
    abs_path = os.path.abspath(filepath)
    if not os.path.exists(abs_path):
        print_cli_error(f"Error: File '{filepath}' not found")
        return False

    theory_name = os.path.splitext(os.path.basename(filepath))[0]
    theory_dir = os.path.dirname(abs_path)

    print_verbose(f"Getting names info for {theory_name}")

    await request("change-context", [theory_dir], ws)
    result = await request("names-info", [theory_name], ws)

    if result:
        print_cli(f"Names info for {theory_name}:")
        print_server(json.dumps(result, indent=2))
        return True
    else:
        print_cli_error(f"Error: Could not get names info for {theory_name}")
        return False

async def find_term_at(filepath: str, place: str, ws):
    """Find term at specific location in file"""
    abs_path = os.path.abspath(filepath)
    if not os.path.exists(abs_path):
        print_cli_error(f"Error: File '{filepath}' not found")
        return False

    theory_dir = os.path.dirname(abs_path)

    print_verbose(f"Finding term at {filepath}:{place}")

    await request("change-context", [theory_dir], ws)
    result = await request("term-at", [filepath, place], ws)

    if result:
        print_cli(f"Term at {filepath}:{place}:")
        print_server(json.dumps(result, indent=2))
        return True
    else:
        print_cli_error(f"Error: Could not find term at {filepath}:{place}")
        return False

async def show_tccs(filename: str, ws):
    """Show type-checking conditions for a file"""
    abs_path = os.path.abspath(filename)
    if not os.path.exists(abs_path):
        print_cli_error(f"Error: File '{filename}' not found")
        return False

    theory_name = os.path.splitext(os.path.basename(filename))[0]
    theory_dir = os.path.dirname(abs_path)

    print_verbose(f"Getting TCCs for {theory_name}")

    await request("change-context", [theory_dir], ws)
    result = await request("show-tccs", [theory_name], ws)

    if result:
        print_cli(f"Type-checking conditions for {theory_name}:")
        print_server(json.dumps(result, indent=2))
        return True
    else:
        print_cli_error(f"Error: Could not retrieve TCCs for {theory_name}")
        return False

async def interrupt_proof_session(proof_id: str, ws):
    """Interrupt a specific proof session"""
    state = load_state()

    if proof_id not in state.get("active_proofs", {}):
        print_cli_error(f"Error: Proof ID '{proof_id}' not found in active proofs")
        return False

    print_verbose(f"Interrupting proof session {proof_id}")

    result = await request("interrupt-proof", [proof_id], ws)

    if result is not None:
        print_cli(f"Proof session {proof_id} interrupted")
        return True
    else:
        print_cli_error(f"Error: Could not interrupt proof session {proof_id}")
        return False

async def proof_help(cmd: str, ws):
    """Get help for a proof command"""
    print_verbose(f"Getting help for proof command: {cmd}")

    result = await request("proof-help", [cmd], ws)

    if result:
        print_cli(f"Help for '{cmd}':")
        print_server(json.dumps(result, indent=2))
        return True
    else:
        print_cli_error(f"Error: Could not get help for '{cmd}'")
        return False

async def get_prover_status(proof_id: Optional[str], ws):
    """Get prover status"""
    params = [proof_id] if proof_id else []
    print_verbose(f"Getting prover status" + (f" for {proof_id}" if proof_id else ""))

    result = await request("prover-status", params, ws)

    if result:
        print_cli("Prover status:")
        print_server(json.dumps(result, indent=2))
        return True
    else:
        print_cli_error("Error: Could not get prover status")
        return False

async def get_proof_status(formref: str, ws):
    """Get proof status for a formula"""
    formref = normalize_formref(formref)
    print_verbose(f"Getting proof status for {formref}")

    result = await request("proof-status", [formref], ws)

    if result:
        print_cli(f"Proof status for {formref}:")
        print_server(json.dumps(result, indent=2))
        return True
    else:
        print_cli_error(f"Error: Could not get proof status for {formref}")
        return False

async def get_proof_script(formref: str, ws):
    """Get proof script for a formula"""
    formref = normalize_formref(formref)
    print_verbose(f"Getting proof script for {formref}")

    result = await request("proof-script", [formref], ws)

    if result:
        print_cli(f"Proof script for {formref}:")
        print_server(json.dumps(result, indent=2))
        return True
    else:
        print_cli_error(f"Error: Could not get proof script for {formref}")
        return False

async def get_all_proofs(formref: str, ws):
    """Get all proofs for a formula"""
    formref = normalize_formref(formref)
    print_verbose(f"Getting all proofs for {formref}")

    result = await request("all-proofs-of-formula", [formref], ws)

    if result:
        print_cli(f"All proofs for {formref}:")

        # Format as table
        if not result:
            print_cli("No proofs found")
            return True

        # Calculate column widths
        id_width = max(len(str(p.get("id", "")) + (" (*)" if p.get("is-default") == "yes" else "")) for p in result) if result else 2
        status_width = max(len(str(p.get("status", ""))) for p in result) if result else 6
        create_date_width = 19  # "YYYY-MM-DD HH:MM:SS" format
        run_date_width = 19    # "YYYY-MM-DD HH:MM:SS" format or "-"
        desc_width = max(len(str(p.get("description", ""))) for p in result) if result else 11

        id_width = max(id_width, 15)  # Minimum width for "Proof ID (default)"
        status_width = max(status_width, 6)  # Minimum width for "Status"
        desc_width = max(desc_width, 11)  # Minimum width for "Description"

        # Print header
        header = f"{'Proof Id':<{id_width}}  {'Status':<{status_width}}  {'Created':<{create_date_width}}  {'Ran':<{run_date_width}}  {'Description':<{desc_width}}"
        print_cli(header)
        print_cli("-" * len(header))

        # Print rows
        for proof in result:
            proof_id = str(proof.get("id", ""))
            is_default = proof.get("is-default", "no")
            if is_default == "yes":
                proof_id_display = f"{proof_id}*"
            else:
                proof_id_display = proof_id
            status = proof.get("status") or "-"
            if status and str(status).lower() == "none":
                status = "-"
            create_date = proof.get("create-date") or "-"
            run_date = proof.get("run-date") or "-"
            description = proof.get("description")
            if description is None or str(description).lower() == "none":
                description = "-"
            else:
                description = str(description) if description else "-"

            # Extract just the date and time part if it has timezone info
            if create_date != "-" and " " in create_date:
                create_date = create_date.rsplit(" ", 1)[0]  # Remove timezone
            if run_date != "-" and " " in run_date:
                run_date = run_date.rsplit(" ", 1)[0]  # Remove timezone

            row = f"{proof_id_display:<{id_width}}  {status:<{status_width}}  {create_date:<{create_date_width}}  {run_date:<{run_date_width}}  {description:<{desc_width}}"
            print_cli(row)

        # Print legend
        print_cli("(* = default proof)")

        return True
    else:
        print_cli_error(f"Error: Could not get proofs for {formref}")
        return False

async def delete_proof(formref: str, proof_id: str, ws):
    """Delete a proof for a formula"""
    formref = normalize_formref(formref)
    print_verbose(f"Deleting proof {proof_id} for {formref}")

    result = await request("delete-proof-of-formula", [formref, proof_id], ws)

    if result is not None:
        print_cli(f"Proof {proof_id} deleted for {formref}")
        return True
    else:
        print_cli_error(f"Error: Could not delete proof {proof_id} for {formref}")
        return False

async def mark_proof_default(formref: str, proof_id: str, ws):
    """Mark a proof as default for a formula"""
    formref = normalize_formref(formref)
    print_verbose(f"Marking proof {proof_id} as default for {formref}")

    result = await request("mark-proof-as-default", [formref, proof_id], ws)

    if result is not None:
        print_cli(f"Proof {proof_id} marked as default for {formref}")
        return True
    else:
        print_cli_error(f"Error: Could not mark proof {proof_id} as default for {formref}")
        return False

async def change_workspace_dir(directory: str, ws):
    """Change workspace directory"""
    abs_path = os.path.abspath(directory)
    if not os.path.isdir(abs_path):
        print_cli_error(f"Error: Directory '{directory}' not found")
        return False

    print_verbose(f"Changing workspace to {abs_path}")

    result = await request("change-workspace", [abs_path], ws)

    if result is not None:
        print_cli(f"Workspace changed to {abs_path}")
        return True
    else:
        print_cli_error(f"Error: Could not change workspace to {abs_path}")
        return False

async def clear_workspace_dir(directory: Optional[str], ws):
    """Clear workspace"""
    params = [directory] if directory else []
    print_verbose(f"Clearing workspace" + (f" at {directory}" if directory else ""))

    result = await request("clear-workspace", params, ws)

    if result is not None:
        print_cli("Workspace cleared")
        return True
    else:
        print_cli_error("Error: Could not clear workspace")
        return False

async def find_declaration(decl_id: str, ws):
    """Find declaration by ID"""
    print_verbose(f"Finding declaration: {decl_id}")

    result = await request("find-declaration", [decl_id], ws)

    if result:
        print_cli(f"Declaration info for '{decl_id}':")
        print_server(json.dumps(result, indent=2))
        return True
    else:
        print_cli_error(f"Error: Could not find declaration '{decl_id}'")
        return False

async def collect_usings(thref: str, ws):
    """Collect theory dependencies"""
    print_verbose(f"Collecting dependencies for {thref}")

    result = await request("collect-theory-usings", [thref], ws)

    if result:
        print_cli(f"Dependencies for {thref}:")
        print_server(json.dumps(result, indent=2))
        return True
    else:
        print_cli_error(f"Error: Could not collect dependencies for {thref}")
        return False

async def add_library(lib_path: str, ws):
    """Add PVS library"""
    print_verbose(f"Adding library: {lib_path}")

    result = await request("add-pvs-library", [lib_path], ws)

    if result is not None:
        print_cli(f"Library added: {lib_path}")
        return True
    else:
        print_cli_error(f"Error: Could not add library {lib_path}")
        return False

async def save_all_proofs(thref: str, ws):
    """Save all proofs for a theory"""
    print_verbose(f"Saving all proofs for theory: {thref}")

    result = await request("save-all-proofs", [thref], ws)

    if result is not None:
        print_cli(f"Proofs saved for {thref}")
        return True
    else:
        print_cli_error(f"Error: Could not save proofs for {thref}")
        return False

async def execute_lisp(lisp_expr: str, ws):
    """Execute Lisp expression"""
    print_verbose(f"Executing Lisp: {lisp_expr}")

    result = await request("lisp", [lisp_expr], ws)

    if result is not None:
        print_cli("Lisp result:")
        print_server(json.dumps(result, indent=2))
        return True
    else:
        print_cli_error("Error: Lisp execution failed")
        return False

async def help_method(method_name: str, ws):
    """Get help for a method"""
    print_verbose(f"Getting help for method: {method_name}")

    result = await request("help", [method_name], ws)

    if result:
        print_cli(f"Help for '{method_name}':")
        print_server(json.dumps(result, indent=2))
        return True
    else:
        print_cli_error(f"Error: Could not get help for '{method_name}'")
        return False

async def reset_system(ws):
    """Reset PVS system (STUB - NOT IMPLEMENTED BY SERVER)"""
    print_cli_error("Warning: 'reset' is not currently implemented by PVS server")
    print_cli_error("This method exists as a stub but does not perform any action")
    return False

async def interrupt_operation(ws):
    """Interrupt current operation (STUB - NOT IMPLEMENTED BY SERVER)"""
    print_cli_error("Warning: 'interrupt' is not currently implemented by PVS server")
    print_cli_error("This method exists as a stub but does not perform any action")
    print_cli_error("Use --interrupt-proof <ID> to interrupt a specific proof session")
    return False

async def main():
    global VERBOSE, USE_COLORS

    parser = argparse.ArgumentParser(
        description='PVS Command-Line Interface - Interact with PVS theorem prover via JSON-RPC',
        epilog='''
BASIC USAGE:

1. Typecheck and prove:
   pvs-cli.sh --typecheck file.pvs
   pvs-cli.sh --prove "theory#lemma"
   pvs-cli.sh --proof-command "(skolem!)"

2. Generic method calls (for any PVS method):
   pvs-cli.sh --call METHOD [PARAM1] [PARAM2]...
   Examples:
     pvs-cli.sh --call list-methods
     pvs-cli.sh --call parse example
     pvs-cli.sh --call help parse

3. List all available methods:
   pvs-cli.sh --describe-server-methods

REQUIREMENTS:
- PVS server must be running: pvs -port 23456
- All parameters are treated as strings (no type conversion)
- Use --verbose for debugging

METHOD CATEGORIES:
- Basic: help, reset, interrupt
- File: parse, typecheck, names-info, term-at, show-tccs, latex-pvs-file
- Proof: prove-formula, proof-command, interrupt-proof, proof-status, proof-script, all-proofs-of-formula
- Context: change-context, change-workspace, clear-workspace, find-declaration, collect-theory-usings
- Other: lisp, add-pvs-library, pvsio-start, pvsio-eval

See --list-all-methods for method signatures and full reference.
''',
        formatter_class=argparse.RawDescriptionHelpFormatter
    )

    group = parser.add_mutually_exclusive_group(required=True)

    # Core proof session commands
    group.add_argument('--typecheck', metavar='FILE',
                      help='Typecheck a PVS file')
    group.add_argument('--prove', metavar='FORMULA',
                      help='Start a proof session for a formula (file#theory#formula)')
    group.add_argument('--proof-command', metavar='COMMAND',
                      help='Send a proof command to the current session')
    group.add_argument('--set-active-proof', metavar='PROOF-ID',
                      help='Set the active proof session by proof ID')
    group.add_argument('--list-active-proofs', action='store_true',
                      help='List all active proof sessions')
    group.add_argument('--quit-all-proofs', action='store_true',
                      help='Quit all proof sessions')
    group.add_argument('--fail-proof', metavar='PROOF_ID',
                      help='Quit a proof without saving it (does not auto-save or mark as default)')
    group.add_argument('--status', action='store_true',
                      help='Show current proof session status')

    # Generic method call
    group.add_argument('--call', nargs='+', metavar=('METHOD', 'PARAM'),
                      help='Call any PVS JSON-RPC method with parameters as strings (see --describe-server-methods for available methods)')

    # Basic operations
    group.add_argument('--help-method', metavar='METHOD',
                      help='Get help for a PVS method')
    group.add_argument('--describe-server-methods', action='store_true',
                      help='List all available PVS server methods with signatures')
    group.add_argument('--reset', action='store_true',
                      help='Reset PVS system [STUB - NOT IMPLEMENTED BY SERVER]')
    group.add_argument('--interrupt', action='store_true',
                      help='Interrupt operation [STUB - NOT IMPLEMENTED BY SERVER]')

    # File operations
    group.add_argument('--parse', metavar='FILE',
                      help='Parse a PVS file without typechecking')
    group.add_argument('--names-info', metavar='FILE',
                      help='Get names information from a PVS file')
    group.add_argument('--term-at', metavar=('FILE', 'PLACE'), nargs=2,
                      help='Find term at specific location in file (FILE PLACE)')
    group.add_argument('--show-tccs', metavar='FILE',
                      help='Show type-checking conditions for file')
    group.add_argument('--lisp', metavar='EXPR',
                      help='Execute Lisp expression')
    group.add_argument('--find-declaration', metavar='ID',
                      help='Find declaration by ID')

    # Proof operations
    group.add_argument('--interrupt-proof', metavar='ID',
                      help='Interrupt specific proof session')
    group.add_argument('--proof-help', metavar='CMD',
                      help='Get help for a proof command')
    group.add_argument('--prover-status', metavar='PROOF_ID', nargs='?',
                      help='Get prover status (optionally for specific proof)')
    group.add_argument('--proof-status', metavar='FORMREF',
                      help='Get proof status for formula')
    group.add_argument('--proof-script', metavar='FORMREF',
                      help='Get proof script for formula')
    group.add_argument('--all-proofs-of-formula', metavar='FORMREF',
                      help='Get all proofs for formula')
    group.add_argument('--delete-proof-of-formula', metavar=('FORMREF', 'PROOF_ID'), nargs=2,
                      help='Delete proof for formula')
    group.add_argument('--delete-proof', metavar=('FORMREF', 'PROOF_ID'), nargs=2,
                      help='Delete proof for formula (alias for --delete-proof-of-formula)')
    group.add_argument('--mark-proof-as-default', metavar=('FORMREF', 'PROOF_ID'), nargs=2,
                      help='Mark proof as default for formula')

    # Context operations
    group.add_argument('--change-workspace', metavar='DIR',
                      help='Change workspace directory')
    group.add_argument('--clear-workspace', metavar='DIR', nargs='?',
                      help='Clear workspace (optionally specify directory)')
    group.add_argument('--collect-theory-usings', metavar='THREF',
                      help='Collect theory dependencies')
    group.add_argument('--add-pvs-library', metavar='PATH',
                      help='Add PVS library')
    group.add_argument('--save-all-proofs', metavar='THREF',
                      help='Save all proofs for theory')

    parser.add_argument('--host', default='localhost',
                       help='PVS server host (default: localhost)')
    parser.add_argument('--port', type=int, default=23456,
                       help='PVS server port (default: 23456)')
    parser.add_argument('--verbose', '-v', action='store_true',
                       help='Enable verbose output')
    parser.add_argument('--debug', action='store_true',
                       help='Enable debug output (shows raw requests and responses)')
    parser.add_argument('--no-color', action='store_true',
                       help='Disable colored output')
    parser.add_argument('--dark-theme', action='store_true',
                       help='Force dark theme colors')
    parser.add_argument('--light-theme', action='store_true',
                       help='Force light theme colors')

    args = parser.parse_args()

    # Set verbose mode
    global VERBOSE
    VERBOSE = args.verbose

    # Set debug mode
    global DEBUG
    DEBUG = args.debug

    # Set color mode
    global USE_COLORS
    USE_COLORS = not args.no_color

    # Set theme
    global THEME
    if args.dark_theme:
        THEME = 'dark'
    elif args.light_theme:
        THEME = 'light'
    else:
        THEME = detect_theme()

    if VERBOSE:
        print_verbose(f"Host: {args.host}")
        print_verbose(f"Port: {args.port}")
        print_verbose(f"Theme: {THEME}")

    if DEBUG:
        print_debug(f"Debug mode enabled")

    # Handle commands that don't need a connection
    if args.list_active_proofs:
        list_active_proofs()
        return

    if args.describe_server_methods:
        list_all_pvs_methods()
        return

    try:
        uri = f"ws://{args.host}:{args.port}"
        # Set close_timeout to 0 to avoid waiting for clean close
        async with websockets.connect(uri, close_timeout=0) as ws:
            # Core proof commands
            if args.typecheck:
                await typecheck_file(args.typecheck, ws)
            elif args.prove:
                await prove_formula(args.prove, ws)
            elif args.proof_command:
                await send_proof_command(args.proof_command, ws)
            elif args.set_active_proof:
                await set_active_proof(args.set_active_proof, ws)
            elif args.quit_all_proofs:
                await quit_proof_session(ws)
            elif args.fail_proof:
                await fail_proof(args.fail_proof, ws)
            elif args.status:
                await show_proof_status(ws)

            # Generic method call
            elif args.call:
                method = args.call[0]
                params = args.call[1:] if len(args.call) > 1 else []
                await generic_call(method, params, ws)

            # Basic operations
            elif args.help_method:
                await help_method(args.help_method, ws)
            elif args.reset:
                await reset_system(ws)
            elif args.interrupt:
                await interrupt_operation(ws)

            # File operations
            elif args.parse:
                await parse_file(args.parse, ws)
            elif args.names_info:
                await get_names_info(args.names_info, ws)
            elif args.term_at:
                await find_term_at(args.term_at[0], args.term_at[1], ws)
            elif args.show_tccs:
                await show_tccs(args.show_tccs, ws)
            elif args.lisp:
                await execute_lisp(args.lisp, ws)
            elif args.find_declaration:
                await find_declaration(args.find_declaration, ws)

            # Proof operations
            elif args.interrupt_proof:
                await interrupt_proof_session(args.interrupt_proof, ws)
            elif args.proof_help:
                await proof_help(args.proof_help, ws)
            elif args.prover_status is not None:
                await get_prover_status(args.prover_status, ws)
            elif args.proof_status:
                await get_proof_status(args.proof_status, ws)
            elif args.proof_script:
                await get_proof_script(args.proof_script, ws)
            elif args.all_proofs_of_formula:
                await get_all_proofs(args.all_proofs_of_formula, ws)
            elif args.delete_proof_of_formula:
                await delete_proof(args.delete_proof_of_formula[0], args.delete_proof_of_formula[1], ws)
            elif args.delete_proof:
                await delete_proof(args.delete_proof[0], args.delete_proof[1], ws)
            elif args.mark_proof_as_default:
                await mark_proof_default(args.mark_proof_as_default[0], args.mark_proof_as_default[1], ws)

            # Context operations
            elif args.change_workspace:
                await change_workspace_dir(args.change_workspace, ws)
            elif args.clear_workspace is not None:
                await clear_workspace_dir(args.clear_workspace, ws)
            elif args.collect_theory_usings:
                await collect_usings(args.collect_theory_usings, ws)
            elif args.add_pvs_library:
                await add_library(args.add_pvs_library, ws)
            elif args.save_all_proofs:
                await save_all_proofs(args.save_all_proofs, ws)

    except (ConnectionRefusedError, OSError) as e:
        print_cli_error(f"Error: Could not connect to PVS server at {args.host}:{args.port}")
        print_cli_error("")
        print_cli_error("The PVS server is not responding. Please start it with:")
        print_cli_error(f"  pvs -port {args.port}")
        sys.exit(1)
    except Exception as e:
        print_cli_error(f"Error: {e}")
        sys.exit(1)

if __name__ == "__main__":
    asyncio.run(main())
