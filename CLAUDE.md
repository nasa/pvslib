# NASALib - Claude Code Instructions

## Overview

NASALib is a collection of formal developments for the PVS theorem prover, maintained by NASA Langley Research Center.

## Available Skills

- `/nasalib-fixer` - Diagnose and fix broken PVS proofs. Use this skill when:
  - `proveit` reports proof failures
  - You see `.trf` trace files with `-BAD` suffix
  - A proof is marked as "unfinished" or needs repair after a PVS version upgrade

- `/pvs-cli` - Command-line interface to PVS. Use this skill when:
  - Typechecking PVS files from the command line
  - Starting and managing interactive proof sessions
  - Sending proof commands without the PVS GUI
  - Evaluating PVS expressions (ground evaluation)

## Key Scripts

- `pvs-scripts/pvs-cli.sh` - CLI interface to PVS server (requires PVS running on port 23456)
- `pvs-scripts/prooftrace.sh` - Generate proof trace files for analysis
- `proveit` / `provethem` - Batch proof running (in PVS installation)

## Library Order

Libraries are listed in dependency order in `nasalib.all`. When fixing proofs, work through libraries in this order to avoid cascading failures.

## Proof Tracking

Record fixed proofs in `PVS81-PROOF-FIXES.md` to track progress and document fix patterns.
