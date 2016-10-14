;;On 5/6/15 3:08 AM, "Sam Owre" <owre@csl.sri.com> wrote:

;;Hi Ben,

;;Both of these problems are bugs.  The infinite loop is due to a bug
;;that was triggered by the subtype-tcc strategy on certain kinds of
;;arithmetic formulas.

;;The second bug was due to the code that tries to typecheck only as much of
;;the theory as necessary; I think I've fixed it, but this is harder to
;;test.

(in-package :pvs)

(defun assert-sform (sform &optional rewrite-flag simplifiable?)
  (let ((*assert-typepreds* nil)
	(*auto-rewrite-depth* 0)
	(*use-rationals* t))
    (multiple-value-bind (signal sform)
	(assert-sform* sform rewrite-flag simplifiable?)
      (cond ((eq signal '!)(values signal sform))
	    ((and (null *ignore-typepreds?*)
		  (or (eq signal '?) *assert-typepreds*))
	     ;; For some formulas (e.g., large, with lots of arithmetic)
	     ;; the *assert-typepreds* can get very large, and take
	     ;; a long time to process; hence the *ignore-typepreds?* flag.
	     (let ((newsig (process-assert-typepreds *assert-typepreds* signal)))
	       ;; should be signal, but fails for the example
	       ;; from Cesar 2012-12-10/aaaa.pvs
	       (values newsig sform)))
	    (t (values signal sform))))))

(defun process-assert-typepreds (assert-typepreds signal)
  (if (null assert-typepreds)
      signal
      (let* ((fmla (car assert-typepreds))
	     (sign (not (negation? fmla)))
	     (body (if sign fmla (args1 fmla))))
	(if (not (connective-occurs? body))
	    (let* ((res (call-process fmla *dp-state*)))
	      (cond ((true-p res)
		     (process-assert-typepreds (cdr assert-typepreds) signal))
		    ((false-p res)
		     '!)
		    ((and (consp res)
			  (not (update-or-connective-occurs? body)))
		     (loop for x in res
			do (push x *process-output*))
		     (process-assert-typepreds (cdr assert-typepreds) signal))
		    (t (process-assert-typepreds (cdr assert-typepreds) '?))))
	    (process-assert-typepreds (cdr assert-typepreds) signal)))))

(defmethod copy-lex-upto (diff (oth module) (nth module))
  (cond ((memq (car diff) (formals oth))
	 (assert (or (null (cdr diff)) (memq (cdr diff) (formals nth))))
	 (copy-lex-decls (ldiff (formals oth) (memq (car diff) (formals oth)))
			 (ldiff (formals nth) (memq (cdr diff) (formals nth)))))
	((memq (car diff) (assuming oth))
	 (assert (or (null (cdr diff)) (memq (cdr diff) (assuming nth))))
	 (copy-lex-decls (formals oth) (formals nth))
	 (copy-lex-decls (ldiff (assuming oth) (memq (car diff) (assuming oth)))
			 (ldiff (assuming nth) (memq (cdr diff) (assuming nth)))))
	(t
	 (assert (memq (car diff) (theory oth)))
	 (assert (or (null (cdr diff)) (memq (cdr diff) (theory nth))))
	 (copy-lex-decls (formals oth) (formals nth))
	 (copy-lex-decls (assuming oth) (assuming nth))
	 (copy-lex-decls (ldiff (theory oth) (memq (car diff) (theory oth)))
			 (ldiff (theory nth) (memq (cdr diff) (theory nth)))))))

(defun typecheck-decl (decl)
  ;; This check is needed because typechecking an importing may remove
  ;; declarations from the current theory, but the decls list to
  ;; typecheck-decls will not be affected, and TCCs may be accidentally
  ;; added.
  (when (or (symbolp (generated-by decl))
	    (and (declaration? (generated-by decl))
		 (typechecked? (generated-by decl))))
    (if (and (typechecked? decl)
	     (not (typep decl '(or theory-abbreviation-decl
				   conversion-decl auto-rewrite-decl ;;mod-decl
				   judgement))))
	(if (mod-decl? decl)
	    (dolist (d (generated decl))
	      (if (importing? d)
		  (typecheck-using* (get-theory (theory-name d)) (theory-name d))
		  (let ((dhash (current-declarations-hash)))
		    (dolist (id (id-suffixes (id d)))
		      (pushnew d (get-lhash id dhash) :test #'eq)))))
	    (progn
	      (mapc #'(lambda (d)
			(let ((*insert-add-decl* t))
			  (add-decl d nil)
			  (when (tcc? d) (push d *tccdecls*))))
		    (generated decl))
	      (regenerate-xref decl)))
	(unwind-protect
	    (progn
	      (reset-beta-cache)
	      (assert (typep (current-theory) '(or module recursive-type)))
	      (setf (module decl) (current-theory))
	      (assert (module decl))
	      (tcdebug "~%    Typechecking ~a" decl)
	      (let ((stime (get-internal-real-time)))
		(typecheck* decl nil nil nil)
		(setf (typecheck-time decl) (realtime-since stime))
		(tcdebug " - ~d msec" (typecheck-time decl)))
	      (setf (typechecked? decl) t)
	      (remove-pseudo-normalize-freevar-entries))
	  (unless (or *loading-prelude*
		      (typechecked? decl))
	    (cleanup-typecheck-decls decl))))
    (put-decl decl)))

;;On 10/10/16, 10:07 PM, "Sam Owre" <owre@csl.sri.com> wrote:
;;Hi Ben,

;;This is definitely a bug - anytime you see "Error: No methods applicable
;;for generic function" it is a bug, and you can send it immediately to
;;pvs-bugs (or open an issue on https://github.com/SRI-CSL/PVS/issues).
(defmethod copy-untyped* ((ex fieldex))
  (with-slots (id actuals dactuals) ex
    (copy ex
      'type nil
      'actuals (copy-untyped* actuals)
      'dactuals (copy-untyped* dactuals))))
