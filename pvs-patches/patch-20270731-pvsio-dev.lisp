(defun run-pvsio-on (context pvsname theory preludexts tccs main)
  (when *evaluator-debug*
    (pvs-message "*evaluator-debug* is set to T")
    #+sbcl (sb-debug:print-backtrace :count 1)
    #+allegro (tpl:do-command "args" :save t))
  (let ((file (merge-pathnames (format nil "~a.log" theory) (uiop:ensure-directory-pathname context))))
    (multiple-value-bind (val err)
	(ignore-errors
	  (let ((th
		 (with-open-file
		     (*standard-output*
		      file
		      :direction :output
		      :if-does-not-exist :create
		      :if-exists :supersede)
		   (change-workspace context t)
		   (load-prelude-libraries preludexts)
		   (when pvsname
		     (typecheck-file pvsname nil nil nil t))
		   (get-typechecked-theory theory))))
	    (if th
		(evaluation-mode-pvsio th main tccs (null main))
		(error "Theory ~a doesn't exist in PVS context ~a" theory context))))
      (declare (ignore val))
      (when err (pvs-message "Error: ~a~%Log file: ~a" err file)))
    (fresh-line)
    (bye 0)))

(defun run-pvsio ()
  (let* ((context (environment-variable "PVSIOCONTEXT"))
	 (pvsname (let ((name (environment-variable "PVSIONAME")))
		    (when (and name (string/= name "")) name)))
	 (theory (environment-variable "PVSIOTHEORY"))
	 (preludexts (read-from-string (environment-variable "PVSIOLISPPRELUDEXTS")))
	 (tccs (read-from-string (environment-variable "PVSIOLISPTCCS")))
	 (pvsio-main (environment-variable "PVSIOMAIN"))
	 (main (unless (string= pvsio-main "") (format nil "~a;" pvsio-main)))
	 (*pvsio-promptin* (environment-variable "PVSIOPROMPTIN"))
	 (*pvsio-promptout* (environment-variable "PVSIOPROMPTOUT"))
	 (*evaluator-debug* (read-from-string (environment-variable "PVSIOLISPDEBUG")))
	 (*pvs-eval-do-timing* (read-from-string (environment-variable "PVSIOLISPTIMING"))))
    (run-pvsio-on context pvsname theory preludexts tccs main)))
