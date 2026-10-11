#!/bin/bash
# Print the formulas of a theory whose names contain a substring, with their statements.
# usage: print-tccs.sh LIBDIR FILE THEORY SUBSTRING
# Example: print-tccs.sh nasalib/pvsio_utils/PVSioPEG peg peg peg_parse_TCC
set -u
LIBDIR=$(cd "$1" && pwd); FILE=$2; TH=$3; SUB=$4
PVS_DIR=${PVS_DIR:-$(dirname "$(command -v pvs)")}
cd "$LIBDIR" || exit 2
"$PVS_DIR/pvs" -raw <<LISP 2>&1 | sed -n '/^TCC /,$p' | grep -v '^PVS(\|^\*'
(pvs::change-workspace "$LIBDIR/" t)
(in-package :pvs)
(typecheck-file "$FILE" nil nil t)
(dolist (d (provable-formulas (get-theory "$TH")))
  (when (search "$SUB" (string (id d)))
    (format t "~%TCC ~a [~a]:~%~a~%" (id d) (proof-status-string d)
            (unparse (definition d) :string t))))
(bye)
LISP
