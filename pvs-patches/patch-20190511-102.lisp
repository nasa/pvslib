;;
;; field.lisp
;; Release: Field-7.0.0 (05/11/19)
;;
;; Contact: Cesar Munoz (cesar.a.munoz@nasa.gov)
;; NASA Langley Research Center
;; http://shemesh.larc.nasa.gov/people/cam/Field
;;
;; Copyright (c) 2011-2012 United States Government as represented by
;; the National Aeronautics and Space Administration.  No copyright
;; is claimed in the United States under Title 17, U.S.Code. All Other
;; Rights Reserved.
;;
;; Field is a simplification procedure for the field of reals.
;; This strategy was originally implemented with the collaboration of 
;; Micaela Mayero (Micaela.Mayero@inria.fr). 
;;
;; Strategies in Field:
(defparameter *field-strategies* "
%  field, grind-reals, real-props, 
%  neg-formula, add-formulas, sub-formulas,
%  cancel-by, cancel-formula,
%  both-sides-f, sq-simp")

(defparameter *field-version* "Field-7.0.0 (05/11/19)")

(defun check-no-relation (fnum)
  (let* ((f   (extra-get-formula fnum))
	 (rel (is-relation f)))
    (cond ((not f) (msg-noformula fnum))
	  ((not rel) (msg-norelation fnum)))))

;; Message for an invalid arithmetic relational formula.
(defun msg-norelation (fnum)
  (msg-noformula fnum "arithmetic relational formula"))

;; Message for an invalid formula number.
(defun msg-noformula (fnum &optional (msg "formula"))
  (let ((fnums (extra-get-fnums fnum)))
     (format nil "No ~a~p found in ~{~a~^ or ~}." 
	    msg (length fnums) fnums)))

(defun abs-symm-rel (op)
  (let ((aop (abs op)))
    (cond ((= aop 0) op)
          ((= aop 1) 2)
	  ((= aop 2) 1))))

(defun new-relation (f1 f2 o1 o2)
  (cond ((= o1 0) o2)
	((= o2 0) o1)
	(t 
	 (let ((op (cond ((and (< f1 0) (< f2 0))
			  (max (abs o1) (abs o2)))
			 ((and (> f1 0) (> f2 0))
			  (min (abs o1) (abs o2)))
			 ((< f1 0) 
		   (max (abs o1) (abs-symm-rel o2)))
			 (t 
			  (min (abs o1) (abs-symm-rel o2))))))
	      (* (sign o1) op)))))
	
(defun get-distrib-plus (l expr)
  (cond ((or (is-infix-operator expr '+)
	     (is-infix-operator expr '-))
	 (adjoin (expr2str expr) l :test #'string=))
	((is-infix-operator expr '/)
	 (get-distrib-expr (get-distrib-expr l (args1 expr))
			   (args2 expr)))
	((is-infix-operator expr '*)
	 (get-distrib-plus (get-distrib-plus l (args1 expr))
			   (args2 expr)))
	(t l)))

(defun get-distrib-expr (l expr)
  (cond ((or (is-infix-operator expr '+)
	     (is-infix-operator expr '-)
	     (is-infix-operator expr '/)
	     (is-relation expr))
	 (get-distrib-expr (get-distrib-expr l (args1 expr))
			   (args2 expr)))
	((is-prefix-operator expr '-)
	 (get-distrib-expr l (args1 expr)))
	((is-infix-operator expr '*)
	 (get-distrib-plus (get-distrib-plus l (args1 expr))
			   (args2 expr)))
	(t l)))

(defun get-distrib-formulas (l fnums)
  (when fnums
    (let ((formula (extra-get-formula (car fnums)))
	  (nl      (get-distrib-formulas l (cdr fnums))))
      (if formula
	  (get-distrib-expr nl formula)
	nl))))

(defun get-const-divisors (n polynom)
  (if polynom
      (let ((na (str2int (caar polynom))))
	(cond ((and na (> (cdar polynom) 0))
	       (get-const-divisors (* n na) (cdr polynom)))
	      (na
	       (get-const-divisors (/ n na) (cdr polynom)))
	      (t (get-const-divisors n (cdr polynom)))))
    n))

(defun un-polynom (polynom e)
  (when polynom
    (let* ((a  (caar polynom))
	   (na (str2int a))
	   (ne (str2int (car e)))
	   (b (cdar polynom))
	   (r (cdr polynom)))
      (cond ((and na ne)
	     (let ((g (lcm na ne)))
	       (if (= g 1) (in-polynom r e)
		 (cons (expr2str g) 1))))
	    ((or na ne)
	     (un-polynom r e))
	    ((string= a (car e))
	     (cons a (max b (cdr e))))
	    (t (un-polynom r e))))))

(defun union-polynom (polynom1 polynom2 l)
  (cond (polynom1
	 (let ((e (un-polynom polynom2 (car polynom1))))
	   (if e
	       (union-polynom (cdr polynom1) polynom2 (cons e l))
	     (union-polynom (cdr polynom1) polynom2 (cons (car polynom1) l)))))
	(polynom2
	 (let ((e (un-polynom l (car polynom2))))
	   (if e
	       (union-polynom polynom1 (cdr polynom2) l)
	     (union-polynom polynom1 (cdr polynom2) (cons (car polynom2) l)))))
	(t l)))

(defun get-divisors-monoms (l monoms)
  (if monoms
      (let* ((divmonom  (remove-if #'(lambda (x) (> (cdr x) 0))
				   (cancel-monom nil (car monoms) 1)))
	     (divpos    (mapcar #'(lambda (x) (cons (car x) (* -1 (cdr x))))
				divmonom)))
	(get-divisors-monoms (union-polynom l divpos nil) (cdr monoms)))
    l))

(defun get-divisors-formula (formula)
  (when (is-relation formula)
    (let ((monoms (get-monoms-formula formula)))
      (get-divisors-monoms nil monoms))))

(defun makeprod (divs names)
  (when divs
    (cons (cons (car names) (cdar divs))
	  (makeprod (cdr divs) (cdr names)))))

(defun get-monoms-expr (l expr)
  (cond ((or (is-infix-operator expr '+)
	     (is-infix-operator expr '-))
	 (get-monoms-expr (get-monoms-expr l (args1 expr))
			  (args2 expr)))
	((is-prefix-operator expr '-)
	 (get-monoms-expr l (args1 expr)))
	(t (cons expr l))))

(defun get-monoms-formula (formula)
  (when (is-relation formula)
    (get-monoms-expr (get-monoms-expr nil (args1 formula))
		     (args2 formula))))

(defun in-polynom (polynom e)
  (when polynom
    (let* ((a  (caar polynom))
	   (na (str2int a))
	   (ne (str2int (car e)))
	   (b (cdar polynom))
	   (r (cdr polynom)))
      (cond ((and ne (= ne 0)) e)
	    ((and na (= na 0)) e)
	    ((and na ne)
	     (let ((g (gcd na ne)))
	       (if (= g 1) (in-polynom r e)
		 (cons (expr2str g) 1))))
	    ((or na ne)(in-polynom r e))
	    ((string= a (car e))
	     (cons a (min b (cdr e))))
	    (t (in-polynom r e))))))

(defun inter-polynom (polynom1 polynom2 l)
  (if (and polynom1 polynom2)
      (let ((e (in-polynom polynom2 (car polynom1))))
	(if e
	    (inter-polynom (cdr polynom1) polynom2 (cons e l))
	  (inter-polynom (cdr polynom1) polynom2 l)))
    l))

;; Insert monomial in a list polynom = expr.expn representing a polynomial
;; If se = 1, monomial represents e
;; If se = -1, monomial represents 1/e
(defun insert-polynom (polynom e se)
  (let ((ne (str2int e)))
    (cond
     ((and ne (= ne 1)) polynom)
     (polynom
      (let* ((a  (caar polynom))
	     (na (str2int a))
	     (sa (cdar polynom)))
	(cond ((and ne na)
	       (cond ((> (* se sa) 0)
		      (insert-polynom (cdr polynom)
				      (expr2str (* na ne))
				      sa))
		     ((= na ne) (cdr polynom))
		     (t (let ((g (gcd ne na)))
			  (cond ((= na g)
				 (insert-polynom (cdr polynom)
						 (expr2str (/ ne g))
						 se))
				((= ne g)
				 (insert-polynom (cdr polynom)
						 (expr2str (/ na g))
						 sa))
				(t (cons (cons (expr2str (/ na g)) sa)
					 (insert-polynom (cdr polynom)
							 (expr2str (/ ne g))
							 se))))))))
	      (ne (cons (cons e se) polynom))
	      (na (cons (car polynom) (insert-polynom (cdr polynom) e se)))
	      ((string= e a)
	       (let ((count (+ se sa)))
		 (if (= count 0)
		     (cdr polynom)
		   (cons (cons e count) (cdr polynom)))))
	      ((> (length a) (length e))
	       (cons (cons e se) polynom))
	      (t (cons (car polynom) (insert-polynom (cdr polynom) e se))))))
     (t (list (cons e se))))))

(defun get-mults-monom (l expr)
  (cond ((is-infix-operator expr '*)
	 (get-mults-monom (get-mults-monom l (args1 expr)) (args2 expr)))
	((is-prefix-operator expr '-)
	 (get-mults-monom (insert-polynom l "-1" 1) (args1 expr)))
	(t (insert-polynom l (expr2str expr) 1))))

;; expr is expression
;; l a list (expr.expn) representing a polynomial that is being constructed
;; numden = 1 means expr, numdem = -1 means 1/expr
(defun cancel-monom (l expr numden)
  (cond ((is-infix-operator expr '/)
	 (cancel-monom (cancel-monom l (args1 expr) numden)
		       (args2 expr) (* -1 numden)))
	((is-infix-operator expr '*)
	 (cancel-monom (cancel-monom l (args1 expr) numden)
		       (args2 expr) numden))
	((is-prefix-operator expr '-)
	 (cancel-monom (insert-polynom l "-1" 1) (args1 expr) numden))
 	(t (insert-polynom l (expr2str expr) numden))))

(defun has-divisors (expr)
  (cond ((is-infix-operator expr '/) t)
	((or (is-infix-operator expr '+)
	     (is-infix-operator expr '-)
	     (is-infix-operator expr '*)
	     (is-relation expr))
	 (or (has-divisors (args1 expr))
	     (has-divisors (args2 expr))))
	((is-prefix-operator expr '-)
	 (has-divisors (args1 expr)))
	(t nil)))

(defun exp-n (e n)
  (cond ((= (abs n) 1) (format nil "~a" e))
	((> (abs n) 0) (format nil "~a * ~a" e
			       (exp-n e (- (abs n) 1))))
	(t "1")))

(defun normal-mult-parens (l)
  (cond ((= (length l) 1) (exp-n (caar l) (cdar l)))
	(t (format nil "~a * ~a"
		   (exp-n (caar l) (cdar l))
		   (normal-mult-parens (cdr l))))))

(defun normal-mult (l)
  (when l
    (cond ((not l) "1")
	  ((and (= (length l) 1)
		(= (abs (cdar l)) 1))
	   (caar l))
	  (t (format nil "(~a)" (normal-mult-parens l))))))

(defun normal-term (numden)
  (let ((num (mapcan #'(lambda (p) (and (> (cdr p) 0) (list p))) numden))
	(den (mapcan #'(lambda (p) (and (< (cdr p) 0) (list p))) numden)))
    (cond (numden
	   (cond (num
		  (cond (den (format nil "~a / ~a"
				     (normal-mult num)
				     (normal-mult den)))
			(t (normal-mult num))))
		 (t (format nil "1 / ~a" (normal-mult den)))))
	  (t "1"))))

(defun makecases-monoms (monoms)
  (loop for monom in monoms
	as cmonom = (let* ((cm (cancel-monom nil monom 1))
			   (nt (normal-term cm)))
		      nt)
	when (string/= (format nil "~a" monom) cmonom)
	collect (format nil "~a = ~a" monom cmonom)))

(defstrat name-distrib (&optional (fnums *) (prefix "ND") label hide? (tcc-step (extra-tcc-step)))
  (let ((dist (get-distrib-formulas nil (extra-get-fnums fnums))))
    (when dist
      (let ((names   (freshnames prefix (length dist)))
	    (nameseq (merge-lists names dist))
	    (lbl     (or label 'none)))
	(name-label* nameseq :label label :fnums fnums :hide? hide? :tcc-step tcc-step))))
  "[Field] Introduces new names, which are based on PREFIX, to block the automatic
application of distributive laws in formulas FNUMS. Labels as LABEL(s) the formulas
where new names are defined. These formulas are hidden if HIDE? is t. TCCs generated
during the execution of the command are discharged with the proof command TCC-STEP.")

(defstep wrap-manip (fnum manip &optional (tcc-step (extra-tcc-step)) (labels? t))
  (with-fresh-labels
   ((!wmp fnum)
    (!wmd))
   (let ((labs (when labels? (extra-get-labels fnum))))
     (branch (discriminate
	      (let ((old *suppress-manip-messages*))
		(unwind-protect$
		 (then
		  (sklisp (setq *suppress-manip-messages* t))
		  manip)
		 (sklisp (setq *suppress-manip-messages* old))))
	      !wmd :strict? t)
	     ((when labels? (relabel labs !wmd))
	      (finalize tcc-step)))))
  "[Field] Applies Manip's command MANIP,  dicharges TCCs using TCC-STEP, and
preserves labels of FNUM when labels? is t."
  "Applying Manip's command ~1@*~a to ~@*~a")
  
(defstep neg-formula (&optional (fnum (+ -)) (hide? t) label (tcc-step (extra-tcc-step)) (auto-step (assert)))
  (let ((fnexpr (first-formula fnum :test #'field-formula))
	(fn      (car fnexpr))
	(formula (cadr fnexpr))
	(rel     (is-relation formula)))
    (if rel
	(with-fresh-labels
	 ((!ngf fn :tccs)
	  (!ngl)
	  (!ngo))
	 (protect
	  !ngf 
	  (then@
	   (if label
	       (relabel (!ngo label) !ngf :push? nil)
	     (relabel !ngo !ngf))
	   (wrap-manip !ngo (mult-by !ngo "-1" :sign -) :tcc-step tcc-step)
	   (real-props !ngo :simple? t)
	   (finalize auto-step))
	  !ngl hide?))
      (printf "No arithmetic relational formula in ~a" fnum)))
  "[Field] Negates both sides of the relational formula FNUM. If HIDE? is t,
the original formula is hidden.  The new formula is labeled as the original
one, unless an explicit LABEL is provided. TCCs generated during the execution
of the command are discharged with the proof command TCC-STEP. At the end, the
strategy tries to discharge the current branch using the proof command AUTO-STEP."
  "Negating relational formula ~a")

(defparameter *field-simple-rewrites* '("real_props.div_simp" "real_props.div_cancel1" "real_props.div_cancel2"
					"real_props.zero_times1" "real_props.zero_times2" "real_props.neg_times_neg"
					"real_props.zero_is_neg_zero" "real_props.abs_abs" "real_props.abs_square"
					"real_props.times_div_cancel1" "real_props.times_div_cancel2"
					"extra_tegies.neg_mult" "extra_tegies.mult_neg"
					"extra_tegies.neg_add" "extra_tegies.add_neg"
					"extra_tegies.neg_div" "extra_tegies.div_neg"
					"extra_tegies.one_times" "extra_tegies.neg_one_times"
					"extra_tegies.zero_div" "extra_tegies.neg_neg"))

(defstep real-props (&optional (fnums *) theories simple?
			       (let-reduce? t) (distrib? t))
  (let ((rews      *field-simple-rewrites*)
	(ths       (cons "real_props" (enlist-it theories)))
	(startstep (if simple?
		       (cons 'auto-rewrite rews)
		     (cons 'auto-rewrite-theories ths)))
	(stopstep  (if simple?
		       (cons 'stop-rewrite rews)
		     (cons 'stop-rewrite-theory ths))))
    (with-fresh-labels
     ((!rps fnums)
      (!rpd :hide))
     (let ((step    (list 'then
			  startstep
			  (list 'assert !rps :let-reduce? let-reduce?)
			  stopstep)))
       (if distrib?
	   step
	 (then
	  (name-distrib fnums :label !rpd)
	  step
	  (replaces !rpd :dir rl :in !rps :but !rpd :hide? nil))))))
  "[Field] Autorewrites with \"real_props\" and THEORIES in FNUMS. If SIMPLE? is t,
only basic rewrite rules are applied. If LET-REDUCE? is nil, let-in expressions will
not be reduced. If DISTRIB? is nil, distribution laws will not be applied."
  "Applying real-props")

(defstep grind-reals (&optional defs theories rewrites
				exclude (if-match t) (updates? t)
				polarity? (instantiator inst?)
				(let-reduce? t)
				dontdistrib protect)
  (with-fresh-labels
   (!grd :hide)
   (let ((th    (cons "real_props" (enlist-it theories)))
	 (pro   (cons !grd (enlist-it protect)))
	 (step `(grind :defs ,defs :theories ,th :rewrites
		       ,rewrites :exclude ,exclude :if-match
		       ,if-match :updates? ,updates? :polarity?
		       ,polarity? :instantiator
		       ,instantiator :let-reduce? let-reduce?)))
     (then
      (when dontdistrib
	(name-distrib dontdistrib :label !grd))
      (finalize (assert))
      (protect pro step)
      (when dontdistrib
	(replaces !grd :dir rl :but !grd :hide? nil)))))
  "[Field] Apply grind with \"real_props\". This strategy supports the same
options as grind. Additionally, grind-reals blocks distribution laws in main level
expressions in the list of formulas DONTDISTRIB and protects formulas in PROTECT."
  "Applying grind-reals")

(defstep add-formulas (fnum1 &optional fnum2 (hide? t) label (tcc-step (extra-tcc-step)) (auto-step (assert)))
  (let ((fnum2    (or fnum2 fnum1))
	(f1       (extra-get-fnum fnum1))
	(f2       (extra-get-fnum fnum2))
	(eqfs     (or (and (numberp f1) (numberp f2) (= f1 f2))
		      (and (numberp fnum1) (numberp fnum2) (= fnum1 fnum2))))
	(formula1 (extra-get-formula-from-fnum f1))
	(formula2 (extra-get-formula-from-fnum f2))
    	(formsg   (if eqfs fnum1 (list fnum1 fnum2)))
	(o1       (relation2num (car (is-relation formula1))))
	(o2       (relation2num (car (is-relation formula2)))))
    (with-fresh-labels
     (!add)
     (if (and o1 o2)
	 (let ((flag  (>= (* f1 f2 o1 o2) 0))
	       (f11   (args1 formula1))
	       (f12   (if flag 
			  (args1 formula2)
			(args2 formula2)))
	       (f21   (args2 formula1))
	       (f22   (if flag 
			  (args2 formula2)
			(args1 formula2)))
	       (op    (num2relation (new-relation f1 f2 o1 o2)))
	       (str   (when op (format nil "~a ~a ~a"
				       (mk-application '+ f11 f12) op
				       (mk-application '+ f21 f22))))
	       (labad (or label !add)))
	   (with-fresh-labels
	    ((!ad1 f1 :tccs :hide? hide?)
	     (!ad2 f2 :tccs :hide? hide?))
	    (branch (discriminate (case str) labad)
		    ((then (real-props labad :simple? t) (finalize auto-step))
		     (finalize (assert (!ad1 !ad2 labad)))
		     (finalize tcc-step)))))
       (printf "No arithmetic relational formulas in ~a" formsg))))
  "[Field] Adds relational formulas FNUM1 and FNUM2. If FNUM2 is nil, adds FNUM to itself.
If HIDE? is t, the original formulas are hidden.  The new formula is labeled as LABEL,
if specified. TCCs generated during the execution of the command are discharged with
the proof command TCC-STEP. At the end, the strategy tries to discharge the current 
branch using the proof command AUTO-STEP."
  "Adding formulas ~a and ~:[~@*~a~;~:*~a~]")

(defstep sub-formulas (fnum1 fnum2 &optional (hide? t) label (tcc-step (extra-tcc-step)))
  (with-fresh-labels
   (!sub)
   (let ((f1       (extra-get-fnum fnum1))
	 (f2       (extra-get-fnum fnum2))
	 (eqfs     (or (and (numberp f1) (numberp f2) (= f1 f2))
		       (and (numberp fnum1) (numberp fnum2) (= fnum1 fnum2))))
	 (formula1 (extra-get-formula-from-fnum f1))
	 (formula2 (extra-get-formula-from-fnum f2))
	 (o1       (relation2num (car (is-relation formula1))))
	 (o2       (relation2num (car (is-relation formula2))))
	 (labsb    (or label !sub)))
     (if eqfs
	 (printf "Formula ~a cannot be subtracted from itself" fnum1)
       (if (and o1 o2)
	   (with-fresh-labels
	    ((!sb1 f1 :tccs)
	     (!sb2 f2 :tccs)
	     (!nsb2 :delete)
	     (!nlb))
	    (protect
	     !sb2
	     (then (then@ (neg-formula !sb2 :label !nsb2 :tcc-step tcc-step)
			  (add-formulas !sb1 !nsb2 :hide? nil :label labsb))
		   (when hide? (hide !sb1)))
	     !nlb
	     hide?))
	 (printf "No arithmetic relational formulas in (~a ~a)" fnum1 fnum2)))))
  "[Field] Subtracts relational formulas FNUM1 and FNUM2. If HIDE? is t,
the original formulas are hidden.  The new formula is labeled as LABEL,
if specified. TCCs generated during the execution of the command are discharged
with the proof command TCC-STEP."
  "Substracting relational formulas ~a and ~a")

(defhelper cases-monoms__ (label cases tcc-step)
  (if cases
      (let ((frel  (car cases))
	    (frels (cdr cases)))
	(branch (case frel)
		((then (replaces -1 label)
		       (cases-monoms__$ label frels tcc-step))
		 (then (delete label)
		       (grind-reals))
		 (then (delete label)
		       (else (finalize (grind-reals)) 
			     (finalize tcc-step))))))
    (assert label))
  "[Field] Internal strategy." "")

(defhelper simplify-monoms__ (label tcc-step)
  (let ((flag (has-divisors (extra-get-formula label))))
    (when flag
      (assert label)
      (let ((formula (extra-get-formula label))
	    (monoms  (get-monoms-formula formula))
	    (cases   (makecases-monoms monoms)))
	(cases-monoms__$ label cases tcc-step))))
  "[Field] Internal strategy." "")

(defstep cancel-by (fnum expr &optional (tcc-step (extra-tcc-step)) (auto-step (assert)))
  (let ((fnexpr   (first-formula fnum :test #'field-formula))
	(fn       (car fnexpr))
	(formula  (cadr fnexpr))
	(rel      (is-relation formula))
	(expstr   (extra-get-expstr expr))
	(div      (freshname "CBD")))
    (if (and rel expstr)
	(with-fresh-labels
	 ((!cby fn)
	  (!cbd)
	  (!cbt :delete)
	  (!cbdt :delete)
	  (!ndc :hide))
	 (tccs-formula !cby :label !cbt)
	 (branch (then@ (tccs-expression expstr :label !cbdt :tcc-step tcc-step)
			(name-distrib (!cby !cbt !cbdt) :prefix "NDC" :label !ndc :tcc-step tcc-step)
			(name-label div expstr :fnums (^ !ndc) :label !cbd :tcc-step tcc-step)
			(replace !ndc !cbd))
		 ((cancel-by__$ !cby !cbd div tcc-step auto-step)
		  (delete !cby)))
	 (replaces !ndc :but !ndc :dir rl :hide? nil))
      (if (not rel)
	  (printf "No arithmetic relational formula in ~a" fnum)
	(if (not expstr)
	    (printf "No suitable expression ~a" expr)))))
  "[Field] Cancels the common expression EXPR in the relational formula FNUM.
TCCs generated during the execution of the command are discharged with the 
proof command TCC-STEP. At the end, the strategy tries to discharge the 
current branch using the proof command AUTO-STEP."
  "Canceling in formula ~a with ~a")

(defhelper cancel-case__ (labcb labdiv inv_div tcc-step auto-step &optional (sign +))
  (branch
   (wrap-manip labcb (mult-by labcb inv_div sign) :tcc-step (skip))
   ((then (replace labdiv :dir rl)
	  (hide labdiv)
	  (simplify-monoms__$ labcb tcc-step)
	  (real-props labcb :simple? t)
	  (finalize auto-step))
    (then (replace labdiv :dir rl)
	  (hide labdiv)
	  (finalize (grind-reals)))))
  "[Field] Internal strategy." "")

(defhelper guess_cancel_by__ (labcb labdiv)
  (finalize
   (then (delete labcb)
	 (replace labdiv :dir rl)
	 (hide labdiv)
	 (assert)
	 (grind-reals)))
  "[Field] Internal strategy." "")

(defhelper cancel-by__ (labcb labdiv div tcc-step auto-step)
  (let ((nz_div  (format nil "~a = 0" div))
        (inv_div (format nil "1 / ~a" div))
	(gt0_div (format nil "~a > 0" div))
	(is_eq   (equation? (extra-get-formula labcb))))
    (branch
     (case nz_div)
     ((then@ (replace labdiv :dir rl)
	     (hide labdiv)
	     (finalize (then (assert) (grind-reals))))
      (if is_eq
	  (cancel-case__$ labcb labdiv inv_div tcc-step auto-step)
	(branch
	 (case gt0_div)
	 ((then@ (guess_cancel_by__$ labcb labdiv)
		 (cancel-case__$ labcb labdiv inv_div tcc-step auto-step +))
	  (then@ (guess_cancel_by__$ labcb labdiv)
		 (cancel-case__$ labcb labdiv inv_div tcc-step auto-step -))
	  (finalize tcc-step))))
      (finalize tcc-step))))
  "[Field] Internal strategy." "")

(defstep cancel-formula (&optional (fnum (+ -)) (tcc-step (extra-tcc-step)))
  (let ((fnexpr  (first-formula fnum :test #'field-formula))
	(fn      (car fnexpr))
	(formula (cadr fnexpr))
	(rel     (is-relation formula)))
    (if rel
	(with-fresh-labels
	 (!cf fn)
	 (try (wrap-manip !cf (factor !cf) :tcc-step tcc-step)
	      (let ((form (extra-get-formula !cf))
		    (l1   (get-mults-monom nil (args1 form)))
		    (l2   (get-mults-monom nil (args2 form)))
		    (l    (inter-polynom l1 l2 nil))
		    (cb   (normal-mult l)))
		(if cb
		    (cancel-by !cf cb :tcc-step tcc-step)
		  (finalize (grind-reals :dontdistrib !cf))))
	      (finalize (grind-reals :dontdistrib !cf))))
      (printf "No arithmetic relational formula in ~a" fnum)))
  "[Field] Factorizes common terms in FNUM and then cancels them.
TCCs generated during the execution of the command are discharged 
with the proof command TCC-STEP."
  "Canceling formula ~a")

(defhelper field_case__ (labfd labndf labx prod theories &optional (sign +))
  (branch
   (wrap-manip labfd (mult-by labfd prod sign) :tcc-step (skip))
   ((skip)
    (then (delete labfd)
	  (finalize (grind-reals :theories theories))
	  (replaces labx :but labx :dir rl :hide? nil)
	  (delete labx)
	  (replaces labndf :but labndf :dir rl :hide? nil)
	  (delete labndf))))
"[Field] Internal strategy." "")

(defhelper field__ (labfd labndf labx theories cancel? tcc-step)
  (then@
   (simplify-monoms__$ labfd tcc-step)
   (let ((form     (extra-get-formula labfd))
	 (is_eq    (equation? form))
	 (divs     (get-divisors-formula form))
	 (ndivs    (get-const-divisors 1 divs))
	 (edivs    (remove-if #'(lambda (x) (str2int (car x))) divs)))
     (if divs
	 (let ((names    (freshnames "FDX" (length edivs)))
	       (nameseq  (merge-lists names
				      (mapcar #'(lambda(x) (car x))
					      edivs)))
	       (eprod    (makeprod edivs names))
	       (prod     (normal-mult (if (= ndivs 1) eprod
					(cons (cons (expr2str ndivs) 1)
					      eprod))))
	       (prodgt0  (format nil "~a > 0" prod)))
	   (spread (name-label* nameseq :label labx :tcc-step tcc-step)
		   ((if is_eq
			(then@ (field_case__ labfd labndf labx prod theories)
			       (field__$ labfd labndf labx theories cancel? tcc-step))
		      (branch (case prodgt0)
			      ((then@
				(finalize (then (delete labfd) (grind-reals :theories theories)))
				(field_case__ labfd labndf labx prod theories +)
				(field__$ labfd labndf labx theories cancel? tcc-step))
			       (then@
				(finalize (then (delete labfd) (grind-reals :theories theories)))
				(field_case__ labfd labndf labx prod theories -)
				(field__$ labfd labndf labx theories cancel? tcc-step))
			       (finalize tcc-step)))))))
       (try (replaces labx :but labx :dir rl :hide? nil)
	    (then@ (delete labx)
		   (field__$ labfd labndf labx theories cancel? tcc-step))
	    (try (replaces labndf :but labndf :dir rl :hide? nil)
		 (then@ (delete labndf)
			(field__$ labfd labndf labx theories cancel? tcc-step))
		 (then  (real-props labfd :theories theories :distrib? cancel?)
			(if cancel?
			    (cancel-formula labfd :tcc-step tcc-step)
			  (finalize (grind-reals :theories theories :dontdistrib labfd)))))))))
  "[Field] Internal strategy." "")

(defun field-formula (fn expr)
  (is-relation expr))

(defstep field (&optional (fnum (+ -)) theories cancel? (tcc-step (extra-tcc-step)))
  (let ((fnexpr  (first-formula fnum :test #'field-formula))
	(fn      (car fnexpr))
	(formula (cadr fnexpr))
	(rel     (is-relation formula)))
    (if rel
	(with-fresh-labels
	 ((!fd fn)
	  (!fdt :delete)
	  (!ndf)
	  (!x))
	 (tccs-formula !fd :label !fdt)
	 (branch (name-distrib (!fd !fdt) :prefix "NDF" :label !ndf :tcc-step tcc-step)
		 ((field__$ !fd !ndf !x theories cancel? tcc-step)
		  (delete !fd))))
      (printf "No arithmetic relational formula in ~a" fnum)))
  "[Field] Removes divisions and apply simplification heuristics to the relational
formula on real numbers FNUM. It autorewrites with THEORIES when possible. If CANCEL?
is t, then it tries to cancel common terms once the expression is free of divisions.
TCCs generated during the execution of the command are discharged with the proof command TCC-STEP."
  "Removing divisions and simplifying formula ~a with field")

(defstep sq-simp (&optional (fnum *) (auto-step (assert)))  
  (then (rewrite* ("sq_0" "sq_1" "sq_abs" "sq_abs_neg" "sq_neg" "sq_times" "sq_plus" "sq_minus"
		   "sq_div" "sqrt_0" "sqrt_1" "sqrt_def" "sqrt_square"
		   "sqrt_sq" "sq_sqrt" "sqrt_times" "sqrt_div" "sqrt_sq_abs") fnum)
	(finalize auto-step))
  "[Field] Simplifies FNUM with lemmas from sq and sqrt. At the end, the strategy tries to 
discharge the current branch using the proof command AUTO-STEP."
  "Simplifying sq and sqrt in ~a")

(defstep both-sides-f (fnum f &optional (hide? t) label (tcc-step (extra-tcc-step))
			    (auto-step (assert)) postfix? swap?)
  (let ((fnexpr  (first-formula fnum :test #'field-formula))
	(fn      (car fnexpr))
	(formula (cadr fnexpr))
	(rel     (is-relation formula))
	(iseq    (and (< fn 0) (equal (car rel) '=)))
	(str     (if postfix?
		     (format nil "(%1)~a" f)
		   (format nil "~a(%1)" f)))
	(lbs     (or label (extra-get-labels-from-fnum fn))))
    (if rel
	(with-fresh-labels
	 ((!bsf fn :tccs)
	  (!bsp)
	  (!bsl))
	 (branch
	  (discriminate
	   (wrap-manip
	    !bsf
	    (transform-both !bsf str :swap swap?)
	    :tcc-step (skip)
	    :labels? nil)
	   !bsl)
	  ((else (finalize auto-step) (delabel !bsf hide?))
	   (if iseq
	       (then (hide-all-but (!bsf 1))
		     (replaces !bsf)
		     (assert))
	     (finalize auto-step))
	   (then (delabel !bsf hide?) (finalize tcc-step))))
	 (relabel lbs !bsl :push? nil))
      (printf "No arithmetic relational formula in ~a" fnum)))
  "[Field] Applies function F to both sides of the relational
expression in FNUM. If HIDE? is t, the original formula is hidden. The
new formulas are labeled as the original one, unless an explicit LABEL
is provided. TCCs generated during the execution of the command are
discharged with the proof command TCC-STEP. At the end, the strategy
tries to discharge the current branch using the proof command
AUTO-STEP. When POSTFIX? is set to t, the function F is added as
postfix string, i.e., if FNUM is the equality expr1 = expr2,
(both-sides-f FNUM \"^2\" :postfix? t) will generate the case
(expr1)^2 = (expr2)^n. The flag SWAP? is used to indicate when the
terms should be swapped (e.g., when multiplying by a negative
number)."
  "Applying ~1@*~a to both sides of formula ~@*~a")

(defstrat wrap-formula (fnum f)
  (both-sides-f fnum f)
  "[Field] Obsolete strategy. Use both-sides-f.")

(defstrat field-about ()
  (let ((version *field-version*)
	(strategies *field-strategies*))
    (printf "%--
% ~a 
% http://shemesh.larc.nasa.gov/people/cam/Field
% Strategies in Field:~a
%--~%" version strategies))
  "[Field] Prints Field's about information.")


