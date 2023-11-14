(in-package :pvs)

(defmethod variable? ((expr name-expr))
  (with-slots (resolutions) expr
    ;;(assert (singleton? resolutions))
    (every #'(lambda (res) (typep (declaration res) '(or var-decl binding)))
	   resolutions)))

(defun make-forall-expr (vars expr)
  (let* ((nvars (ensure-correct-binding-types vars))
	 (sexpr (substit expr (pairlis vars nvars)))
	 (nexpr (mk-forall-expr nvars sexpr)))
    (assert *current-context*)
    (typecheck nexpr :expected *boolean*)))

(defun make-exists-expr (vars expr)
  (let* ((nvars (ensure-correct-binding-types vars))
	 (sexpr (substit expr (pairlis vars nvars)))
	 (nexpr (mk-exists-expr nvars sexpr)))
    (assert *current-context*)
    (typecheck nexpr :expected *boolean*)))
  
(defun ensure-correct-binding-types (vars)
  (let* ((rvars (reverse vars))
	 (nvar (if (untyped-bind-decl? (car rvars))
		   (let ((dtype (or (print-type (type (car rvars)))
				    (type (car rvars)))))
		     (mk-bind-decl (id (car rvars)) dtype (type (car rvars))))
		   (car rvars))))
    (ensure-correct-binding-types* (cdr rvars) (list nvar))))

(defun ensure-correct-binding-types* (vars &optional nvars)
  (if (null vars)
      nvars
      (let* ((nvar (if (and (untyped-bind-decl? (car vars))
			    (not (tc-eq (type (car vars)) (type (car nvars)))))
		       (let ((dtype (or (print-type (type (car vars)))
					(type (car vars)))))
			 (mk-bind-decl (id (car vars)) dtype (type (car vars))))
		       (car vars)))
	     (snvars (if (eq nvar (car vars))
			 nvars
			 (substit nvars (acons (car vars) nvar nil)))))
	(ensure-correct-binding-types* (cdr vars) (cons nvar snvars)))))
