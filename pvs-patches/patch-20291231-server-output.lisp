;; M3 when debugging
;; (push :pvsdebug *features*)
;; (setq *debugger-hook* nil)


(in-package :pvs)

(defvar *pvs-patches* nil)
(let ((path-filename (namestring *load-truename*)))
  (setq *pvs-patches* (remove path-filename *pvs-patches* :test #'string=))
  (push path-filename *pvs-patches*))

(in-package :pvs)

;; when in raw mode, (pvs-context *workspace-session*) is not being set by default
;; (unless (pvs-context *workspace-session*)
;;   (change-workspace (working-directory) t))

(when *pvs-lisp-process*
  (setq *proofstate-hooks* (remove 'update-ps-control-info-result *proofstate-hooks*))
  (pushnew 'pvs-json:update-ps-control-info-result *proofstate-hooks*)
  (setq *success-proofstate-hooks* (remove 'rpc-output-notify-proof-success *success-proofstate-hooks*))
  (pushnew 'pvs-json::rpc-output-notify-proof-success *success-proofstate-hooks*)
  (setq *finish-proofstate-hooks* (remove 'finish-proofstate-rpc-hook *finish-proofstate-hooks*))
  (pushnew 'pvs-json::finish-proofstate-rpc-hook *finish-proofstate-hooks*))

;; {interface/pvs-json-methods.lisp}
(in-package :pvs-json)
(defrequest prover-status ()
  "Checks the status of the prover: active or inactive."
  (format nil "~a" (if *pvs-lisp-process*
      (let ((top-ps (mp:symeval-in-process '*top-proofstate* *pvs-lisp-process*))
	    (ps (mp:symeval-in-process '*ps* *pvs-lisp-process*)))
	(pvs:prover-status ps top-ps))
      :inactive)))

;; {interface/pvs-json-methods.lisp}
(in-package :pvs-json)
(defrequest store-last-attempted-proof (formula theory &optional overwrite? new-script-id new-script-desc)
  "Store the last attempted proof script in the provided formula, only if the script was produced for it."
  #+pvsdebug (format t "~%[store-last-attempted-proof] last-attempted-proof ~a ~%" pvs::*last-attempted-proof*)
  #+pvsdebug (format t "~%[store-last-attempted-proof] formula ~a theory ~a overwrite? ~a ~%" formula theory overwrite?)
  (unless pvs::*last-attempted-proof*
    (pvs-error "store-last-attempted-proof error" "There is no attempted proof script to be saved."))
  (let ((dst-decl (pvs:get-formula-decl theory formula)))
    (if (equal dst-decl (car pvs::*last-attempted-proof*))
	(let ((script (cdr pvs::*last-attempted-proof*)))
	  (if overwrite?
	      (let ((prinfo (pvs::default-proof dst-decl)))
		(setf (pvs::script prinfo) (car script)))
	    (let ((id (or new-script-id (pvs::next-proof-id dst-decl)))
		  (description (or new-script-desc "")))
	      (setf (pvs::default-proof dst-decl)
		    (pvs::make-default-proof dst-decl (car script) id description)))))
      (pvs-error "store-last-attempted-proof error" (format nil "Last attempted proof script was not meant for provided decl (script attempted for ~a, decl provided is ~a)." (car pvs::*last-attempted-proof*) dst-decl)))))

;; {interface/pvs-json-methods.lisp}
(in-package :pvs-json)
(defrequest interrupt ()
  "Interrupts PVS."
  #+pvsdebug (format t "~%[interrupt] interrupt request received (pvs process: ~s) ~%" *pvs-lisp-process*) ;; debug
  #+pvsdebug (format t "~%[interrupt] interrupt request received (all processes: ~s) ~%" mp:*all-processes*) ;; debug
;;  #+pvsdebug (format t "~%[interrupt] ps-control-info ~s ~%" pvs:*ps-control-info*)
;;  #+pvsdebug (format t "~%[interrupt] ps-control-info ~s ~%" (mp:symeval-in-process 'pvs:*ps-control-info* *pvs-lisp-process*))
;;  #+pvsdebug (format t "~%[interrupt] condition: res-gate ~s cmd-gate ~s ~%"
;;		     (mp:gate-open-p (pvs:psinfo-res-gate pvs:*ps-control-info*))
;;		     (mp:gate-open-p (pvs:psinfo-cmd-gate pvs:*ps-control-info*))) ;; debug
  (when *pvs-lisp-process*
    (mp:process-interrupt
     *pvs-lisp-process*
     #'(lambda ()
	 (cond (pvs:*in-checker*
		#+pvsdebug (format t "~%[interrupt] ps-control-info ~s ~%"
				   (mp:symeval-in-process 'pvs:*ps-control-info* *pvs-lisp-process*))
		#+pvsdebug (format t "~%[interrupt] condition: in-apply ~s res-gate ~s cmd-gate ~s ~%"
				   pvs::*in-apply*
				   (mp:gate-open-p (pvs:psinfo-res-gate pvs:*ps-control-info*))
				   (mp:gate-open-p (pvs:psinfo-cmd-gate pvs:*ps-control-info*))) ;; debug
		(if ;; only allows to interrupt if a command is being processed.
	      	    (or pvs::*in-apply*
			(mp:gate-open-p (pvs:psinfo-res-gate pvs:*ps-control-info*))
	      		(mp:gate-open-p (pvs:psinfo-cmd-gate pvs:*ps-control-info*)))
		    (progn
		      #+pvsdebug (format t "~%[interrupt] process interrupted ~%") ;; debug
		      (setf *interrupted-rpc* t)
		      (restore))
		  (progn
		    #+pvsdebug (format t "~%[interrupt] omitting interruption (continuing) ~%") ;; debug
		    ;; (break "should be continue")
		    (continue)
		    ))) 
	       (t (break "Interrupted by client"))))))
  ;; (when *pvs-lisp-process*
  ;;   (cond ((mp:symeval-in-process 'pvs:*in-checker* *pvs-lisp-process*)
  ;; 	   (when ;; only allows to interrupt if a command is being processed.
  ;; 	       (or (mp:gate-open-p (pvs:psinfo-res-gate pvs:*ps-control-info*))
  ;; 		   (mp:gate-open-p (pvs:psinfo-cmd-gate pvs:*ps-control-info*)))
  ;; 	     (mp:process-interrupt
  ;; 	      *pvs-lisp-process*
  ;; 	      #'(lambda () (progn
  ;; 			     #+pvsdebug (format t "~%[interrupt] process interrupted ~%") ;; debug
  ;; 			     (setf *interrupted-rpc* t)
  ;; 			     (restore))))))
  ;; 	  (t (break "Interruptep by client"))))
  )

;; {interface/pvs-json-rpc.lisp}
(in-package :pvs-json)
(defun finish-proofstate-rpc-hook (ps)
  "Prepares the result of the rpc request and closes it."
  (when pvs:*ps-control-info*
    (let*((commentary (cons (format nil "~:[Proof attempt aborted~;Q.E.D.~]" (and (typep ps 'pvs::top-proofstate)
										     (eq (pvs::status-flag ps) '!))) *prover-commentary*))
	  (ps-json
	   `((("label" . ,(pvs::label ps))
	      ("commentary" . ,commentary)))))
      (pvs:add-psinfo pvs:*ps-control-info* ps-json))
    ;; M3 save script as last attempted [Sept 2020]
    (let ((script (pvs::extract-justification-sexp
		   (pvs::collect-justification *top-proofstate*)))
	  (decl (pvs:declaration ps)))
      (setf *last-attempted-proof* (list decl script)))
    (mp:open-gate (pvs:psinfo-res-gate pvs:*ps-control-info*))))


;; {interface/pvs-json-rpc.lisp}
(in-package :pvs-json)
(defun rpc-output-notify-proof-success (proofstate)
  #+pvsdebug (format t "~%[rpc-output-notify-proof-success] ~a ~%" (eq 'propax (car(pvs::current-rule proofstate)))) ;;debug
  (when (and pvs:*ps-control-info* (not pvs::*in-apply*))
    (if (eq 'propax (car(pvs::current-rule proofstate)))
	(let ((ps-json (pvs:pvs2json proofstate)))
	  (pvs:add-psinfo pvs:*ps-control-info* (list ps-json)))
      (let*((prev-cmd (pvs::wish-current-rule proofstate))
	    (label-ps (pvs::label proofstate))
	    (ps-json
	     `(("label" . ,label-ps)
	       ("commentary" . ,(list (format nil "This completes the proof of ~a." label-ps)))
	       ("prev-cmd" . ,(format nil "~s" prev-cmd)))))
	(pvs:add-psinfo pvs:*ps-control-info* (list ps-json))))))


;; {interface/pvs-json-rpc.lisp}
(in-package :pvs-json)
(defun update-ps-control-info-result (ps)
  (when (and pvs:*ps-control-info* (not pvs::*in-apply*))
    ;; (let*(;; #+pvsdebug (dummy (format t "~%[update-ps-control-info-result] *rpc-last-reported-ps* ~a~%" *rpc-last-reported-ps*)) 
    ;; 	  (ps-path (path-to-subgoal (wish-top-proofstate) ps))
    ;; 	  ;; (changed (or t ;; M3 avoiding check for repetitions, remove check if not needed in the end.
    ;; 	  ;; 	       (null *rpc-last-reported-ps*)
    ;; 	  ;; 	       (not (member ps-path *rpc-last-reported-ps* :test #'equal))))
    ;; 	  )
    ;;   (when changed
    ;; 	(let* ((json:*lisp-identifier-name-to-json* #'identity)
    ;; 	       (ps-json (pvs2json ps)))
    ;; 	  ;; (when t ;; (mp:gate-open-p (psinfo-cmd-gate *ps-control-info*))
    ;; 	  ;;   (setq *rpc-last-reported-ps* (cons ps-path *rpc-last-reported-ps*))
    ;; 	  ;;   ;; (let* ((siblings (when (parent-proofstate ps)
    ;; 	  ;;   ;; 		       (all-subgoals-sorted (parent-proofstate ps))))
    ;; 	  ;;   ;; 	   (siblings (mapcan #'(lambda (sps)
    ;; 	  ;;   ;; 				 (unless (eq sps ps)
    ;; 	  ;;   ;; 				   (setq *rpc-last-reported-ps* (cons (path-to-subgoal (wish-top-proofstate) sps) *rpc-last-reported-ps*))
    ;; 	  ;;   ;; 				   (list (pvs2json sps))))
    ;; 	  ;;   ;; 			     siblings)))
    ;; 	  ;;   ;;   (xmlrpc-output-proofstate (cons ps-json siblings)))
    ;; 	  ;;   (xmlrpc-output-proofstate (list ps-json)))
    ;; 	  (xmlrpc-output-proofstate (list ps-json)))))
    (let* ((json:*lisp-identifier-name-to-json* #'identity)
	   (ps-json (pvs:pvs2json ps)))
      (xmlrpc-output-proofstate (list ps-json)))
    #+pvsdebug (format t "~%[update-ps-control-info-result] res gate ~a ~%" (mp:gate-open-p (psinfo-res-gate *ps-control-info*))) ;;debug
    (when *interrupted-rpc*
      (mp:open-gate (pvs:psinfo-res-gate pvs:*ps-control-info*))
      #+pvsdebug (format t "~%[update-ps-control-info-result] res gate openned (mp:*current-process* ~s) ~%" mp:*current-process*) ;;debug
      (mp:process-wait "Waiting for next Proofstate [update-ps-control-info-result]"
		       #'(lambda () (not (mp:gate-open-p (pvs:psinfo-res-gate pvs:*ps-control-info*))))))))

;; {interface/pvs-emacs.lisp}
(in-package :pvs)
(defmethod prover-read :around ()
  "Called from prover qread function, which is how the "
  ;; #+pvsdebug (format t "~%[prover-read]  ~%") ;;debug
  (cond (*ps-control-info*
	 ;; bad idea: (format t "~%prover-read: about to wait")
	 #+allegro
	 (when (pvs:psinfo-json-result pvs:*ps-control-info*)
	   #+pvsdebug (format t "~%[prover-read] opening res gate ~%") ;;debug
	   (mp:open-gate (pvs:psinfo-res-gate pvs:*ps-control-info*))
	   (mp:process-wait "Waiting for next Proofstate [prover-read]"
			    #'(lambda () (not (mp:gate-open-p (pvs:psinfo-res-gate pvs:*ps-control-info*)))))
	   #+pvsdebug (format t "~%[prover-read] res gate closed ~%") ;;debug
	   )
	 #+allegro
	 (mp:process-wait
	  "Prover Waiting"
	  #'(lambda ()
	      (or (and pvs:*ps-control-info*
		       (mp:gate-open-p (psinfo-cmd-gate pvs:*ps-control-info*))
		       (psinfo-command pvs:*ps-control-info*))
		  (excl:read-no-hang-p *terminal-io*))))
	 ;;(format t "~%prover-read: done waiting, pvs:*ps-control-info* = ~a" pvs:*ps-control-info*)
	 #+allegro
	 (if (and pvs:*ps-control-info*
		  (mp:gate-open-p (psinfo-cmd-gate pvs:*ps-control-info*)))
	     (unwind-protect
		  (multiple-value-bind (input err)
		      (ignore-errors (read-from-string (psinfo-command pvs:*ps-control-info*)))
		    (when err
		      (format t "~%~a" err))
		    input)
	       (mp:close-gate (psinfo-cmd-gate pvs:*ps-control-info*))
	       (setf (psinfo-command pvs:*ps-control-info*) nil))
	     (call-next-method)))
	(t (call-next-method))))

;; ===debug

;; (defrequest prove-formula (formula theory &optional rerun?)
;;   "Starts interactive proof of a formula from a given theory

;; Creates a ps-control-info struct to control the interaction.  It has slots
;;   command
;;   json-result
;;   lock
;;   cmd-gate
;;   res-gate"
;;   ;; We do this in this thread, as error messages are easier to deal with.
;;   ;; Thus we make sure we're not in the checker, that the theory typechecks,
;;   ;; and that the formula exists in that theory.
;;   (when (and *pvs-lisp-process*
;; 	     (mp:symeval-in-process 'pvs:*in-checker* *pvs-lisp-process*))
;;     (pvs-error "Prove-formula error" "Must exit the prover first"))
;;   #+pvsdebug (format t "~%[prove-formula] formula ~s theory ~s rerun? ~s ~%" formula theory rerun?)
;;   (pvs:get-formula-decl theory formula)
;;   (let ((res-gate (mp:make-gate nil)) ;; initially closed
;; 	(cmd-gate (mp:make-gate nil)) ;;   "
;; 	(lock (mp:make-process-lock))
;; 	(proc (mp:process-name-to-process "Initial Lisp Listener")))
;;     (setq pvs:*multiple-proof-default-behavior* :noquestions)
;;     (setq pvs:*prover-commentary* nil)
;;     (setq pvs:*ps-control-info*
;; 	  (pvs:make-ps-control-info
;; 	   :lock lock
;; 	   :res-gate res-gate
;; 	   :cmd-gate cmd-gate))
;;     ;;(format t "~%prove-formula: Waiting...~%")
;;     ;; (mp:process-interrupt proc #'pvs:prove-formula theory formula nil)
;;     ;; process-interrupt interrupts the main pvs process proc, and invokes
;;     ;; prove-formula
;;     (mp:process-interrupt proc #'pvs:prove-formula theory formula rerun?)
;;     #+pvsdebug (format t "~%[prove-formula] after process-interrupt, about to wait~%")
;;     (mp:process-wait "Waiting for initial Proofstate" #'mp:gate-open-p res-gate)
;;     #+pvsdebug
;;     (format t "~%prove-formula: Done waiting... , lock-locker = ~a~%"
;;        (mp:process-lock-locker lock))
;;     (mp:with-process-lock (lock)
;;       (let ((json-result (pvs:psinfo-json-result pvs:*ps-control-info*)))
;; 	#+pvsdebug (format t "~%[prove-formula] returning json-result ~a~%" json-result)
;; 	(setf (pvs:psinfo-json-result pvs:*ps-control-info*) nil)
;; 	(mp:close-gate (pvs:psinfo-res-gate pvs:*ps-control-info*))
;; 	json-result))))

;; ;; {interface/pvs-json-methods.lisp}
;; (in-package :pvs-json)
;; (defrequest proof-command (form)
;;   "Sends a command to the prover"
;;   #+pvsdebug (format t "~%[proof-command] form ~a~%" form) ;;debug
;;   (unless (and *pvs-lisp-process*
;; 	       (mp:symeval-in-process 'pvs:*in-checker* *pvs-lisp-process*))
;;     (pvs-error "Proof-command error" "Prover is not running: start it with prove-formula"))
;;   (assert (not (mp:gate-open-p (pvs:psinfo-cmd-gate pvs:*ps-control-info*))) () "one")
;;   (assert (null (pvs:psinfo-command pvs:*ps-control-info*)))
;;   (assert (not (mp:gate-open-p (pvs:psinfo-res-gate pvs:*ps-control-info*))))
;;   (assert (null (pvs:psinfo-json-result pvs:*ps-control-info*))
;;   	  (form) "[proof-command, form: ~a] result is not null ~a" form (pvs:psinfo-json-result pvs:*ps-control-info*))
;;   (multiple-value-bind (input err)
;;       (ignore-errors (read-from-string form))
;;     ;; note that read-from-string returns multiple vales;
;;     ;; err will be the number of chars read in this case.
;;     #+pvsdebug (format t "~%[proof-command] input ~a err ~a.~%" input (typep err 'error))
;;     (cond ((typep err 'error)
;; 	   (let ((com (format nil "Error: Bad proof command~@[ (~a)~]."
;; 			(if (typep err 'end-of-file)
;; 			    "eof encountered, probably mismatched parens, quotes, etc."
;; 			    err)))
;; 		 (ps (mp:symeval-in-process 'pvs:*ps* *pvs-lisp-process*))
;; 		 (json:*lisp-identifier-name-to-json* #'identity))
;; 	     (setq pvs:*prover-commentary* (list com))
;; 	     (unwind-protect
;; 		 (pvs:pvs2json ps)
;; 	       (setq pvs:*prover-commentary* nil))))
;; 	  ((and (consp input)
;; 		;; check-arguments sets *prover-commentary*
;; 		(not (pvs:check-arguments input)))
;; 	   (unwind-protect
;; 		(let* ((ps (mp:symeval-in-process 'pvs:*ps* *pvs-lisp-process*))
;; 		       (json:*lisp-identifier-name-to-json* #'identity))
;; 		  (pvs:pvs2json ps))
;; 	     (setq pvs:*prover-commentary* nil)))
;; 	  (t 
;; 	   (setf (pvs:psinfo-command pvs:*ps-control-info*) form)
;; 	   (mp:open-gate (pvs:psinfo-cmd-gate pvs:*ps-control-info*))
;; 	   #+pvsdebug (format t "~%[proof-command] cmd-gate opened: ~s.~%" (mp:gate-open-p (pvs:psinfo-cmd-gate pvs:*ps-control-info*)))
;; 	   (mp:process-wait "Waiting for next Proofstate"
;; 			    #'mp:gate-open-p (pvs:psinfo-res-gate pvs:*ps-control-info*))
;; 	   (assert (not (mp:gate-open-p (pvs:psinfo-cmd-gate pvs:*ps-control-info*))) (form) "Closed cmd gate for form ~a." form)
;; 	   (assert (null (pvs:psinfo-command pvs:*ps-control-info*)))
;; 	   (mp:with-process-lock ((pvs:psinfo-lock pvs:*ps-control-info*))
;; 	     (let ((psjson (pvs:psinfo-json-result pvs:*ps-control-info*)))
;; 	       (setf (pvs:psinfo-json-result pvs:*ps-control-info*) nil)
;; 	       (setf *interrupted-rpc* nil)
;; 	       (mp:close-gate (pvs:psinfo-res-gate pvs:*ps-control-info*))
;; 	       #+pvsdebug (format t "~%[proof-command] returning: ~s.~%" psjson)
;; 	       psjson))))))


;; (in-package :pvs)
;; (defmethod parse-file ((fileref string) &optional forced? no-message? typecheck?)
;;   "Invokes the parser on the given file.  If it has been parsed before, it
;; is in (current-pvs-files) and its write-date should match that in the
;; pvs-context.  forced? t says to ignore this, and parse anyway.  no-message?
;; t means don't give normal progress messages, and typecheck? says whether to
;; use binfiles."
;;   (with-pvs-file (filename) fileref
;; 		 (assert (current-pvs-context)
;; 			 (fileref) "[parse-file, fileref: ~s]  ~s~%" fileref (show *workspace-session*))
;;     (let* ((*current-file* filename)
;; 	   (file (make-specpath filename))
;; 	   (theories (get-theories file)))
;;       (cond ((not (file-exists-p file))
;; 	     (unless no-message?
;; 	       (pvs-message "PVS file ~a is not in the current context" filename)))
;; 	    ((and (not forced?)
;; 		  (gethash filename (current-pvs-files))
;; 		  (parsed-file? file))
;; 	     (unless no-message?
;; 	       (pvs-message "~a is already parsed" filename))
;; 	     theories)
;; 	    ((and *in-checker*
;; 		  (not *tc-add-decl*))
;; 	     (if (pvs-yes-or-no-p "A proof is running; quit it now?")
;; 		 (if (find-restart 'quit-prover)
;; 		     (invoke-restart 'quit-prover)
;; 		     (throw 'quit nil))
;; 		 (pvs-error "Parse error" "Must exit the prover first")))
;; 	    ((and *in-evaluator*
;; 		  (not *tc-add-decl*))
;; 	     (pvs-error "Parse error" "Must exit the evaluator first"))
;; 	    ((and typecheck?
;; 		  (null theories)
;; 		  (not forced?)
;; 		  (check-binfiles filename)
;; 		  ;;(valid-binfile? filename)
;; 		  (restore-theories filename))
;; 	     (let ((theories (get-theories filename)))
;; 	       (dolist (th theories)
;; 		 (remove-associated-buffers (id th)))
;; 	       ;; (assert (parsed-file? filename))
;; 	       ;; (assert (every #'parsed? theories))
;; 	       (values theories t)))
;; 	    ((adt-generated-file? filename)
;; 	     (let* ((fe (get-context-file-entry filename))
;; 		    (deps (if fe
;; 			      (ce-dependencies fe)
;; 			      (list (adt-generated-file? filename)))))
;; 	       (when deps
;; 		 (dolist (dep deps)
;; 		   (if typecheck?
;; 		       (typecheck-file dep forced? nil nil no-message?)
;; 		       (parse-file dep forced? no-message? typecheck?))))))
;; 	    (t (let ((fe (get-context-file-entry filename)))
;; 		 (when fe
;; 		   ;;(format t "~%parse-file: ~a setting ce-object-date to nil" fe)
;; 		   (setf (ce-object-date fe) nil)))
;; 	       (multiple-value-bind (theories changed-theories)
;; 		   (parse-file* filename file theories forced?)
;; 		 (when (eq forced? 'all)
;; 		   (parse-importchain theories typecheck?))
;; 		 (dolist (th theories)
;; 		   (remove-associated-buffers (id th)))
;; 		 (values theories nil changed-theories)))))))

;; ;; {pvs.lisp}
;; (in-package :pvs)
;; (defun rpc-mode-debugger (condition me-or-my-encapsulation)
;;   #+pvsdebug (format t "~%[rpc-mode-debugger] *in-checker* ~a *ps-control-info* ~a ~%" *in-checker* (not (null pvs:*ps-control-info*)))
;;   (format t "~&Error: ~A" condition)
;;   (let ((*debugger-hook* me-or-my-encapsulation))
;;     (if *in-checker*
;;     	(progn
;; 	  (setf pvs-json::*interrupted-rpc* (format nil "Error: ~a" condition))
;;     	  (restore))
;;       (abort))))

;; {tclib.lisp}
(in-package :pvs)

(defvar *omit-library-not-found-error* nil)

(setq *omit-library-not-found-error* (if *pvs-lisp-process* t nil))

(defun get-pvs-library-alist ()
  (let ((alist nil))
    (dolist (path *pvs-library-path*)
      (let ((dir-p (directory-p path)))
	(if dir-p
	    (dolist (sdir (uiop:subdirectories path))
	      (let* ((subdir (truename sdir))
		     (dname (or (pathname-name sdir)
				(car (last (pathname-directory sdir))))))
		(when (valid-pvs-id* dname)
		  (push (cons (intern dname :pvs) subdir) alist))))
	  (unless *omit-library-not-found-error*
	    (assert dir-p (path) "The library ~s cannot be found." path)))))
    ;; earlier paths in *pvs-library-path* shadow later ones.
    (nreverse alist)))
