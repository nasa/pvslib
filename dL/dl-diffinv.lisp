;;
;; dl-diffinv
;;

(defparameter *dl-dift-rws*
  '("ddl_dom_weak"
    "dl_dift_val" "dl_dift_const" "dl_dift_plus" "dl_dift_minus" "dl_dift_negative"
    "dl_dift_mult" "dl_dift_exp" "dl_dift_pow"
    ;; "dl_dift_div" ;; TODO @M3 this lemma is missing. Deprecated?
    "dl_dift_sqrt" "dl_dift_divsafe"
    "re_plus_cnst0" "cnst0_plus_re" "sqrt_re_sq"
    "re_minus_cnst0" "cnst0_minus_re"
    "re_prod_cnst0" "cnst0_prod_re" "dl_true_DDL"))

(defstep dl-diffinv (&optional (dlfnum +) fnum (pp? t) dont-fail?)
  (let ((dlseq (is-dl-seq fnum))
	(fn    (car dlseq))
	(dlfne (dl-fnum (cdr dlseq) dlfnum 1 #'dl-diff-lmbd))
	(dlfn  (when fn (car dlfne)))
	(dlfe  (when fn (cdr dlfne)))
	(bexpr (when dlfne (args2 dlfe)))
	(nqbe  (handler-case
		   (dl-translate2nqb bexpr)
		 (error (condition) (format t "Error: ~a" condition))))
	(nnqb  (when nqbe
		 (format nil "normalize(~a)" nqbe)))
	(drre *dl-diffre-rws*) )
    (when nnqb
      (with-fresh-labels
       ((fn! fn))
       (with-fresh-names
	((nnqb_ nnqb))
	(let ((castr (format nil "(~a)=nqb_to_be(~a)" bexpr nnqb_)))
	  (spread
	   (case-replace castr)
	   ((with-fresh-labels
	     ((castr! -1 :hide))
	     (dl-lemma__$
	      "dl_dI_dlTRUE" dlfn fn!
	      :finishing-step
	      (then
	       (replaces castr! :dir rl)
	       (expand* nnqb_ "normalize")
	       (for@ nil (expand "normalize_rec"))
	       (for@ nil (expand "neg_rel"))
	       
	       ;; (spread
	       ;; 	(dl-subdift__$)
	       ;;  ((dl-nqboolder__)
	       ;; 	 (skip)))

	       ;; 20231214 @M3 dl-subdift__ is failing when trying to evaluate max_var( (: ... :) )
	       ;;              I'll skip it to try and see how to repair it
	       ;; (dl-subdift__$)
	       (skip)

	       )
	      :side +
	      :pp? pp?
	      :dont-fail? dont-fail?))
	    (then
	     (hide-all-but 1)
	     (typepred nnqb_)
	     (hide -1)
	     (replaces -1)
	     (for@ nil (expand* "nqb_to_be" "nqb_rel"))))))))))
  "Applies the rule dl_dI to a DDL formula in the right hand side of
a DDL sequent in formula FNUM. The specific formula in the DDL sequent
can be specified with the option DLFNUM. If FNUM is not provided, the
first DDL sequent in the consequent is used. By default, the DDL
sequent is pretty-printed unless PP? is set to nil."
  "Applying lemma dl_dI to DDL formula ~a")

(defhelper dl-subdift__ ()
  (let ((rws  *dl-dift-rws*)
	(drws *dl-domain-rws*)
	(drup *dl-derup-rws*))
    (then@
     (try (expand "SUB_DIFT")
	  (for@ nil (expand "DIFT"))
	  (skip))
     (expand "SUB_DIFTRe")

     ;; 20231214 @M3 max_var is not evaluable anymore...
     ;;          TODO remove
     ;; (for@ nil
     ;;  (try-then@
     ;;   ((match "max_var(%)" step (with-tccs (eval-expr "%1" :quiet? t)))
     ;; 	(replaces -1))))
     (match "derivable_M_nqbool?(%%)(%%)" step (dl-nqboolder__))
     
     (branch
      (then@
       ;; [M3] expand names introduced by applying (skoletin*), if any
       (for nil (match - "%1 = %2" 
			step (then 
			      (let ((doit (let ((lhs-expr (extra-get-expr "%1")))
					    (and (name-expr? lhs-expr)
						 (let ((decl (declaration lhs-expr)))
						   (and decl
							(skolem-const-decl? decl)
							(definition decl)))))))
				(when doit (replace $1n)))
			      (hide $1n))))
       (spread
	(case "FORALL(a:real, re: RealExpr): a * re = cnst(a) * re")
	((then@
	  (rewrite* -1)
	  (simplify-DIFT_Re-expression$))
	 (then@
	  (hide-all-but 1)
	  (lemma "real_fun_ops[Environment].scal_function")
	  (expand "const_fun")
	  (expand "cnst")))))
      ((branch
	(split 1)
	((else
	  (dl-nqboolder__)
	  (for@ nil (dl-subddt__)))))
       (then
	(hide-all-but 1)
	(else* (eval-formula 1 :quiet? t)
	       (prove-derivable_up-goal)
	       (for nil
		(then
		 (rewrite* drws)
		 (rewrite* drup)))))))))
  "Internal strategy. Applies DDL differentiation rules."
  "Applying dl-subdift__ helper")

(defhelper dl-subddt__ ()
  (let ((expr    (extra-get-expr '(~ + "ddt(%)(%)")))
	(exprsv '(~ ~ "same_var(%,%)")))
    (when expr
      (with-fresh-names
       ((dt expr :tccs? (eval-formula 1 :quiet? t)))
       (reveal *dt*)
       (for@ nil
	(try-then
	 ((expand "ddt" *dt*)
	  (eval-expr exprsv :quiet? t)
	  (replaces -1)
	  (replaces *dt* :dir rl)))))))
  "Internal strategy. Applies ddt differentiaion rules."
  "Applying dl-subddt__ helper")

(defhelper dl-nqboolder__ ()
  (let ((drws *dl-domain-rws*) (drre *dl-diffre-rws*))
    (then (expand "derivable_M_nqbool?")
	  (for nil (then
		    (rewrite* drre) 
		    (rewrite* drws)))
	  (prove-diff_re-goal)))
  "Internal strategy. Applies DDL differentiaion rules to nqbools."
  "Applying dl-nqboolder__ helper")
;;
;;
;;

;; #TODO @M3 downgrade to deflhelper
(defstep simplify-DIFT_Re-expression ()
  (let ((dl-operators '(val cnst + - * ^^ ^ sqrt_safe_re div_safe_re))
	(dl-lemmas    '("dl_dift_val" "dl_dift_const" "dl_dift_plus" ("dl_dift_negative" "dl_dift_minus") "dl_dift_mult" "dl_dift_exp" "dl_dift_pow"
			;; "dl_dift_div" ;; TODO @M3 this lemma is missing. Deprecated?
			"dl_dift_sqrt" "dl_dift_divsafe")))
  (match$
   + "DIFT_Re(%1,%2,%3)(%4)"
   step 
   (let ((lemma-name-per-operator (pairlis dl-operators dl-lemmas))
	 (arg (extra-get-expr "%3")))
     (if (application? arg)
	 (let((arg-arity (length(arguments arg)))
	      (diff-bound "%1")
	      (domain     "%2")
	      (op (id (operator arg)))
	      (arg1 (format nil "~a" (args1 arg)))
	      (lemma-name (cdr (assoc op lemma-name-per-operator))))
	   (if (= arg-arity 1)
	       (if lemma-name
		   (then@
		    (let ((lemma-name (if (listp lemma-name) (car lemma-name) lemma-name)))
		      (lemma lemma-name))
		    ;; (inst -1 diff-bound arg1 domain)
		    (inst? -1)
		    (split -1)
		    (replace -1 :hide? t)
		    (simplify-DIFT_Re-expression$))
		 (warning "Unexpected unary argument for DIFT_Re application: ~a" arg))
	     (let ((infix? (infix-application? arg))
		   (arg2 (format nil "~a" (args2 arg)))
		   (operator (format nil (if infix? "~a[Environment]" "~a") op)))
	       (if (and lemma-name operator)
		   (then@
		    (let ((lemma-name (if (listp lemma-name) (second lemma-name) lemma-name)))
		      (lemma lemma-name))
		    (branch
		     (then@
		      (inst -1 "%4" arg1 arg2 diff-bound domain)
		      (split -1)
		      (replace -1 :hide? t))
		     ((simplify-DIFT_Re-expression$)
		      (let((drws *dl-domain-rws*)
			   (drup *dl-derup-rws*))
			(then
			 (hide-all-but 1)
			 (else* (eval-formula 1 :quiet? t)
				(prove-derivable_up-goal)
				(for nil
				 (then
				  (rewrite* drws)
				  (rewrite* drup) 
				  ))))))))
		 (warning "Unexpected binary argument for DIFT_Re application: ~a"  arg)))))
       (let ((is-lambda? (lambda-expr? arg)))
	 (if is-lambda?
	     (let((lemma-name (cdr (assoc 'cnst lemma-name-per-operator))))
	       (then
		(lemma lemma-name)
		(expand "cnst")
		(inst?)))
	   (warning "Unexpected argument for DIFT_Re application: ~a" arg)))))))
  "Simplifies  DIFT_Re(%1,%2)(%3)"
  "Applying prove-predicate-on-re helper")

