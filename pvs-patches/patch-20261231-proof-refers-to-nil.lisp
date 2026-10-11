;; Patch for PVS 8.1 (dev, src/prover/eproofcheck.lisp and src/utils.lisp)
;;
;; PVS writes NIL entries in the dependency lists of non-TCC proofs in .prf files.
;; When a proof ends, prove*-int stores the dependent-decls of the proof state as the
;; refers-to list of the proof. That list can contain skolem constants of the proof.
;; sexp of a skolem-const-decl is nil, and sexp of a proof-info does not remove nil.
;; This patch makes these two changes:
;; - prove*-int does not store skolem constants in refers-to.
;; - sexp of a proof-info removes nil entries, as sexp of a tcc-proof-info does.
;; See PVS bug-reports/missing-judgement-break.
;;
;; The date 20261231 is after the build date of the current dev, so the patch is loaded.
;; When dev contains this fix, rename the patch with a date before the PVS build date.
(in-package :pvs)

(defun prove*-int (proofstate)
  (setf *current-context* (context proofstate))
  (when (and (null *printproofstate*)
	     (null *suppress-printing*)
	     (fresh? proofstate)
	     (not (typep (strategy proofstate) 'strategy))
	     ;;(not (typep proofstate 'strat-proofstate))
	     ;;(not (null (strategy proofstate)))
	     ;;(NSH:11.17.94): commented out
	     )
    ;; If in a proof-session, push the proofstate to the outputs list
    (or (session-output proofstate)
	(unless *noninteractive*
	  (push (cons "proofstate" proofstate) *prover-log*)
	  nil)
	(print-proofstate-if proofstate))
    ;;(run-prover-output-hooks proofstate)
    (clear-strategy-errors))
  (let ((nextstate (proofstepper proofstate)))
    (cond ((null (parent-proofstate proofstate))
	   (cond ((eq (status-flag proofstate) '!)
		  (when (typep proofstate 'top-proofstate)
		    (let ((decl (declaration proofstate)))
		      ;; Skolem constants are local to the proof, not
		      ;; dependencies: sexp writes them as nil
		      (setf (proof-refers-to decl)
			    (remove-if #'skolem-const-decl?
			      (dependent-decls proofstate))
			    (proof-status decl) 'proved)) 
		    (format-if "~%Q.E.D.~%"))
		  proofstate)
		 ((memq (status-flag proofstate) '(X XX))
		  (when (typep proofstate 'top-proofstate)
		    (format-if "~%Failed!~%"))
		  proofstate)
		 ((and (or (fresh? proofstate)
			   (eq (status-flag proofstate) '*))
		       (null (strategy proofstate))
		       (not (typep proofstate 'top-proofstate))) 
		  (unless *suppress-printing*
		    (commentary "Subgoal completed"))
		  (setf (status-flag proofstate) '*)
		  proofstate)
		 (t (prove*-int nextstate))))
	  (t (prove*-int nextstate)))))


(defmethod sexp ((prinfo proof-info))
  (with-slots (id description create-date ;;run-date
		  script ;;status
		  refers-to ;;real-time run-time interactive?
		  decision-procedure-used)
      prinfo
    (list id description create-date ;;run-date
	  script ;;status
	  ;; sexp of a skolem-const-decl is nil
	  (remove-if #'null (sexp refers-to)) ;;real-time run-time interactive?
	  decision-procedure-used)))
