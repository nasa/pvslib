(defparameter *bernstein-rews* '("multipolylist_const" "multipolylist_var" "multipolylist_varn"
				 "multipolylist_monom" "multipolylist_sum" "multipolylist_minus"
				 "multipolylist_prod" "multipolylist_scal" "multipolylist_neg"
				 "multipolylist_div" "multipolylist_pow" "multipolylist_sq" "expt_x1"
				 "expt_x0"))

(defparameter *bernstein-vars* nil) ;; Variables

(defun bernstein-error (msg)
  (throw '*bernstein-error* (list msg)))

(defun bernstein-poly-expr (expr &optional vars)
  (catch '*bernstein-error* 
    (setq *bernstein-vars* vars)
    (extra-reset-evaleqs)
    (bernstein-poly-expr-rec expr vars)))

(defun is-bernstein-var (expr all-vars)
  (when (is-variable-expr expr)
    (let* ((name (expr2str expr))
	   (vs   (member name *bernstein-vars* :test #'string=)))
      (cond (vs (- (length *bernstein-vars*) (length vs)))
	    (all-vars
	     (bernstein-error 
	      (format 
	       nil 
	       "Expression doesn't seem to be a polynomial on variable~p ~{~a~^,~}. Found variable: ~a" 
	       (length *bernstein-vars*) *bernstein-vars* name)))
	    (t (setq *bernstein-vars* (append *bernstein-vars* (list name)))
	       (- (length *bernstein-vars*) 1))))))

(defun bernstein-var-deg (expr all-vars)
  (let ((v (is-bernstein-var expr all-vars)))
    (if v (list v)
      (if (is-function-expr expr "^")
	  (let* ((v (is-bernstein-var (args1 expr) all-vars))
		 (d (when v (extra-add-evalexpr (args2 expr)))))
	    (when d (list v d)))))))

;; Return a list of upto 3 elements, where c is coefficent, v is a var, and d is degree
;; (v), (v d), (c v d)
(defun bernstein-monom-expr (expr all-vars)
  (let ((vd (bernstein-var-deg expr all-vars)))
    (or vd
	(when (is-function-expr expr "*")
	  (let ((val (extra-add-evalexpr (args1 expr))))
	    (when val
	      (let ((vd (bernstein-var-deg (args2 expr) all-vars)))
		(when vd
		  (list val (car vd) (or (cadr vd) 1))))))))))

;; If all-vars is t, *bernstein-vars* is *the* list of all variables, i.e., 
;; no additional variables are allowed

(defun bernstein-poly-expr-rec (expr all-vars)
  (let ((val (extra-add-evalexpr expr)))
    (if val (format nil "mpconst(~a)" val)
      (let ((monom (bernstein-monom-expr expr all-vars)))
	(cond (monom
	       (format nil "mp~[var~;varn~;monom~](~{~a~^,~})"
		       (- (length monom) 1) monom))
	      ((and (unary-application? expr) (is-function-expr expr "-"))
	       (format nil "mpneg(~a)" (bernstein-poly-expr-rec (args1 expr) all-vars)))
	      ((is-function-expr expr "^") 
	       (let ((val (extra-add-evalexpr (args2 expr))))
		 (if val
		     (format nil "mppow(~a,~a)" 
			     (bernstein-poly-expr-rec (args1 expr) all-vars) val)
		   (bernstein-error (format nil "Expression ~a is not a numerical value" 
					    (args2 expr))))))
	      ((is-function-expr expr "/") 
	       (let ((val (extra-add-evalexpr (args2 expr))))
		 (if val
		     (format nil "mpdiv(~a,~a)" 
			     (bernstein-poly-expr-rec (args1 expr) all-vars) val)
		   (bernstein-error (format nil "Expression ~a is not a numerical value" 
					    (args2 expr))))))
	      ((is-function-expr expr "+")
	       (format nil "mpsum(~a,~a)" 
		       (bernstein-poly-expr-rec (args1 expr) all-vars)
		       (bernstein-poly-expr-rec (args2 expr) all-vars)))
	      ((is-function-expr expr "-")
	       (format nil "mpminus(~a,~a)" 
		       (bernstein-poly-expr-rec (args1 expr) all-vars) 
		       (bernstein-poly-expr-rec (args2 expr) all-vars)))
	      ((is-function-expr expr "*")
	       (format nil "mpprod(~a,~a)" 
		       (bernstein-poly-expr-rec (args1 expr) all-vars) 
		       (bernstein-poly-expr-rec (args2 expr) all-vars)))
	      ((is-function-expr expr "sq")
	       (format nil "mpsq(~a)" (bernstein-poly-expr-rec (args1 expr) all-vars)))
	      (t (bernstein-error 
		  (format nil "Expression doesn't seem to be a univariable polynomial. Found: ~a" 
			  expr))))))))

(defun lambda-list (list)
  (let ((myl (loop for i from 0 below (length list)
		   for l in list
		   append (when (not (equal l 0)) (list i l)))))
    (format nil "LAMBDA(i:nat): ~a"
	    (if myl 
		(format nil "~{IF i=~a THEN ~a ELS~}E 0 ENDIF" myl)
	      0))))

(defstep bb (&optional (fnum 1))
  (let ((fn      (extra-get-fnum fnum))
	(expr    (when fn (args1 (extra-get-formula-from-fnum fn))))
        (bpe     (bernstein-poly-expr expr))
	(lvar    (lambda-list *bernstein-vars*))
	(bmp     (freshname "bmp"))
	(bv      (freshname "bv"))
	(ceq     (format nil "~a = meval(~a)(~a)" expr bmp bv))) 
    (then
     (name-label bv lvar :hide? t)
     (name-label bmp bpe :hide? t)
     (branch
      (case ceq)
      ((eval-expr bmp)
       (let ((rws *bernstein-rews*))
	 (then (hide-all-but 1)
	       (expand bmp)
	       (rewrite* rws)
	       (expand bv)))))))
  ""
  "")
