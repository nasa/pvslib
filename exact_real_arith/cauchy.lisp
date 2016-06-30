(defparameter *era-builtin*
  '(("+" "ADD") ("*" "MULT") ("neg" "NEG") ("^" "POW")
    ("-" "SUB") ("min" "MIN") ("max" "MAX") ("exp" "EXP")
    ("/" "DIV") ("sqrt" "SQRT") ("floor" "FLOOR") ("ln" "LN") ("pi" "PI")
    ("acos" "ACOS") ("mod" "MOD") ("cos" "COS") ("sin" "SIN")))

(defparameter *era-extended* nil)

(defparameter *era-var-values* nil)

(defparameter *cauchy-strategies* "
% era-numerical: Computes a real-valued expression to a specified precision")

(defun era-expr (expr n vars &optional subs)
  (let ((*ia-builtin* *era-builtin*)
        (*ia-extended* *era-extended*))
    (ia-interval-expr expr n vars subs)))

(defun era-make-var-list (vars)
  (let ((varlst
         (loop for v in vars
               for xv = (gethash v *era-var-values*)
               collect (format nil "~a" xv))))
    (if vars
        (format nil "(: ~{~a~^,~} :)" varlst)
        "(::)")))

(defun get-var-value-from-lst (var fmexpr)
  (let* ((expr (extra-get-expr fmexpr))
         (val  (extra-add-evalexpr expr)))
    (when val
      (setf (gethash var *era-var-values*) val))))

(defun get-var-value-from-formula (fm vars)
  (when (and (equality? fm)
             (is-variable-expr? (args1 fm) vars))
    (let* ((expr (extra-get-expr (args2 fm)))
           (val  (extra-add-evalexpr expr)))
      (when val
        (let ((num (extra-get-number-from-expr val t)))
          (when num
            (setf (gethash (expr2str (args1 fm)) *era-var-values*) num)))))))

(defun era-get-vars (fms vars)
  (setq *era-var-values* (make-hash-table :test #'equal))
  (let ((uvars (remove-if #'listp vars)))
    (loop for fm in fms
          do (unless (negation? fm)
               (get-var-value-from-formula fm uvars))))
  (loop for v in vars
        when (listp v)
          do (get-var-value-from-lst (car v) (cadr v)))
  vars)

(defun era-find-unbound-vars (vars)
  (loop for v in vars
        when (null (gethash v *era-var-values*))
          collect v))

(defstep era-numerical (expr
                        &optional (precision 3) (zero-prec 5)
                        vars
                        (equiv? t))
  (let ((required-theories '(("CauchyStrategies__")
                             "This strategy requires importing exact_real_arith@strategies"))
        (subs        nil)
        (name        (freshname "nml"))
        (label       (freshlabel name))
        (era-expr    (typecheck (extra-get-expr expr)))
        (era-estr    (expr2str era-expr))
        (fms         (append (mapcar #'extra-get-formula-from-fnum
                                     (extra-get-fnums '-))
                             (mapcar #'(lambda (f)
                                         (make-negation
                                          (extra-get-formula-from-fnum f)))
                                     (extra-get-fnums '+))))
        (vars        (ia-complete-vars (enlist-it vars)
                                       (ia-get-vars-from-expr era-expr subs)))
        (initeqs     (extra-reset-evalexprs))
        (era-vars    (era-get-vars fms vars))
        (unvars      (era-find-unbound-vars era-vars))
        (msg         (cond ((not (validate-required-theories required-theories))
                            (format nil "Error in param: required-theories should have the form ((<th_1 name> ... <th_n name>) <error msg>) or (<th_1 name> ... <th_n name>)"))
                           ((and (req-ths-names required-theories)
                                 (notany (lambda (thname) (check-name thname))
                                         (req-ths-names required-theories)))
                            (req-ths-errormsg required-theories))
                           (unvars
                            (format nil "Variable~:[~;s~] ~{~a~^,~} ~:[is~;are~] unbound."
                                    (cdr unvars) unvars (cdr unvars)))
                           ((null era-expr)
                            (format nil "Do not understand argument ~a." expr))))
        (era-var-lst (unless msg (era-make-var-list era-vars)))
        (era-erexpr  (unless msg (era-expr era-expr precision era-vars subs)))
        (names       (unless msg (append (mapcar #'car *ia-let-names*)
                                         (list name))))
        (exprs       (unless msg (append (mapcar #'cdr *ia-let-names*)
                                         (list era-erexpr))))
        (namexprs    (merge-lists names exprs))
        ;; prec/zp need to be in binary digits.
        ;; 2^(-n) <= 10^(-p)/2  ==>  2^-(n-1) <= 10^(-p)  ==>
        ;;   -(n-1)ln(2) <= -p ln(10)  ==>  n >= 1 + p(ln(10) / ln(2))
        (prec        (ceiling (1+ (* precision 3.322))))
        (zp          (ceiling (1+ (* zero-prec 3.322))))
        (era-eval    (format nil "cauchy_numerical.numerical(~a, ~a)(~a,~a)"
                             prec zp name era-var-lst))
        (era-lvars   (format nil "list2array(0)((: ~{~a~^, ~} :))" era-vars))
        (msg         (or msg (when (listp era-erexpr) (car era-erexpr)))))
    (if msg (printf msg)
      (then
       (name-label* namexprs :hide? t)
       (eval-expr era-eval :safe? nil)
       (relabel label -1)
       (let ((output  (args2 (extra-get-formula label)))
             (ans     (get-expr-from-obj output 'ans))
             (ans-str (format nil "~a" ans))
             (p-str   (format nil "~a" prec)))
         (if (string= ans-str "None")
             (then
              (printf "Cannot compute ~a" expr)
              (fail))
             (then
              (lemma "cauchy_numerical.numerical_soundness")
              (inst -1 name prec era-var-lst zp)
              (beta -1)
              (spread
               (split -1)
               ((then
                 (flatten)
                 (decompose-equality label)
                 (replaces -1)
                 (replaces -1)
                 (simplify (-1 -2))
                 (invoke (div-by -1 "2 ^ %1") p-str)
                 (invoke (div-by -2 "2 ^ %1") p-str)
                 (branch
                  (invoke (case "%1 = %2") (! -1 2) era-estr)
                  ((then
                    (replaces -1)
                    (expand "^")
                    (repeat (expand "expt"))
                    (decimalize -1 precision l)
                    (decimalize -2 precision r))
                   (then (hide -1) (when equiv? (interval-eq__$ names 1 subs)))
                   (then (hide -1) (reveal !iax) (replaces !iax :hide? nil) (vars-sharp__$)))))
                (assert)))))))))

  "[Cauchy] Compute the value of EXPR such that PRECISION indicates an accuracy
of 10^-PRECISION on the output. ZERO-PREC is used internally to determine
the result of a subexpression is in the domain of its parent expression. For
example, in the expression \"expr1 / expr2\", if the result of expr2 is within
10^-ZERO-PREC of zero, then the strategy will fail."
  "Computing the value of ~a~%using exact real arithmetic")

(defstep step-numerical (exprs
                         &optional (precision 3) (zero-prec 5)
                         vars
                         (equiv? t)
                         res_lb
                         res_ub)
  (if (null exprs)
      (skip)
      (then
       (if res_lb
           (let ((expr (car exprs))
                 (vars_lb (cons (list "res" res_lb) vars))
                 (vars_ub (cons (list "res" res_ub) vars)))
             (then
              (era-numerical expr precision zero-prec vars_lb equiv?)
              (delete -1)
              (era-numerical expr precision zero-prec vars_ub equiv?)
              (delete -2)))
           (let ((expr (car exprs)))
             (era-numerical expr precision zero-prec vars equiv?)))
       (let ((upper (args2 (extra-get-formula -1)))
             (lower (args1 (extra-get-formula -2)))
             (exs   (cdr exprs)))
         (step-numerical exs precision zero-prec
                         vars equiv? lower upper))))
  "[Cauchy] Compute the value of each expression in EXPRS in order, substituting
thes result of the previous expression for %res.

(step-numerical (expr_1 ... expr_n)) is equivalent to (era-numerical expr_1)
followed by (era-numerical expr_(i+1) :vars ((\"%res\" lb_i))) and
(era-numerical expr_(i+1) :vars ((\"res\" ub_i))) where lb_i and ub_i give the
lower and upper bounds on expr_i as returned by era-numerical."
  "Computing expressions using exact real arithmetic")
