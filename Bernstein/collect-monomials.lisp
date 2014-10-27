;;
;; The following functions implement several pre-processing steps
;; needed to handle certain polynomial expressions in PVS.
;;
;; Assume a sub-expression language of PVS-objects defined as follows
;;
;; r ::= <rational numerical value>
;; n ::= <positive natural numerical value>
;; var ::= identifier
;;
;; <expr> := var | r | (<expr>) | -<expr> | <expr> ( + | - | * ) <expr> |
;;           <expr> / r | <expr>^n
;;
;; The function  (get-multivar-polynomial <expr> (<var1> ... <varn>))
;; returns either nil if there is an error or two lists:
;; 1. (<n1> ... <nn>) : List of maximum degrees of <var1>... <varn> in <expr>.
;; 2. ((<r1> . <m1>) ... (<rn> . mn>)) : List of monomials in <expr>. A
;; monomial is a coefficient <ri> and an array <mi> of n positions, where the
;; value at the i-th position represents the degree of the i-th var.
;;
;; Example:  Let expr be 4.44 + 5*x^2 + 7.77*x*y^3 + 0.55*x*x
;;
;; (get-multivar-polynomial expr ("x" "y")) returns the following two lists:
;;
;; 1. (2 3): Maximum degree of "x" and "y" in expr, respectively.
;; 2. ( (4.44 . (0 0))     ;; 4.44
;;      (5.55 . (2 0))     ;; 5.55*x^2
;;      (7.77 . (1 3)) )   ;; 7.77*x*y^3
;;


(defvar *monomial-var-names* nil)

(defvar *monomial-null-exponents* nil)

;; Building the polynomial representation uses an intermediate list
;; structure to assemble the elements as the recursive descent of an
;; expression proceeds.  Each element has one of these forms:
;;     (num  <number>)
;;     (var  <variable-index> <exponent>)
;;     (mono r e1 ... en)
;;     (poly (r e1 ... en) ...)
;; As each sub-expression is recognized, one of these objects will be
;; generated for it, which will later be used to carry out operations
;; as the overall polynomial structure is computed.


;; A monomial term is represented by a list (r e1 ... en), where
;; r is a rational coefficient and e1,...,en are integer exponents
;; for the n variables.

(defun make-monomial-repr (num var-expon)
  (let ((exponents (copy-list *monomial-null-exponents*)))
    (when var-expon
      (setf (nth (car var-expon) exponents) (cadr var-expon)))
    `(mono ,num ,@exponents)))

;; The following function is used when a sub-expression needs to be
;; cast in the form of a polynomial.

(defun make-poly-expr (expr)
  (case (car expr)
    (num  `(poly ,(cdr (make-monomial-repr (cadr expr) nil))))
    (var  `(poly ,(cdr (make-monomial-repr 1 (cdr expr)))))
    (mono `(poly ,(cdr expr)))
    (poly expr)))

;; Negating an expression involves negating each coefficient.

(defun poly-neg-monomials (expr)
  (case (car expr)
    (num  `(num ,(- (cadr expr))))
    (var  (make-monomial-repr -1 (cdr expr)))
    (mono `(mono ,(- (cadr expr)) ,@(cddr expr)))
    (poly `(poly ,@(mapcar #'(lambda (m) (cons (- (car m)) (cdr m)))
			   (cdr expr))))))

;; Dividing an expression by a rational number requires dividing
;; each coefficient.

(defun poly-quotient-monomials (expr divisor)
  (let ((div-num (if (eq (car divisor) 'num) (cadr divisor) 1)))
    (case (car expr)
      (num  `(num ,(/ (cadr expr) div-num)))
      (var  (make-monomial-repr (/ 1 div-num) (cdr expr)))
      (mono `(mono ,(/ (cadr expr) div-num) ,@(cddr expr)))
      (poly `(poly ,@(mapcar #'(lambda (m) (cons (/ (car m) div-num) (cdr m)))
			     (cdr expr)))))))

;; Form the sum or difference of two polynomials by concatenating
;; their lists of monomials, with negation applied as needed.
;; First convert single terms to polynomials before proceeding.

(defun poly-sum-monomials (left op right)
  (let* ((left-poly (make-poly-expr left))
	 (signed-right (make-poly-expr 
			(if (eq op '-) (poly-neg-monomials right) right))))
    `(poly ,@(append (cdr left-poly) (cdr signed-right)))))

;; Exponentiation proceeds differently according to expression type.

(defun poly-expon-monomials (expr exponent)
  (let ((exp-num (if (eq (car exponent) 'num) (cadr exponent) 0)))
    (case (car expr)
      (num  `(num ,(expt (cadr expr) exp-num)))
      (var  `(var ,(cadr expr) ,(* exp-num (caddr expr))))
      (mono `(mono ,(expt (cadr expr) exp-num)
		   ,@(mapcar #'(lambda (var) (* var exp-num)) (cddr expr))))
      (poly (reduce #'poly-product-monomials
		    (make-list exp-num :initial-element expr))))))


;; Products of expressions are constructed for all the possible
;; combinations of sub-expressions that can appear as arguments.
;; The arguments are commuted in some cases to reduce the number of
;; combinations that must be enumerated.

(defun poly-product-monomials (left right)
  (flet ((mult-by-poly (expr1 expr2)
	   ;; expr2 must be poly; returns a list of monomials.
	   (mapcar #'(lambda (m)
		       (cdr (poly-product-monomials expr1 `(mono ,@m))))
		   (cdr expr2)))
	 (var-mult-mono (expr1 expr2)
	   (let ((vars (copy-list (cddr expr2))))
	     (incf (nth (cadr expr1) vars) (caddr expr1))
	     `(mono ,(cadr expr2) ,@vars))))

    (case (car left)
      (num (case (car right)
	     (num  `(num ,(* (cadr left) (cadr right))))
	     (var  (make-monomial-repr (cadr left) (cdr right)))
	     (mono `(mono ,(* (cadr left) (cadr right)) ,@(cddr right)))
	     (poly `(poly ,@(mult-by-poly left right)))))
      (var (case (car right)
	     (var  (var-mult-mono left (make-monomial-repr 1 (cdr right))))
	     (mono (var-mult-mono left right))
	     (poly `(poly ,@(mult-by-poly left right)))
	     (t (poly-product-monomials right left))))
      (mono (case (car right)
	      (mono `(mono ,(* (cadr left) (cadr right))
			   ,@(mapcar #'+ (cddr left) (cddr right))))
	      (poly `(poly ,@(mult-by-poly left right)))
	      (t (poly-product-monomials right left))))
      (poly (case (car right)
	      ;; Compute the cross product, then sum terms with equal exponents.
	      (poly `(poly ,@(combine-common-terms
			      (mapcan
			       #'(lambda (m)
				   (cdr (poly-product-monomials `(mono ,@m)
								right)))
			       (cdr left)))))
	      (t (poly-product-monomials right left)))) )))


;; Collect lists of monomials by parsing and processing the given PVS
;; expression.  Recursive descent is used to traverse the grammar of
;; allowed subexpressions.  Individual numbers, variables, monomials
;; and polynomials are combined on the way back up to the top of the
;; expression tree.  Returns a list of monomials whose sum is equal
;; to the input expression.

(defun collect-monomials (expr)
  (cond ((typep expr 'name-expr)
	 `(var ,(position (id expr) *monomial-var-names* :test #'string=) 1))
	((typep expr 'fieldappl)
	 `(var ,(position (format nil "~a" expr) *monomial-var-names* :test #'string=) 1))
	((typep expr 'number-expr)
	 `(num ,(number expr)))
	((typep expr 'decimal)
	 `(num ,(/ (number (args1 expr)) (number (args2 expr)))))

	((typep expr 'infix-application)
	 (let ((op (id (operator expr)))
	       (left  (collect-monomials (args1 expr)))
	       (right (collect-monomials (args2 expr))))
	   (case op
	     (* (poly-product-monomials left right))
	     (/ (if (number-expr? (args2 expr))
		    (poly-quotient-monomials left right)
		  (type-error nil "~a doesn't seem to be a polynomial%~" expr)))
	     (^ (poly-expon-monomials left right))
	     ((+ -) (poly-sum-monomials left op right))
	     (t nil))))  ;;; unrecognized infix operator

	((and (typep expr 'unary-application)
	      (eq (id (operator expr)) '-))
	 (poly-neg-monomials (collect-monomials (argument expr))))

	(t nil)))	  ;;; unknown case: error???


;; Look for terms having identical exponents on all variables.  Combine
;; these by summing their coefficients, then purge any resulting terms
;; with zero coefficients.

(defun combine-common-terms (terms)
  (let ((deg-terms nil))
    ;; Build an A-list where each item has the form ((e1 ... en) . coeff).
    ;; Use the exponent lists as keys to search for matching monomials.
    (loop for term in terms
	  do (let ((item (assoc (cdr term) deg-terms :test #'equal)))
	       (if item
		   (incf (cdr item) (car term))
		   (setq deg-terms
			 (acons (cdr term) (car term) deg-terms)))))
    (let ((combined (mapcar #'(lambda (term) (cons (cdr term) (car term)))
			    deg-terms)))
      ;; Drop every monomial having a zero coefficient.
      (mapcan #'(lambda (m) (and (not (zerop (car m))) (list m)))
	      combined))))


;; This is the top-level function to process multivariate polynomials.
;; Returns a list of max degrees and the list of monomials (in no
;; particular order).

(defun get-multivar-polynomial (expr vars)
   (multiple-value-bind 
       (value error)
       (ignore-errors
	 (setq *monomial-var-names* vars)
	 (setq *monomial-null-exponents*
	       (make-list (length vars) :initial-element 0))
	 (let* ((normalized (cdr (make-poly-expr (collect-monomials expr))))
		(combined (or (combine-common-terms normalized)
			      (mapcar #'(lambda (x) (list 0 0)) vars)))
		(max-degrees (loop for n from 1 to (length vars)
			      collect (apply #'max
					     (mapcar #'(lambda (degrees)
							 (nth n degrees))
						     combined)))))
	   (list max-degrees combined)))
     value))

