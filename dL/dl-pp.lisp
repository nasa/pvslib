(defstep dl-pp (&optional fnum)
  (let ((dlseq (is-dl-seq fnum))
	(expr  (cdr dlseq))
	(eqstr "equalities[list_adt[BoolExpr].list].=")
	(pp1   (when expr (pvslist2list (args1 expr))))
	(lhs   (when (car pp1)
		 (format nil "~a(~a, (:~{ ~a~^,~} :))"
			 eqstr (args1 expr) (cdr pp1))))
	(pp2   (when expr (pvslist2list (args2 expr))))
	(rhs   (when (car pp2)
		 (format nil "~a(~a, (:~{ ~a~^,~} :))"
			 eqstr (args2 expr) (cdr pp2)))))
    (when expr
      (branch
       (with-tccs
	(then@
	 (when lhs (case-replace lhs :hide? t))
	 (when rhs (case-replace rhs :hide? t))
	 (dl-pp-list-to-listexpr fnum)))
       ((skip)
	(then
	 (hide-all-but 1)
	 (skeep)
	 (eval-formula 1))))))
  "Pretty prints DDL sequent in formula FNUM. If FNUM is not provided, the first
DDL sequent in the consequent is used."
  "Pretty printing DDL sequent~@[ in ~a~]")

(defstep dl-pp-list-to-listexpr (&optional (fnum *))
  (match$
   fnum
   "cons(%%)"
   step (let ((original-cons $1j))
	  (if (free-variables original-cons)
	      (let ((dummy (error-format-if "Cannot transform ~a to a list-expr (contain free variables)" original-cons)))
		(fail))
	    (let ((pplist (pvslist2list original-cons)))
	      (if (and pplist (car pplist))
		  (let ((list-of-exprs (cdr pplist))
			(pvs-list-expr (make!-list-expr list-of-exprs (type(car list-of-exprs))))
			(case-str      (format nil "(%1) = ~a" pvs-list-expr)))
		       (case-replace case-str :hide? t))
		   (let ((dummy (error-format-if "Cannot transform ~a to a list-expr" original-cons)))
		     (fail)))))))
  "Converts cons(%%) expressions into (: %% :) expressions in FNUM."
  "Converting cons into list-expressions in ~a")
