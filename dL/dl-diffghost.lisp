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
      (let((e1 (or (extra-get-expr expr1 "RealExpr")
		   (error-format-if "Expression ~a does not typecheck" expr1))))
	(when e1
	  (let((e2 (or (extra-get-expr expr2 "RealExpr")
		       (error-format-if "Expression ~a does not typecheck" expr2))))
	    (when e2
	      (let((candidate-idx (get-fresh-index e1 e2))
		   (idx (if cut
			    (let ((stub-cut (or (extra-get-expr (format nil "LET ~a:nat=~a IN (~a)" name candidate-idx cut) "BoolExpr")
						(error-format-if "Expression ~a does not typecheck" cut))))
			      (when stub-cut
				(let ((stub-cut-indices (dl-indices* stub-cut)))
				  (if (name-collision? stub-cut-indices (intern name))
				      (get-fresh-idx-from-id-idx-alist stub-cut-indices)
				    candidate-idx))))
			  candidate-idx)))
		(when idx
		  (then
		   (name name idx)
		   (let ((inst-terms (if cut
					 (list e1 e2 (extra-get-expr cut "BoolExpr") name)
				       (list e1 e2 "_" name)))
			 (step (if cut '(skip) '(inst? -1))))
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


(defun name-collision? (id-idx-alist target-id)
  (let ((target-idx (cdr (assoc target-id id-idx-alist))))
    (every
     (lambda (e) (or (not (eq (car e) target-id)) (not (= (cdr e) target-idx))))
     id-idx-alist)))

(defun get-fresh-idx-from-id-idx-alist (id-idx-alist)
  (1+ (loop for (id . idx) in id-idx-alist maximize idx)))

(defun get-fresh-index (&rest exprs)
  "Returns an index that is fresh w.r.t. the formulas in the current goal, \
   hidden or visible, and EXPRS."
  (let ((known-idxs (append
		     ;; visible sequent formulas
		     (loop for s-form in (s-forms *goal*)
			   append (dl-indices* (formula s-form)))
		     ;; TODO (m3) I think it's not necessary to check the hidden formulas
		     ;;      since we are checking the formulas that could be used to
		     ;;      instantiate the lemmas (mainly "dl_differential_auxiliary").
		     ;; ;; hidden sequent formulas
		     ;; (loop for s-form in (hidden-s-forms *goal*)
		     ;; 	   append (dl-indices* (formula s-form)))
		     ;; given formulas
		     (loop for form in exprs
			   append (dl-indices* form)))))
    (get-fresh-idx-from-id-idx-alist known-idxs)))

;;
;; dl-indices* METHOD
;;

(defun get-de-bruijn-names (expr)
  (loop for (name . idx) in (dl-indices* expr) collect name))

(defun get-index (name-expr)
  "if NAME-EXPR is a name-expr which declaration is a number, returns ( name . number )"
  (when (and (name-expr? name-expr)
	     (const-decl? (declaration name-expr))
	     (number-expr? (definition (declaration name-expr))))
    (cons (id name-expr) (number (definition (declaration name-expr))))))

(defmethod dl-indices* ((self let-expr))
  "Visitor"
  (let ((body-idxs (dl-indices* (expression(operator self)))))
    (if (number-expr? (argument self))
       (acons
	(id(car(bindings(operator self))))
	(number (argument self))
	body-idxs)
      body-idxs)))

;; Method dl-indices* for application
;; Parents: expr
(defmethod dl-indices* ((self application))
  "Visitor"
  #+pvsdebug (format t "~&[dl-indices* (application)] self ~a~%" self)
  (cond
     ;; the arguments of val(_) applications are indices   
     ((eq (id (operator self)) 'val)
      (let*((arg (args1 self))
	    (idx (get-index arg)))
	(when idx (list idx))))
     (t (loop for arg in (arguments self)
	      append (dl-indices* arg)))))

;; Method dl-indices* for name-expr
;; Parents: expr
(defmethod dl-indices* ((self name-expr))
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
    (if def (dl-indices* def) nil)))

;; Method dl-indices* for tuple-expr
;; Parents: expr
(defmethod dl-indices* ((self tuple-expr))
  "Visitor"
  ;; (break "Method dl-indices* in tuple-expr is still unimplemented (self='~a')." self) ;; @M3 #TODO remove
  ;; @M3 if this tuple-expr is a MapExpr, I need to collect the id from the left component, and the expression in the right.
  (if (compatible? (type self) (extra-get-type "MapExpr"))
      (let ((dl-expr (second (exprs self))))
		       (cons
			(let((index (get-index (first (exprs self)))))
			  (if index
			      index
			    (error "unexpected binding in MapExpr ~a" self)))
			(dl-indices* dl-expr)))
    (loop for expr in exprs collect (dl-indices* expr)))
  )

;; @M3 #TODO complete the following cases

;; Method dl-indices* for expr
(defmethod dl-indices* ((self expr))
  "Visitor"
  (break "Method dl-indices* in expr is still unimplemented (self='~a')." self))

;; Method dl-indices* for table-expr
;; Parents: expr
(defmethod dl-indices* ((self table-expr))
  "Visitor"
  (break "Method dl-indices* in table-expr is still unimplemented (self='~a')." self))

;; Method dl-indices* for injection?-application
;; Parents: expr
(defmethod dl-indices* ((self injection?-application))
  "Visitor"
  (break "Method dl-indices* in injection?-application is still unimplemented (self='~a')." self))

;; Method dl-indices* for projection-application
;; Parents: expr
(defmethod dl-indices* ((self projection-application))
  "Visitor"
  (break "Method dl-indices* in projection-application is still unimplemented (self='~a')." self))

;; Method dl-indices* for update-expr
;; Parents: expr
(defmethod dl-indices* ((self update-expr))
  "Visitor"
  (break "Method dl-indices* in update-expr is still unimplemented (self='~a')." self))

;; Method dl-indices* for unpack-expr
;; Parents: cases-expr
(defmethod dl-indices* ((self unpack-expr))
  "Visitor"
  (break "Method dl-indices* in unpack-expr is still unimplemented (self='~a')." self))

;; Method dl-indices* for projected-arg-tuple-expr
;; Parents: arg-tuple-expr
(defmethod dl-indices* ((self projected-arg-tuple-expr))
  "Visitor"
  (break "Method dl-indices* in projected-arg-tuple-expr is still unimplemented (self='~a')." self))

;; Method dl-indices* for injection-application
;; Parents: expr
(defmethod dl-indices* ((self injection-application))
  "Visitor"
  (break "Method dl-indices* in injection-application is still unimplemented (self='~a')." self))

;; Method dl-indices* for lambda-expr
;; Parents: binding-expr
(defmethod dl-indices* ((self lambda-expr))
  "Visitor"
  (break "Method dl-indices* in lambda-expr is still unimplemented (self='~a')." self))

;; Method dl-indices* for lambda-expr-with-type
;; Parents: lambda-expr
(defmethod dl-indices* ((self lambda-expr-with-type))
  "Visitor"
  (break "Method dl-indices* in lambda-expr-with-type is still unimplemented (self='~a')." self))

;; Method dl-indices* for extraction-application
;; Parents: expr
(defmethod dl-indices* ((self extraction-application))
  "Visitor"
  (break "Method dl-indices* in extraction-application is still unimplemented (self='~a')." self))

;; Method dl-indices* for lambda-conversion
;; Parents: lambda-expr
(defmethod dl-indices* ((self lambda-conversion))
  "Visitor"
  (break "Method dl-indices* in lambda-conversion is still unimplemented (self='~a')." self))

;; Method dl-indices* for cases-table-expr
;; Parents: cases-expr
(defmethod dl-indices* ((self cases-table-expr))
  "Visitor"
  (break "Method dl-indices* in cases-table-expr is still unimplemented (self='~a')." self))

;; Method dl-indices* for fieldex
;; Parents: expr
(defmethod dl-indices* ((self fieldex))
  "Visitor"
  (break "Method dl-indices* in fieldex is still unimplemented (self='~a')." self))

;; Method dl-indices* for set-expr
;; Parents: lambda-expr
(defmethod dl-indices* ((self set-expr))
  "Visitor"
  (break "Method dl-indices* in set-expr is still unimplemented (self='~a')." self))

;; Method dl-indices* for arg-tuple-expr
;; Parents: tuple-expr
(defmethod dl-indices* ((self arg-tuple-expr))
  "Visitor"
  (break "Method dl-indices* in arg-tuple-expr is still unimplemented (self='~a')." self))

;; Method dl-indices* for rectype-conversion
;; Parents: lambda-expr
(defmethod dl-indices* ((self rectype-conversion))
  "Visitor"
  (break "Method dl-indices* in rectype-conversion is still unimplemented (self='~a')." self))

;; Method dl-indices* for funtype-conversion
;; Parents: lambda-expr
(defmethod dl-indices* ((self funtype-conversion))
  "Visitor"
  (break "Method dl-indices* in funtype-conversion is still unimplemented (self='~a')." self))

;; Method dl-indices* for let-lambda-expr
;; Parents: lambda-expr
(defmethod dl-indices* ((self let-lambda-expr))
  "Visitor"
  (break "Method dl-indices* in let-lambda-expr is still unimplemented (self='~a')." self))

;; Method dl-indices* for set-list-expr
;; Parents: set-expr
(defmethod dl-indices* ((self set-list-expr))
  "Visitor"
  (break "Method dl-indices* in set-list-expr is still unimplemented (self='~a')." self))

;; Method dl-indices* for fieldex-lambda-expr
;; Parents: lambda-expr
(defmethod dl-indices* ((self fieldex-lambda-expr))
  "Visitor"
  (break "Method dl-indices* in fieldex-lambda-expr is still unimplemented (self='~a')." self))

;; Method dl-indices* for exists-expr
;; Parents: quant-expr
(defmethod dl-indices* ((self exists-expr))
  "Visitor"
  (break "Method dl-indices* in exists-expr is still unimplemented (self='~a')." self))

;; Method dl-indices* for cases-expr
;; Parents: expr
(defmethod dl-indices* ((self cases-expr))
  "Visitor"
  (break "Method dl-indices* in cases-expr is still unimplemented (self='~a')." self))

;; Method dl-indices* for set-expr-with-type
;; Parents: lambda-expr-with-type, set-expr
(defmethod dl-indices* ((self set-expr-with-type))
  "Visitor"
  (break "Method dl-indices* in set-expr-with-type is still unimplemented (self='~a')." self))

;; Method dl-indices* for quant-expr
;; Parents: binding-expr
(defmethod dl-indices* ((self quant-expr))
  "Visitor"
  (break "Method dl-indices* in quant-expr is still unimplemented (self='~a')." self))

;; Method dl-indices* for field-application
;; Parents: expr
(defmethod dl-indices* ((self field-application))
  "Visitor"
  (break "Method dl-indices* in field-application is still unimplemented (self='~a')." self))

;; Method dl-indices* for recursive-defn-conversion
;; Parents: lambda-expr
(defmethod dl-indices* ((self recursive-defn-conversion))
  "Visitor"
  (break "Method dl-indices* in recursive-defn-conversion is still unimplemented (self='~a')." self))

;; Method dl-indices* for binding-expr
;; Parents: expr
(defmethod dl-indices* ((self binding-expr))
  "Visitor"
  (break "Method dl-indices* in binding-expr is still unimplemented (self='~a')." self))

;; Method dl-indices* for record-expr
;; Parents: expr
(defmethod dl-indices* ((self record-expr))
  "Visitor"
  (break "Method dl-indices* in record-expr is still unimplemented (self='~a')." self))

;; Method dl-indices* for forall-expr
;; Parents: quant-expr
(defmethod dl-indices* ((self forall-expr))
  "Visitor"
  (break "Method dl-indices* in forall-expr is still unimplemented (self='~a')." self))

;; Method dl-indices* for rational-expr
;; Parents: expr
(defmethod dl-indices* ((self rational-expr))
  "Visitor"
  ;; The class `rational-expr` represents concrete numeric constants, there should
  ;; be no indices there.
  nil)

;; Method dl-indices* for tuptype-conversion
;; Parents: lambda-expr
(defmethod dl-indices* ((self tuptype-conversion))
  "Visitor"
  (break "Method dl-indices* in tuptype-conversion is still unimplemented (self='~a')." self))
