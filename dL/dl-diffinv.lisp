;;
;; dl-diffinv
;;

(defparameter *dl-dift-rws*
  '("ddl_dom_weak"
    "dl_dift_val" "dl_dift_const" "dl_dift_plus" "dl_dift_minus" "dl_dift_negative"
    "dl_dift_mult" "dl_dift_exp" "dl_dift_pow"
    "dl_dift_sqrt" "dl_dift_divsafe"
    "re_plus_cnst0" "cnst0_plus_re"
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
	       ;; need to solve the three hypothesis of dl_dI_dlTRUE
	       ;; 1) derivable_M_nqbool?(max_var(ode),DLTRUE)(nnP) AND
	       ;; 2) ( cons(Q,Gamma) |- cons(nqb_to_be(nnP),Delta) ) AND
	       ;; 3) ( Q |- SUB_DIFT(DLTRUE,ode)(nnP) )
	       (branch
		(split 1)
		((else*
		  (match "derivable_M_nqbool?(%%)(%%)" step (dl-nqboolder__))
		  (dl-assert)
		  (dl-subdift__$))))
	       (dl-subdift__$))
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
       (for@ nil
	     (match$ "%a{number} * %b"
	       step
	       (branch
		(case "FORALL(a:real, re: RealExpr): a * re = cnst(a) * re")
		((then@
		  (rewrite -1))
		 (then@
		  (hide-all-but 1)
		  (lemma "real_fun_ops[Environment].scal_function")
		  (expand "const_fun")
		  (expand "cnst"))))))
       (simplify-DIFT_Re-expression$))
      ((branch
	(split 1)
	((else
	  (dl-nqboolder__)
	  (dl-compute-ddt__))))
       (then
	(hide-all-but 1)
	(else* (prove-derivable_up-goal)
	       (for nil
		(then
		 (rewrite* drws)
		 (rewrite* drup)))))))))
  "Internal strategy. Applies DDL differentiation rules."
  "Applying dl-subdift__ helper")

;; @author M3
;; @notes Use instead of dl-subddt__
(defhelper dl-compute-ddt__ ()
  (then
   (match$ "pairwise_distinct_vars?(%%)"
	   step
	   (then (repeat (expand "pairwise_distinct_vars?"))
		 (repeat (expand "distinct_var?"))))
   (for@
    nil
    (match$
     "ddt(%a)(dlvar_index(%b))"
     step (then
	   (expand "ddt")
	   (match$
	    "IF dlvar_index(%c) = dlvar_index(%d) THEN %% ELSE %% ENDIF"
	    ;; if an IF-THEN-ELSE like this exists in the sequent, is because %c /= %d,
	    ;; otherwise, the implicit 'assert' applied during the last 'expand' would
	    ;; have simplified the IF-THEN-ELSE. @M3
	    step
	    (let ((match-str (format nil "^dlvar_index(~a) = dlvar_index(~a)$" "%d" "%c")))
	      (else (match$ match-str step (assert))
		    (try (typepred "%c")
			 (replace 1 :hide? t)
			 (try (typepred "%d") (replace 1 :hide? t) (skip)))))
	    
	    )))))
  "Internal stragty. Computes expressions of form ddt((: %% :))(dlvar_index(%))."
  "Applying dl-compute-ddt__ helper")

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

(defhelper simplify-DIFT_Re-expression ()
  (then
   ;; I had to define this tatic to use it with match below, because match
   ;; was having problems building the final step @M3 20231215
   (deftactic solve_dlvar_index_le_max_var ()
     (match$ 1 "dlvar_index(%a) <= max_var(%b)" step
	     (let ((leq-expr $bj)
		   (pvs-list (args1 (args2 leq-expr)))
		   (list (pvslist2list pvs-list))
		   (idx
		    (when (car list)
		      (loop for tuple-expr in (cdr list) for i
			    from 0 when
			    (string=
			     (format
			      nil
			      "~a"
			      (car (exprs tuple-expr)))
			     "%a")
			    return i))))
	       (if idx
		   (then
		    (hide-all-but 1)
		    (lemma "max_var_max")
		    (branch
		     (inst -1 "%b" idx)
		     ((then (simplify_nth)(assert))
		      (then (for@ nil (expand "length")(assert))))))
		 (let ((dummy (break "[simplify-DIFT_Re-expression] couldn't find index of %a in %b.")))(skip))))))
  (let ((dl-operators (list 'val 'cnst '+ '- '* '^^ '^ 'sqrt_safe_re 'div_safe_re))
	(dl-lemmas    (list "dl_dift_val" "dl_dift_const" "dl_dift_plus" (list "dl_dift_negative" "dl_dift_minus") "dl_dift_mult" "dl_dift_exp" "dl_dift_pow"
			"dl_dift_sqrt" "dl_dift_divsafe")))
  (match$
   + "DIFT_Re(%1,%2,%3)(%4)"
   step 
   (let ( ;; #+pvsdebug (dummy (break ">>> simplify-DIFT_Re-expression <<<"))
	 (lemma-name-per-operator (pairlis dl-operators dl-lemmas))
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
		    (branch
		     (inst? -1)
		     ((branch
		       (split -1)
		       ((then
			 (match$ "derivable_up?(%%)(%%)"
				 step (let
					  (#+pvsdebug
					   (dummy
					    (format t "~&[simplify-DIFT_Re-expression] Attemting prove-derivable_up-goal~%")))
				       (prove-derivable_up-goal$)))
			 (then (replace -1 :hide? t)
			       (simplify-DIFT_Re-expression$)))))
		      ;; TCC-branches produced by the instantiation
		      (solve_dlvar_index_le_max_var))))
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
		      (branch
		       (split -1)
		       ((then
			 ;; #+pvsdebug (let ((dummy (break ">2> simplify-DIFT_Re-expression <2<")))(skip))
			 (match$ "derivable_up?(%%)(%%)"
				step (prove-derivable_up-goal$))
			 (replace -1 :hide? t)))))
		     ((simplify-DIFT_Re-expression$)
		      (let((drws *dl-domain-rws*)
			   (drup *dl-derup-rws*))
			(then
			 (hide-all-but 1)
			 (else* (prove-derivable_up-goal)
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
	   (warning "Unexpected argument for DIFT_Re application: ~a" arg))))))))
  "Simplifies  DIFT_Re(%1,%2)(%3)"
  "Applying prove-predicate-on-re helper")

