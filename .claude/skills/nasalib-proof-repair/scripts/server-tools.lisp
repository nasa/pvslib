;; Helper functions for a dedicated PVS server (see pvs-server.sh and srv.sh).
;; Each function returns a string, which pvs-cli prints as the Lisp result.
;; The server keeps the typechecked theories, so each call costs only the work it does.

(in-package :pvs)

(defun nlp-capture (thunk &optional (limit 120))
  "Run THUNK with the standard output captured, and return the output as a string.
  When LIMIT is a number, return only the last LIMIT lines."
  (let* ((out (with-output-to-string (*standard-output*)
                (let ((*error-output* *standard-output*))
                  (funcall thunk))))
         (lines (uiop:split-string out :separator '(#\Newline))))
    (if (and limit (> (length lines) limit))
        (format nil "...~%~{~a~^~%~}" (last lines limit))
        out)))

(defun nlp-typecheck (file)
  "Typecheck FILE (a name without .pvs, in the current workspace), with its proofs."
  (nlp-capture #'(lambda () (typecheck-file file nil nil t)) 30))

(defun nlp-reload (dir)
  "Read the workspace DIR again from disk (after an external change to a .pvs or .prf file)."
  (nlp-capture #'(lambda () (change-workspace dir t)) 10))

(defun nlp-formulas (theory substring)
  "Statements and proof status of the formulas of THEORY whose names contain SUBSTRING."
  (with-output-to-string (s)
    (dolist (d (provable-formulas (get-theory theory)))
      (when (search substring (string (id d)))
        (format s "~%~a [~a]:~%~a~%" (id d) (proof-status-string d)
                (unparse (definition d) :string t))))))

(defun nlp-status (theory)
  "Proof status, in this session, of the formulas of THEORY that are not proved and complete.
  Formulas that were not rerun in this session show as unfinished."
  (with-output-to-string (s)
    (dolist (d (provable-formulas (get-theory theory)))
      (let ((st (proof-status-string d)))
        (unless (string= st "proved - complete")
          (format s "~a: ~a~%" (id d) st))))))

(defun nlp-try (theory formula script &optional (seconds 120) (limit 60))
  "Set SCRIPT (a string with a proof script in .prf format) as the proof of FORMULA in
  THEORY, rerun it with a time limit of SECONDS, and return the status and the end of the
  trace. The proof stays in memory; use nlp-save to write the .prf file."
  (let* ((d (find formula (provable-formulas (get-theory theory))
                  :key #'(lambda (x) (string (id x))) :test #'string=))
         (*noninteractive* t)
         ;; In server mode, these hooks send proof states to the client and print
         ;; nothing; without them, the trace goes to the captured output
         (*success-proofstate-hooks* nil)
         (*proofstate-hooks* nil)
         ;; The level of proveit --traces: print each step and its result
         (*pvs-verbose* 3))
    (if (null d)
        (format nil "No formula ~a in theory ~a" formula theory)
        (let* ((sexp (let ((*package* (find-package :pvs))) (read-from-string script)))
               (trace (nlp-capture
                       #'(lambda ()
                           ;; The prover commands load the pvs-strategies files of the
                           ;; libraries; rerun-prove alone does not
                           (read-strategies-files)
                           (setf (justification d) (revert-justification sexp))
                           (handler-case
                               (sb-ext:with-timeout seconds (rerun-prove d))
                             (sb-ext:timeout () (format t "~%TIMEOUT after ~a s~%" seconds))))
                       limit)))
          (format nil "~a~%~%STATUS ~a: ~a~%" trace formula (proof-status-string d))))))

(defun nlp-save (theory)
  "Write the proofs of THEORY to its .prf file."
  (nlp-capture #'(lambda () (save-all-proofs (get-theory theory) t)) 10))
