(defparameter *ia-builtin* '(("sq" "SQ") ("abs" "ABS")
			     ("+" "ADD") ("-" "SUB") ("*" "MULT") ("/" "DIV")
			     ("^" "POW")
			     ("TRUE" "BCONST(TRUE)") ("FALSE" "BCONST(FALSE)")
			     ("NOT" "BNOT") ("AND" "BAND") ("&" "BAND")
                             ("OR" "BOR") ("IMPLIES" "BIMPLIES") ("=>" "BIMPLIES")
			     (">" "REL(>)") (">=" "REL(>=)") ("<" "REL(<)") ("<=" "REL(<=)")
			     ("=" "EQ")
			     ("##" "BINCLUDES")))
(defparameter *ia-extended* '(("sqrt" ("SQRT_n")) ("pi" ("PI_n")) 
			      ("sin" ("SIN_n")) ("cos" ("COS_n")) ("tan" ("TAN_n")) ("atan" ("ATAN_n"))
			      ("ln" ("LN_n")) ("exp" ("EXP_n")) ("e" ("E_n"))))

(defparameter *ia-let-names* nil)

;; Every element in *ia-extended* has the form (<f> <F>), where <F> is either <F>, for
;; rational functions, or (<F> <n>) for approximated ones. It is expected that these functions
;; satisfy the inclusion and fundamental theorems of interval arithmetic.

(defparameter *interval-strategies* "
%  decimalize: Decimalizes relational formulas involving rational numbers.
%  decimalize-expr: Decimalizes rational expressions.
%  numerical: Computes bounds to minimum and maximum values of real-valued expressions.
%  interval: Checks whether or not properties on real-valued formulas hold.
%  Supported operations include: +,-,*,/,^,sq,abs,sqrt,pi,sin,cos,tan,atan,ln,exp,e")

(defparameter *ia-excluded* '("Tan?" "[||]"))

;; The parameter intervl is a list of 2 lisp numbers (ratios), over is a boolean,
;; and n is the number of decimals in the output. The output is a string representing
;; a decimal interval, where the bounds are exact to the original one up to the n-1 decimal.
;; Furthermore, if over is t, then the output is an over-approximation. Otherwise, the
;; output is an under-approximation.
(defun ia-interval2decimal (intervl over n)
  (when (and intervl
	     (numberp (nth 0 intervl))
	     (numberp (nth 1 intervl)))
    (format nil "[|~a,~a|]"
	    (ratio2decimal (nth 0 intervl) (not over) n)
	    (ratio2decimal (nth 1 intervl) over n))))

(defstep decimalize (fnum &optional (precision 3) (side r) (tccs? t))
  (let ((initeqs (extra-reset-evalexprs))
	(fnum    (extra-get-fnum fnum)))
    (when fnum
      (with-fresh-labels
       ((!dec fnum :tccs? tccs?))
       (let ((expr  (extra-get-formula !dec))
	     (castr (if (is-function-expr expr "##")
			(let ((int2dec (ia-interval2decimal (ia-concrete-interval (args2 expr))
							    (< fnum 0) precision)))
			  (when int2dec
			    (format nil "~a ## ~a" (args1 expr) int2dec)))
		      (let* ((rel (car (is-relation expr)))
			     (num (when rel (extra-get-number-from-expr 
					     (extra-add-evalexpr
					      (if (member side '(r R))
						  (args2 expr)
						(args1 expr)))))))
			(when num
			  (if (and (equal rel '=) (< fnum 0))
			      (format nil "~a ## [| ~a, ~a |]" (if (member side '(r R))
								   (args1 expr)
								 (args2 expr))
				      (ratio2decimal num nil precision)
				      (ratio2decimal num t precision))
			    (unless (equal rel '=)
			      (if (member side '(r R))
				  (format nil "~a ~a ~a" (args1 expr) rel
					  (ratio2decimal num	
							 (iff (< fnum 0) (member rel '(< <=)))
							 precision))
				(format nil "~a ~a ~a" 
					(ratio2decimal num	
						       (iff (> fnum 0) (member rel '(< <=)))
						       precision)
					rel (args2 expr)))))))))
	     (eqs   (when castr (extra-evalexprs))))
	 (if castr
	     (then
	      (extra-evalexprs$ eqs)
	      (branch (case castr)
		      ((if (< fnum 0)
			   (hide !dec)
			 (then
			  (hide-all-but (!dec -1))
			  (expand "##")
			  (flatten)
			  (assert)))
		       (if (> fnum 0)
			   (hide !dec)
			 (then
			  (hide-all-but (!dec 1))
			  (expand "##")
			  (flatten)
			  (assert)))
		       (assert))))
	   (printf "Formula ~a is not suitable for decimalization" fnum))))))
  "[Interval] Decimalizes a rational number in one side of relational formula FNUM
by a decimal number that is exact to the rational number up to the PRECISION-1 decimal.
SIDE can be either r (right) or l (left). If TCCs? is set to nil, the strategy doesn't try
to prove possible TCCs generated during its execution."
  "Decimalizing ~2@*~ahs of relational formula ~@*~a to precision ~1@*~a")

(defstep decimalize-expr (expr &optional (precision 3))
  (let ((initeqs (extra-reset-evalexprs))
	(exprat  (extra-get-expr expr))
	(num     (extra-get-number-from-expr (extra-add-evalexpr exprat)))
	(castr   (when num
		   (format nil "~a ## [| ~a, ~a |]"
		 	  exprat
			  (ratio2decimal num nil precision)
			  (ratio2decimal num t precision))))
	(eqs    (when castr (extra-evalexprs))))
    (if castr
	(spread (case castr)
		((skip)
		 (then
		  (hide-all-but 1)
		  (extra-evalexprs$ eqs)
		  (expand "##")
		  (flatten)
		  (assert))))
      (printf "Expression ~a is not suitable for decimalization" expr)))
  "[Interval] Decimalizes a rational number by a decimal number that is exact to the
rational number up to the PRECISION-1 decimal."
  "Decimalizing expression ~a to the precision ~a")

;;;;;;;; INTERVAL FUNCTIONS

(defun ia-get-vars-from-expr (expr &optional subs)
  (get-vars-from-expr expr
		      (append (mapcar #'car subs)
			      (mapcar #'car *ia-extended*))))

;; Find unbounded vars (vars is a list of variable names) 
(defun ia-find-unbound-vars (vars)
  (loop for v in vars
	when (let ((xv (gethash v *extra-varranges*)))
	       (or (null xv) (null (xterval-lb xv)) (null (xterval-ub xv))))
	collect v))

(defun ia-complete-vars (vars morevars)
  (let ((vars (remove-if-not 
	       #'(lambda(x)(member (extra-var-name x) morevars :test #'string=)) vars)))
    (append vars
	    (loop for v in morevars
		  unless (member v vars
				 :test #'(lambda (x y) (string= x (extra-var-name y))))
		  collect v))))

(defun ia-var-intervals (vars)
  (loop for v in vars
	for xv = (gethash v *extra-varranges*)
	collect (format nil "[|~a,~a|]" (xterval-lb xv) (xterval-ub xv))))

;; Form a string representing the box of variables vars
(defun ia-box (vars)
  (if vars
      (format nil "(: ~{~a~^,~} :)" (ia-var-intervals vars))
    "(::)"))

;; Is id in subs?
(defun ia-idsubs? (id subs)
  (car (member id subs
	       :test #'(lambda (x y) (string= x (car y))))))

;; Form a string representing an interval expression of expr, where
;;   - n      : approximation parameter
;;   - var    : list of variables
;;   - subs   : list of substitutions of the general form (<f> (<F> <n>) <arity>)
;; Output:
;;   - Expr such that eval(expr,vars) ## Eval(Expr,box)
(defun ia-interval-expr (expr n vars &optional subs)
  (setq *ia-let-names* nil)
  (catch '*ia-error*
    (ia-interval-expr-rec expr n vars
			  (append subs *ia-builtin* *ia-extended*)
			  (check-name "IntervalStrategies__"))))

(defun ia-approx-n (n nn)
  (if nn (max (+ n nn) 0) n))

(defun ia-error (msg)
  (throw '*ia-error* (list msg)))

(defun ia-format-local-var (vl n)
  (let ((posvar (+ n (1- (length vl)))))
    (if (is-number-type (cdar vl))
	(format nil "X(~a)" posvar)
      (format nil "POS?(X(~a))" posvar))))

(defun ia-interval-expr-rec (expr n vars subs extended &optional localvars)
  (let ((val (when (or (is-number-type (type expr)) (is-bool-type (type expr)))
	       (typecheck (extra-add-evalexpr expr)))))
    (cond ((and val (is-number-type  (type val)))
	   (format nil "r2E(~a)" val))
	  ((and val (is-bool-type (type val)))
	   (format nil "b2B(~a)" val))
	  ((is-const-decl-expr expr (mapcar #'car subs)) ;; Is a constant, but not a rational one
	   (let ((opl (ia-idsubs? (expr2str expr) *ia-extended*))) ;; Check if extended import is required.
	     (when (and opl (not extended))
	       (ia-error (format 
			  nil
			  "Theory interval_arith@strategies needs to be imported to support constant ~a"
			  expr))))
	   ;; At this point, imported chain is OK. 
	   (let ((opl (ia-idsubs? (expr2str expr) subs)))
	     (if opl
		 (let ((op (cadr opl)))
		   (if (listp op)
		       (format nil "~a(~a)" (car op) (ia-approx-n n (nth 1 op)))
		     (format nil "~a" op)))
	       (ia-error (format nil "Don't know how to translate constant ~a" expr)))))
	  ((is-variable-expr expr)
	   (let ((vl (when (name-expr? expr)
		       (member (id expr) localvars :test #'(lambda(x y) (equal x (car y)))))))
	     (if vl (ia-format-local-var vl (length vars))
	       (let ((vl (member (expr2str expr) vars :test #'string=)))
		 (if vl
		     (format nil "X(~a)" (- (length vars) (length vl)))
		   (ia-error (format nil "Don't know how to translate variable ~a" expr)))))))
	  ((and (unary-application? expr)
		(is-function-expr expr "-"))
	   (format nil "NEG(~a)"
		   (ia-interval-expr-rec (args1 expr) n vars subs extended localvars)))
	  ((is-function-expr expr "^")
	   (format nil "POW(~a,~a)"
		   (ia-interval-expr-rec (args1 expr) n vars subs extended localvars)
		   (args2 expr)))
	  ((is-function-expr expr "##")
	   (let ((val (extra-add-evalexpr (args2 expr))))
	     (if (record-expr? val)
		 (format nil "BINCLUDEX(~a,~a)"
			 (ia-interval-expr-rec (args1 expr) n vars subs extended localvars)
			 val)
	       (ia-error (format nil "Don't know how to translate expression ~a" (args2 expr))))))
	  ((if-expr? expr)
	   (if (is-bool-type (type expr))
	       (format nil "BITE(~a,~a,~a)"
		       (ia-interval-expr-rec (nth 0 (arguments expr)) n vars subs extended localvars)
		       (ia-interval-expr-rec (nth 1 (arguments expr)) n vars subs extended localvars)
		       (ia-interval-expr-rec (nth 2 (arguments expr)) n vars subs extended localvars))
	     (ia-error "IF-THEN-ELSE construct ~a is unsupported" expr)))
	  ((let-expr? expr)
	   (if (or (is-bool-type (type expr)) (is-number-type (type expr)))
	       (let* ((op  (operator expr))
		      (typ (domain (type op))))
		 (if (or (is-number-type typ) (and (is-bool-type (type expr))
						   (is-bool-type typ)))
		     (let* ((vt  (cons (id (car (bindings op))) typ))
			    (xm  (ia-interval-expr-rec (argument expr) n vars subs extended localvars))
			    (nm  (freshname (format nil "V_~a" (length *ia-let-names*)))))
		       (setq *ia-let-names* (append *ia-let-names* (list (cons nm xm))))
		       (format nil "~:[~;B~]LETIN(~a,~a)" (is-bool-type (type expr)) nm
			       (ia-interval-expr-rec (expression op) n vars subs extended
						     (cons vt localvars))))
		   (ia-error "LET-IN construct ~a is unsupported" expr)))
	     (ia-error "LET-IN construct ~a is unsupported" expr)))
	  ((arg-tuple-expr? expr)
	   (format nil "~{~a~^,~}"
		   (mapcar #'(lambda(x)(ia-interval-expr-rec x n vars subs extended localvars))
			   (exprs expr))))
	  ((is-function-expr expr)
	   (let ((opl (ia-idsubs? (id (operator expr)) (cdr *ia-extended*))))
	     (when (and opl (not extended))
	       (ia-error (format 
			  nil
			  "Theory interval_arith@strategies needs to be imported to support function ~a"
			  (id (operator expr))))))
	   (let ((opl (ia-idsubs? (id (operator expr)) subs)))
	     (if opl 
		 (let ((op (cadr opl)))
		   (if (listp op)
		       (format nil "~a(~a)(~a)"
			       (car op) (ia-approx-n n (nth 1 op))
			       (ia-interval-expr-rec (args1 expr) n vars subs extended localvars))
		     (format nil "~a(~a)" op
			     (ia-interval-expr-rec (argument expr) n vars subs extended localvars))))
	       (ia-error (format nil "Don't know how to translate function ~a" (id (operator expr)))))))
	  (t (ia-error (format nil "Don't know how to translate expression ~a" expr))))))

(defun ia-concrete-interval (expr)
  (let ((val (extra-add-evalexpr expr)))
    (when (record-expr? val)
      (let ((lb (extra-get-number-from-expr (get-expr-from-obj val 'lb)))
	    (ub (extra-get-number-from-expr (get-expr-from-obj val 'ub))))
	(when (and lb ub) (list lb ub))))))

(defhelper interval-eq__ (names fnum &optional subs nohide)
  (let ((excl (append
	       *ia-excluded*
	       (mapcar #'car *ia-builtin*) 
	       (mapcar #'car *ia-extended*)
	       (mapcar #'car subs))))
    (with-fresh-labels
     (!ieq fnum)
     (apply (repeat (expand "length" !ieq)))
     (apply (repeat (expand names !ieq)))
     (expand ("X" "r2E" "b2B") !ieq)
     (apply (repeat (expand "list2array" !ieq)))
     (apply (repeat (then (expand "beval" !ieq)(expand "realexpr?")(expand "eval" !ieq))))
     (expand "##")
     (flatten)
     (assert)
     (protect (^ !ieq) (then (hide-all-but (!ieq nohide))
			     (grind :exclude excl)))
     (assert)))
  "[Interval] Internal strategy." "")

(defhelper vars-sharp__ ()
  (then
   (expand* "##" "contains?")
   (rewrite* ("abs_lt" "abs_le" "ge_abs" "gt_abs"))
   (flatten)
   (assert))
  "[Interval] Internal strategy." "")

(defhelper vars-in-box__ ()
  (then
   (apply (repeat (expand "list2array" 1)))
   (rewrite "vars_in_box")
   (apply (repeat (expand "length" 1)))
   (apply (repeat (expand "vars_in_box_rec" 1)))
   (vars-sharp__$))
  "[Interval] Internal strategy." "")

(defstep numerical (expr &optional (precision 3) (n 3) (maxdepth 10)
			 min? max?
			 vars 
			 subs
			 dirvar
			 verbose?
			 label
			 (equiv? t))
  (let ((name      (freshname "nml"))
	(label     (or label (freshlabel name)))
	(accuracy  (ratio2decimal (expt 10 (- precision)) nil precision))
	(ia-expr   (typecheck (extra-get-expr expr)))
	(ia-estr   (expr2str ia-expr))
	(fms       (append (mapcar #'(lambda (f) (extra-get-formula-from-fnum f))
				   (extra-get-fnums '-))
			   (mapcar #'(lambda (f) 
				       (make-negation
					(extra-get-formula-from-fnum f)))
				   (extra-get-fnums '+))))
	(vars      (ia-complete-vars (enlist-it vars) (ia-get-vars-from-expr ia-expr subs)))
	(initeqs   (extra-reset-evalexprs))
	(ia-vars   (extra-get-var-ranges fms vars))
	(unvars    (ia-find-unbound-vars ia-vars))
	(msg       (cond ((not (check-name "IntervalStrategies4Q__"))
			  (format nil "This strategy requires importing either interval_arith@strategies4Q (for rational expressions)
or interval_arith@strategies (for real-valued expressions) for its proper operation"))
			 (unvars
			  (format nil "Variable~:[~;s~] ~{~a~^,~} ~:[is~;are~] unbounded."
				  (cdr unvars) unvars (cdr unvars)))
			 ((null ia-expr)
			  (format nil "Do not understand argument ~a." expr))
			 ((not (is-number-type (type ia-expr)))
			  (format nil "Expresion ~a is not a real number expression." ia-expr))))
	(ia-box    (unless msg (ia-box ia-vars)))
	(m_or_m    (+ (if min? -1 0) (if max? 1 0)))
	(ia-iexpr  (unless msg (ia-interval-expr ia-expr n ia-vars subs)))
	(names     (unless msg (append (mapcar #'car *ia-let-names*) (list name))))
	(exprs     (unless msg (append (mapcar #'cdr *ia-let-names*) (list ia-iexpr))))
	(namexprs  (merge-lists names exprs))
	(ia-dirvar (or dirvar (cond ((< m_or_m 0) "mindir_maxvar")
				    ((> m_or_m 0) "maxdir_maxvar")
				    (t "altdir_maxvar"))))
	(maxdepth  (if (null ia-vars) 0 maxdepth))
	(ia-eval   (format nil "numerical(~a,~a,~a,~a)(~a,~a)"
			   maxdepth accuracy ia-dirvar m_or_m name ia-box))
	(ia-lvars  (format nil "list2array(0)((:~{~a~^, ~}:))" ia-vars))
	(msg       (or msg (when (listp ia-iexpr) (car ia-iexpr)))))
    (if msg
	(printf msg)
      (spread
       (name-label* namexprs :hide? t)
       ((try-branch
	 (eval-expr ia-eval :safe? nil)
	 ((let ((output (args2 (extra-get-formula -1)))
		(depth  (extra-get-number-from-expr (get-expr-from-obj output 'depth)))
		(splits (get-expr-from-obj output 'splits))
		(lbacc  (ratio2decimal (- (extra-get-number-from-expr 
					   (get-expr-from-obj output 'ans 'lb_max))
					  (extra-get-number-from-expr 
					   (get-expr-from-obj output 'ans 'mm 'lb)))
				       true precision))
		(ubacc  (ratio2decimal (- (extra-get-number-from-expr 
					   (get-expr-from-obj output 'ans 'mm 'ub))
					  (extra-get-number-from-expr 
					   (get-expr-from-obj output 'ans 'ub_min)))
				       true precision))
		(eqs    (extra-evalexprs))
		(maxd   (= depth maxdepth))) 	
	    (with-fresh-labels 
	     (!iax)
	     (relabel label -1)
	     (lemma "numerical_soundness")
	     (inst? -1)
	     (replaces label)
	     (beta -1)
	     (expand "sound?" -1)
	     (apply (repeat (expand "length" -1)))
	     (extra-evalexprs$ eqs !iax)
	     (branch
	      (split -1)
	      ((then
		(flatten)
		(relabel label (-2 -3 -4 -5))
		(hide label)
		(spread
		 (inst -1 ia-lvars)
		 ((branch
		   (invoke (case "%1 = %2") (! -1 1) ia-estr)
		   ((then 
		     (when verbose?
		       (printf "~%----")
		       (when maxd
			 (printf "Maximum depth has been reached. Accuracy 10^-~a is not guranteed"
				 precision)
			 (printf "Set either MAXDEPTH or N to values greater than ~a AND ~a, respectively" 
				 maxdepth n))
		       (printf "Lower bound accuracy <= ~a" lbacc) 
		       (printf "Upper bound accuracy <= ~a" ubacc)
		       (printf "Splits: ~a. Depth: ~a~%----~%" splits depth)
		       (printf "See hidden formulas labeled \"~a\" for more information"
			       label))
		     (replaces -1)
		     (decimalize -1 precision))
		    (then (hide -1) (when equiv? (interval-eq__$ names 1 subs)))
		    (then (hide -1) (reveal !iax) (replaces !iax :hide? nil) (vars-sharp__$))))
		  (if (null ia-vars)
		      (eval-formula)
		    (then 
		     (reveal !iax)
		     (replaces !iax :hide? nil) 
		     (vars-in-box__$))))))
	       (eval-formula)))))
	  (skip))
	 (skip))))))
  "[Interval] Computes lower and upper bounds of the minimum and maximum
values of EXPR using a branch and bound algorithm based on interval arithmetic.
PRECISION is the number of decimals in the output interval. The parameter N
concerns the accuracy of the computations of real-valued functions in EXPR.
The higher the value of N, the more accurate the computation of these functions.
MAXDEPTH is a maximum recursion depth for the branch and bound algorithm.

The accuracy of the bounds is 10^-PRECISION. However, this accuracy is not
guaranteed when MAXDEPTH is reached. The strategy also computes intervals
whose evaluations are close to the minimum and maximum values up this
accuracy. If MIN? (resp. MAX?) is set to t, only a minimum (resp. maximum)
value of the specified accuracy is sought. 

VARS is a list of the form (<v1> ... <vn>), where each <vi> is either a
variable name, e.g., \"x\", or a list consisting of a variable name and
an interval, e.g., (\"x\" \"[|-1/3,1/3|]\"). This list is used to specify
the variables in EXPR and to provide their ranges. If this list is not
provided, this information is extracted from the sequent.

SUBS is a list of substitutions for translating user-defined
real-valued functions into interval ones. Each substitution has
the form (<f> <F>), where <f> is the name of a real-valued function
and <F> is the name of its interval counterpart. It is assumed that
<F> satisfies the Inclusion and the Fundamental theorems of interval
arithmetic for <f>. Standard substitutions for basic arithmetic
operators, abs, sq, sqrt, trigonometric functions, exp, and ln
are already provided. This parameter can be used to change the
default approximation parameter N for a particular function, e.g.,
((\"pi\" \"PI_n(4)\") (\"cos\" (\"COS_n\" 1))(\"sin\" (\"SIN_n\" -1)))
specifies that pi must be computed with N=4, cos must be computed with
N+1, and sin must be computed with N-1.

DIRVAR is the name of a direction and variable selection method for
the branch an bound algorithm. Theory numerical_bandb includes some
pre-defined methods. If none is provided, a choice is made base on the
problem.

If VERBOSE? is set to t, the strategy prints information about number of
splits, depth, etc. 

LABEL is used to label formulas containing additional information computed
by the branch and bound algorithm. These formulas are hidden, but they can
be brought to the sequent using the proof command REVEAL.

If EQUIV? is set to nil, the strategy doesn't try to prove that the
deep embedding of the original expression is correct. The proof of
this fact is trivial from a logical point of view, but requires
unfolding of several definitions which is time consuming in PVS."
  "Computing minmax values of expression ~a,~%via interval arithmetic")

(defun ia-is-true-output (ans)
  (and (is-function-expr ans "Some")
       (extra-is-true (argument ans))))

(defun ia-is-false-output (ans)
  (and (is-function-expr ans "Some")
       (extra-is-false (argument ans))))

(defstep interval (&optional (fnums 1) (n 4) maxdepth sat?
			     vars 
			     subs 
			     dirvar
			     verbose?
			     label
			     (equiv? t)
			     (tccs? t))
  (let ((name     (freshname "iar"))
	(label    (or label (freshlabel name)))
	(fns      (extra-get-fnums fnums))
	(fn       (if (= (length fns) 1) (car fns) 0))
	(expr     (when fns
		    (if (equal fn 0)
			 (mk-disjunction (mapcar #'formula (extra-get-seqfs fns)))
			(extra-get-formula-from-fnum fn))))
	(quant    (cond ((forall-expr? expr) 1)
			((exists-expr? expr) -1)
			(t 0))) ;; forall: quant > 0, exists: quant < 0, none: 0
	(fms      (append (mapcar #'(lambda (f) (extra-get-formula-from-fnum f))
				  (extra-get-fnums `(-^ ,fnums)))
			  (mapcar #'(lambda (f) 
				      (make-negation
				       (extra-get-formula-from-fnum f)))
				  (extra-get-fnums `(+^ ,fnums)))))
	(qexpr    (when (/= quant 0) (lift-predicates-in-quantifier expr (list *real*))))
	(andexprs (when expr
		    (cond ((< quant 0) 
			   (get-ands-expr (expression qexpr)))
			  ((> quant 0) 
			   (cdr (get-hypotheses (expression qexpr))))
			  ((and (= quant 0) (< fn 0))
			   (get-ands-expr expr))
			  ((and (= quant 0) (> fn 0))
			   (cdr (get-hypotheses expr))))))
	(ia-expr  (if (= quant 0) expr (expression qexpr)))
	(qvars    (when (/= quant 0)
		    (mapcar #'(lambda (x) (format nil "~a" (id x))) (bindings qexpr))))
	;; qvars has quantified variables
	(vars     (ia-complete-vars
		   (enlist-it vars)
		   (if (/= quant 0) ;; Quantifier
		       ;; Only consider variables in the quantifier
		       qvars
		     ;; Consider all variables in the expression
		     (ia-get-vars-from-expr ia-expr subs))))
	;; vars has user provided variables + quantified variables
	(initeqs (extra-reset-evalexprs))
	(ia-vars (extra-get-var-ranges
		  (if (/= quant 0) ;; Quantifier
		      ;; Only consider ranges in the quantifier
		      andexprs
		    ;; Consider all ranges
		    (append andexprs fms))
		  vars))
	;; ia-vars is just like vars but only names
	(unvars  (ia-find-unbound-vars ia-vars))
	(tccs?   (and tccs? (not sat?)))
	(msg     (cond ((null expr)
			(format nil "Formula ~a not found" fnums))
		       ((and sat? (null ia-vars))
			(format nil "Formula ~a doesn't seem to have variables. It cannot be checked for satisfiability" fnums))
		       ((not (check-name "IntervalStrategies4Q__"))
			(format nil "This strategy requires importing either interval_arith@strategies4Q (for rational expressions)
or interval_arith@strategies (for real-valued expressions) for its proper operation"))
		       (unvars
			(format nil "Variable~:[~;s~] ~{~a~^,~} ~:[is~;are~] unbounded."
				(cdr unvars) unvars (cdr unvars))))))
    (if msg
	(printf msg)
      (let ((findcex   (if sat? (<= quant 0) (< (* fn quant) 0)))
	    (neg       (if sat? (<= quant 0) (or (< quant 0) (and (= quant 0) (< fn 0)))))
	    (nname     (if neg (format nil "BNOT(~a)" name) name))
	    (ia-box    (ia-box ia-vars))
	    (ia-iexpr  (ia-interval-expr ia-expr n ia-vars subs))
	    (names     (append (mapcar #'car *ia-let-names*) (list name)))
	    (exprs     (append (mapcar #'cdr *ia-let-names*) (list ia-iexpr)))
	    (namexprs  (merge-lists names exprs))
	    (ia-dirvar (or dirvar "alt_max"))
	    (maxdepth  (cond ((null ia-vars) 0)
			     (maxdepth maxdepth)
			     (findcex 10)
			     (t 100)))
	    (ia-eval   (format nil "interval(~a,~a,~:[TRUE~;FALSE~])(~a,~a)"
			       maxdepth ia-dirvar findcex nname ia-box))
	    (msg       (when (listp ia-iexpr) (car ia-iexpr))))
	(if msg
	    (printf msg)
	  (with-fresh-labels@
	   (!ia fnums :tccs? tccs?)
	   (spread
	    (name-label* namexprs :hide? t :tcc-step (then (hide !ia) (extra-tcc-step)))
	    ((try-branch
	      (eval-expr ia-eval :safe? nil)
	      ((then
		(relabel label -1)
		(let ((output  (args2 (extra-get-formula -1)))
		      (splits  (get-expr-from-obj output 'splits))
		      (depth   (get-expr-from-obj output 'depth))
		      (answer  (get-expr-from-obj output 'ans 'answer))
		      (istrue  (ia-is-true-output answer))
		      (isfalse (ia-is-false-output answer))
		      (cex     (get-list-from-literal (get-expr-from-obj output 'ans 'counterex))))
		  (then
		   (when verbose? (printf "~%----"))
		   (if (and (not istrue) (not isfalse))
		       (then
			(printf "Formula cannot be proved nor disproved")
			(printf "Set either MAXDEPTH or N to values greater than ~a AND ~a, respectively" 
				maxdepth n))
		     (let ((prfex    (and cex findcex (/= quant 0) (not sat?))) ;; Existential proof
			   (prfall   (and istrue (not findcex) (not sat?))) ;; Universal proof
			   (disprf   (and (if findcex istrue cex) (not sat?))) ;; Disproof
			   (varvals  (if cex (merge-lists ia-vars cex)
				       (merge-lists ia-vars (ia-var-intervals ia-vars))))
			   (eqs      (extra-evalexprs))
			   (msg      (format nil
					     (if cex "~:[Formula~;Sequent~] ~@[~a ~]~a for ~{~a = ~a~^, ~}"
					       "~:[Formula~;Sequent~] ~@[~a ~]~a for any ~{~a ## ~a~^, ~}")
					     (or prfex prfall disprf)
					     (unless (or prfex prfall disprf) fnums)
					     (cond ((or prfex prfall) "holds")
						   (disprf "can be disproved")
						   ((and cex findcex) "is satisfiable")
						   (findcex "is not satisfiable")
						   (istrue "is valid")
						   (t "is invalid"))
					     varvals)))
		       (if (or prfex prfall) ;; Proof needs to be done
			   (then
			    (when verbose? (printf "~a~%Splits: ~a. Depth: ~a~%----~%" msg splits depth))
			    (lemma "interval_soundness")
			    (with-fresh-labels 
			     ((!ia-inst -1) (!ia-eqs))
			     (inst? !ia-inst)
			     (replaces label)
			     (beta !ia-inst)
			     (expand "sound?" !ia-inst)
			     (apply (repeat (expand "length" !ia-inst)))
			     (extra-evalexprs$ eqs !ia-eqs)
			     (branch (split !ia-inst)
				     ((if prfex ;; Existential proof
					  (let ((vs     (pairlis ia-vars cex))
						(instvs (mapcar 
							 #'(lambda (x)
							     (format nil "~a" 
								     (cdr (assoc x vs :test #'string=))))
							 qvars))
						(instp  (cons 'inst (cons !ia instvs))))
					    (then
					     (flatten)
					     (hide (-1 1))
					     instp
					     (eval-formula !ia :quiet? t)
					     (when equiv? 
					       (reveal !ia-eqs) 
					       (replaces !ia-eqs :hide? nil)
					       (interval-eq__$ names 1 subs))
					     (eval-formula !ia)))
					;; Universal proof
					(let ((nqvars   (freshnames "x" (length qvars)))
					      (vs       (when nqvars (pairlis qvars nqvars)))
					      (skvs     (if nqvars
							    (mapcar #'(lambda (x)
									(cdr (assoc x vs :test #'string=))) 
								    ia-vars)
							  ia-vars))
					      (ia-lvars (format nil "list2array(0)((:~{~a~^, ~}:))" skvs)))
					  (then
					   (when nqvars (skolem !ia nqvars :skolem-typepreds? t))
					   (spread (inst !ia-inst ia-lvars)
						   ((when equiv? 
						      (reveal !ia-eqs) 
						      (replaces !ia-eqs :hide? nil)
						      (interval-eq__$ names !ia-inst 
								      subs *!ia-tccs*))
						    (if (null ia-vars)
							(eval-formula)
						      (then (flatten)
							    (reveal !ia-eqs) 
							    (replaces !ia-eqs :hide? nil)
							    (vars-in-box__$))))))))
				      (eval-formula)))))
			 (printf msg))))
		   (hide label)
		   (when verbose?
		     (printf "Splits: ~a. Depth: ~a" splits depth)
		     (printf "See hidden formulas labeled ~a for more information~%----~%" label)))))
	       (hide !ia))
	      (skip)))))))))
  "[Interval] Checks if formulas FNUMS, which may be simply quantified,
holds using a branch and bound algorithm based on interval arithmetic.
The parameter N concerns the accuracy of the computations of real-valued
functions in EXPR. The higher the value of N, the more accurate the
computation of these functions. MAXDEPTH is a maximum recursion depth
for the branch and bound algorithm.

If SAT? is set to t, the strategy checks if formula FNUMS,
whether in the antecedent or in the consequent, is satisfiable
and, in the positive case, prints a provably correct witness.
If formula FNUMS is quantified, it is checked for validity.

VARS is a list of the form (<v1> ... <vn>), where each <vi> is either a
variable name, e.g., \"x\", or a list consisting of a variable name and
an interval, e.g., (\"x\" \"[|-1/3,1/3|]\"). This list is used to specify
the variables in EXPR and to provide their ranges. If this list is not
provided, this information is extracted from the sequent.

SUBS is a list of substitutions for translating user-defined
real-valued functions into interval ones. Each substitution has
the form (<f> <F>), where <f> is the name of a real-valued function
and <F> is the name of its interval counterpart. It is assumed that
<F> satisfies the Inclusion and the Fundamental theorems of interval
arithmetic for <f>. Standard substitutions for basic arithmetic
operators, abs, sq, sqrt, trigonometric functions, exp, and ln
are already provided. This parameter can be used to change the
default approximation parameter N for a particular function, e.g.,
((\"pi\" \"PI_n(4)\") (\"cos\" (\"COS_n\" 1))(\"sin\" (\"SIN_n\" -1)))
specifies that pi must be computed with N=4, cos must be computed with
N+1, and sin must be computed with N-1.

DIRVAR is the name of a direction and variable selection method for
the branch an bound algorithm. Theory interval_bandb includes some
pre-defined methods. If none is provided, a choice is made base on the
problem.

If VERBOSE? is set to t, the strategy prints information about number of
splits, depth, etc. 

LABEL is used to label formulas containing additional information computed
by the branch and bound algorithm. These formulas are hidden, but they can
be brought to the sequent using the proof command REVEAL.

If EQUIV? is set to nil, the strategy doesn't try to prove that the
deep embedding of the original expression is correct. The proof of
this fact is trivial from a logical point of view, but requires
unfolding of several definitions which is time consuming in PVS.

If TCCs? is set to nil, the strategy doesn't try to prove possible
TCCs generated during its execution."
  "Checking formula ~a using interval arithmetic")

(defstrat interval-about ()
  (let ((version (format nil "Interval -- NASA PVS Library ~a" *nasalib-version*))
	(strategies *interval-strategies*)) 
    (printf "%--
% ~a
% http://shemesh.larc.nasa.gov/people/cam/Interval
% Strategies in Interval:~a
%
% Interval strategies require importing either
%   interval_arith@strategies4Q (for rational expressions) or
%   interval_arith@strategies (for real-valued expressions)
% for its proper operation.
%--~%" version strategies))
  "[Interval] Prints Interval's about information.")

;;****
;; The following strategy is here for pedagological reasons.
;; In real proofs, the most ellaborated strategies numerical and interval should be used.
;;****

(defstep simple-numerical (expr &optional (precision 3) (n 3) (maxdepth 5))
  (let ((name    (freshname "sia"))
	(ia-expr (extra-get-expr expr))
	(ia-estr (expr2str ia-expr))
	(fms     (mapcar #'(lambda (fn) (extra-get-formula-from-fnum fn)) (extra-get-fnums '-)))
	(vars    (ia-get-vars-from-expr ia-expr))
	(ia-vars (ia-get-var-ranges fms vars))
	(unvars  (ia-find-unbound-vars ia-vars))
	(msg     (cond (unvars
			(format nil "Variable~:[~;s~] ~{~a~^, ~} ~:[is~;are~] unbounded."
				(cdr unvars) unvars (cdr unvars)))
		       ((null ia-expr)
			(format nil "Do not understand argument ~a." expr))
		       ((not (is-number-expr ia-expr))
			(format nil "Expresion ~a is not a real number expression." ia-expr))))
	(ia-box    (unless msg (ia-box ia-vars)))
	(ia-iexpr  (unless msg (ia-interval-expr ia-expr n ia-vars)))
	(maxdepth  (if (null ia-vars) 0 maxdepth))
	(ia-eval   (format nil "simple_interval(~a,~a,~a)" maxdepth name ia-box))
	(ia-lvars  (format nil "list2array(0)((:~{~a~^, ~}:))" ia-vars))
	(msg       (or msg (when (listp ia-iexpr) (car ia-iexpr)))))
    (if msg
	(printf msg)
      (spread
       (name-label name ia-iexpr :hide? t)
       ((try-branch
	 (eval-expr ia-eval :safe? nil)
	 ((then (lemma "simple_interval_soundness")
		(inst? -1)
		(replaces -2)
		(beta -1)
		(expand "sound?" -1)
		(branch (split -1)
			((spread (inst -1 ia-lvars)
				 ((branch (invoke (case "%1 = %2") (! -1 1) ia-estr)
					  ((then (replaces -1)
						 (decimalize -1 precision))
					   (interval-eq__ name 1)
					   (then (hide -1)(vars-sharp__))))
				  (if (null ia-vars)
				      (eval-formula)
				    (vars-in-box__))))
			 (eval-formula))))
	  (skip))
	 (skip))))))
  "[Interval] Computes a simple estimation of the minimum and maximum values
of EXPR using a branch and bound algorithm based on interval arithmetic.
PRECISION is the number of decimals in the output interval. The parameter N
concerns the accuracy of the computations of real-valued functions in EXPR.
The higher the value of N, the more accurate the computation of these functions.
MAXDEPTH is a maximum recursion depth for the branch and bound algorithm.

This strategy is a simplified version of the more elaborated strategy NUMERICAL."
  "Computing estimates to the minmax of expression ~a,~%using interval arithmetic")

