(in-package :pvs)

(defun save-proof-info (decl init-real-time init-run-time)
    (let* ((prinfo (let ((sess (current-session)))
                (if sess
                    (make-prf-info decl nil (id sess) "")
                    (default-proof decl))))
            (script (extract-justification-sexp
                (collect-justification *top-proofstate*)))
            (auto-fixed-prf
            ;; if the prf was rerun in *auto-fix-on-rerun* mode and it ended proved, save it.
            (and *auto-fix-on-rerun*
                (eq (status-flag *top-proofstate*) '!)
                (not *context-modified*))))
        (cond ((or (null (script prinfo))
            (equal (script prinfo) '("" (postpone) nil nil))
            (and (tcc-decl? decl)
                (equal (script prinfo) (tcc-strategy decl))
                    (not (or (equal script (tcc-strategy decl))
                        (equal script (append (tcc-strategy decl) '(nil nil))))))
                        (and (eq (status prinfo) 'proved)
                    (eq (status-flag *top-proofstate*) '!)
                    (or
                    ;; next check is added to avoid crashing on malformed prf files.
                    ;; should be handled another way (TODO)
                    (not (or (equalp (car (script prinfo)) "")  
                            (and (stringp (car (script prinfo)))
                            (char= (char (car (script prinfo)) 0) #\;))))
                        (script-structure-changed? prinfo script))))
            (setf (script prinfo) script))
            ((and (or (not *proving-tcc*) auto-fixed-prf)
                (or (not *noninteractive*) auto-fixed-prf)
                script
                (not (equal script '("" (postpone) nil nil)))
                (not (equal (script prinfo) script))
                (or (pvs-noquestions *proof-prompt-behavior*)
                    auto-fixed-prf
                    (let ((ids (mapcar #'id
                            (remove-if-not
                                #'(lambda (prinfo)
                                (equal (script prinfo) script))
                                (proofs decl)))))
                (pvs-yes-or-no-p
                    "~@[This proof is already associated with this formula ~
                        as ~{~a~^, ~}~%~]~
                    Would you like the proof to be saved~@[ anyway~]? "
                    ids ids))))
            (cond ((and (not auto-fixed-prf)
                    (or (pvs-noquestions *proof-prompt-behavior*)
                        (pvs-yes-or-no-p
                        "Would you like to overwrite the current proof (named ~a)? "
                        (id prinfo))))
                (when (pvs-dont-ask *proof-prompt-behavior*)
                    (format t "Overwriting proof named ~a" (id prinfo)))
                    (setf (script prinfo) script))
                ((let ((sess (current-session)))
                    (when sess
                    ;; Note that it isn't made the default
                    (setf (script prinfo) script))))
                (t (let ((id (read-proof-id (next-proof-id decl)))
                        (description (read-proof-description)))
                    (setq prinfo
                        (make-default-proof decl script id description)))))))
    (setf (real-time prinfo) (realtime-since init-real-time))
    (setf (run-time prinfo) (runtime-since init-run-time))
    (setf (run-date prinfo) (get-universal-time))
    (when *use-default-dp?*
        (setf (decision-procedure-used prinfo) *default-decision-procedure*))
    (setf (proof-status decl)
        (if (eq (status-flag *top-proofstate*) '!)
            (cond (*context-modified*
                (pvs-message "~a proved with modified context, so marked unchecked"
                    (id decl))
                    'unchecked)
                    (t 'proved))
                'unfinished))
    (format-nif "~%~%Run time  = ~,2,-3F secs." (run-time prinfo))
    (format-nif "~%Real time = ~,2,-3F secs.~%" (real-time prinfo))
    (when (and *context-modified*
            (eq (proof-status decl) 'proved))
        (setf (proof-status decl) 'unfinished)
        (when (and (not *proving-tcc*)
                (pvs-yes-or-no-p
                "~%Context was modified in mid-proof.  ~
                    Would you like to rerun the proof?~%"))
        (let ((*in-checker* nil))
        (prove-decl decl :strategy '(then (rerun) (query*))))))))