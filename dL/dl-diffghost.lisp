;;
;; dl-diffghost strategy
;;

(defstep dl-diffghost
  (expr1 expr2 &optional name cut (dlfnum +) fnum (pp? t) dont-fail? (quiet? t))
  (with-verbosity
   (let ((name (if name
		  (if (not (typep (pc-parse name 'expr) 'name-expr))
		      (error-format-if "Provided argument ~a should be a name" name)
		    (if (check-name name)
			(error-format-if "Provided name ~a is not fresh" name)
		      name))
		(freshname "v"))))
    (when name
      (let ((e1 (or (extra-get-expr expr1 "RealExpr")
		   (error-format-if "Expression ~a does not typecheck" expr1))))
	(when e1
	  (let ((e2 (or (extra-get-expr expr2 "RealExpr")
		       (error-format-if "Expression ~a does not typecheck" expr2))))
	    (when e2
	      (let ((dlvars  (get-known-dlvars e1 e2))
		    (dlvarsl (format nil "(: ~{~a~^, ~} :)" dlvars))
		    (step (if cut '(skip) '(inst? -1))))
		(then
		 (lemma "fresh_var")
		 (inst -1 dlvarsl)
		 (skolem -1 name)
		 (with-fresh-labels
		  ((fvars! -1))
		  (let ((inst-terms (if cut
					(list e1 e2 (extra-get-expr cut "BoolExpr") name)
				      (list e1 e2 "_" name))))
		    (try-branch
		     (dl-lemma__$
		      "dl_differential_ghost" dlfnum fnum
		      :inst-terms inst-terms
		      :side +
		      :ftest dl-diff-lmbd
		      :pp? pp?
		      :dont-fail? dont-fail?
		      :finishing-step step)
		     ((skip)
		      ;;(dl-existsrL name :pp? pp?)
		      ;;(then (skolem 1 name)
		      ;;(when pp? (dl-pp 1))))
		      )
		     (unless dont-fail? (fail)))))))))))))
   quiet?)
  "Introduces a differential ghost meta-variable NAME in the right
hand side of a DDL sequent in formula FNUM.  NAME represents
differential variable x' = EXPR1*x + EXPR2. If no NAME is provided a
fresh name will be introduced. CUT is a case expression. The specific
formula in the DDL sequent can be specified with the option DLFNUM. If
FNUM is not provided, the first DDL sequent in the consequent is
used. By default, the DDL sequent is pretty-printed unless PP? is set
to nil."
  "Applying differential ghost rule using ~2@*~a~@*' = ~a*~2@*~a~@*+~1@*~a~@*, with ~3@*~a")


(defun get-known-dlvars (&rest exprs)
  "Returns an index that is fresh w.r.t. the formulas in the current goal and EXPRS."
  (remove-duplicates
   (append
    ;; visible sequent formulas
    (loop for s-form in (s-forms *goal*)
	  append (dl-variables* (formula s-form)))
    (loop for form in exprs
	  append (dl-variables* form)))
   :test #'tc-eq))
  
;;
;; dl-variables* METHOD
;;

(defmethod dl-variables* ((self let-expr))
  "Visitor"
  (append
   (dl-variables* (expression (operator self)))
   (dl-variables* (argument self))))

;; Method dl-variables* for application
;; Parents: expr
(defmethod dl-variables* ((self application))
  "Visitor"
  (cond
   ;; the arguments of val(_) applications are indices   
   ((eq (id (operator self)) 'val)
    (list (args1 self)))
   (t (loop for arg in (arguments self)
	    append (dl-variables* arg)))))

;; Method dl-variables* for name-expr
;; Parents: expr
(defmethod dl-variables* ((self name-expr))
  "Visitor"
  ;; The only name-exprs that could (indirectly) use indices are those introduced
  ;; by the application of a `skoletin` on a LET-IN expression. Those names are
  ;; internally represented as Skolem constants. While `skeep`, `skolem`, and their
  ;; derivates introduce Skolem constants without definitions, the ones introduced
  ;; by `skoletin` have definitions.
  ;;
  (let*((decl (declaration self))
	(def (when decl (and (skolem-const-decl? decl)
			     (definition decl)))))
    (if def (dl-variables* def) nil)))

;; Method dl-variables* for tuple-expr
;; Parents: expr
(defmethod dl-variables* ((self tuple-expr))
  "Visitor"
  ;; @M3 if this tuple-expr is a MapExpr, I need to collect the id from the left component, and the expression in the right.
  (if (compatible? (type self) (extra-get-type "MapExpr"))
      (let ((dl-expr (second (exprs self))))
	(cons
	 (first (exprs self))
	 (dl-variables* dl-expr)))
    (loop for expr in exprs collect (dl-variables* expr))))

;; @M3 #TODO complete the following cases

;; Method dl-variables* for expr
(defmethod dl-variables* ((self expr))
  "Visitor"
  (break "Method dl-variables* in expr is still unimplemented (self='~a')." self))

;; Method dl-variables* for table-expr
;; Parents: expr
(defmethod dl-variables* ((self table-expr))
  "Visitor"
  (break "Method dl-variables* in table-expr is still unimplemented (self='~a')." self))

;; Method dl-variables* for injection?-application
;; Parents: expr
(defmethod dl-variables* ((self injection?-application))
  "Visitor"
  (break "Method dl-variables* in injection?-application is still unimplemented (self='~a')." self))

;; Method dl-variables* for projection-application
;; Parents: expr
(defmethod dl-variables* ((self projection-application))
  "Visitor"
  (break "Method dl-variables* in projection-application is still unimplemented (self='~a')." self))

;; Method dl-variables* for update-expr
;; Parents: expr
(defmethod dl-variables* ((self update-expr))
  "Visitor"
  (break "Method dl-variables* in update-expr is still unimplemented (self='~a')." self))

;; Method dl-variables* for unpack-expr
;; Parents: cases-expr
(defmethod dl-variables* ((self unpack-expr))
  "Visitor"
  (break "Method dl-variables* in unpack-expr is still unimplemented (self='~a')." self))

;; Method dl-variables* for projected-arg-tuple-expr
;; Parents: arg-tuple-expr
(defmethod dl-variables* ((self projected-arg-tuple-expr))
  "Visitor"
  (break "Method dl-variables* in projected-arg-tuple-expr is still unimplemented (self='~a')." self))

;; Method dl-variables* for injection-application
;; Parents: expr
(defmethod dl-variables* ((self injection-application))
  "Visitor"
  (break "Method dl-variables* in injection-application is still unimplemented (self='~a')." self))

;; Method dl-variables* for lambda-expr
;; Parents: binding-expr
(defmethod dl-variables* ((self lambda-expr))
  "Visitor"
  (break "Method dl-variables* in lambda-expr is still unimplemented (self='~a')." self))

;; Method dl-variables* for lambda-expr-with-type
;; Parents: lambda-expr
(defmethod dl-variables* ((self lambda-expr-with-type))
  "Visitor"
  (break "Method dl-variables* in lambda-expr-with-type is still unimplemented (self='~a')." self))

;; Method dl-variables* for extraction-application
;; Parents: expr
(defmethod dl-variables* ((self extraction-application))
  "Visitor"
  (break "Method dl-variables* in extraction-application is still unimplemented (self='~a')." self))

;; Method dl-variables* for lambda-conversion
;; Parents: lambda-expr
(defmethod dl-variables* ((self lambda-conversion))
  "Visitor"
  (break "Method dl-variables* in lambda-conversion is still unimplemented (self='~a')." self))

;; Method dl-variables* for cases-table-expr
;; Parents: cases-expr
(defmethod dl-variables* ((self cases-table-expr))
  "Visitor"
  (break "Method dl-variables* in cases-table-expr is still unimplemented (self='~a')." self))

;; Method dl-variables* for fieldex
;; Parents: expr
(defmethod dl-variables* ((self fieldex))
  "Visitor"
  (break "Method dl-variables* in fieldex is still unimplemented (self='~a')." self))

;; Method dl-variables* for set-expr
;; Parents: lambda-expr
(defmethod dl-variables* ((self set-expr))
  "Visitor"
  (break "Method dl-variables* in set-expr is still unimplemented (self='~a')." self))

;; Method dl-variables* for arg-tuple-expr
;; Parents: tuple-expr
(defmethod dl-variables* ((self arg-tuple-expr))
  "Visitor"
  (break "Method dl-variables* in arg-tuple-expr is still unimplemented (self='~a')." self))

;; Method dl-variables* for rectype-conversion
;; Parents: lambda-expr
(defmethod dl-variables* ((self rectype-conversion))
  "Visitor"
  (break "Method dl-variables* in rectype-conversion is still unimplemented (self='~a')." self))

;; Method dl-variables* for funtype-conversion
;; Parents: lambda-expr
(defmethod dl-variables* ((self funtype-conversion))
  "Visitor"
  (break "Method dl-variables* in funtype-conversion is still unimplemented (self='~a')." self))

;; Method dl-variables* for let-lambda-expr
;; Parents: lambda-expr
(defmethod dl-variables* ((self let-lambda-expr))
  "Visitor"
  (break "Method dl-variables* in let-lambda-expr is still unimplemented (self='~a')." self))

;; Method dl-variables* for set-list-expr
;; Parents: set-expr
(defmethod dl-variables* ((self set-list-expr))
  "Visitor"
  (break "Method dl-variables* in set-list-expr is still unimplemented (self='~a')." self))

;; Method dl-variables* for fieldex-lambda-expr
;; Parents: lambda-expr
(defmethod dl-variables* ((self fieldex-lambda-expr))
  "Visitor"
  (break "Method dl-variables* in fieldex-lambda-expr is still unimplemented (self='~a')." self))

;; Method dl-variables* for exists-expr
;; Parents: quant-expr
(defmethod dl-variables* ((self exists-expr))
  "Visitor"
  (break "Method dl-variables* in exists-expr is still unimplemented (self='~a')." self))

;; Method dl-variables* for cases-expr
;; Parents: expr
(defmethod dl-variables* ((self cases-expr))
  "Visitor"
  (break "Method dl-variables* in cases-expr is still unimplemented (self='~a')." self))

;; Method dl-variables* for set-expr-with-type
;; Parents: lambda-expr-with-type, set-expr
(defmethod dl-variables* ((self set-expr-with-type))
  "Visitor"
  (break "Method dl-variables* in set-expr-with-type is still unimplemented (self='~a')." self))

;; Method dl-variables* for quant-expr
;; Parents: binding-expr
(defmethod dl-variables* ((self quant-expr))
  "Visitor"
  (break "Method dl-variables* in quant-expr is still unimplemented (self='~a')." self))

;; Method dl-variables* for field-application
;; Parents: expr
(defmethod dl-variables* ((self field-application))
  "Visitor"
  (break "Method dl-variables* in field-application is still unimplemented (self='~a')." self))

;; Method dl-variables* for recursive-defn-conversion
;; Parents: lambda-expr
(defmethod dl-variables* ((self recursive-defn-conversion))
  "Visitor"
  (break "Method dl-variables* in recursive-defn-conversion is still unimplemented (self='~a')." self))

;; Method dl-variables* for binding-expr
;; Parents: expr
(defmethod dl-variables* ((self binding-expr))
  "Visitor"
  (break "Method dl-variables* in binding-expr is still unimplemented (self='~a')." self))

;; Method dl-variables* for record-expr
;; Parents: expr
(defmethod dl-variables* ((self record-expr))
  "Visitor"
  (break "Method dl-variables* in record-expr is still unimplemented (self='~a')." self))

;; Method dl-variables* for forall-expr
;; Parents: quant-expr
(defmethod dl-variables* ((self forall-expr))
  "Visitor"
  (break "Method dl-variables* in forall-expr is still unimplemented (self='~a')." self))

;; Method dl-variables* for rational-expr
;; Parents: expr
(defmethod dl-variables* ((self rational-expr))
  "Visitor"
  ;; The class `rational-expr` represents concrete numeric constants, there should
  ;; be no indices there.
  nil)

;; Method dl-variables* for tuptype-conversion
;; Parents: lambda-expr
(defmethod dl-variables* ((self tuptype-conversion))
  "Visitor"
  (break "Method dl-variables* in tuptype-conversion is still unimplemented (self='~a')." self))
