(defparameter *tarski-invalid-forms* nil) ;; List of invalid forms

(defun tarski-relation (expr &optional neg)
  (is-function-expr
   expr
   (if neg '(> < = >= <= /=) '(<= >= /= < > =))))

;; Return a list (n e1 e2) where e1 and e2 are atomic expressions and n is its
;; (coded) relation representing the relation expression e. Relations are coded as follows:
;; 0 (=), 1 (>), 2 (<), 3 (/=), 4 (>=), 5 (<=)
;; If b is negative, expression is an interval relation, i.e., ##. In any other case, n is nil
(defun tarski-atomic-rel-expr (expr &optional neg)
  (if (extra-negation expr)
      (tarski-atomic-rel-expr (args1 expr) (not neg))
    (let ((r (1- (length (tarski-relation expr neg)))))
      (cond
       ((>= r 0)
	(cond ((is-function-expr (args1 expr) 'abs)
	       (if (member r '(2 5))
		   (cons r (arguments expr))
		 (cons nil expr)))
	      ((is-function-expr (args2 expr) 'abs)
	       (if (member r '(1 4))
		   (cons (1+ r) (reverse (arguments expr)))
		 (cons nil expr)))
	      (t (cons r (arguments expr)))))
       ((and (not neg) (is-function-expr expr "##"))
	(let ((val (extra-add-evalexpr (args2 expr))))
	  (if (record-expr? val)
	      (cons -1 (list (args1 expr) val))
	    (cons nil expr))))
       (t (cons nil expr))))))

;; Return a list of pairs (str.(n.a)), where str is a string representation of
;; atomic expression a and n is the code of its relation wrt to 0
(defun tarski-valid-forms-rec (exprs vars strict accum)
  (if (null exprs) accum
    (let* ((e    (car exprs))
	   (xprs (cdr exprs))
	   (re   (tarski-atomic-rel-expr e))
	   (r    (car re)))
      (cond
       ((null r)
	(push (cdr re) *tarski-invalid-forms*)
	(unless strict
	  (tarski-valid-forms-rec xprs vars strict accum)))
       ((>= r 0)
	(let* ((e0    (nth 1 re))
	       (e1    (if (is-function-expr e0 'abs) (args1 e0) e0))
	       (e2    (nth 2 re))
	       (conj1 (sturm-expr-wrt0 e1 e2))
	       (pe1   (catch '*sturm-error*
			(cons (sturm-poly-expr-rec conj1 vars) r))))
	  (cond ((null pe1) 
		 (push conj1 *tarski-invalid-forms*)
		 (unless strict
		   (tarski-valid-forms-rec xprs vars strict accum)))
		((is-function-expr e0 'abs)
		 (let* ((conj2 (sturm-expr-wrt0 e1 e2 t))
			(pe2   (cons (sturm-poly-expr-rec conj2 vars) (1- r))))
		   (tarski-valid-forms-rec xprs vars strict
					   (cons pe2 (cons pe1 accum)))))
		(t (tarski-valid-forms-rec xprs vars strict
					   (cons pe1 accum))))))
       (t (let* ((e1    (nth 1 re))
		 (e2    (nth 2 re))
		 (lb    (get-expr-from-obj e2 'lb))
		 (ub    (get-expr-from-obj e2 'ub))
		 (conja (when ub (sturm-expr-wrt0 e1 ub)))
		 (conjb (when lb (sturm-expr-wrt0 e1 lb))))
	    (cond
	     ((and conja conjb)
	      (let* ((ba  (get-expr-from-obj e2 'bounded_above))
		     (bb  (get-expr-from-obj e2 'bounded_below))
		     (ca  (get-expr-from-obj e2 'closed_above))
		     (cb  (get-expr-from-obj e2 'closed_below))
		     (ra  (if (or (null ca) (extra-is-true ca)) 5 2))
		     (rb  (if (or (null cb) (extra-is-true cb)) 4 1))
		     (pea (catch '*sturm-error*
			    (cons (sturm-poly-expr-rec conja vars) ra)))
		     (peb (catch '*sturm-error*
			    (cons (sturm-poly-expr-rec conjb vars) rb))))
		(cond ((or (null pea) (null peb))
		       (push (cdr re) *tarski-invalid-forms*)
		       (unless strict
			 (tarski-valid-forms-rec xprs vars strict accum)))
		      (t (let ((acc (append
				     (when (or (null ba) (extra-is-true ba)) (list pea))
				     (when (or (null bb) (extra-is-true bb)) (list peb))
				     accum)))
			   (tarski-valid-forms-rec xprs vars strict acc))))))
	     (t (push (cdr re) *tarski-invalid-forms*)
		(unless strict
		  (tarski-valid-forms-rec xprs vars strict accum))))))))))

(defun tarski-valid-forms (exprs vars &optional strict)
  (setq *tarski-invalid-forms* nil)
  (setq *sturm-var* nil)
  (extra-reset-evalexprs)
  (tarski-valid-forms-rec exprs vars strict nil))

(defstep tarski (&optional (fnums *) var (preds? t) dont-fail?)
  (let ((fns    (extra-get-fnums fnums))
	(fn     (if (equal (length fns) 1) (car fns) 0))
	(expr   (when (/= fn 0)
		  (let ((e (extra-get-formula-from-fnum fn)))
		    (if preds? (lift-predicates-in-quantifier e (list *real*)) e))))
	(quant  (cond ((forall-expr? expr) 1)
		      ((exists-expr? expr) -1)
		      (t 0))) ;; forall: quant > 0, exists: quant < 0, none: 0
	(vars   (if (/= quant 0)
		    (mapcar #'(lambda (x) (format nil "~a" (id x)))
			    (bindings (extra-get-formula-from-fnum fn)))
		  (enlist-it var)))
	(fall   (>= (* fn quant) 0))
	(unqexpr  (when (/= quant 0) (expression expr)))
	(conjs  (if (/= quant 0)
		    (let ((exprs (get-ands-expr unqexpr (< quant 0))))
		      (tarski-valid-forms exprs vars (not fall)))
		  (let ((exprs (get-ands-expr
				(mk-disjunction (mapcar #'formula (extra-get-seqfs fns)))
				nil)))
		    (tarski-valid-forms exprs vars))))
	(invfms *tarski-invalid-forms*)
	(tkvar  *sturm-var*)
	(qvars  (when (/= quant 0) vars))
	(msg    (cond ((null tkvar)
		       (format nil "No variable found in formulas ~a." fnums))
		      ((null conjs)
		       (format nil "The following formula doesn't belong to a system of polynomial constraints on ~a
supported by this strategy:~%~{~a~%~}"
			       tkvar invfms))
		      ((and (< (* fn quant) 0) (> (length qvars) 1))
		       (format nil "Formula ~a is not simply quantified." fn))
		      ((not (check-name "TarskiStrategy__"))
		       (format nil "This strategy requires importing Tarski@strategies.")))))
    (if msg
	(printf "~a" msg)
      (then
       (tarski__$ fnums fall conjs tkvar qvars preds?)
       (when invfms
	 (printf "The following formulas don't belong to a system of polynomials constraints on ~a
and were not considered by this strategy:~%~{~a~%~}"
		 tkvar invfms))
       (printf "Sequent formed by formulas in ~a~:[, without considering typing information, may not~; doesn't~] hold.~%" 
	       fnums preds?)
       (unless dont-fail? (fail)))))
  "[Tarski] Applies decision procedure for univariate polynomial based on Tarski's Theorem
to formulas in FNUM. Each formula denoted by FNUM is expected to have the form pi Ri qi,
where pi and qi are polynomials on variable VAR and Ri is a relation in {<,<=,>,>=,=,/=}.
If FNUM denotes a simply quantified formula, that formula is expected to have one of the forms
- EXISTS (VAR:real) : p0 R0 q0 AND ... AND pn Rn qn
- FORALL (VAR:real) : p0 R0 q0 AND ... AND pi Ri qi IMPLIES pj Rj qj OR ... OR pn Rn qn.
If variable VAR is not provided, it is inferred by the strategy from the formulas in FNUM. Type
predicates are introduced as hypotheses when PREDS? is t. If DONT-FAIL? is set to t,
strategy skips instead of failing when sequent cannot be discharged."
  "Applying Tarski's Theorem to sequent formed by formulas in ~a")

(defhelper tarski_polylist__ (name expr labp labd)
  (let ((nn   (freshname "plst"))
	(estr (format nil "length[rat](~a)-1" nn)))
    (then
     (name-label name expr :hide? t)
     (eval-expr name)
     (name-label nn (! -1 r) :hide? t)
     (label labp -1)
     (eval-expr estr)
     (label labd -1)
     (replace -2 -1 :dir rl)))
  "[Tarski] Internal strategy." "")

(defhelper tarski_polynomial__ (skname skfn n name names)
  (let ((castr (format nil "~a = ~a" skname n))
	(exstp (cons 'expand* names))
	(rws   *sturm-rews*))
    (then@
     (if skname 
	 (case-replace castr)
       (then
	(copy skfn)
	(hide skfn)
	(inst * n)))
     exstp
     (rewrite "polylist_eval" :dir rl)
     (expand name)
     (rewrite* rws)
     (assert)
     (unless skname (reveal skfn))))
  "[Tarski] Internal strategy." "")
   
(defhelper tarski__ (fnums fall exprs var qvars preds?)
  (with-fresh-labels
   ((fnums! fnums) (labp!) (labd!) (labpred!))
   (hide-all-but fnums!)
   (let ((predvar (unless qvars preds?)))
     (then
      (when predvar
	(discriminate (typepred var) labpred!))
      (let ((predexprs (when predvar
			 (get-ands-expr
			  (mk-disjunction (mapcar #'formula (extra-get-seqfs labpred!)))
			  nil)))
	    (conjs (tarski-valid-forms-rec predexprs (list var) nil exprs))
	    (labp  (list 'quote labp!))
	    (labd  (list 'quote labd!))
	    (n     (1- (length conjs)))
	    (names (freshnames "pl" (1+ n)))
	    (nes   (pair-lists names conjs))
	    (polyl (extra-lambda-list
		    (mapcar #'(lambda (x) (format nil "list2array[rat](0)(~a)" x)) names)
		    "zero_pol"))
	    (degl  (extra-lambda-list
		    (mapcar #'(lambda (x) (format nil "length[rat](~a)-1" x)) names) 0))
	    (rell  (extra-lambda-list (mapcar #'cdr conjs) 0)))
	(then
	 (mapstep #'(lambda (x)`(tarski_polylist__ ,(car x) ,(cadr x) ,labp ,labd)) nes)
	 (with-fresh-names
	  ((polyl_ polyl) (degl_ degl) (rell_ rell) (j_))
	  (lemma "tarski_def")
	  (spread
	   (inst -1 rell_ n degl_ polyl_)
	   ((spread
	     (split -1)
	     ((then (expand degl_ -1 2)
		    (replaces labd! :in -1)
		    (expand polyl_ -1 2)
		    (replaces labp! :in -1)
		    (with-fresh-labels
		     ((ex! -1 :tccs) (eqs!))
		     (with-fresh-names
		      ((ps_ (! ex! 2 2)) (ds_ (! ex! 2 3)))
		      (hide *ex!-tccs*)
		      (eval-expr (! -1 2))
		      (replaces -1 -2)
		      (prop)
		      (let ((instp (> (extra-get-fnum ex!) 0))
			    (skolv (when qvars (freshnames "x" (length qvars))))
			    (instv (if qvars
				       (let ((pns (pair-lists qvars skolv)))
					 (cdr (assoc var pns :test #'string=)))
				     var))
			    (skolfn (when qvars (if fall fnums! ex!)))
			    (instfn (if fall ex! fnums!))
			    (valid  (iff instp fall))
			    (z2n    (pair-lists (fromto 0 n) names))
			    (qsknm  (when fall (list 'quote j_)))
			    (qskfn  (when qvars (list 'quote skolfn)))
			    (qnms   (list 'quote (list "rel5" polyl_ degl_ rell_)))
			    (eqs    (extra-evalexprs)))
			(when valid
			  (if fall
			      (then
			       (when qvars (skolem skolfn skolv :skolem-typepreds? preds?))
			       (inst instfn instv)
			       (skolem instfn j_ :skolem-typepreds? t)
			       (extra-evalexprs$ eqs)
			       (expand* "[||]" "##" "contains?")
			       (rewrite* ("abs_lt" "abs_le" "abs_gt" "abs_ge" "lt_abs" "le_abs" "gt_abs" "ge_abs"))
			       (flatten)
			       (mapstep@ #'(lambda (x)`(tarski_polynomial__
							,qsknm ,qskfn ,(car x) ,(cdr x) ,qnms))
					 z2n)
			       (hide ex! fnums!) 
			       (assert))
			    (then
			     (skolem skolfn skolv)
			     (mapstep@ #'(lambda (x)`(tarski_polynomial__
						      ,qsknm ,qskfn ,(car x) ,(cdr x) ,qnms))
				       z2n)
			     (hide ex!)
			     (extra-evalexprs$ eqs eqs!)
			     (inst instfn instv)
			     (reveal eqs!)
			     (replaces eqs!)
			     (expand* "[||]" "##" "contains?")
			     (rewrite* ("abs_lt" "abs_le" "abs_gt" "abs_ge" "lt_abs" "le_abs" "gt_abs" "ge_abs"))
			     (flatten)
			     (assert))))))))
	      (then (hide-all-but (labd! labp! 1))
		    (expand* polyl_ degl_)
		    (replaces (labd! labp!))
		    (eval-formula))))
	    (then (hide-all-but (labd! 1))
		  (expand degl_)
		  (replaces -)
		  (skosimp)
		  (lift-if)
		  (assert))
	    (then (hide-all-but 1)
		  (expand rell_)
		  (skosimp)
		  (lift-if)
		  (assert))))))))))
  "[Tarski] Internal strategy." "")
