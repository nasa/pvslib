;;
;; dl-solve strategy
;;



(defhelper dl-prove-quad_cnst? ()
  (then   
   (expand "quad_cnst?")
   (flatten)
   ;; var-name is in the list, so it's safe to repeat expand
   (for@ nil (expand "get_index"))
   (simplify_nth)
   (beta)
   (inst?))
  "Proves formulas of form quad_cnst?(%l{list})(dlvar_index(%x{name_})) assuming x is defined in the MapExprInj l. Assumes also that the hypothesis of pairwise disjoint variables are already installed as rewriting rules."
  "Applying dl-prove-quad_cnst?")

(defhelper dl-prove-not-in_map ()
  (then
   (expand "in_map")
   (skeep :preds? t)
   (repeat (expand "length"))
   (for@ nil (then (expand "nth")(lift-if)(assert))))
  "Proves that formulas of form in_map(%l{list})(dlvar_index(%x{name_})) are not true, assuming x is not defined in the MapExprInj l. Assumes also that the hypothesis of pairwise disjoint variables are already installed as rewriting rules."
  "Applying dl-prove-not-in_map")

(defun defined-in-MapExprInj? (var-name list-of-mapexpr )
  (loop for tuple-expr in list-of-mapexpr
	for i from 0
	when (string= (princ-to-string (car (exprs tuple-expr))) var-name)
	return i))

;; cnst_lins strategy
(defhelper dl-cnstlins (&optional (fnum 1))
  (then  (expand "cnst_lins?")
	 (branch
	  (unroll)
	  ((then
	    (flatten)
	    (simplify_nth)
	    (beta)
	    (match "cnst(%1) = cnst(%2)" step (inst?))
	    (match$ "val(%a) = cnst(%c) + val(%b)" 
		    step
		    (let((var-name "%a"))
		      (match$  "in_map(%d)(dlvar_index(%e))"
			      step (let ((in_map-expr $dj)
					 (pvs-list (args1 (operator in_map-expr)))
					 (lisp-list (pvslist2list pvs-list))
					 (in-map-case (defined-in-MapExprInj? var-name (cdr lisp-list))))
				     (then
				      (hide-all-but $dn)
				      (inst 1 "0" var-name)
				      (rewrite "cnst_val_0")
				      (flatten)
				      (if in-map-case
					  (dl-prove-quad_cnst?)
					(dl-prove-not-in_map)))))))
	    (match$ "%op(val(%a), cnst(%d)) = %op(cnst(%c), val(%b))" 
		    step
		    (let((var-name "%a")(actual-constant "%d"))
		      (match$  "in_map(%e)(dlvar_index(%))"
			       step (let ((in_map-expr $ej)
					  (pvs-list (args1 (operator in_map-expr)))
					  (lisp-list (pvslist2list pvs-list))
					  (in-map-case (defined-in-MapExprInj? var-name (cdr lisp-list))))
				      (then
				       (hide-all-but $en)
				       (inst 1 actual-constant var-name)
				       (branch
					(split 1)
					((rewrite "cnst_val_com")
					 (then
					  (flatten)
					  (if in-map-case
					      (dl-prove-quad_cnst?)
					    (dl-prove-not-in_map))))))))))))))
  "Determines if MapExprInj is made of constant and linear terms. Assumes that the hypothesis of pairwise disjoint variables are already installed as rewriting rules."
  "Checking if list is cnst_lins")

;; #TODO move to structures? @M3
(defstep simplify_nth (&optional (fnum *))
  (match$ fnum "nth(%a,%b{number})" step
	  (let ((nth-expr $aj)
		(pvs-list (args1 nth-expr))
		(index (args2 nth-expr))
		(list (pvslist2list pvs-list)))
	    (if (car list)
		(let ((pvs-elem (nth (number index) (cdr list)))
		      (case-str
		       (format nil "NOT (~a = ~a)" nth-expr pvs-elem))
		      (length-str
		       (format nil "NOT (~a < length(~a))" index
			       pvs-list)))
		  (branch (case length-str)
			  ((then (hide-all-but 1) (for@ nil (expand "length"))
				 (assert))
			   (branch (case case-str)
				   ((then (hide-all-but 1) (for@ nil (expand "nth")))
				    (then (hide -2) (replace -1 fnum :hide? t)))))))
	      (skip-msg "Couldn't represent pvs list in lisp"))))
  "Computes expressions of form nth(%{list},%{number}) in FNUM. FNUM must be a formula number or fnum collection symbol."
  "Applying simplify_nth")

(defhelper dl-calculate-is_cnst? (flabel)
  (let ((fnum (lisp (extra-get-fnum flabel)))) ;; workaround to use label in match statement 20231219 @M3
    (then
     (expand "is_cnst?" flabel)
     (simplify_nth)
     (beta flabel)
     (for@ nil
	   (then
	    (let ((fnum (lisp (extra-get-fnum flabel))))
	      (match fnum "(%op(%a,%b))(%c) = (%op(%a,%b))(%d)" step (expand "%op" fnum)))
	    (let ((fnum (lisp (extra-get-fnum flabel))))
	      (match fnum "cnst(%%)(%%)" step (expand "cnst" fnum)))
	    (let ((fnum (lisp (extra-get-fnum flabel))))
	      (match fnum "val(%%)(%%)" step
		   (then
		    (expand "val" fnum)
		    (expand "env_nat_shift" fnum))))))))
  "Decides formulas of form is_cnst?(%{list})(%{number}) = %{name}. Assumes FLABEL points to a formula of that form. Since this is an equality between booleans, after the application of this helper, FLABEL points to an antecedent or a consequent of form %{name}."
  "Applying dl-decide-is_cnst?")

(defhelper dl-assert-pairwise_distinct_vars? ()
  (match$ "pairwise_distinct_vars?"
	     step
	     (with-fresh-labels (pairwise-distinct-form $1n)
	       (repeat (expand "pairwise_distinct_vars?" pairwise-distinct-form))
	       (repeat (expand "distinct_var?" pairwise-distinct-form))
	       (flatten pairwise-distinct-form)
	       (assert)
	       (hide pairwise-distinct-form)))
  ""
  "Applying pairwise_distinct_vars?")

(defhelper dl-calculate-get_val_cnst_id_ex (flabel)
  (with-fresh-names (ode)
   (expand "get_val_cnst_id_ex" flabel)
   (simplify_nth)
   (beta flabel)
   (use "env_c_val")
   (replace -1 flabel :hide? t)
   (let ((fnum (lisp (extra-get-fnum flabel))))
     (match$ fnum "get_index(%a)(%%)" step (then (name ode "%a") (replace -1 flabel :hide? t))))
   (expand "val" flabel)
   (expand "env_nat_shift" flabel)
   (expand ode flabel)
   (for@ nil (expand "get_index" flabel)))
  "Decides formulas of form get_val_cnst_id_ex(%{list})(%{number}) = %{name}. Assumes FLABEL points to a formula of that form."
  "Applying dl-calculate-get_val_cnst_id_ex")

(defstep dl-calculate-Y_sol_ex (flabel)
  (let ((fnum (lisp (extra-get-fnum flabel)))) ;; workaround to use label in match statement 20231219 @M3
    (then 
     (expand "Y_sol_ex" flabel)
     (match$ fnum "%infix(is_cnst?(%a)(%b), is_val_not_in_map?(%a)(%b))" step
	     (with-fresh-names
	      (is_val_not_in_map? "is_val_not_in_map?(%a)(%b)" :tccs)
	      (reveal *is_val_not_in_map?*)
	      (expand "is_val_not_in_map?" *is_val_not_in_map?*)
	      (with-fresh-names
	       (is_const? "is_cnst?(%a)(%b)" :tccs)
	       (reveal *is_const?*)
	       (dl-calculate-is_cnst?$ *is_const?*)
	       (replace *is_const?* (flabel *is_val_not_in_map?*) :hide? t))
	      (let ((is_val_not_in_map?-fnum (extra-get-fnum *is_val_not_in_map?*)))
		(match$ is_val_not_in_map?-fnum
			"in_map_ex(%a)(%b)"
			step (let ((flabel *is_val_not_in_map?*))
			       (let ((fnum (lisp (extra-get-fnum flabel)))) ;; workaround to use label in match statement 20231219 @M3
				 (then
				  (simplify_nth fnum)
				  (for@ nil (expand "in_map_ex" flabel))
				  (beta flabel)
				  (for@ nil
					(then
					 (let ((fnum (lisp (extra-get-fnum flabel))))
					   (match fnum "(%op(%a,%b))(%c)" step (expand "%op" fnum))) ;; #TODO add support to unary operators @M3
					 (let ((fnum (lisp (extra-get-fnum flabel))))
					   (match fnum "cnst(%%)(%%)" step (expand "cnst" fnum)))
					 (let ((fnum (lisp (extra-get-fnum flabel))))
					   (match fnum "val(%%)(%%)" step
						  (then
						   (expand "val" fnum)
						   (expand "env_c" fnum)
						   (expand "env_nat_shift" fnum))))))
				  (dl-assert-pairwise_distinct_vars?))))))
	      ;; if FLABEL still contains the expression defined in *is_val_not_in_map?*,
	      ;; the expression is replaced by the calculated definition,
	      ;; otherwise the formula *is_val_not_in_map?* is hidden. @M3
	      (replace *is_val_not_in_map?* flabel :hide? t)
	      (hide *is_val_not_in_map?*)))
     (match$ fnum "get_val_cnst_id_ex(%a)(%b)" step
	    (with-fresh-names
	     (get_val_cnst_id_ex
	      "get_val_cnst_id_ex(%a)(%b)" :tccs)
	     (reveal *get_val_cnst_id_ex*)
	     (dl-calculate-get_val_cnst_id_ex$ *get_val_cnst_id_ex*)
	     (replace *get_val_cnst_id_ex* :dir rl :hide? t)))
     (beta flabel)
     (simplify_nth)
     (match fnum "val(%a{name})(enc_v(%b))" step
	    (then 
	     (use "env_c_val")
	     (replace -1 flabel :hide? t)))))
  "Decides formulas of form Y_sol_ex(%{list})(%{number}) = %{name}. Assumes FLABEL points to a formula of that form."
  "Applying dl-decide-Y_sol_ex")

(defstep dl-solve (&optional fnum (skolem-constant "t") (quiet? t))
  (let ((dlseq (or (is-dl-seq fnum) (error-format-if "No dL sequent found~@[ in fnum ~a~]." fnum)))
	(skolem-constant ;; check that SKOLEM-CONSTANT is actually fresh
	 (if (check-name skolem-constant)
	     (error-format-if "Provided skolem constant (~a) is not fresh.
                               Please provide a different one with the SKOLEM-CONSTANT parameter."
			      skolem-constant)
	   skolem-constant))
	(passed-checks (and dlseq skolem-constant)))
    (when passed-checks
      (with-fresh-labels
       (solution_lemma Z_def allruns_assign)
       (with-fresh-names
	((allruns_assign_expr))
	(let ((turn-rw-msg-on? (and quiet? (not *rewrite-msg-off*)))
	      (lemma-to-use (if (let ((lexpr (args1 (cdr dlseq)))) (= 0 (pp-length lexpr)))
				"solution_domain_ax_cnst_imp_zip_no_hyp"
			      "solution_domain_ax_cnst_imp_zip"))
	      (fnum (car dlseq)))
	  (then
	   (when quiet? (rewrite-msg-off))
	   (deftactic simplify_init_zip_sol (&optional (tac-fnum -1))
	     (for@ nil (then (expand "init_zip_sol" tac-fnum) (for@ nil (expand "length" tac-fnum)))))
	   (deftactic expand_in_map_ex (&optional (tac-fnum -1)) (for@ nil (expand "in_map_ex" tac-fnum)))
	   (deftactic lift_them_all () (for@ nil (lift-if)))
	   (deftactic simplify_evaluable_ites ()
	     (let ((ite (extra-get-expr '(~ -1 "%{if_}"))))
	       (when ite
		 (let ((guard (args1 ite)))
		   (then (eval-expr guard :quiet? t) (replace -1 :hide? t))))))
	   (lemma lemma-to-use)
	   (spread
	    (inst?)
	    ((then
	      (with-labels (skoletin) ((solution_lemma |Z_def| nil)))
	      (beta solution_lemma)
	      (branch
	      (split solution_lemma)
	      ((then (skip-msg "This branch is supposed to close automatically")(fail))
	       (then
		(hide-all-but (solution_lemma |Z_def| '-))
		(expand "zs" |Z_def|)
		(simplify_init_zip_sol |Z_def|)
		(for@ nil (simplify_nth))
		;; simplify Y_sol_ex(%%) expressions
		(let ((z_def-fnum (extra-get-fnum '|Z_def|))) ;; workaround to use label in match statement 20231219 @M3
		  (for@ nil (match$ z_def-fnum "Y_sol_ex(%a)(%b)"
				  step (with-fresh-names
					(Y_sol_ex "Y_sol_ex(%a)(%b)" :tccs)
					(reveal *Y_sol_ex*) 
					(dl-calculate-Y_sol_ex$ *Y_sol_ex*)
					(replace *Y_sol_ex* :dir rl :hide? t)
					(beta |Z_def|)))))
		(expand "UPTO" solution_lemma)
		(dl-skolem skolem-constant solution_lemma)
		(dl-flatten solution_lemma)
		(rewrite "dl_assignb" :target-fnums solution_lemma)
		(rewrite "dl_assignb_restricted" :target-fnums solution_lemma)
		(let ((trivial-subst ;; a trivial substitution occurs on a bexpr DLBOOL(TRUE)
		       (extra-get-expr (list '~ (extra-get-fnum solution_lemma)
					     "DLFORALL(LAMBDA(%%): DLIMPLIES(%%,SUB(%%)(DLBOOL(TRUE))))"))))
		  (if trivial-subst
		      (then
		       (rewrite "dl_sub_bool_restricted" :target-fnums solution_lemma)
		       (replace Z_def :hide? t)
		       (beta 1)
		       (dl-subs))
		    (then ;; on a more complex bexpr, the substitution is done programmatically
		     (copy solution_lemma)
		     (replace Z_def solution_lemma :hide? t)
		     (beta solution_lemma)
		     (spread
		      (let ((dlforall (extra-get-expr (list '~ (extra-get-fnum solution_lemma)
							    "DLFORALL(LAMBDA(%%): DLIMPLIES(%%,%%))")))
			    (subst-dlforall (apply-substitution-on-dlforall dlforall))
			    (dlforall-z (extra-get-expr '(~ 1 "DLFORALL(LAMBDA(%%): DLIMPLIES(%%,%%))")))
			    (case-str (format nil "(~a) = (~a)" dlforall-z subst-dlforall)))
			(case case-str))
		      ((then
			(hide solution_lemma)
			(replace -1 :hide? t)
			(reveal Z_def)
			(replace Z_def :hide? t)
			(beta 1)
			(dl-subs))
		       (then
			(hide-all-but 1)
			(with-tccs (decompose-equality))
			(expand "DLFORALL")
			(spread ;; this "in-line lemma" helps to call dl-subs just once on this branch of the proof
			 (case "FORALL(P,Q: PRED[real]): ((FORALL(x:real): P(x) = Q(x)) IMPLIES ( (FORALL(x:real): P(x)) = (FORALL(x:real): Q(x)) ))")
			 ((then
			   (with-tccs(inst?))
			   (assert)
			   (hide-all-but 1)
			   (skeep)
			   (reveal Z_def)
			   (replace -1 :hide? t)
			   (beta 1)
			   (dl-subs))
			  (then
			   (hide-all-but 1)
			   (skeep)
			   (iff)
			   (spread (split)
				   ((then (flatten) (skeep) (inst?) (inst?) (assert))
				    (then (flatten) (skeep) (inst?) (inst?) (assert)))))))
			))))))))))
	     (then (dl-assert-pairwise_distinct_vars?) (hide-all-but 1) (dl-cnstlins))))
	   (when turn-rw-msg-on? (rewrite-msg-on))))))))
  ""
  "Applying dl-solve")

;;; Substitutions on lambda expressions
(defun apply-substitution-on-dlforall (dlforall)
  ;; dlforall assumed to have the form: DLFORALL(LAMBDA(%%): DLIMPLIES(%%,SUB(%%)(%%)))
  (let*((lambda-expr (args1 dlforall)) ;; LAMBDA(%%): DLIMPLIES(%%,SUB(%%)(%%))
	(dlimplies (expression lambda-expr)) ;; DLIMPLIES(%%,SUB(%%)(%%))
	(subs-app  (args2 dlimplies))  ;; SUB(%%)(%%)
	(new-subs-app  (apply-substitution-on-subs-app subs-app))
	(new-dlimplies (make-application (operator dlimplies) (args1 dlimplies) new-subs-app))
	(new-lambda (make-lambda-expr (bindings lambda-expr) new-dlimplies)))
    (make-application (operator dlforall) new-lambda)))

(defun apply-substitution-on-subs-app (subs-app) ;; SUB(%sigma)(re1 >= re2)
  (let*((subs-op   (operator subs-app)) ;; SUB(%sigma)
	(sigma     (args1 subs-op))     ;; %sigma
	(bool-expr (args1 subs-app)))   ;; re1 >= re2
    ;; once I know it's a SUB(Z(x))(re1 >= re2),
    ;; I have to create a SUB_Re(Z(x))(re1) >= SUB_Re(Z(x))(re2)
    (let ((arg1 (args1 bool-expr))
	  (arg2 (args2 bool-expr)))
      (let*((new-subs-op ;; SUB_Re(Z(x))
	     (make-application (extra-get-expr "SUB_Re") (copy sigma)))
	    (new-arg1    
	     (resolve-sub-re arg1 new-subs-op))
	    (new-arg2    
	     (resolve-sub-re arg2 new-subs-op)))
	(make-application (operator bool-expr) new-arg1 new-arg2)))))

(defun resolve-sub-re (re-expr sub-sigma)
  ;; (format t "~%[resolve-sub-re] re-expr ~a sub-sigma ~a~%"re-expr sub-sigma) ;; debug
  ;; the params are assumed to be part of a SUB_Re application
  ;; of this form: SUB_Re(<sigma>)(<re>), where SUB_Re(<sigma>) is sub-sigma
  ;; and <re> is re-expr.
  (let*((re-op (id (operator re-expr))))
    (cond
     ((= 2 (length (arguments re-expr)))
      (make-application
       (copy (operator re-expr))
       (resolve-sub-re (args1 re-expr) sub-sigma)
       (if (eq '^ re-op)
	   (args2 re-expr)
	 (resolve-sub-re (args2 re-expr) sub-sigma))))
     ((= 1 (length (arguments re-expr)))
      (cond
       ;; <re> = const(<real>)
       ((eq 'cnst re-op) (copy re-expr))
       ;; <re> = val(<int>)
       ((eq 'val re-op)
	(let ((var   (args1 re-expr))
	      (sigma (args1 sub-sigma)))
	  (let ((res (evaluate_sub_mapvar (cdr (pvslist2list sigma)) var)))
	    (or res re-expr))))
       ;; otherwise
       (t (make-application (copy sub-sigma) re-expr))))
     (t (error "Unexpected arity for RealExpr ~a" re)))))

(defun evaluate_sub_mapvar (mapexprinj-as-list var-idx)
  (when mapexprinj-as-list
    (if (eq (id (car (exprs (car mapexprinj-as-list)))) (id var-idx))
	(cadr (exprs (car mapexprinj-as-list)))
      (evaluate_sub_mapvar (cdr mapexprinj-as-list) var))))
;;;

(defhelper dl-simplify-zip-sol (fnum)
  (let ((fnum (extra-get-fnum fnum)))
    (then
     (for@ nil
      (match fnum "%1=zs(%2,Y_sol_ex(%%))"
	     step (let((name (args1 $1j))
		       (excluding (cons name (get-de-bruijn-names(args2 $1j)))))
		    (then
		     (expand "zs")
		     (expand "Y_sol_ex")
		     (grind :exclude excluding)))))
     (for@ nil
      (match fnum "IF %1 THEN %2 ELSE %3 ENDIF" step (then (eval-expr "%1" :quiet? t) (replace -1 * :hide? t) (assert))))
     (for@ nil
      (match fnum "get_index(%1)(%2)" step (then (eval-expr $1s :quiet? t)(replace -1 * :hide? t))))
     (match fnum "nth(%1,%2)"
	    step  (for@ nil (expand "nth" fnum)))
     (dl-pp-zip-sol fnum)))
  "Simplifies the equality in FNUM if it has the form NAME = zs(ODE, Y_sol_ex(ODE))"
  "Simplifying zipped solution")

(defhelper dl-pp-zip-sol (fnum)
  (match$ fnum "%1 = %2{lambda}" 
	  step (let ((original-formula $1j)
		     (map-expr-name     (args1 original-formula))
		     (original-lambda   (args2 original-formula))
		     (original-pvs-list (expression original-lambda))
		     (pplist (pvslist2list original-pvs-list)))
		 (if (and pplist (car pplist))
		     (let ((list-of-exprs (cdr pplist))
			   (pvs-list-expr     (make!-list-expr list-of-exprs (type(car list-of-exprs))))
			   (new-lambda-expr   (make!-lambda-expr 
					       (bindings original-lambda) 
					       pvs-list-expr 
					       (return-type original-lambda)))
			   (case-str (format nil "(%2) = ~a" new-lambda-expr)))
		       (branch 
			(case-replace case-str :hide? t)
			((skip)
			 (then (skeep)(eval-formula 1 :quiet? t)))))
		   (let ((dummy (error-format-if "Cannot transform ~a to a list-expr" original-pvs-list)))
		     (fail)))))
  "Pretty-print equalities in FNUM of form NAME = LAMBDA(VAR: real) -> MapExprInj : cons( ... )
   into NAME = LAMBDA(VAR: real) -> MapExprInj : (: ... :)."
  "Pretty printing zip solution lambda expression")

