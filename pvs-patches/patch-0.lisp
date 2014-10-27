(defmethod add-usings-to-context* ((adt recursive-type) inst)
  (let ((acts (actuals inst)))
    (add-usings-to-context
     (mapcar #'(lambda (gen)
		 (when gen
		   (let ((frms (formals-sans-usings gen)))
		     (cond ((length= acts frms)
			    (mk-modname (id gen) (actuals inst)
					(library inst)))
			   (t (mk-modname (id gen) nil
					  (library inst)))))))
	     (delete-if #'null
			(list (adt-theory adt)
			      (adt-map-theory adt)
			      (adt-reduce-theory adt)))))))

(defun bindings-to-modinsts (bindings modinsts theories)
  (if (null bindings)
      (values modinsts theories)
      (let* ((theory (module (caar bindings)))
	     (rem (if (eq theory (current-theory))
		      bindings
		      (nthcdr (length (formals-sans-usings theory)) bindings)))
	     (decl (when (and rem (decl-formal-type? (caar rem)))
		     (associated-decl (caar rem))))
	     (drem (if decl (nthcdr (length (decl-formals decl)) rem) rem)))
	(bindings-to-modinsts
	 drem
	 (cons (make-instance 'modname
		 :id (id theory)
		 :actuals (mapcar #'(lambda (a)
				      ;; mk-res-actual lifts equality
				      (mk-res-actual (cdr a) theory))
			    (ldiff bindings rem))
		 :dactuals (mapcar #'(lambda (a) (mk-actual (cdr a)))
			     (ldiff rem drem)))
	       modinsts)
	 (acons theory decl theories)))))

(defmethod type-expr-from-print-type ((te type-name))
  (let* ((decl (declaration (resolution te)))
	 (tval (type-value decl))
	 (thinst (module-instance (resolution te))))
    (assert (eq (id (module decl)) (id thinst))
	    () "Strange type-name resolution")
    (restore-object* (actuals thinst))
    (assert (not (store-print-type? tval)))
    (let* ((type-expr (if (actuals thinst)
			  (let ((*pseudo-normalizing* t)) ;; disallow pseudo-normalize
			    (subst-mod-params tval thinst (module decl) decl))
			  (copy tval 'print-type te))))
      #+pvsdebug (assert (or (print-type type-expr) (tc-eq te type-expr)))
      #+pvsdebug (assert (true-type-expr? type-expr))
      type-expr)))

(defmethod type-expr-from-print-type ((te type-application))
  (let* ((res (resolution (type te)))
	 (decl (declaration res))
	 (thinst (module-instance res)))
    (with-current-decl decl
      (restore-object* (actuals thinst))
      (let* ((mtype-expr (if (actuals thinst)
			     (let ((*pseudo-normalizing* t)) ;; disallow pseudo-normalize
			       (subst-mod-params (type-value decl) thinst
				 (module decl) decl))
			     (type-value decl)))
	     (type-expr (if (every #'(lambda (x y)
				       (and (name-expr? y)
					    (eq (declaration y) x)))
				   (car (formals decl)) (parameters te))
			    mtype-expr
			    (substit mtype-expr
			      (pairlis (car (formals decl)) (parameters te))))))
	#+pvsdebug (assert (true-type-expr? type-expr))
	(with-slots (print-type) type-expr
	  (setf print-type te))
	type-expr))))
	
(defun set-tc-match-binding (binding arg bindings &optional (last-attempt? t))
  (let ((dtype (compatible-type (cdr binding) arg)))
    (if dtype
	(let ((type (dep-binding-type dtype)))
	  (unless (or (and (dependent-type? type)
			   (not (has-type-vars? (cdr binding))))
		      (and (member (cdr binding) *tc-strict-matches*
				   :test #'tc-eq)
			   (or (fully-instantiated? (cdr binding))
			       (not (fully-instantiated? arg)))))
	    (cond (*tc-match-strictly*
		   (push arg *tc-strict-matches*)
		   (setf (cdr binding) arg))
		  (t (setf (cdr binding) type))))
	   bindings)
	(when last-attempt?
	  (tc-match-last-attempt (cdr binding) arg binding bindings)))))

(defmethod set-type* ((ex if-expr) expected)
  #+pvsdebug (assert (fully-typed? (operator ex)))
  (let* ((op (operator ex))
	 (optype (determine-operator-type op (argument ex) expected ex)))
    (set-type* op optype)
    (let ((reses (remove-if-not
		     #'(lambda (r)
			 (let ((stype (find-supertype (type r))))
			   (and stype
				(typep stype 'funtype)
				(compatible? (range stype) expected))))
		   (resolutions op))))
      (unless (singleton? reses)
	(if reses
	    (type-ambiguity ex)
	    (type-incompatible ex (ptypes ex) expected)))
      (if (eq (id (module-instance (car reses))) '|if_def|)
	  (let ((econd (condition ex))
		(ethen (then-part ex))
		(eelse (else-part ex)))
	    (set-type* econd *boolean*)
	    (let ((*tcc-conditions* (push-tcc-condition econd
						       *tcc-conditions*)))
	      (set-type* ethen expected))
	    (let* ((*generate-tccs* (if *ignore-else-part-tccs*
					'none
					*generate-tccs*))
		   (*tcc-conditions*
		    (if (typep ex '(or first-cond-expr single-cond-expr
				       cond-expr last-cond-expr))
			*tcc-conditions*
			(push-tcc-condition (make!-negation econd)
					   *tcc-conditions*))))
	      (set-type* eelse expected))
	    (let* ((iftype (dep-binding-type
			    (compatible-type (type ethen) (type eelse)))))
	      (assert iftype)
	      ;;(set-type* op (mk-funtype (list *boolean* iftype iftype)
	      ;;			iftype))
	      (let ((res (resolve (copy (operator ex)
				    :resolutions nil
				    :type nil)
				  'expr (arguments ex))))
		(cond ((and (singleton? res)
			    (not (tc-eq (car res)
					(resolution (operator ex)))))
		       (setf (type op) (type (car res)))
		       (setf (resolutions op) (list (car res))))
		      (t (setf (type op)
			       (mk-funtype (list *boolean* iftype iftype)
					   iftype))
			 (setf (resolutions op) reses))))
	      (unless (eq (id (current-theory)) '|if_def|)
		(setf (actuals (module-instance op))
		      (list (mk-actual iftype))))
	      #+pvsdebug (assert (fully-instantiated? op))
	      (setf (type (argument ex))
		    (mk-tupletype (list *boolean* iftype iftype)))
	      (setf (type ex) iftype))
	    (unless (typep ex 'branch)
	      (if (typep ex 'chained-if-expr)
		  (change-class ex 'chained-branch)
		  (change-class ex 'mixfix-branch))))
	  (call-next-method)))))

(defun create-formulas* (res decl)	  
  (cond ((formula-decl? decl)
	 (unless (closed-definition decl)
	   (let* ((*in-checker* nil)
		  (*current-context* (context decl)))
	     (setf (closed-definition decl)
		   (with-current-decl decl
		     (universal-closure (definition decl))))))
	 (let ((*no-expected* t))
	   (list
	    (subst-mod-params (closed-definition decl)
			      (module-instance res)
			      (module decl)
			      decl))))
	((typep decl '(or const-decl def-decl))
	 (let ((subst-list (subst-mod-params (def-axiom decl)
			       (module-instance res)
			     (module decl)
			     decl)))
	   (assert (subsetp (freevars subst-list)
			    (freevars (module-instance res))
			    :test #'same-declaration))
	   (copy-list subst-list)))
	(t nil)))

(defmethod set-type* ((te type-name) expected)
  (declare (ignore expected))
  (assert (resolution te))
  (when (and (or (actuals te) (dactuals te))
	     (not (or (actuals (module-instance te))
		      (dactuals (module-instance te)))))
    (if (same-id (module-instance te) (current-theory))
	(type-error te
	  "May not provide actuals for entities defined locally")
	(type-error te
	  "May not specify actuals for this type name")))
;  (unless (or (same-id (module-instance te) (current-theory))
;	      (from-prelude? (get-theory (module-instance te))))
;    (pushnew (module-instance te)
;	     (instances-used (current-theory))
;	     :test #'tc-eq))
  (when (or (actuals (module-instance te))
	    (dactuals (module-instance te)))
    (setf (module-instance (resolution te))
	  (set-type-actuals-and-maps te (module (declaration (resolution te))))))
  #+pvsdebug (fully-typed? te)
  (when (and (typep (type (resolution te)) 'type-name)
	     (adt (type (resolution te))))
    (unless (and (boundp '*adt-type-name-pending*)
		 (memq te (assq (id te) *adt-type-name-pending*)))
      (let ((adt (adt (type (resolution te)))))
	(change-class te 'adt-type-name
	  :adt adt
	  :single-constructor? (singleton? (constructors adt))))))
  (unless (or *dont-worry-about-full-instantiations*
	      (fully-instantiated? te))
    (maybe-instantiate-from-decl-formals te)
    (unless (fully-instantiated? te)
      (type-error te
	"Could not determine the full theory instance for ~a~
       ~%  Theory instance: ~a"
	te (full-name (module-instance te))))))

(defmethod constructors ((tn type-name))
  (when (adt? tn)
    (when (symbolp (adt tn))
      ;; May happen after restoring from bin files
      (restore-adt-slot tn))
    (mapcar #'(lambda (cd)
		(mk-name-expr (id cd) nil nil
			      (make-resolution cd (module-instance tn))))
	    (mapcar #'con-decl (constructors (adt tn))))))
