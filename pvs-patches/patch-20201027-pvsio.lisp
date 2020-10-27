;;
;; pvsio.lisp
;; Release: PVSio-7.0.0 (11/15/19)
;;
;; Contact: Cesar Munoz (cesar.a.munoz@nasa.gov)
;; NASA Langley Research Center
;; http://shemesh.larc.nasa.gov/people/cam/PVSio
;;
;; Copyright (c) 2011-2012 United States Government as represented by
;; the National Aeronautics and Space Administration.  No copyright
;; is claimed in the United States under Title 17, U.S.Code. All Other
;; Rights Reserved.
;;
;; PVSio interface to the ground evaluator
;;

(in-package :pvs)

(defparameter *pvsio-promptin* "<PVSio> ")
(defparameter *pvsio-promptout* "==>~%")


;;; Keeps track of wrappers associated with a given PVS name and lisp
;;; function Bound in PVSio.  All wrappers should be turned off (funwrap)
;;; when PVSio exits, though the wrappers themelves are still defined.
;;; (((nexpr . wrapped-fun) . wrap-id) ... )
(defvar *pvstrace-wrappers* nil)

;;; Collects all wrapper/wrapped pairs for clearing them out
;;; Not bound in PVSio, but it's just symbols, not likely to be a memory leak
(defvar *pvstrace-all-wrappers* nil)

(defvar *pvstrace-level* 0)

;;; Keep the untranslatable forms here, an alist from Lisp form to
;;; PVS names.
(defvar *eval-untranslatable* nil)

(defun help-pvsio ()
  (format 
   t 
   "~%Enter a PVS ground expression followed by ';' at the prompt '~a'" *pvsio-promptin*)
  (format t "~%  OR ")
  (format 
   t 
   "~%Enter a Lisp expression followed by '!' at the prompt '~a'~%" *pvsio-promptin*)
  (format t "~%The following special commands can be followed by either ';' or '!':
  help                 : Print this message
  quit                 : Exit the evaluator with confirmation
  exit                 : Exit the evaluator without confirmation
  debug                : Turn on printing of debugging information
  nodebug              : Turn off printing of debugging information
  timing               : Turn on timing information per evaluation
  notiming             : Turn off timing information
  tccs                 : Turn on TCCs generation per evaluation 
  notccs               : Turn off TCCs generation
  load_pvs_attachments : Force a reload .pvs-attachments and pvs-attachments
  list_pvs_attachments : List semantic attachments loaded in the current 
                         context
  pvsio_version        : Show current version of PVSio

To display help for <attachment>:
  help_pvs_attachment(\"<attachment>\");

To display help for semantic attachments in <theory>:
  help_pvs_theory_attachments(\"<theory>\");

To change input prompt '~a':
  set_promptin(\"<newprompt>\");

To change output prompt '~a':
  set_promptout(\"<newprompt>\");
" *pvsio-promptin* *pvsio-promptout*))

(defun evaluation-mode-pvsio (theoryref &optional input tccs? (banner? t))
  (with-pvs-file (fname thname) theoryref
    (let ((theory (get-typechecked-theory (or thname fname))))
      (when theory
	(with-open-file 
	    (*error-output*
	     (merge-pathnames (format nil "~a.log" (or thname fname)))
	     :direction :output 
	     :if-does-not-exist :create
	     :if-exists (if *pvs-emacs-interface* :supersede :append))
	  (let ((*pvstrace-wrappers* nil))
	    (unwind-protect
		 (let ((*generate-tccs* (if tccs? 'all 'none))
		       (*current-context* (or (saved-context theory) (context nil)))
		       (*suppress-msg* t)
		       (*in-evaluator* t)
		       (*destructive?* t)
		       (*eval-verbose* nil)
		       (*compile-verbose* nil)
		       (*convert-back-to-pvs* t)
		       (*disable-gc-printout* t)
		       (*pvstrace-level* 0)
		       (*eval-untranslatable* nil)
		       (*pvs2cl-mappings* nil)
		       (input-stream (when input (make-string-input-stream input))))
		   (if banner?
		       (format t "
+---- 
| ~a
|
| Enter a PVS ground expression followed by ';' at the prompt '~a'.
| Enter a Lisp expression followed by '!' at the prompt '~a'.
|
| Enter 'help' for help and 'exit' to exit the evaluator. Follow
| these commands with either ';' or '!'.
|
| *CAVEAT*: evaluation of expressions which depend on unproven TCCs may be 
| unsound, and result in the evaluator crashing into Lisp, running out of 
| stack, or worse. If you crash into Lisp, type (restore) to resume.
|
+----~%" *pvsio-version* *pvsio-promptin* *pvsio-promptin*)
		       (format t "Starting pvsio script~%"))
		   ;; establish a restart - (invoke-restart 'pvsio-quit) exits the loop.
		   (restart-case
		       (evaluate-pvsio input-stream)
		     (pvsio-quit () (format t "~%Exiting PVSio~%") nil)))
	      ;; unwind-protected forms
	      (when *pvs-emacs-interface*
		(pvs-emacs-eval "(pvs-evaluator-ready)"))
	      #+allegro
	      (delete-all-trace-wrappers))))))))

(defun read-expr (input-stream)
  (do ((have-real-char nil)
       (have-first-space nil)
       (instr nil)
       (fstr  (make-string-output-stream))
       (parens 0)
       (c     (read-char input-stream nil nil)
	      (read-char input-stream nil nil)))
      ((and (eq c #\;)
	    (not instr)
	    (= parens))
	 (string-trim '(#\Space #\Tab #\Newline)
		    (get-output-stream-string fstr)))
    (when (null c)
      (assert (find-restart 'pvsio-quit))
      (invoke-restart 'pvsio-quit))
    (when (eq c #\()
      (setq parens (1+ parens)))
    (when (eq c #\))
      (setq parens (1- parens)))
    (when (and (not instr)
	       have-real-char
	       (not have-first-space)
	       (member c '(#\Space #\Newline #\Tab) :test #'char=))
      (let ((pref (get-output-stream-string fstr)))
	(loop for ch across pref do (write-char ch fstr))
	(setq have-first-space t)))
    (when (and (eq c #\!)
	       (not instr)
	       (= parens 0))
      (clear-input)
      (return
	(read-from-string 
	 (get-output-stream-string fstr))))
    (if have-real-char
	(write-char c fstr)
	(unless (member c '(#\Space #\Newline #\Tab) :test #'char=)
	  (write-char c fstr)
	  (setq have-real-char t)))
    (when (eq c #\") (setq instr (not instr)))))

(defun evaluate-pvsio (input-stream)
  "evaluate-pvsio - the basic REPL.  Normally just evaluates the request, prints the result,
and loops.  If there's an error, it it printed and otherwise ignored, unless
*evaluator-debug* is set, in which case it breaks into lisp.
"
  (restart-case	    ;; catches return-to-pvsio, returns to loop.
      (handler-bind ;; catches errors
	  ((error #'(lambda (c)
		      (unless *evaluator-debug*
			(typecase c
			  (tcerror (format t "~a~%" (msg c)))
			  (t (format t "Hit an error (use \"debug\" to debug):")
			     (format t "~%~a" c)))
			(invoke-restart 'return-to-pvsio)))))
	(evaluate-pvsio* input-stream))
    (return-to-pvsio () nil))
  (evaluate-pvsio input-stream))

(defun evaluate-pvsio* (input-stream)
  (let* ((input (read-pvsio input-stream))
	 (pr-input (pc-parse input 'expr))
	 (*tccforms* nil)
	 (tc-input (pc-typecheck pr-input))
	 (isvoid (and tc-input 
		      (type-name? (type tc-input))
		      (string= "void" 
			       (format 
				   nil "~a" 
				 (print-type (type tc-input)))))))
    (when *evaluator-debug*
      (format t "~%Expression ~a typechecks to: ~%" pr-input)
      (show tc-input))
    (when *tccforms*
      (format t "~%Typechecking ~a produced the following TCCs:~%" pr-input)
      (evaluator-print-tccs *tccforms*)
      (format 
	  t 
	  "~%~%Evaluating in the presence of unproven TCCs may be unsound~%")
      (clear-input)
      (unless (pvs-y-or-n-p "Do you wish to proceed with evaluation? ")
	(assert (find-restart 'return-to-pvsio))
	(invoke-restart 'return-to-pvsio)))
    (let ((cl-input (pvs2cl tc-input)))
      (when *evaluator-debug*
	(format t "~%PVS expression ~a translates to the Common Lisp expression:~%~a~%" 
	  tc-input cl-input))
      (handler-case
	  (let ((cl-eval
		 (progn ;;ignore-errors 
		   (if *pvs-eval-do-timing*
		       (time (eval cl-input))
		       (eval cl-input)))))
	    (when *evaluator-debug*
	      (format t "~%Common Lisp expression ~a evaluates to:~%~a~%" cl-input cl-eval))
	    ;;(format t "~a" cl-eval)
	    (when (and *convert-back-to-pvs* (not isvoid))
	      (let ((pvs-val (cl2pvs cl-eval (type tc-input))))
		(assert (expr? pvs-val))
		(format t *pvsio-promptout*)
		(force-output)
		(unparse pvs-val))))
	(groundeval-error (condition)
	  (format t "~%~a" condition))))
    (format t "~%")))

(defun read-pvsio (input-stream)
  (when (not input-stream)
    (format t "~%~a" *pvsio-promptin*)
    (force-output))
  (let((input (read-expr input-stream)))
    (if (stringp input)
	(cond
	 ((member input '("quit" "q" "(quit)") :test #'string-equal)
	   (clear-input)
	   (when (pvs-y-or-n-p "Do you really want to quit? ")
	     (unless (find-restart 'pvsio-quit)
	       (error "No pvsio-quit restart?"))
	     (invoke-restart 'pvsio-quit))
	   (read-pvsio input-stream))
	  ((member input '("exit" "(exit)") :test #'string-equal)
	   (when (find-restart 'pvsio-quit)
	       (invoke-restart 'pvsio-quit)))
	  ((member input '("help") :test #'string-equal)
	   (help-pvsio)
	   (read-pvsio input-stream))
	  ((member input '("debug") :test #'string-equal)
	   (setq *evaluator-debug* t)
	   (format t "~%Enables debugging; breaks on errors, more information printed~%")
	   (read-pvsio input-stream))
	  ((member input '("nodebug") :test #'string-equal)
	   (setq *evaluator-debug* nil)
	   (format t "~%Debugging disabled~%")
	   (read-pvsio input-stream))
	  ((member input '("timing") :test #'string-equal)
	   (setq *pvs-eval-do-timing* t)
	   (format t "~%Printing of timing information enabled~%")
	   (read-pvsio input-stream))
	  ((member input '("notiming") :test #'string-equal)
	   (setq *pvs-eval-do-timing* nil)
	   (format t "~%Printing of timing information disabled~%")
	   (read-pvsio input-stream))
	  ((member input '("tccs") :test #'string-equal)
	   (setq *generate-tccs* 'all)
	   (format t "~%Enabled TCCs generation~%")
	   (read-pvsio input-stream))
	  ((member input '("notccs") :test #'string-equal)
	   (setq *generate-tccs* 'none)
	   (format t "~%Disabled TCCs generation~%")
	   (read-pvsio input-stream))
          ((member input '("pvsio-version" "pvsio_version")
		   :test #'string-equal)
	   (format t "~%~a~%" *pvsio-version*)
	   (read-pvsio input-stream))
	  ((member input '("list-pvs-attachments" "list_pvs_attachments")
		   :test #'string-equal)
	   (list-pvs-attachments)
	   (read-pvsio input-stream))
	  ((member input '("load-pvs-attachments" "load_pvs_attachments")
		   :test #'string-equal)
	   (load-pvs-attachments t)
	   (read-pvsio input-stream))
	  (t input))
      (multiple-value-bind 
	  (val err)
	  (progn ;ignore-errors
	    (eval input))
	(if err (format t "ERROR (lisp): ~a" err)
	  (format t "~a" val))
	(fresh-line)
	(read-pvsio input-stream)))))

#+allegro
(defmacro pvstrace (&rest specs)
  "Specs is similar Allegro's trace, i.e., a name or a list with a name
followed by keyword-value pairs.  The name is a symbol or string, and must
fully resolve to a PVS definition.  For each one an fwrapper is created,
which uses the type of the name to convert the arguments to PVS expression
strings. "
  (if (null specs)
      (let ((traced-names nil))
	(dolist (elt *pvstrace-wrappers*)
	  (unless (member (caar elt) traced-names :test #'tc-eq)
	    (push (caar elt) traced-names)))
	(format t "~%~{~a ~}" traced-names))
      (dolist (spec specs)
	(let* ((name (if (listp spec) (car spec) spec))
	       (name-str (typecase name
			   (name-expr name)
			   (string name)
			   (symbol (string name))
			   (t (error "~a of type ~a given where a symbol or string is expected"
				     name (type name)))))
	       (nexpr (tc-expr name-str)))
	  (cond ((not (name-expr? nexpr))
		 (error "~a is not a name expr" nexpr))
		((not (fully-instantiated? nexpr))
		 (error "~a is not fully instantiated" nexpr))
		((not (and (typep (declaration nexpr)
				  '(or formal-const-decl const-decl))
			   (definition (declaration nexpr))))
		 (error "~a is not a defined constant" nexpr))
		((not (eval-info (declaration nexpr)))
		 (handler-case
		     (progn (pvs2cl nexpr)
			    (assert (eval-info (declaration nexpr))))
		   (pvseval-error (condition)
		     (error "~a could not be compiled: ~%  ~a" nexpr condition)))))
	  (let ((info-defs (eval-info-defs nexpr)))
	    (when (null info-defs)
	      (error "~a has not been compiled" nexpr))
	    ;; (excl:def-fwrapper foo-wrap (args) ... )
	    ;; (excl:fwrap 'foo 'foo-wrap1 'foo-wrap) ; second arg is indicator
	    ;; (excl:call-next-fwrapper)
	    ;; (excl:funwrap 'foo 'foo-wrap1) ;
	    ;; (excl:fwrap-order 'foo) ; lists the order of active fwraps
	    ;; *pvsio-wrappers* is an alist: (((nexpr . wrapped-fun) . wrapper-id) ...)
	    (dolist (info-def info-defs)
	      (let* ((wrapped-fun (name (car info-def)))
		     (wrap-args (caddr (definition (car info-def))))
		     ;; Note that wrap-args includes formal-const-decls
		     (wrap-id
		      (if (null wrap-args)
			  (get-pvsio-wrapper nexpr wrapped-fun (cdr info-def) nil nil nil)
			  (let* ((ntype (find-supertype (type nexpr)))
				 (rantype (range ntype))
				 (const-acts (get-const-decl-actuals nexpr)))
 			    (unless (and const-acts (eq (cdr info-def) :e1))
			      (if (length= wrap-args (types (domtype ntype)))
				  (get-pvsio-wrapper
				   nexpr wrapped-fun (cdr info-def) wrap-args
				   (types (domtype ntype))
				   rantype)
				  (let* ((fun-args (if const-acts
						       ;; In this case, the "real" arguments
						       ;; are inside a closure
						       (nthcdr (length const-acts) wrap-args)
						       wrap-args))
					 (pvs-arg-types
					  (cond ((length= fun-args (types (domtype ntype)))
						 (types (domtype ntype)))
						((singleton? wrap-args)
						 (list (domtype ntype)))
						(t (break "Look into this")))))
				    (get-pvsio-wrapper
				     nexpr wrapped-fun (cdr info-def) wrap-args
				     (append (mapcar #'(lambda (a) (type (expr a))) const-acts)
					     pvs-arg-types)
				     rantype))))))))
		(when wrap-id
		  (excl:fwrap wrapped-fun wrap-id wrap-id)
		  (pushnew (cons wrap-id wrapped-fun) *pvstrace-all-wrappers*)))))))))

#+allegro
(defmacro pvsuntrace (&rest names)
  (if (null names)
      '(delete-all-trace-wrappers)
      (dolist (name names)
	(let* ((name-str (typecase name
			   (name-expr name)
			   (string name)
			   (symbol (string name))
			   (t (error "~a of type ~a given where a symbol, string, or name-expr is expected"
				     name (type name)))))
	       (nexpr (tc-expr name-str)))
	  (cond ((not (name-expr? nexpr))
		 (error "~a is not a name expr" nexpr))
		((not (fully-instantiated? nexpr))
		 (error "~a is not fully instantiated" nexpr))
		((not (and (typep (declaration nexpr)
				  '(or formal-const-decl const-decl))
			   (definition (declaration nexpr))))
		 (error "~a is not a defined constant")))
	  `(delete-trace-wrapper ,nexpr)))))

#+allegro
(defun delete-trace-wrapper (nexpr)
  (let ((fnelt (find nexpr *pvstrace-wrappers* :key #'caar)))
    (when fnelt
      ;; ((nexpr . wrapped-fun) . wrap-id)
      (excl:funwrap (cdar fnelt) (cdr fnelt))
      ;; Undefine the wrapper here
      (fmakunbound (cdr fnelt))
      ;; Remove it
      (setq *pvstrace-wrappers* (delete fnelt *pvstrace-wrappers*))
      ;; And take it out of *pvstrace-all-wrappers*
      (setq *pvstrace-all-wrappers*
	    (delete (cons (cdr fnelt) (cdar fnelt)) *pvstrace-all-wrappers*
		    :test #'tc-eq))
      (delete-trace-wrapper nexpr))))

#+allegro
(defun delete-all-trace-wrappers ()
  (dolist (fnelt *pvstrace-wrappers*)
    ;; ((nexpr . wrapped-fun) . wrap-id)
    (when (fboundp (cdar fnelt))
      (excl:funwrap (cdar fnelt) (cdr fnelt)))
    ;; Undefine the wrapper here
    (fmakunbound (cdr fnelt))
    ;; Remove it
    (setq *pvstrace-wrappers* (delete fnelt *pvstrace-wrappers*))
    ;; And take it out of *pvstrace-all-wrappers*
    (setq *pvstrace-all-wrappers*
	  (delete (cons (cdr fnelt) (cdar fnelt)) *pvstrace-all-wrappers*
		  :test #'tc-eq))))

(defun get-const-decl-actuals (nexpr)
  (let ((fmls (formals-sans-usings (module (declaration nexpr))))
	(acts (actuals (module-instance nexpr))))
    (assert (length= fmls acts))
    (get-const-decl-actuals* fmls acts)))

(defun get-const-decl-actuals* (formals actuals &optional cacts)
  (if (null formals)
      (nreverse cacts)
      (get-const-decl-actuals* (cdr formals) (cdr actuals)
			       (if (formal-const-decl? (car formals))
				   (cons (car actuals) cacts)
				   cacts))))

#+allegro
(defun get-pvsio-wrapper (nexpr wrapped-fun kind args arg-types rantype)
  (let* ((index (cons nexpr wrapped-fun))
	 (fwrap (cdr (assoc index *pvstrace-wrappers* :test #'tc-eq))))
    (or fwrap
	(let* ((nid (gentemp (string (id nexpr))))
	       (wrap-form
		(if (null args)
		    `(excl:def-fwrapper ,nid ()
		       (format t "~%~d[~a]: ~a" *pvstrace-level* ,kind ,nexpr)
		       (incf *pvstrace-level*)
		       (let* ((result (excl:call-next-fwrapper))
			      (pvs-result (cl2pvs result (type ,nexpr))))
			 (decf *pvstrace-level*)
			 (format t "~%~d: ~a returns ~a"
			   *pvstrace-level* ,nexpr pvs-result)
			 result))
		    `(excl:def-fwrapper ,nid ,args
		       (multiple-value-bind (pvs-args rtype)
			   (pvsio-arg-values ,(cons 'list args)
					     ,(cons 'list arg-types)
					     ,rantype)
			 (let ((pvs-appl (when pvs-args
					   (make!-application* ,nexpr pvs-args))))
			   (format t "~%~d[~a]: ~a" *pvstrace-level* ,kind pvs-appl)
			   (incf *pvstrace-level*)
			   (let* ((result (excl:call-next-fwrapper))
				  (pvs-result (handler-case (cl2pvs result rtype)
						(cl2pvs-error (condition)
						  "untranslatable result"))))
			     (decf *pvstrace-level*)
			     (format t "~%~d[~a]: ~a returns ~a"
			       *pvstrace-level* ,kind ,nexpr pvs-result)
			     result)))))))
	  (eval wrap-form)
	  (push (cons index nid) *pvstrace-wrappers*)
	  nid))))

(defun pvsio-arg-values (args atypes rtype &optional pvs-args)
  ;; Walks through the arguments, creating pvs expressions for each
  (if (null args)
      (values (nreverse pvs-args) rtype)
      (let* ((atype (domtype* (car atypes)))
	     ;; Basic exception handling, catches cl2pvs translation errors,
	     ;; mostly things like closures, which can only be translated if
	     ;; the domain is of a known finite bound.
	     (pvs-arg (handler-case
			  (cl2pvs (car args) atype)
			(cl2pvs-error ()
			  ;; Create a new skolem constant of this type
			  ;; as a proxy for the real arg
			  (or (cdr (assq (car args) *eval-untranslatable*))
			      (let* ((nid (gentemp "cant_translate"))
				     (nex (mk-name-expr nid)))
				(push (cons (car args) nex) *eval-untranslatable*)
				(makeskoconst nex atype *current-context*))))))
	     (slist (when (dep-binding? (car atypes))
		      (acons (car atypes) pvs-arg nil)))
	     (stypes (if slist (substit (cdr atypes) slist) (cdr atypes)))
	     (srtype (if slist (substit rtype slist) rtype)))
	(typecheck pvs-arg :expected atype)
	(pvsio-arg-values (cdr args) stypes srtype (cons pvs-arg pvs-args)))))

(defun eval-info-defs (nexpr)
  (let ((decl (declaration nexpr))
	(info-defs nil))
    (when (eval-info decl)
      (when (internal (eval-info decl))
	(when (and (unary (internal (eval-info decl)))
		   (name (unary (internal (eval-info decl)))))
	  (push (cons (unary (internal (eval-info decl))) :i1) info-defs))
	(when (and (multiary (internal (eval-info decl)))
		   (name (multiary (internal (eval-info decl)))))
	  (push (cons (multiary (internal (eval-info decl))) :im) info-defs))
	(when (and (destructive (internal (eval-info decl)))
		   (name (destructive (internal (eval-info decl)))))
	  (push (cons (destructive (internal (eval-info decl))) :i!) info-defs)))
      (when (external (eval-info decl))
	(when (and (unary (external (eval-info decl)))
		   (name (unary (external (eval-info decl)))))
	  (push (cons (unary (external (eval-info decl))) :e1) info-defs))
	(when (and (multiary (external (eval-info decl)))
		   (name (multiary (external (eval-info decl)))))
	  (push (cons (multiary (external (eval-info decl))) :em) info-defs))
	(when (and (destructive (external (eval-info decl)))
		   (name (destructive (external (eval-info decl)))))
	  (push (cons (destructive (external (eval-info decl))) :e!) info-defs))))
    info-defs))


(defun run-pvsio ()
  (let* ((file (environment-variable "PVSIOFILE"))
	 (time (read-from-string (environment-variable "PVSIOTIME")))
	 (theory (environment-variable "PVSIOTHEORY"))
	 (packlist (read-from-string (environment-variable "PVSIOPACK")))
	 ;;(verb (read-from-string (environment-variable "PVSIOVERB")))
	 (tccs (read-from-string (environment-variable "PVSIOTCCS")))
	 (pvsio-main (environment-variable "PVSIOMAIN"))
	 (main (unless (string= pvsio-main "") (format nil "~a;" pvsio-main)))
	 (*pvsio-promptin* (environment-variable "PVSIOPROMPTIN"))
	 (*pvsio-promptout* (environment-variable "PVSIOPROMPTOUT"))
	 (*pvsio-version* (environment-variable "PVSIOVERSION")))
    (when time (setq *pvs-eval-do-timing* t))
    (multiple-value-bind (val err)
	(ignore-errors
	  (unless main
	    (format t "~%Generating ~a.log~%" theory))
	  (with-open-file 
	      (*standard-output*
	       (merge-pathnames (directory-namestring file) (format nil "~a.log"  theory))
	       :direction :output
	       :if-does-not-exist :create
	       :if-exists :supersede)
	    (change-workspace (directory-namestring file) t)
	    (dolist (pack packlist) (load-prelude-library pack))
	    (unwind-protect
		 (typecheck-file (file-namestring file) nil nil nil t)
	      (fresh-line)
	      (finish-output)))
	  (load-pvs-attachments)
	  (evaluation-mode-pvsio theory main tccs (null main))
	  t)
      (declare (ignore val))
      (when err (format t "~%~a (~a.pvs). See ~a~a.log~%"
		  err file (directory-namestring file) theory)))
    (fresh-line)
    (bye 0)))
