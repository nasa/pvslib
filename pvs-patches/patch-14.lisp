(defun make-recursive-tcc-decl (name arguments)
  (when (null arguments)
    (type-error name
      "Recursive definition occurrence ~a must have arguments" name))
  (multiple-value-bind (dfmls dacts thinst)
      (new-decl-formals (current-declaration))
    (declare (ignore dacts))
    (let* ((*generate-tccs* 'none)
	   (cdecl (current-declaration))
	   (cth (module cdecl))
	   (id (make-tcc-name))
	   (tccdecl (mk-termination-tcc id nil dfmls))
	   (meas (measure cdecl))
	   (ordering
	    (or (when (ordering cdecl)
		  (copy (ordering cdecl)))
		'<))
	   (appl1 (make!-recursive-application meas (outer-arguments cdecl)))
	   (appl2 (make!-recursive-application meas arguments))
	   (relterm (beta-reduce
		     (typecheck* (mk-application ordering appl2 appl1)
				 *boolean* nil nil)))
	   (true-conc? (or (member relterm
				   (let ((*assert-typepreds* nil))
				     (collect-subexpr-typepreds relterm)
				     *assert-typepreds*)
				   :test #'tc-eq)
			   (tcc-evaluates-to-true relterm)))
	   (form (unless true-conc?
		   (add-tcc-conditions relterm)))
	   (uform (cond ((or true-conc? (tcc-evaluates-to-true form))
			 *true*)
			((and *simplify-tccs*
			      (not (or *in-checker* *in-evaluator*)))
			 (pseudo-normalize form))
			(t (beta-reduce form))))
	   (suform (if thinst
		       (with-current-decl tccdecl
			 (subst-mod-params uform thinst cth cdecl))
		       uform)))
      (unless (tc-eq uform *true*)
	(when (and *false-tcc-error-flag*
		   (tc-eq suform *false*))
	  (type-error name
	    "Termination TCC for this expression simplifies to false:~2%  ~a"
	    form))
	(setf (definition tccdecl) suform)
	(typecheck* tccdecl nil nil nil)))))
