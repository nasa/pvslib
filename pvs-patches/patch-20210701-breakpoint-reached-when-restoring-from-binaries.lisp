(in-package :pvs)

(defmethod subst-mod-params* ((res resolution) modinst bindings)
  (with-slots ((decl declaration) (mi module-instance) type) res
    (let ((acts (actuals mi))
	  (dacts (dactuals mi)))
      #+pvsdebug (assert (not (assq decl bindings)))
      #+pvsdebug (assert mi)
      (cond ((tc-eq mi modinst)
	     #+pvsdebug
	     (assert (subsetp (free-params res) (free-params modinst)) () "res1")
	     res)
	    ((and (eq (id mi) (id modinst))
		  (or (null acts)
		      (actuals-are-formals? acts)))
	     ;; Note: mappings may change the type of a resolution for an
	     ;; uninterpreted constant.
	     (let* ((ntype (subst-mod-params* type modinst bindings))
		    (libid (or (library mi) (library modinst)))
		    (nmi (if (decl-formals decl)
			     (if (dactuals mi)
				 (subst-mod-params* mi modinst bindings)
				 (lcopy modinst :library libid))
			     (lcopy modinst :dactuals nil :library libid)))
		    (nres (mk-resolution decl nmi ntype)))
	       #+pvsdebug
	       (assert (subsetp (remove-if #'(lambda (d)
					       (memq d (decl-formals (current-declaration))))
				  (free-params ntype))
				(free-params modinst)) () "res2")
	       #+pvsdebug
	       (assert (subsetp (remove-if #'(lambda (fp)
					       (or (memq fp (formals-sans-usings
							     *subst-mod-params-theory*))
						   (memq fp (decl-formals (current-declaration)))))
				  (free-params nres))
				(free-params modinst)) () "res2.5")
	       nres))
	    (t (let ((nacts (when acts (subst-mod-params* acts modinst bindings)))
		     (ndacts (when (decl-formals decl)
			       (if dacts
				   (subst-mod-params* dacts modinst bindings)
				   (when (length= (decl-formals decl) (dactuals modinst))
				     (dactuals modinst))))))
		 (assert (every #'actual? nacts))
		 (if (and (eq nacts acts)
			  (eq ndacts dacts)
			  (not (binding? decl))
			  (null (mappings modinst)))
		     (progn
		       ;; This assertion is too strong if subst-mod-params is called
		       ;; from e.g., instantiate-resolution
		       #+pvsdebug
		       (assert (subsetp (free-params res) (free-params modinst))
			       () "res3")
		       res)
		     (let ((ntype (subst-mod-params* type modinst bindings)))
		       ;; (assert (or (mappings modinst)
		       ;; 		   (subsetp (free-params ntype) (free-params modinst)))
		       ;; 	       () "res4")
		       (if (and (strong-tc-eq type ntype)
				(strong-tc-eq nacts acts)
				(strong-tc-eq ndacts dacts)
				(not (memq (id mi) '(|equalities| |notequal|)))
				(not (lib-datatype-or-theory? (module decl))))
			       ;; If mappings are present, the resolution may be
			       ;; mapped inconsistently with the declaration type
			       ;; bugs/835 shows this, mapping "i /= 0" to "i /= (0, 0)"
			       ;;(and (mappings modinst)
				;;    ;; Note that compatible? allows for formals matching actuals
				;;    (not (compatible? type ntype))))
			   (progn #+pvsdebug
				  (assert (or (mappings modinst)
					      (subsetp (free-params res)
						       (free-params modinst))) () "res5")
				  res)
			   (let* ((rhs (cdr (assq (module decl) bindings)))
				  (nmappings (when rhs (mappings (expr rhs))))
				  (eqtype (when (memq (id mi)
						      '(|equalities| |notequal|))
					    (find-supertype
					     (type-value (car nacts)))))
				  ;;(imps (get-importings (module (declaration res))))
				  (imps (gethash (module (declaration res))
						 (lhash-table (current-using-hash))))
				  (imp-mi (if (and (null imps)
						   (binding? decl))
					      (mk-modname (id (module (declaration res))))
					      (best-module-instance imps mi)))
				  (mi-th (or (get-theory imp-mi)
					     (and (same-id (module decl) imp-mi)
						  (module decl))
					     (break "what now?")))
				  (nmi (mk-modname (id imp-mi)
					 (if eqtype
					     (list (mk-actual eqtype))
					     nacts)
					 (when (and (lib-datatype-or-theory? (module decl))
						    (not (from-prelude? (module decl))))
					   (get-library-id (context-path (module decl))))
					 (or nmappings
					     (mappings imp-mi)
					     (unless (or (eq type ntype)
							 (not (eq (id mi) (id modinst)))
							 (not (eq (library mi)
								  (library modinst))))
					       (mappings modinst)))
					 ndacts
					 decl))
				  (tres (mk-resolution mi-th nmi nil))
				  (nrtype (if eqtype
					      (mk-funtype (list eqtype eqtype) *boolean*)
					      ntype))
				  (nres (mk-resolution decl nmi nrtype)))
			     (setf (resolutions nmi) (list tres))
			     ;; (assert (subsetp (free-params nres) (free-params modinst))
			     ;; 	     () "res6")
			     nres))))))))))
