(defun resolve-theory-actuals (decl acts dacts dth args mappings)
  (let* ((thinsts (get-importings dth))
	 (genthinst (find-if-not #'actuals thinsts)))
    (if genthinst
	(let* ((nacts (compatible-parameters?
		       acts (formals-sans-usings dth)))
	       (dthi (when nacts
		       (mk-modname-no-tccs
			(id dth) nacts (library genthinst))))
	       (*generate-tccs* 'none))
	  (when dthi
	    (when dacts
	      (setf (dactuals dthi) dacts)
	      (let ((res (mk-resolution decl nil nil)))
		(setf (resolutions dthi) (list res))))
	    (set-type-actuals-and-maps dthi dth)
	    #+pvsdebug (assert (fully-typed? dthi))
	    (when (and (compatible-arguments? decl dthi args
					      (current-theory))
		       (visible-to-mapped-tcc? decl dthi dth))
	      (list dthi))))
	(let* ((modinsts (decl-args-compatible? decl args mappings))
	       (thinsts (matching-decl-theory-instances
			 acts dth modinsts)))
	  (when thinsts
	    (remove-if (complement
			#'(lambda (thinst)
			    (visible-to-mapped-tcc? decl thinst dth)))
	      thinsts))))))
