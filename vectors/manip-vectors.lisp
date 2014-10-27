;;;;;;;;;;;;;;;;;;;;;;;;;;; -*- Mode: Lisp -*- ;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;; manip-vectors.lisp -- Manip extensions for vectors.
;; Author          : Ben Di Vito <b.divito@nasa.gov>
;; Created On      : 17 Oct 2008
;; Last Modified By: 
;; Last Modified On: 17 Mar 2009 (v1.3-beta)
;; Last Modified On: 25 Feb 2011 (v1.3)
;; Status          : Development
;; Version         : 1.3
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; 
;;; Requires Manip 1.3 or later.
;;;
;;; This file provides Manip extensions useful for the vectors library.
;;; It consists of class definitions and methods (generic functions) for
;;; computing the proof steps required for the various Manip strategies.
;;; PVS strategies in the top-level Manip file (manip-strategies.lisp)
;;; will invoke these methods for operations on vector types.  Consult
;;; that file to see how the methods are used.
;;;
;;; The names of some vector theories and lemmas are encoded in the
;;; Lisp methods.  If the vectors library undergoes change, some of
;;; these names might need to be edited.  The following user help
;;; documentation summarizes the strategy support available for vectors.
;;;

(defhelper manip-vectors ()
  (skip)
  "[Manip] The following strategies provide support for vectors:

 - swap:  commutes vector sums and dot products
 - group: associates vector sums and scalar/dot products
 - swap-group: combination of these two actions
 - mult-by: create scalar products or dot products according to types
            in formula and new term.
 - div-by: dividing by real x creates scalar product (1/x)*v. 
           dividing by vector u creates scalar product (1/norm(u))*v. 
 - move-terms: behaves with vector sums exactly as for reals.
 - cross-mult: acts on divisors in the real part of scalar products.
 - factor: factors the real and vector parts of sums of scalar products.

Several new strategies for vectors were introduced whose actions aren't
normally needed for reals, but will work for reals as well as vectors:

 - permute-terms: reorder additive terms on one side of a relation
 - cancel-add: find and cancel additive terms within a formula
 - distrib: distribute multiplication over additive terms
 - elim-unary: converts x +/- -y to x -/+ y; also -x + y to y - x

In addition, the following strategies work for vectors because they
invoke vector-aware strategies internally:

 - isolate, isolate-replace, cross-add (using move-terms)

Several strategies work the same on scalar products as they do for real
products, although their actions are limited to the real part of a
scalar product:

 - permute-mult, name-mult
"
  "")


(defclass pvs-type-vector (pvs-type-base) () )

(defclass pvs-type-vect2 (pvs-type-vector) () )
(defclass pvs-type-vect3 (pvs-type-vector) () )

(defconstant-if-unbound pvs-type-funtype (find-class 'funtype))
(defconstant-if-unbound vector-param-types (list *posint*))

(defun vectn-subtype? (vtype)
  (and (typep vtype pvs-type-funtype)
       (subtype-of? (range vtype) *real*)
       (every #'(lambda (p ptype) (subtype-of? (type p) ptype))
	      (free-parameters (domain vtype))
	      vector-param-types)))

(defclass pvs-type-vectn (pvs-type-vector)
  ((param-types :accessor param-types :initform vector-param-types)
   (is-subtype :accessor is-subtype :initform #'vectn-subtype?)))


(defun refresh-vector-types ()
  (loop for name in '(|Vect2| |Vect3| |VectN|)
        for class in '(pvs-type-vect2 pvs-type-vect3 pvs-type-vectn)
	;; if current context isn't set, need to catch the assertion error:
        for res = (handler-case (resolve name 'type nil)
				(error (condition) nil))
        when res
          do (register-manip-type (type (car (resolutions res))) class)))

(register-manip-lib
 "vectors"
 #'refresh-vector-types
 "Extends several Manip strategies to work with vectors.
Invoke (help manip-vectors) to see full documentation.")


;;; ===================

;; The following functions are needed to resolve the correct vectors
;; theory in case multiple vector types are in the formula.

(defun vector-module-qualifier (expr-type)
  (let ((param-types (mapcar #'(lambda (p) (id p))
			     (free-parameters expr-type)))
	(print-type (or (print-type expr-type)
			(and (typep expr-type 'funtype)
			     (print-type (domain expr-type))))))
    (cond (param-types
	   ; generalize to full list:
	   (format nil "vectors[~A]." (car param-types)))
	  ((actuals print-type)
	   (format nil "vectors[~A]." (car (actuals print-type))))
	  ((not (typep expr-type 'recordtype)) "")
	  ((= (length (fields expr-type)) 2)
	   "vectors_2D.")
	  (t "vectors_3D."))))
  
(defmethod manip-additive-zero ((vect pvs-type-vector) expr-type)
  (format nil "~Azero" (vector-module-qualifier expr-type)))

(defmethod vector-class-module-qualifier ((cl pvs-type-vect2)) "vectors_2D.")
(defmethod vector-class-module-qualifier ((cl pvs-type-vect3)) "vectors_3D.")
(defmethod vector-class-module-qualifier ((cl pvs-type-vectn)) "vectors.")

(defun make-qualified-vector-lemmas (lemmas)
  (loop for qual in '("vectors_2D." "vectors_3D." "vectors.")
	collect (loop for lem in lemmas
		      collect (format nil "~A~A" qual lem))))

;; Given a list of lists (2D-lemmas 3D-lemmas nD-lemmas) these methods
;; fetch the type-appropriate subset.  They can't distinguish multiple
;; instances of N-dimensional vectors.

(defmethod get-vector-lemmas ((cl pvs-type-vect2) lemmas) (car lemmas))
(defmethod get-vector-lemmas ((cl pvs-type-vect3) lemmas) (cadr lemmas))
(defmethod get-vector-lemmas ((cl pvs-type-vectn) lemmas) (caddr lemmas))

;;; ===================


;; For swap

(let ((lemmas (make-qualified-vector-lemmas '("add_comm" "dot_comm"))))
  (defmethod manip-commutativity-lemmas ((term-class pvs-type-vector))
    (get-vector-lemmas term-class lemmas)))

;; For group, swap-group

(let ((lemmas (make-qualified-vector-lemmas '("add_assoc"))))
      ;; only addition is possible (ignoring 3D cross products)
  (defmethod manip-associativity-lemmas
    ((cl-x pvs-type-vector) (cl-y pvs-type-vector) (cl-z pvs-type-vector))
    (get-vector-lemmas cl-z lemmas)))

(let ((lemmas (make-qualified-vector-lemmas '("scal_assoc"))))  ;; a * (b * u)
  (defmethod manip-associativity-lemmas
    ((cl-x pvs-type-real) (cl-y pvs-type-real) (cl-z pvs-type-vector))
    (get-vector-lemmas cl-z lemmas)))  

(let ((lemmas (make-qualified-vector-lemmas '("dot_assoc"))))   ;; a * (u * v)
  (defmethod manip-associativity-lemmas
    ((cl-x pvs-type-real) (cl-y pvs-type-vector) (cl-z pvs-type-vector))
    (get-vector-lemmas cl-z lemmas)))


(let ((l-lemmas (make-qualified-vector-lemmas '("add_comm_assoc_right")))
      (r-lemmas (make-qualified-vector-lemmas '("add_comm_assoc_left"))))
  ;; only addition is possible (ignoring 3D cross products)
  (defmethod manip-comm-assoc-lemmas
    ((cl-x pvs-type-vector) (cl-y pvs-type-vector) (cl-z pvs-type-vector) dir)
    (get-vector-lemmas cl-z (if (eq dir 'l) l-lemmas r-lemmas))))

(let ((l-lemmas (make-qualified-vector-lemmas '("scal_comm_assoc")))
      (r-lemmas (make-qualified-vector-lemmas nil)))
  (defmethod manip-comm-assoc-lemmas
    ((cl-x pvs-type-real) (cl-y pvs-type-real) (cl-z pvs-type-vector) dir)
    (get-vector-lemmas cl-z (if (eq dir 'l) l-lemmas r-lemmas))))

(let ((l-lemmas (make-qualified-vector-lemmas '("dot_scal_right")))
      (r-lemmas (make-qualified-vector-lemmas '("dot_scal_comm_assoc"))))
  (defmethod manip-comm-assoc-lemmas
    ((cl-x pvs-type-real) (cl-y pvs-type-vector) (cl-z pvs-type-vector) dir)
    (get-vector-lemmas cl-z (if (eq dir 'l) l-lemmas r-lemmas))))

(let ((l-lemmas (make-qualified-vector-lemmas '("dot_scal_right")))
      (r-lemmas (make-qualified-vector-lemmas nil)))
  (defmethod manip-comm-assoc-lemmas
    ((cl-x pvs-type-vector) (cl-y pvs-type-real) (cl-z pvs-type-vector) dir)
    (get-vector-lemmas cl-z (if (eq dir 'l) l-lemmas r-lemmas))))


;; For mult-by

;;;; div by real: mult by 1/a
;;;; div by vect: mult by 1/norm(v)

(defmethod mult/div-by-steps ((rel-cl pvs-type-vector) (term-cl pvs-type-real)
			      op term fnum sign formula relation)
  (when (eq op '/)
    (setq term (format nil "(1/~A)" (safety-parens term))))
  (cond ((not (eq relation '=))
	 (manip-unsuitable-fnum 'mult/div-by fnum))
	((< fnum 0)
	 (mult-by-scal/dot term fnum formula))
	(t (mult-by-scal term fnum formula))))

(defmethod mult/div-by-steps ((rel-cl pvs-type-real) (term-cl pvs-type-vector)
			      op term fnum sign formula relation)
  (when (eq op '/)
    (setq term (format nil "(1/norm(~A))" term)))
  (cond ((not (eq relation '=))
	 (manip-unsuitable-fnum 'mult/div-by fnum))
	((< fnum 0)
	 (mult-by-scal/dot term fnum formula t))
	(t (mult-by-scal term fnum formula t))))

;; The following three methods have the same definition.  They have been
;; duplicated so that the argument specializers will allow only cases
;; of matching vector types.

(defmethod mult/div-by-steps ((rel-cl pvs-type-vect2) (term-cl pvs-type-vect2)
			      op term fnum sign formula relation)
  (mult/div-by-dot/norm op term fnum sign formula relation))

(defmethod mult/div-by-steps ((rel-cl pvs-type-vect3) (term-cl pvs-type-vect3)
			      op term fnum sign formula relation)
  (mult/div-by-dot/norm op term fnum sign formula relation))

(defmethod mult/div-by-steps ((rel-cl pvs-type-vectn) (term-cl pvs-type-vectn)
			      op term fnum sign formula relation)
  (mult/div-by-dot/norm op term fnum sign formula relation))

(defun mult/div-by-dot/norm (op term fnum sign formula relation)
  (cond ((and (eq relation '=) (eq op '*) (< fnum 0))  ;; dot product
	 (mult-by-scal/dot term fnum formula))
	((and (eq relation '=) (eq op '/) (< fnum 0))  ;; div by norm
	 (mult-by-scal/dot (format nil "(1/norm(~A))" term) fnum formula))
	((and (eq relation '=) (eq op '/))             ;; div by norm
	 (mult-by-scal (format nil "(1/norm(~A))" term) fnum formula))
	(t (manip-unsuitable-fnum 'mult/div-by fnum))))

;; If multiplication of an antecedent equality involves vectors,
;; we don't need the lemmas in the vectors library.
;; Both scalar products and dot products are supported.

(defun mult-by-scal/dot (term fnum formula &optional swap?)
  (let* ((lhs-text
	  (if swap?
	      (format nil "~A * ~A" (safety-parens (args1 formula)) term)
	      (format nil "~A * ~A" term (safety-parens (args1 formula)))))
	 (rhs-text
	  (if swap?
	      (format nil "~A * ~A" (safety-parens (args2 formula)) term)
	      (format nil "~A * ~A" term (safety-parens (args2 formula)))))
	 (new-eq (format nil "~A = ~A" lhs-text rhs-text))
	 (both-sides-step `(claim$ ,new-eq (replace ,fnum)))
	 (target (if (< fnum 0) (- fnum 1) fnum))  ;;; protect
	 )
    `(then ,both-sides-step (hide ,target) (assert))))

;; Multiplication of consequent equalities involving scalars and vectors
;; (not valid for dot products).  Requires lemmas in the vectors library.

(defun mult-by-scal (term fnum formula &optional rel-real?)
  (let* ((lhs-text (textify (args1 formula)))
	 (rhs-text (textify (args2 formula)))
	 (module (vector-module-qualifier (type (args1 formula))))
	 (both-sides-lemma
	  (format nil "~A~A" module
		  (if rel-real? "scal_cancel" "dot_divby")))
	 (inst-step (if rel-real?
			`(inst -1 ,lhs-text ,rhs-text ,term)
		        `(inst -1 ,term ,lhs-text ,rhs-text)))
	 (target (if (< fnum 0) (- fnum 1) (+ fnum 1)))
	 (step-list `(then (lemma ,both-sides-lemma)
			   ,inst-step
			   (branch (split -1 1)
				   ((assert 1)
				    (then (hide ,target) (assert 1)))))))
    step-list))


;;; ===================

;;; For move-terms

;; Vector term movement is handled mostly like reals.  Grind-with-ext
;; can prove the main equivalence for 2D and 3D vectors, although it
;; could be slow or go down unproductive paths.  The N-dimensional case
;; requires more care because of the need for extensionality.
;; Name-replace on all of the terms is performed first to reduce the
;; equivalence to its simplest form.  Assumes that equality is the only
;; type of relation acted on.

(defmethod move-terms-just-step ((vect pvs-type-vector)
				 side fnum from-list to-list tnums)
  (move-permute-just-step side fnum from-list to-list tnums))

(defun move-permute-just-step (side fnum from-list to-list tnums)
  ;; from-list is non-nil; fnum will be an equality
  (let* ((just-step `(then (expand "zero") (rewrite-msg-off)
			   (unwind-protect$ (grind-with-ext)
					    (rewrite-msg-on))))
	 (back-up-msg
	  (gen-manip-response 'move-terms
			      "Unable to prove justification.")))
    `(then (hide-all-but 1)
	   (try (then ,just-step ,back-up-msg
		      (fail))  ;; backtrack if not fully proved
		(skip) (skip)))))

(defmethod move-terms-just-step ((vect pvs-type-vectn)
				 side fnum from-list to-list tnums)
  ;; from-list is non-nil; fnum will be an equality
  (let* ((expr-objs (mapcar #'cadr (append from-list to-list)))
	 (exprs (loop for e in expr-objs
		      if (and (typep e 'name-expr) (eq (id e) 'zero))
		        collect (format nil "~A.zero"
					(module-instance (car (resolutions e))))
		      else collect (write-to-string e)))
	 (name-steps
	  (loop for expr in (remove-duplicates exprs :test #'equal)
  	        collect `(try (name-replace ,(name-gensym "move_vect")
					    ,expr :hide? t)
			      (skip) (skip))))
	 (exten-steps
	  `((decompose-equality -1)
	    (let ((just-type (write-to-string
			      (type (args1 (manip-get-formula 1))))))
	      (extensionality just-type))
	    (inst? -1 :where +) (split -1)
	    (hide 2) (skolem 1 "xmtjs__") (inst - "xmtjs__")))
	 (impl-step `(then (flatten) ,@exten-steps (grind)))
	 (simp-step
	  `(spread (split 1)
		   (,impl-step ,impl-step)))
	 (just-step
	  `(then ,@name-steps (rewrite-msg-off)
		 (unwind-protect$ ,simp-step (rewrite-msg-on))))
	 (back-up-msg
	  (gen-manip-response 'move-terms
			      "Unable to prove justification.")))
    `(then (hide-all-but 1)
	   (try (then ,just-step ,back-up-msg
		      (fail))  ;; backtrack if not fully proved
		(skip) (skip)))))


;;; For permute-terms

;; Justification for vector term permutation is nearly the same as
;; for term movement.

(defmethod permute-terms-just-step ((vect pvs-type-vector) fnum terms tnums)
  ;; terms and tnums are non-nil
  (move-permute-just-step 'l fnum terms nil tnums))


;;; For elim-unary

;; Justification for vector unary negation elimination is nearly
;; the same as for term movement.

(defmethod elim-unary-just-step ((vect pvs-type-vector))
  (move-permute-just-step 'l 1 nil nil nil))   ;; args aren't needed


;;; For cancel-add

;; Justification for vector term cancellation is nearly the same as
;; for term movement.

(defmethod cancel-add-just-step ((vect pvs-type-vector)
				 fnum left-terms right-terms)
  ;; terms are non-nil
  (move-permute-just-step 'l fnum left-terms right-terms nil))

(defmethod cancel-add-just-step ((vect pvs-type-vectn)
				 fnum left-terms right-terms)
  (move-terms-just-step vect 'l fnum left-terms right-terms nil))


;;; ===================

;;; For cross-mult

(defmethod cross-mult-cond ((num pvs-type-vector) formula left-side)
  (and (is-relation formula)
       (is-term-operator
	(if left-side (args1 formula) (args2 formula)) '*)
       (is-term-operator
	(args1 (if left-side (args1 formula) (args2 formula))) '/)))

(defmethod cross-mult-step ((vect pvs-type-vector)
			    fnum formula relation left-side side-obj other-obj)
  ;; a/b * u = v IFF a * u = b * v
  (if (eq relation '=)
      (let* ((module (vector-module-qualifier (type side-obj)))
	     (lemma (if left-side "scal_div_mult_left" "scal_div_mult_right"))
	     (vector-lemma (format nil "~A~A" module lemma))
	     (adj-fnum (if (< fnum 0) (- fnum 1) fnum)))
	;; rewrite has issues with deleting target formula
	`(then (lemma ,vector-lemma)
	       (inst? -1 :where ,adj-fnum)
	       (replace -1 ,adj-fnum :hide? t)
	       (assert ,fnum)))
      (manip-unsuitable-fnum 'cross-mult fnum)))


;;; ===================

;; For scalar products of the form a_1*...*a_n * u, collect the real
;; factors a_1,...,a_n and return as a left-mult list.  The right-mult
;; list will contain u.  An infix application of '*' will be included if
;; the left operand (at least) is real.  Returns (left-mult right-mult).

(defun collect-scalar-terms (mult-expr)
  (collect-multiplicative-terms
   mult-expr
   #'(lambda (expr) (subtype-of? (type expr) *number_field*))
   #'(lambda (a b)  (subtype-of? (type a) *number_field*))))


;;; For factor

(defmethod collect-factor-terms ((val-cl pvs-type-vector) add-terms)
  (mapcar #'(lambda (expr) (collect-scalar-terms expr))
	  add-terms))

;; The justification proof for equating the original and factored
;; expressions needs to apply scalar product distribution over
;; additive vector terms.  Care needs to be taken because the
;; prover's arithmetic simplification can reorder terms.  An
;; intermediate equality is introduced to avoid the reordering.

(let ((l-lemmas (make-qualified-vector-lemmas
		 '("scal_add_left" "scal_sub_left")))
      (r-lemmas (make-qualified-vector-lemmas
		 '("scal_add_right" "scal_sub_right"))))

  (defmethod factor-steps ((val-cl pvs-type-vector) fnum id?)
    (let* ((adj-fnum (if (< fnum 0) (- fnum 1) fnum))
	   (replace-one `(replace -1 ,adj-fnum :hide? t))
	   (expand-id (if id? '((expand "id")) nil))
	   (rewrites-1 `(else*$ ,@(targeted-rewrites
				   1 (get-vector-lemmas val-cl l-lemmas))))
	   (rewrites-2 `(else*$ ,@(targeted-rewrites
				   1 (get-vector-lemmas val-cl r-lemmas))))
	   (simp-steps `(,@expand-id (assert)
			 (repeat ,rewrites-1) (repeat ,rewrites-2)
			 (assert) (grind-with-ext)))
	   (back-up-msg
	    (gen-manip-response 'factor "Unable to prove justification.")))
      `(,replace-one
	(then (hide-all-but 1) (rewrite-msg-off)
	      (try (then (unwind-protect$ (then ,@simp-steps) (rewrite-msg-on))
			 ,back-up-msg
			 (fail))  ;; backtrack if not fully proved
		(skip) (skip)))))))


;;; For distrib

;; Scalar product distribution

(let ((lemmas (make-qualified-vector-lemmas
	       '("scal_add_left" "scal_sub_left"
		 "scal_add_right" "scal_sub_right"))))
  (defmethod distrib-step ((left-cl pvs-type-real) (right-cl pvs-type-vector)
			   expr-obj fnum)
    (distrib-name-steps expr-obj fnum (get-vector-lemmas right-cl lemmas))))

;; Dot product distribution

(let ((lemmas (make-qualified-vector-lemmas
	       '("dot_add_left" "dot_sub_left"
		 "dot_add_right" "dot_sub_right"))))
  (defmethod distrib-step ((left-cl pvs-type-vector) (right-cl pvs-type-vector)
			   expr-obj fnum)
    (distrib-name-steps expr-obj fnum (get-vector-lemmas right-cl lemmas))))

;; To distribute multiplication only in the desired expression, we first
;; pull it out and name it.  Then we simplify it in isolation, apply
;; rewrites, and substitute the result back in the formula.

(defun distrib-name-steps (expr-obj fnum rewrite-lemmas)
  (let* ((name-step `(name ,(name-gensym "distrib") ,expr-obj))
	 (adj-fnum (if (< fnum 0) (- fnum 1) fnum))
	 (replace-1 `(replace -1 ,adj-fnum))
	 (rewrites `(repeat (else*$ ,@(targeted-rewrites -1 rewrite-lemmas))))
	 (replace-2 `(replace -1 ,adj-fnum :dir rl :hide? t)))
    `(then ,name-step (rewrite-msg-off)
	   (unwind-protect$ (then ,replace-1 (assert -1) ,rewrites ,replace-2)
			    (rewrite-msg-on)))))


;;; For permute-mult

(defmethod collect-mult-factors ((val-cl pvs-type-vector) expr)
  (collect-scalar-terms expr))


;;;;;;;;;;
