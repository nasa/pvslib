(in-package :pvs)

(defmethod typecheck* ((decl subtype-judgement) expected kind arguments)
  (declare (ignore expected kind arguments))
  (setf (subtype decl) (typecheck* (declared-subtype decl) nil nil nil))
  (set-type (declared-subtype decl) nil)
  (when (print-type (subtype decl))
    (setf (print-type (subtype decl))
	  (copy-judgement-subtype-without-types (declared-subtype decl))))
  (let ((*bound-variables*
	 (if (typep (declared-subtype decl) 'type-application)
	     (append (mapcan #'(lambda (p)
				 (when (variable? p)
				   (list (declaration p))))
		       (parameters (declared-subtype decl)))
		     *bound-variables*)
	     *bound-variables*))
	(*generate-tccs* 'none))
    (setf (type decl) (typecheck* (declared-type decl) nil nil nil)))
  (set-type (declared-type decl) nil)
  (let ((*checking-conversions* t)) ;; Disable optimization using subtype-conjuncts
    (if (subtype-of? (subtype decl) (type decl))
	(if (and (id decl)
		 ;; Could generate FORALL (x: st): EXISTS (y: t): x = y
		 ;; even if (type decl) is not a subtype
		 ;; Will punt for now.
		 (subtype? (type decl)))
	    (let* ((bd (make-new-bind-decl (subtype decl)))
		   (bvar (make-variable-expr bd))
		   (tcc-expr (make!-forall-expr (list bd)
			       (make!-application (predicate (type decl)) bvar)))
		   (tcc-decl (mk-judgement-tcc (id decl) tcc-expr nil)))
	      (insert-tcc-decl 'subtype (declared-subtype decl) (declared-type decl) tcc-decl)
	      (pvs-warning
		  "In judgement ~:[at~;~:*~a,~] Line ~d:~_ ~a~_ ~
                   is already known to be a subtype of~%  ~a,~%  ~
                          but generated anyway since it was given a name"
		(id decl) (line-begin (place decl))
		(declared-subtype decl) (declared-type decl)))
	    (pvs-warning
		"In judgement ~:[at~;~:*~a,~] Line ~d:~_ ~a~_ is already known to be a subtype of~%  ~a"
	      (id decl) (line-begin (place decl))
	      (declared-subtype decl) (declared-type decl)))
	(let* ((bd (make-new-bind-decl (subtype decl)))
	       (bvar (make-variable-expr bd)))
	  (setf (place bvar) (place (declared-subtype decl)))
	  (unless (compatible? (subtype decl) (type decl))
	    (type-error decl
	      "~@[In judgement ~a: ~]subtype ~a is incompatible with ~a"
	      (id decl) (declared-subtype decl) (declared-type decl)))
	  (let* ((*compatible-pred-reason*
		  (acons bvar "judgement" *compatible-pred-reason*))
		 (incs (compatible-preds (subtype decl) (type decl) bvar)))
	    (cond (incs
		   (unless (eq *generate-tccs* 'none)
		     (generate-subtype-tcc bvar (type decl) incs))
		   (add-judgement-decl decl))
		  (t (pvs-warning
			 "Subtype judgement is superfluous~@[ (on line ~d)~]:~
                        ~%  ~a"
		       (line-begin (place decl)) (unparse-decl decl)))))))))
