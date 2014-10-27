(defun resolve-with-actuals (decl acts dacts dth args mappings)
  ;; If dacts is there, or if decl has no decl-formals, no ambiguity
  (let ((dparams (decl-formals decl)))
    (if dacts
	(when (and dparams
		   (length= dacts dparams)
		   (length= acts (formals-sans-usings dth)))
	  (let* ((thinsts (resolve-theory-actuals decl acts dacts dth args mappings))
		 (reses (resolve-decl-actuals decl dacts thinsts args)))
	    reses))
	(let ((thinsts (when (length= acts (formals-sans-usings dth))
			 (resolve-theory-actuals decl acts dacts dth args mappings)))
	      (dreses (when (and (decl-formals decl)
				 (length= acts dparams))
			(resolve-decl-actuals
			 decl acts
			 (if (eq dth (current-theory))
			     (list (current-theory-name))
			     (get-importings dth))
			 args))))
	  (append (mapcar #'(lambda (thinst)
			      (make-resolution decl thinst))
		    thinsts)
		  dreses)))))

(defun subst-mod-params (obj modinst &optional theory decl)
  (assert *current-context*)
  (assert (or (null (dactuals modinst)) decl))
  (assert (modname? modinst))
  (assert (or (null theory) (null (actuals modinst)) (eq (id theory) (id modinst))))
  (assert (or (null (dactuals modinst)) decl))
  (let* ((*subst-mod-params-theory* (or theory (get-theory modinst)))
	 (*subst-mod-params-declaration* decl)
	 (formals (unless (eq (current-theory) *subst-mod-params-theory*)
		    (formals-sans-usings *subst-mod-params-theory*)))
	 (dformals (when decl (all-decl-formals decl)))
	 (*subst-mod-free-params* nil))
    (if (or (module? obj)
	    (mappings modinst)
	    (some #'formal-theory-decl? formals)
	    (and (dactuals modinst)
		 )
	    (and (actuals modinst)
		 (or (some #'(lambda (ofp) (memq ofp formals))
			   (free-params obj))
		     (some #'(lambda (a)
			       (and (name-expr? (expr a))
				    (typep (declaration (expr a))
					   '(or module mod-decl
						formal-theory-decl
						theory-abbreviation-decl))))
			   (actuals modinst)))))
	(let* ((*generate-tccs* 'none)
	       (caches (get-subst-mod-params-caches modinst))
	       (*subst-mod-params-cache* (car caches))
	       (*subst-mod-params-eq-cache* (cdr caches))
	       (*smp-mappings* (mappings modinst))
	       (*subst-mod-params-map-bindings* nil) ; Collects map bindings
	       (init-bindings (initial-subst-mod-params-mappings
			       *subst-mod-params-theory*))
	       (bindings (make-subst-mod-params-bindings
			  modinst (append (when (actuals modinst)
					    formals)
					  (when (dactuals modinst)
					    dformals))
			  (append (actuals modinst)
				  (all-dactuals decl modinst))
			  (mappings modinst) init-bindings))
	       (nobj (subst-mod-params* obj modinst bindings)))
	  #+pvsdebug (assert (or (eq obj nobj) (not (tc-eq obj nobj))))
	  #+pvsdebug (assert (equal bindings
				    (pairlis formals (actuals modinst))))
	  #+pvsdebug (assert (or (typep nobj 'modname)
				 (fully-instantiated? nobj)))
	  ;; Note that it may be that nobj is tc-eq to obj, without being eq
	  ;; True even for strong-tc-eq.
	  ;; (assert (or (mappings modinst)
	  ;; 	      (subsetp (free-params nobj) (free-params modinst))))
	  (values nobj *subst-mod-params-map-bindings*))
	obj)))

(defmethod subst-mod-params* ((type type-name) modinst bindings)
  (let* ((res (car (resolutions type)))
	 (decl (declaration res))
	 (act (cdr (assq decl bindings)))
	 (lhsmatch (unless act
		     (assoc decl bindings
			    :test #'(lambda (d bd)
				      (and (mapping-lhs? bd) (eq d (declaration bd))))))))
    #+pvsdebug (assert (or (null act) (fully-instantiated? (type-value act))))
    (cond (act
	   (type-value act) ;; sufficient since we know
	   ;; type name was found on the bindings, and the corresponding
	   ;; actual is there.  Here we actally do the substitution.
	   )
	  (lhsmatch
	   (let ((stype
		  (subst-for-formals
		   (type-value (cdr lhsmatch))
		   (mapcar #'(lambda (x y)
			       (cons x (type-value y)))
		     (decl-formals (car lhsmatch))
		     (dactuals type)))))
	     (subst-mod-params* stype modinst bindings)))
	  ((and *subst-mod-params-module?*
		(eq (module decl) *subst-mod-params-module?*))
	   type)
	  (t (or (mapped-theory-value (module decl) type modinst bindings)
		 (let* ((mi (module-instance res))
			(nacts (cond ((actuals mi)
				      (subst-mod-params*
				       (actuals mi) modinst bindings))
				     ((eq (id mi) (id modinst))
				      (actuals modinst))))
			(ndacts (cond ((dactuals mi)
				       (subst-mod-params*
					(dactuals mi) modinst bindings))
				      ((eq decl *subst-mod-params-declaration*)
				       (dactuals modinst)))))
		   #+pvsdebug (assert (not (and nacts
						(eq (id mi) (id modinst)))))
		   #+pvsdebug (assert (fully-instantiated? nacts))
		   (assert (or (mappings modinst)
			       (not (fully-instantiated? modinst))
			       (and (fully-instantiated? nacts)
				    (fully-instantiated? ndacts))))
		   (if (or nacts ndacts)
		       (if (and (eq (actuals mi) nacts)
				(eq (dactuals mi) ndacts))
			   type
			   ;; If modinst has a library, but mi does not, we
			   ;; may have to add a library to mi.  If (module
			   ;; decl) is a library theory, definitely need it,
			   ;; but how do we know it is the same library?
			   (let* ((lib
				   (when (and (library-datatype-or-theory?
					       (module decl))
					      (not (library-datatype-or-theory?
						    (current-theory))))
				     (car (rassoc (lib-ref (module decl))
						  (current-library-alist)
						  :test #'equal))))
				  (nmi (copy mi :actuals nacts
					     :dactuals ndacts
					     :library lib)))
			     #+pvsdebug
			     (assert (or lib
					 (not (library-datatype-or-theory?
					       (module decl)))
					 (from-prelude-library? decl)
					 (library-datatype-or-theory?
					  (current-theory))
					 (file-equal (lib-ref (module decl))
						     *pvs-context-path*)))
			     (subst-mod-params-type-name type nmi bindings modinst)))
		       (if (eq (id mi) (id modinst))
			   ;; mi is useless after this
			   (subst-mod-params-type-name type modinst bindings modinst)
			   type))))))))

(defmethod subst-mod-params* ((res resolution) modinst bindings)
  (with-slots ((decl declaration) (mi module-instance) type) res
    (let ((acts (actuals mi)))
      #+pvsdebug (assert (not (assq decl bindings)))
      #+pvsdebug (assert mi)
      (cond ((tc-eq mi modinst)
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
	       (assert (subsetp (free-params ntype) (free-params modinst)) () "res2")
	       (assert (subsetp (remove-if #'(lambda (fp)
					       (memq fp (formals-sans-usings
							 *subst-mod-params-theory*)))
				  (free-params nres))
				(free-params modinst)) () "res2.5")
	       nres))
	    (t (let* ((nacts (subst-mod-params* acts modinst bindings)))
		 (assert (every #'actual? nacts))
		 (if (and (eq nacts acts)
			  (not (binding? decl))
			  (null (mappings modinst)))
		     (progn (assert (subsetp (free-params res) (free-params modinst))
				    () "res3")
			    res)
		     (let ((ntype (subst-mod-params* type modinst bindings)))
		       ;; (assert (or (mappings modinst)
		       ;; 		   (subsetp (free-params ntype) (free-params modinst)))
		       ;; 	       () "res4")
		       (if (and (strong-tc-eq type ntype)
				(strong-tc-eq nacts acts)
				(not (memq (id mi) '(|equalities| |notequal|)))
				(not (library-datatype-or-theory?
				      (module decl))))
			   (progn (assert (or (mappings modinst)
					      (subsetp (free-params res)
						       (free-params modinst))) () "res5")
				  res)
			   (let* ((rhs (cdr (assq (module decl) bindings)))
				  (nmappings (when rhs (mappings (expr rhs))))
				  (eqtype (when (memq (id mi)
						      '(|equalities| |notequal|))
					    (find-supertype
					     (type-value (car nacts)))))
				  (nres (mk-resolution decl
					  (mk-modname (id mi)
					    (if eqtype
						(list (mk-actual eqtype))
						nacts)
					    (when (library-datatype-or-theory?
						   (module decl))
					      (get-lib-id (module decl)))
					    (or nmappings
						(unless (or (eq type ntype)
							    (not (eq (id mi) (id modinst)))
							    (not (eq (library mi)
								     (library modinst))))
						  (mappings modinst))))
					  (if eqtype
					      (mk-funtype (list eqtype eqtype) *boolean*)
					      ntype))))
			     ;; (assert (subsetp (free-params nres) (free-params modinst))
			     ;; 	     () "res6")
			     nres))))))))))

(defmethod free-params* ((mi modname) frees)
  (with-slots (actuals dactuals mappings resolutions) mi
    (cond ((or actuals dactuals)
	   ;; In this case, the theory is at least partially instantiated,
	   ;; but there may be freevars in the actuals or mappings
	   (let ((afrees (free-params-acts actuals mi))
		 (dfrees (free-params-dacts dactuals))
		 (mfrees (free-params* mappings nil)))
	     (union mfrees (union dfrees (union afrees frees :test #'eq)
				  :test #'eq)
		    :test #'eq)))
	  (resolutions
	   (assert (null (cdr resolutions)))
	   ;; This case is for theory references, i.e., theory declarations or
	   ;; abbreviations
	   (free-params* (car resolutions) frees))
	  (t (let ((theory (get-theory mi))
		   (mfrees (free-params* mappings nil))
		   (dfrees (unless (or (null (current-declaration))
				       (dactuals mi))
			     (decl-formals (current-declaration)))))
	       (assert theory)
	       (union mfrees (union dfrees (formals-sans-usings theory)
				    :test #'eq)
		      :test #'eq))))))

(defmethod free-params-res (decl (mi modname) type frees)
  (declare (ignore type))
  (with-slots (actuals dactuals) mi
    (if (or actuals dactuals)
	(let* ((afrees (free-params-acts actuals mi))
	       (dafrees (free-params-dacts dactuals))
	       (ufrees (union dafrees (union afrees frees :test #'eq) :test #'eq)))
	  ;;(assert (every #'(lambda (fp) (memq fp ufrees)) (free-params* type nil)))
	  ufrees)
	(let ((theory (if (typep decl '(and recursive-type
					    (not inline-recursive-type)))
			  decl
			  (module decl))))
	  (when theory
	    (dolist (x (formals-sans-usings theory))
	      (setq frees (pushnew x frees :test #'eq))))
	  (dolist (x (decl-formals decl))
	    (setq frees (pushnew x frees :test #'eq)))
	  frees))))

(defun free-params-acts (actuals mi)
  (if actuals
      (free-params* actuals nil)
      (let ((theory (get-theory mi)))
	(assert theory ()
		"free-params: get-theory failed for ~a" mi)
	(formals-sans-usings theory))))

(defun free-params-dacts (dactuals)
  (if dactuals
      (free-params* dactuals nil)
      (unless (null (current-declaration))
	(decl-formals (current-declaration)))))

