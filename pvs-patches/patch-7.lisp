(in-package :pvs)

(defmethod translate-to-prove ((expr name-expr))
  (let* ((pos (position expr *bindings*	;(NSH:4-5-91)
			:test #'same-declaration))
	 (apos (position expr *bound-variables*
			 :test #'same-declaration))
	 (bpos (when apos (- (length *bound-variables*)
			     apos)))) 
    (cond ((and (null pos)(null bpos))
	   (unique-prover-name expr))
	  (bpos (let ((id (intern
			   (concatenate 'string
			     "*" (string (id expr)) "_"
			     (princ-to-string bpos) "*") :pvs)
			  ;;(makesym "*~a_~a*" (id expr) bpos)
			  ))
		  (add-to-local-typealist id expr)
		  id)) ;;NSH(4.2.95) id was (id expr) and unsound!
	  ;;eg. proved (FORALL i, (j|j<i): (FORALL (j| j>i): j<i).
	  (t (let* ((nvar (intern (concatenate 'string
					       "*" (princ-to-string (1+ pos)) "*") :pvs)
			  ;;(makesym "*~a*" (1+ pos))
			 
			  )
		    (expr-type (type expr))
		    (vars (intersection (freevars expr-type)
					*bindings*
					:test #'same-declaration))
		    (tr-vars (translate-to-prove vars))
				   
		    (st-name (get-subtype-coercion expr-type))
		    (st-expr (cons st-name (cons nvar tr-vars))))
	       st-expr)))))

(defun unique-prover-name (expr)
  (cond ((constant? expr) ;;NSH(2.16.94): changed to deal with Ricky's
	                  ;;soundness bug where actuals are ignored.
	 (cond ((and (constructor? expr)
		     (enum-adt? (find-supertype (type expr))))
		(position (id expr)
			  (constructors (adt (find-supertype (type expr))))
			  :test #'eq :key #'id))
	       ((tc-eq expr *true*) '(true))
	       ((tc-eq expr *false*) '(false))
	       (t (let* ((norm-expr (normalize-name-expr-actuals expr))
			 (id-hash (gethash norm-expr *translate-id-hash*))
			 (newconst (or id-hash
				       (list (intern
					      (concatenate 'string
							   (string (if (integerp (id expr))
								       (format nil "~r"
									       (id expr))
								     (id expr)))
							   "_"
							   (princ-to-string
							    (funcall
							     *translate-id-counter*))) :pvs))))
			 (expr-freevars (freevars expr))
			 (expr-bindings (intersection expr-freevars *bindings*
						      :test #'same-declaration))
			 )
		    (unless id-hash
		      (setf (gethash norm-expr *translate-id-hash*)
			    newconst)
		      ;;(format t "~%adding ~a to typealist" (car newconst))
					;(add-to-typealist (car newconst) expr)
		      )
		    (cond (expr-bindings
			   (let* ((tr-vars (translate-to-prove expr-bindings))
				  (prtype (prover-type (or (type expr) (car (ptypes expr)))))
				  (apname (make-apply-symbol (length tr-vars) prtype)))
			     (cons apname (cons newconst tr-vars))))
			  (t (add-to-typealist (car newconst) expr)
			     newconst))))))
	(t (add-to-local-typealist (id expr) expr)
	   (id expr))))

(defun get-subtype-coercion (expr-type)
  (let* ((name (cdr (assoc expr-type *subtype-names* :test #'tc-eq))))
    (or name
	(let* ((name (intern (concatenate 'string
					  "*" (string (gentemp "subtype")) "*") :pvs)
		     ;;(makesym "*~a*" (gentemp "subtype"))
		     )
	       )
	  (push  (cons expr-type name) *subtype-names*)
	  name))))

(defmethod translate-to-prove ((expr cases-expr))
  (translate-to-prove (translate-cases-to-if expr)))

(defmethod translate-to-prove ((expr binding-expr))
  (let* ((*bindings* (append (bindings expr) *bindings*))
	 (type (type expr))
	 (prtype (prover-type type))
	 (body (expression expr))
	 (exprtype (prover-type (type body)))
	 (connective? (connective-occurs? body))
	 (tr-expr
	  (if connective?
	      ;;NSH(11.4.95): Fixes unsoundness caused
		    ;;by translating (LAMBDA : IF B ...) to (LAMBDA 1: CC)
		    ;;by generating (LAMBDA 1 : CC(*1*)) instead.
		    ;;Note that two tc-eq such LAMBDAs will generate
		    ;;different translations so that ASSERT might miss some
		    ;;syntactic equalities when there are IFs in LAMBDAs.
	      (cond
	       (*bindings*
		(let* ((newid (gentemp))
		       (body-freevars (freevars body))
		       (body-bindings (intersection body-freevars *bindings*
						    :test #'same-declaration))
		       ;;bound variables can't be ignored; subtyp constraints needed
		       ;;freevars of the expr are needed for connectives.
		       (tr-vars (translate-to-prove body-bindings))
		       (apname (make-apply-symbol (length tr-vars) exprtype))
		       (apform (cons apname (cons newid tr-vars))))
		  (unless (or (null exprtype)
			      (assoc apname typealist))
		    (push (cons apname exprtype) typealist)
		    (pushnew apname applysymlist))
		  apform))
	       (t (let ((name (cdr (assoc body *named-exprs* :test #'tc-eq))))
		    ;;if there are no *bindings* then use the cached translation in *named-exprs*
		    (or name
			(let ((newid (gentemp)))
			  (add-to-typealist newid nil (type expr))
			  (push (list body newid) *named-exprs*)
			  (list newid))))))
	      (translate-to-prove (expression expr))))
	 (tr-operator (unique-binding-operator expr))
	 (tr-lambda-expr
	  (cons 'lambda
		(cons (length (bindings expr))
		      (list tr-expr)))))
    (if (lambda-expr? expr)
	tr-lambda-expr
	 (list (make-apply-symbol 1 prtype)
	       tr-operator
	       tr-lambda-expr))))

(defun make-apply-symbol (arity type)
  (let ((name (intern (concatenate 'string
				   "APPLY-"
				   (princ-to-string arity)
				   "-" (string (or type '||))) :pvs)))
    (unless (or (not type)
		(assoc name typealist))
      (push (cons name type) typealist)
      (pushnew name applysymlist))
    name))

(defmethod make-apply-name ((te type-expr))
  (let* ((type (find-supertype te))
	 (prtype (prover-type (range type)))
	 (name (make-apply-symbol (length (domain-types type))
				  prtype))
	 )
    name))
