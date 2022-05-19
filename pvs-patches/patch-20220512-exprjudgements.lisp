(in-package :pvs)

(defmethod typecheck* ((decl expr-judgement) expected kind arguments)
  (declare (ignore expected kind arguments))
  ;; We typecheck copies of the declared-type and expr - enough to tell whether we
  ;; need to change decl to an application-judgement.
  (let* ((ctype (unless (forall-expr? (expr decl))
		  (let ((*generate-tccs* 'none)
			(*no-conversions-allowed* t)
			(dtype (copy-all (declared-type decl))))
		    (copy-lex (declared-type decl) dtype)
		    (typecheck* dtype nil nil nil))))
	 (cexpr (when ctype
		  (let ((*generate-tccs* 'none)
			(*no-conversions-allowed* t)
			(cex (copy-all (expr decl))))
		    (copy-lex (expr decl) cex)
		    (typecheck* cex ctype nil nil))))
	 (mexpr (and cexpr (or (from-macro cexpr) cexpr))))
    ;; expr-judgement basically just has an expr and declared-type may want
    ;; to treat as appl-judgement, with name and formals, in the special
    ;; case of application form, e.g., f(x, y)(z), where all the arguments
    ;; are distinct variables.
    (if (and (typep mexpr '(and application (not infix-application)))
	     (let ((args-lists (arguments* mexpr)))
	       (and (every #'(lambda (args) (every #'variable? args))
			   args-lists)
		    (not (duplicates? (apply #'append args-lists)
				      :test #'same-declaration)))))
	(change-expr-judgement-to-application-judgement decl)
	(typecheck-expr-judgement decl))))

(defun typecheck-expr-judgement (decl)
  "Typechecks the expr-judgement decl, determined not to be an application-judgement.
Note that if it is a forall-expr, it is treated specially; e.g.,
  FORALL (x: real | x > 1): x * x HAS_TYPE {y : real | y > x}
in a way, a HAS_TYPE b is boolean, but it's not a valid expr."
  (let ((*generate-tccs* 'none))
    (cond ((forall-expr? (expr decl))
	   ;; Note that it is not really a forall expr, as it is not boolean
	   (typecheck* (bindings (expr decl)) nil nil nil)
	   (let ((*bound-variables* (append (bindings (expr decl)) *bound-variables*)))
	     (setf (type decl) (typecheck* (declared-type decl) nil nil nil))
	     (typecheck* (expression (expr decl)) (type decl) nil nil)))
	  (t (setf (type decl) (typecheck* (declared-type decl) nil nil nil))
	     (typecheck* (expr decl) (type decl) nil nil))))
  ;; Not an application-judgement, but has freevars
  ;; Get the freevars list, and create untyped-bind-decls
  ;; Append to the beginning of bindings if expr is a forall-expr
  ;; Set (formals decl) to this list
  ;; Then retypecheck expr under the new bindings
  (let* ((*no-expected* t)
	 ;; uform is not a valid forall expr, but this gets the
	 ;; expr and type under the same bindings
	 (lform (if (forall-expr? (expr decl))
		    (copy (expr decl)
		      :expression (list (expression (expr decl)) (type decl)))
		    (list (expr decl) (type decl))))
	 (uform (universal-closure lform))
	 (*no-conversions-allowed* t)
	 (*compatible-pred-reason*
	  (acons (if (forall-expr? uform)
		     (car (expression uform))
		     (car uform))
		 "judgement" *compatible-pred-reason*))
	 (*bound-variables* (when (forall-expr? uform) (bindings uform))))
    (if (forall-expr? uform)
	(let* ((*bound-variables* (bindings uform)))
	  (assert (listp (expression uform)))
	  (set-type (car (expression uform)) (cadr (expression uform))))
	(set-type (car uform) (cadr uform)))
    (setf (closed-form decl) uform)
    (cond ((and (expr-judgement? decl)
		(expr-judgement-useless? (closed-form decl)))
	   (useless-judgement-warning decl))
	  (t (when (formals-sans-usings (current-theory))
	       (generic-judgement-warning decl))
	     (add-judgement-decl decl)))))
