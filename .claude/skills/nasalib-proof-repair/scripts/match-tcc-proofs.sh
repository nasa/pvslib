#!/bin/bash
# Find proofs for unproved TCCs among candidate proof scripts. Use it after the TCCs of a
# declaration were renumbered, so that the stored proofs are on the wrong TCCs.
#
# usage: match-tcc-proofs.sh LIBDIR FILE THEORY CANDIDATES.prf SUBSTRING
#   CANDIDATES.prf  a .prf file (for example, a copy taken before the change); every proof
#                   script of a formula whose name contains SUBSTRING is a candidate
#   SUBSTRING       the formulas to repair, for example peg_parse_TCC
#
# For each unproved formula whose name contains SUBSTRING, the script reruns its stored
# proof, then tries each candidate (20 seconds each). It keeps the first one that proves
# the formula and saves THEORY.prf after each success. Lines "MATCH name proved|FAILED"
# report the results.
set -u
LIBDIR=$(cd "$1" && pwd); FILE=$2; TH=$3; CAND=$(cd "$(dirname "$4")" && pwd)/$(basename "$4"); SUB=$5
PVS_DIR=${PVS_DIR:-$(dirname "$(command -v pvs)")}
cd "$LIBDIR" || exit 2
"$PVS_DIR/pvs" -raw <<LISP 2>&1 | grep '^MATCH\|debugger'
(pvs::change-workspace "$LIBDIR/" t)
(in-package :pvs)
(setq *noninteractive* t)
(typecheck-file "$FILE" nil nil t)
(defparameter *cands*
  (let ((all (with-open-file (s "$CAND") (let ((*package* (find-package :pvs))) (read s))))
        (res nil))
    (dolist (e (cdr all))
      (when (search "$SUB" (string (car e)))
        (dolist (p (cddr e)) (pushnew (nth 3 p) res :test #'equal))))
    (nreverse res)))
(format t "~%MATCH candidates: ~a~%" (length *cands*))
(let ((th (get-theory "$TH")))
  (dolist (d (provable-formulas th))
    (when (and (search "$SUB" (string (id d))) (not (proved? d)))
      (let ((orig (justification d)))
        (handler-case (sb-ext:with-timeout 30 (rerun-prove d)) (sb-ext:timeout () nil))
        (dolist (c *cands*)
          (unless (proved? d)
            (setf (justification d) (revert-justification c))
            (let ((*suppress-printing* t))
              (handler-case (sb-ext:with-timeout 20 (ignore-errors (rerun-prove d)))
                (sb-ext:timeout () nil)))))
        (format t "~%MATCH ~a ~a~%" (id d) (if (proved? d) "proved" "FAILED"))
        (if (proved? d) (save-all-proofs th t) (setf (justification d) orig))))))
(bye)
LISP
