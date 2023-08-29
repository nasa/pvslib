;;
;; dl-solve strategy
;;

;; TODO downgrade to defhelper?
;; cnst_lins strategy
(defstep dl-cnstlins (&optional (fnum 1))
  ;; Assuming cnst_lins is in first formula
  (then  (hide-all-but fnum)
         ;; expand cnst_lins
	 (expand "cnst_lins?")
	 ;; unroll by index, and on each branch do the same thing
	 (branch
	  (unroll)
	  ((then
	    (flatten)
	    (for nil (expand "nth"))
	    (try  ;; Match for the constant case
	     (match 1 "cnst(%1) = cnst(%2)" step (inst?)) (assert)
	     ;; If that doesn't work, match for the val case
	     (try (match 2 "val(%1) = cnst(%2) + val(%3)" step
			 (then
			  (inst 2 "0" "%1")
			  (rewrite "cnst_val_0")
			  (flatten)
			  (expand "quad_cnst?")
			  (flatten)))
		  (try (eval-formula -1 :quiet? t)
		       (assert) 
		       (match "get_index( %1 )(%2)" step
			      (then (eval-expr "get_index(%1)(%2)" :quiet? t)(replace -1)(hide -1) ))) 
		  ;; other case
		  (try (then
			(rewrite "cnst_val_com")
			(match 2 "cnst(%1) + val(%2) = cnst(%2) + val(%3)" step
			       (then (inst 2 "%1" "%2")
				     (rewrite "cnst_val_0")
				     (flatten)
				     (expand "quad_cnst?")
				     (flatten))))
		       (try (eval-formula -1 :quiet? t) (assert) 
			    (match "get_index( %1 )(%2)" step
				   (then (eval-expr "get_index(%1)(%2)" :quiet? t)(replace -1)(hide -1))))
		       (assert))))
	    (for nil (expand "nth"))
	    (try (match 2 "cnst(%1) = cnst(%2)" step (inst 2 "%1")) (assert)
		 (try (match 3 "val(%1) = cnst(%2) + val(%3)" step
			     (then (inst 3 "0" "%1")
				   (rewrite "cnst_val_0")
				   (flatten)
				   (expand "quad_cnst?")
				   (flatten)))
		      (try (eval-formula -2 :quiet? t) (assert) 
			   (match "get_index( %1 )(%2)" step
				  (then (eval-expr "get_index(%1)(%2)" :quiet? t)(replace -1)(hide -1))))
		      ;; other case
		      (try (then (rewrite "cnst_val_com")
				 (match 3 "cnst(%1) + val(%2) = cnst(%2) + val(%3)" step
					(then (inst 2 "%1" "%2")
					      (rewrite "cnst_val_0")
					      (flatten)
					      (expand "quad_cnst?")
					      (flatten))))
			   (try (eval-formula -2 :quiet? t) (assert) 
				(match "get_index( %1 )(%2)" step
				       (then (eval-expr "get_index(%1)(%2)" :quiet? t)(replace -1)(hide -1)))))))))))
  "Determines if MapExprInj is made of constant and linear terms. Used in dl-solve."
  "Checking if list is cnst_lins")

;; (defstep dl-solve (&optional (quiet? t))
;;   (let ((turn-rw-msg-on? (and quiet? (not *rewrite-msg-off*))))
;;     (then
;;      (when quiet? (rewrite-msg-off))
;;      (with-fresh-labels
;;       (lemma-lbl dlseq assigns zip-sol)
;;       (spread
;;        ;; Apply lemma
;;        (with-labels (dl-lemma__ "solution_domain_ax_cnst_imp_zip" 1 1 :pp? pp? ) (lemma-lbl))
;;        ((then
;; 	 (with-labels (skoletin* lemma-lbl) ((dlseq assigns zip-sol UNEXPECTED)))
;; 	 (dl-skolem "t" dlseq)
;; 	 (expand "UPTO")
;; 	 (dl-flatten dlseq)
;; 	 ;; @M3 #TODO double-check the following match is really needed.
;; 	 ;;           It does nothing on test.test_cnst_val_lins_complex.
;; 					; (match "ALLRUNS(ASSIGN(Z(t)),%1)"
;; 					; 	      step (let ((AZ (freshname "A")))
;; 					; 		     (name AZ "ALLRUNS(ASSIGN(Z(t)),%1)")))
;; 	 (with-focus-on zip-sol (dl-simplify-zip-sol$ zip-sol))
;; 	 (replace zip-sol assigns :hide? t)
;; 	 (replace assigns dlseq :hide? t)
;; 	 ;; @M3 #TODO same here
;; 	 ;; (rewrite "dl_assignb")
;; 	 ;; (dl-subs hp?)
;; 	 ;; (expand "same_var")
;; 	 (delabel (dlseq assigns zip-sol)))
;; 	;; Prove cnstlins of ODE
;; 	(dl-cnstlins))))
;;      (when turn-rw-msg-on? (rewrite-msg-on))))
;;   ""
;;   "Solve it!")

;; #TODO investigate/remove @M3
(defstep BROKEN-dl-solve (&optional fnum (skolem-constant "t") (quiet? t))
  (let ((dlseq (or (is-dl-seq fnum) (error-format-if "No dL sequent found~@[ in fnum ~a~]." fnum)))
	(skolem-constant ;; check that SKOLEM-CONSTANT is actually fresh
	 (if (check-name skolem-constant)
	     (error-format-if "Provided skolem constant (~a) is not fresh.
                               Please provide a different one with the SKOLEM-CONSTANT parameter."
			      skolem-constant)
	   skolem-constant))
	(passed-checks (and dlseq skolem-constant)))
    (when passed-checks
      (let ((turn-rw-msg-on? (and quiet? (not *rewrite-msg-off*)))
	    (lemma-to-use (if (let ((lexpr (args1 (cdr dlseq)))) (= 0 (pp-length lexpr)))
			      "solution_domain_ax_cnst_imp_zip_no_hyp"
			    "solution_domain_ax_cnst_imp_zip")))
	(then
	 (when quiet? (rewrite-msg-off))
	 (deftactic simplify_init_zip_sol nil
	   (for nil (then (expand "init_zip_sol") (for nil (expand "length")))))
	 (deftactic expand_in_map_ex nil (for nil (expand "in_map_ex")))	 
	 (deftactic lift_them_all nil (for nil (lift-if)))
	 (deftactic simplify_evaluable_ites nil
	   (for nil
	    (match "%a{if_}" step
		   (let ((ite $aj) (guard (args1 ite)))
		     (then (eval-expr guard :quiet? t) (replace -1 :hide? t))))))
	 (deftactic simplify_Y_sol_ex nil
	   (for nil
	    (then (expand "Y_sol_ex" -1 1) (expand "get_val_cnst_id_ex")
		  (expand "is_val_not_in_map?") (expand "is_cnst?")
		  (expand_in_map_ex) (simplify_nth) (beta)
		  (for nil (rewrites "env_nat_shift_cnst"))
		  (rewrites ("env_nat_shift_0_val"
			     "env_c_val"
			     "env_nat_shift_1_val"))
		  (match "%a{if_}" step
			 (let ((ite $aj) (guard (args1 ite)))
			   (then (eval-expr guard :quiet? t) (replace -1 :hide? t))))
		  (match "get_index(%a{list})(%)" step
			 (then (eval-expr $aj :quiet? t) (replace -1 :hide? t) (simplify_nth)))
		  (beta))))
	 (lemma lemma-to-use)
	 (spread
	  (inst?)
	  ((then
	    (with-fresh-labels
	     (solution_lemma Z_def allruns_assign)
	     (then
	      (with-labels (skoletin) ((solution_lemma Z_def nil)))
	      (beta solution_lemma)
	      (split solution_lemma)
	      (hide-all-but (solution_lemma '-))
	      (expand "UPTO" solution_lemma)
	      (with-fresh-names
	       ((allruns_assign_expr))
	       (then 
		(dl-skolem skolem-constant solution_lemma)
		(dl-flatten solution_lemma)
		(let ((tgt-expr (format nil "ALLRUNS(ASSIGN(Z(~a)),%%)" skolem-constant)))
		 (match tgt-expr step
		  (let ((form $1j)) (with-labels
		   (name allruns_assign_expr form)
		   allruns_assign))))
		(replace allruns_assign)
		(replace Z_def allruns_assign)
		(label "dlseq" solution_lemma)
		(hide "dlseq")
		(hide Z_def)
		(expand "zs" allruns_assign)
		(simplify_init_zip_sol)
		(simplify_Y_sol_ex)
		(rewrite "dl_assignb")
		(dl-subs :hp? nil)
		(lift_them_all)
		(simplify_evaluable_ites)
		(reveal dlseq)
		(replace allruns_assign "dlseq" rl)
		(hide allruns_assign))))))
	   (then (hide-all-but 1) (dl-cnstlins))))
	 (when turn-rw-msg-on? (rewrite-msg-on))))))
  ""
  "Solve it!")

;; #TODO move to structures? @M3
(defstep simplify_nth ()
  (match$ "nth(%a{list},%b{number})" step
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
			  ((then (hide-all-but 1) (for nil (expand "length"))
				 (assert))
			   (branch (case case-str)
				   ((then (hide-all-but 1) (for nil (expand "nth")))
				    (then (hide -2) (replace -1 :hide? t)))))))
	      (skip-msg "Couldn't represent pvs list in lisp"))))
  ""
  "")

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
	     (for nil (then (expand "init_zip_sol" tac-fnum) (for nil (expand "length" tac-fnum)))))
	   (deftactic expand_in_map_ex (&optional (tac-fnum -1)) (for nil (expand "in_map_ex" tac-fnum)))
	   (deftactic lift_them_all () (for nil (lift-if)))
	   (deftactic simplify_evaluable_ites ()
	     (let ((ite (extra-get-expr '(~ -1 "%{if_}"))))
	       (when ite
		 (let ((guard (args1 ite)))
		   (then (eval-expr guard :quiet? t) (replace -1 :hide? t))))))
	   (deftactic simplify_Y_sol_ex (&optional (tac-fnum -1))
	     (then (expand "Y_sol_ex" tac-fnum 1)
		   (expand "get_val_cnst_id_ex" tac-fnum)
		   (expand "is_val_not_in_map?" tac-fnum)
		   (expand "is_cnst?" tac-fnum)
		   (expand_in_map_ex tac-fnum)
		   (simplify_nth)
		   (beta tac-fnum)
		   (for nil (rewrites "env_nat_shift_cnst" :fnums tac-fnum))
		   (rewrites ("env_nat_shift_0_val"
			      "env_c_val"
			      "env_nat_shift_1_val") :fnums tac-fnum)
		   (simplify_evaluable_ites)
		   (let ((actual-fnum (lisp (extra-get-fnum tac-fnum))))
		     (match actual-fnum "get_index(%a{list})(%)" step
			  (then (eval-expr $aj :quiet? t) (replace -1 :hide? t) (simplify_nth))))
		   (beta tac-fnum)))
	   (lemma lemma-to-use)
	   (spread
	    (inst?)
	    ((then
	      (with-labels (skoletin) ((solution_lemma Z_def nil)))
	      (beta solution_lemma)
	      (split solution_lemma)
	      (hide-all-but (solution_lemma Z_def '-))
	      (expand "zs" Z_def)
	      (simplify_init_zip_sol |Z_def|)
	      (for nil (simplify_nth))
	      (for nil (simplify_Y_sol_ex Z_def))
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
		     (dl-subs :hp? nil))
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
		      (dl-subs :hp? nil))
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
			 (dl-subs :hp? nil))
			(then
			 (hide-all-but 1)
			 (skeep)
			 (iff)
			 (spread (split)
				 ((then (flatten) (skeep) (inst?) (inst?) (assert))
				  (then (flatten) (skeep) (inst?) (inst?) (assert)))))))
		      )))))))
	     (then (hide-all-but 1) (dl-cnstlins))))
	   (when turn-rw-msg-on? (rewrite-msg-on))))))))
  ""
  "Solve it!")

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
     (for nil
      (match fnum "%1=zs(%2,Y_sol_ex(%%))"
	     step (let((name (args1 $1j))
		       (excluding (cons name (get-de-bruijn-names(args2 $1j)))))
		    (then
		     (expand "zs")
		     (expand "Y_sol_ex")
		     (grind :exclude excluding)))))
     (for nil
      (match fnum "IF %1 THEN %2 ELSE %3 ENDIF" step (then (eval-expr "%1" :quiet? t) (replace -1 * :hide? t) (assert))))
     (for nil
      (match fnum "get_index(%1)(%2)" step (then (eval-expr $1s :quiet? t)(replace -1 * :hide? t))))
     (match fnum "nth(%1,%2)"
	    step  (for nil (expand "nth" fnum)))
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

