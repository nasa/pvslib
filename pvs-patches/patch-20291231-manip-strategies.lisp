;;;;;;;;;;;;;;;;;;;;;;;;;;; -*- Mode: Lisp -*- ;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;; manip-strategies.lisp -- Term manipulation package for PVS prover 
;; Author          : Ben Di Vito <b.divito@nasa.gov>
;; Created On      : 8 Apr 2001
;; Last Modified By: 
;; Last Modified On: 31 Oct 2001 (v0.9)
;; Last Modified On: 14 Feb 2002 (v1.0)
;; Last Modified On: 27 Jan 2003 (v1.1)
;; Last Modified On: 28 Nov 2005 (v1.2-beta)
;; Last Modified On: 17 Nov 2007 (v1.2)
;; Last Modified On: 25 Feb 2011 (v1.3)
;; Status          : Development
;; Version         : 1.3
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;; This is a U.S. Government work and thus not protected by U.S. copyright.
;; As a courtesy, please retain the header lines and introductory comments
;; in any derivative works.  Problem reports, suggestions and enhancements
;; are encouraged.  Send them to the address above.
;;
;; ----------------------------------------------------------------------------
;;
;; This file implements various PVS strategies (tactics) for manipulating
;; arithmetic expressions and performing other detailed proving.  It
;; includes strategies helpful for proving formulas containing nonlinear
;; arithmetic and similar expressions where PVS has limited automation.
;; Some strategies allow ordinary algebraic manipulation while others
;; are focused on more specialized reasoning for product terms.  Also
;; included are some more general strategies to manipulate sequents, such
;; as higher-order operations that accept parameterized commands and
;; perform substitutions to arrive at concrete command instances.
;;
;; A second feature set implements an extended method of specifying input
;; expressions when invoking prover commands.  Two major types of extensions
;; are included: location references and textual pattern matching.  Location
;; references allow a user to indicate a precise subexpression within a
;; formula by giving a path of indices to follow when descending through the
;; formula's expression tree.  Pattern matching allows strings to be found
;; and extracted using a specialized pattern language that is based on, but
;; much less elaborate than, regular expressions.
;;
;; A new type of search was introduced in version 1.2 that allows users
;; to match against syntax elements of PVS expressions.  Match results
;; can be used to display information about the sequent or invoke proof
;; rule templates after substituting matched text.
;;
;; A method based on object orientation was introduced in version 1.3 to
;; allow manipulation of expressions for non-real types such as vectors.
;; Extensions were introduced here along with a corresponding set of
;; functions in the file manip-vectors.lisp, which resides in the NASA
;; PVS library called vectors.  Similar extensions for other types can
;; make use of this same machinery.
;;
;; This version of the Manip package has been tested on PVS versions 4.2
;; and 5.0.  It should work with PVS 4.0 or 4.1, although it is not
;; recommended for any earlier versions of PVS.
;;
;; =========================== End of preamble ================================


(in-package :pvs)

(defparameter *manip-strategies-version* "1.3")


;; ================== Top-level manipulation strategies ===================

;  (swap lhs operator rhs &opt (infix? t)) ; x op y ==> y op x
;  (swap! expr-loc)                        ; 
;  (group term1 operator term2 term3       ; L: x op (y op z) ==> (x op y) op z
;         &opt (side l) (infix? t))        ; R: (x op y) op z ==> x op (y op z)
;  (group! expr-loc &opt (side l))         ;
;  (swap-group term1 operator term2 term3  ; L: x op (y op z) ==> y op (x op z)
;         &opt (side l) (infix? t))        ; R: (x op y) op z ==> (x op z) op y
;  (swap-group! expr-loc &opt (side l))    ;
;  (swap-rel &rest fnums)                  ; Swap sides and reverse relations
;  (equate lhs rhs &opt (try-just nil))    ; ...lhs... ==> ...rhs...
;  (has-sign term &opt                     ; Claims term has sign indicated
;            (sign +) (try-just nil))      ;
;  (mult-by fnums term &opt (sign +))      ; Multiply both sides by term
;  (div-by  fnums term &opt (sign +))      ; Divide both sides by term
;  (split-ineq fnum &opt (replace? nil))   ; Split <=,>= into <,> and = cases
;  (flip-ineq fnums &opt (hide? t))        ; Negate and move inequalities
;  (show-parens &opt (fnums *))            ; Show fully parenthesized formulas
; -----------------------------------------------------------------------------
;  (move-terms fnum side                   ; Move additive terms to other side
;              &opt (term-nums *))
;  (permute-terms fnum side                ; Permute additive terms on one side
;              &opt (term-nums 1) (end r))
;  (permute-terms! expr-loc                ; Permute terms within an expression
;              &opt (term-nums 1) (end r))
;  (elim-unary fnum &opt (side *))         ; Converts x +/- -y to x -/+ y
;  (elim-unary! expr-loc)                  ;   and -x + y to y - x
;  (isolate fnum side term-num)            ; Move all but one term
;  (isolate-replace fnum side term-num     ; Isolate then replace with equation
;         &opt (targets *))
;  (cancel &opt (fnums *) (sign nil))      ; Cancel terms from both sides
;  (cancel-terms &opt (fnums *) (end l)    ; Cancel speculatively & defer proof
;          (sign nil) (try-just nil))
;  (cancel-add &opt (fnums *))             ; Cancel additive terms in formulas
;  (cancel-add! expr-loc)                  ;
;  (op-ident fnum &opt                     ; Apply operator identity to
;            (side l) (operation *1))      ;   rewrite expression
;  (op-ident! expr-loc                     ;
;             &opt (operation *1))
;  (cross-mult &opt (fnums *))             ; Multiply both sides by denom
;  (cross-add &opt (fnums *))              ; Add subtrahend to both sides
;  (cross-add! expr-loc)                   ;
;  (factor fnums &opt (side *)             ; Factor common multiplicative terms
;          (term-nums *) (id? nil))        ;   from additive terms given
;  (factor! expr-loc &opt                  ;
;          (term-nums *) (id? nil))
;  (distrib fnums                          ; Distribute multiplication over
;           &opt (side *) (term-nums *))   ;   additive terms
;  (distrib! expr-loc)
;  (transform-both fnum transform          ; Apply transform to both
;     &opt (swap nil) (try-just nil))      ;   sides of formula
; -----------------------------------------------------------------------------
;  (permute-mult fnums &opt (side r)       ; Rearrange factors in a product
;                (term-nums 2) (end l))
;  (permute-mult! expr-loc &opt            ;
;                 (term-nums 2) (end l))
;  (name-mult name fnum side               ; Select factors, assign name to
;        &opt (term-nums *))               ;   their product, then replace
;  (name-mult! name expr-loc               ;
;        &opt (term-nums *))
;  (recip-mult fnums side)                 ; x / d ==> x * (1/d)
;  (recip-mult! expr-loc)                  ;
;  (isolate-mult fnum &opt (side l)        ; Select a factor and divide both
;                (term-num 1) (sign +))    ;   both sides to isolate factor
;  (mult-eq rel-fnum eq-fnum               ; Multiply sides of relation by
;        &opt (sign +))                    ;   sides of equality
;  (mult-ineq fnum1 fnum2                  ; Multiply sides of inequality by
;        &opt (signs (+ +)))               ;   sides of another inequality
;  (mult-cases fnum                        ; Generate case analysis for
;        &opt (abs? nil) (mult-op *1))     ;   relation on product(s)
;  (mult-extract name fnum &opt            ; Extract selected terms, name
;                (side *) (term-nums *))   ;   replace them, then simplify
;  (mult-extract! name expr-loc            ;
;                 &opt (term-nums *)) 
; -----------------------------------------------------------------------------
;  (invoke command &rest expr-specs)       ; Invoke command by instantiating
;                                          ;   from expressions and patterns
;  (for-each command &rest expr-specs)     ; Instantiate and invoke separately
;                                          ;   for each expression
;  (for-each-rev command &rest expr-specs) ; Invoke in reverse order
;  (show-subst command &rest expr-specs)   ; Show but don't invoke the
;                                          ;   instantiated command
;  (claim cond &opt (try-just nil)         ; Claims condition holds on terms
;              &rest expr-specs)
;  (name-extract name &rest expr-specs)    ; Extract & name expr, then replace
; -----------------------------------------------------------------------------
;  (move-to-front &rest fnums)             ; Reorder sequent formulas
;  (rotate--)                              ; Rotate antecedent list
;  (rotate++)                              ; Rotate consequent list
;  (use-with lemma &rest fnums)            ; Use a lemma with formula
;                                          ;   preferences for instantiation
;  (apply-lemma lemma &rest expr-specs)    ; Use lemma with expressions
;  (apply-rewrite lemma &rest expr-specs)  ; Rewrite with expressions
; -----------------------------------------------------------------------------


;;; ==================== Library Extension Framework =====================

;; Some of the Manip strategies have been generalized to allow their use
;; with types other than real.  Those types that support overloading of
;; the arithmetic operators can be used in certain manipulations as long
;; as strategy extensions are provided in the relevant libraries.  These
;; extensions take the form of Lisp code residing in the library's
;; directory.  A file named "pvs-strategies" in this directory will be
;; loaded when the first relevant proof is invoked, which in turn will
;; load additional Lisp files as needed.
;;
;; CLOS classes are used to dispatch methods according to operand types.
;; The methods for reals are built in to this manip-strategies file.
;; Those for library-specific types such as vectors are declared within
;; Lisp files in the library's directory.  These files will register the
;; library extensions available to Manip users.  This happens when the
;; extension files are loaded, which occurs when the first proof using
;; the library is started.

(defclass pvs-type-base ()
  ((param-types :accessor param-types :initform nil)
   (is-subtype :accessor is-subtype :initform nil)))

(defclass pvs-type-real (pvs-type-base) () )

;; Following a-list has entries (name update-fn doc-string).

(defvar *manip-supported-libraries*
  (list (list "reals" #'(lambda () nil) "No extensions at this time.")
        ;;; this a-list is extended by library extensions
	))

;; Following a-list has entries (pvs-type manip-type-class)

(defvar *manip-supported-types*)

(defun manip-supported-types ()
  (if (boundp '*manip-supported-types*)
      *manip-supported-types*
		  ;; this a-list is extended by library extensions
      (setq *manip-supported-types*
	    (list (list *real* (make-instance 'pvs-type-real))))))

;; Each library to support Manip extensions must register its name and
;; should provide documentation (a single string) to explain which
;; Manip strategies it extends.  Also, an update function is needed to
;; register new types when a strategy is invoked in a new proof context.
;; The update function takes no arguments and calls register-manip-type
;; for each type that the library expects to need.

(defun register-manip-lib (lib-name update-fn documen)
  (let* ((last (last *manip-supported-libraries*))
	 (match (assoc lib-name *manip-supported-libraries*
		       :test #'equal)))
    (format t "~%;  Registering Manip extensions for library ~A.~%" lib-name)
    (format t ";---------~%~A~%;---------~%" documen)
    (if match
	(setf (cdr match) (list update-fn documen))          ;; existing lib
        ;; use reverse order?
        (setf (cdr last)
	      (list (list lib-name update-fn documen)))))  ;; new lib
  ;; register initial types if context exists; otherwise, it will happen
  ;; during first relevant proof attempt
  (when *current-context*
    (funcall update-fn)))

;; Each PVS type to receive Manip extensions must have a class for
;; dispatching relevant methods by the various Manip strategies.

(defun register-manip-type (pvs-type class-symb)
  (let ((last (last (manip-supported-types)))
	(match (assoc pvs-type (manip-supported-types))))
    (unless match
      (setf (cdr last) (list (list pvs-type (make-instance class-symb)))))))


;;(register-manip-type *number_field* 'pvs-type-real)  ;; needed for some exprs

;; Find the first manip-class whose type is a supertype of the argument.
;; Testing for subtypes can involve module parameters, which is handled
;; by using a predicate stored in the manip-class object.

(defun find-manip-class (pvs-type)
  (loop for descriptor in (manip-supported-types)
	when (or (subtype-of? pvs-type (car descriptor))
		 (let ((pred (is-subtype (cadr descriptor))))
		   (and pred (funcall pred pvs-type))))
	  return (cadr descriptor)))

;; Some Manip strategies use the following function to look up the
;; class of a PVS type, which is used to dispatch the appropriate
;; method based on the operands.  If no class is found, it could be
;; that the type was not in the context when the library was first
;; registered.  To accommodate this situation, the extension classes
;; are refreshed to pick up the correct class if it is now visible.

(defun manip-class (pvs-type)
  (or (find-manip-class pvs-type)
      (loop for lib-entry in *manip-supported-libraries*
	    do (funcall (cadr lib-entry)))
      ;; do a second lookup after refreshing with new types
      (find-manip-class pvs-type)))

(defun manip-class-tc (expr)
  (manip-class-ex (pc-typecheck (pc-parse expr 'expr))))

(defun manip-class-ex (pvs-expr)
  (manip-class-ex* (judgement-types+ pvs-expr)))

(defun manip-class-ex* (jtypes)
  (when jtypes
    (or (manip-class (car jtypes))
	(manip-class-ex* (cdr jtypes)))))


;;; =============== Simple arithmetic strategies ===============

(defstep swap (lhs operator rhs &optional (infix? t))
  (let ((eq-step
	 (handler-case
	     (let* ((op (string-trim *whitespace-chars* (textify operator)))
		    (lhs-expr (ee-obj-or-string (car (eval-ext-expr lhs))))
		    (rhs-expr (ee-obj-or-string (car (eval-ext-expr rhs))))
		    (old-expr (commute-expr op lhs-expr rhs-expr infix?))
		    (new-expr (commute-expr op rhs-expr lhs-expr infix?))
		    (expr-class (manip-class-tc lhs-expr)))
	       (swap-equate-step op infix? old-expr new-expr expr-class))
	   (error (condition)
	     (gen-manip-response 'swap "Invalid expression.")))))
    eq-step)
  "[Manip] Try commutatively swapping two terms and replacing.  Set INFIX?
to nil for prefix applications.  Commutativity proof for operator will
be tried automatically."
  "~%Swapping terms in a commutative expression and replacing")

;;; Construct swapped expression from commuted terms and wrap
;;; with parentheses if necessary.

(defun commute-expr (op term1 term2 infix?)
  (if infix?
      (let ((p-term1 (safety-parens term1))
	    (p-term2 (safety-parens term2)))
	(format nil "~A ~A ~A" p-term1 op p-term2))
      (format nil "~A(~A, ~A)" op term1 term2)))

(defun function-prop-just-step (op infix?)
  (cond (infix? `(assert))
	((expr-match-success (match-expr *pvs-identifier-pattern* op))
	 `(then (expand ,op 1) (smash)))
	(t nil)))

(defun swap-equate-step (op infix? old-expr new-expr expr-class)
  (let* ((comm-lemmas (manip-commutativity-lemmas expr-class))
	 (just-step (if comm-lemmas
			`(then (hide-all-but 1) (assert)
			       ,@(mapcar #'(lambda (lem) `(rewrite ,lem))
					 comm-lemmas)
			       (assert))
			(function-prop-just-step op infix?))))
    `(equate$ ,old-expr ,new-expr :try-just ,just-step)))

;;;;

(defstep swap! (expr-loc)
  (let ((eq-step
	 (handler-case
	     (let* ((descriptor (car (eval-ext-expr expr-loc)))
		    (expr (ee-pvs-obj descriptor))
		    (fnum (ee-fnum descriptor))
		    (op (textify (operator expr)))
		    (lhs-expr (args1 expr))
		    (rhs-expr (args2 expr))
		    (infix? (typep expr 'infix-application))
		    (old-expr (commute-expr op lhs-expr rhs-expr infix?))
		    (new-expr (commute-expr op rhs-expr lhs-expr infix?))
		    (expr-class (manip-class-ex (args1 expr))))
	       (swap-equate-step op infix? old-expr new-expr expr-class))
	   (error (condition)
	     (gen-manip-response 'swap! "Invalid expression.")))))
    eq-step)
  "[Manip] Try commutatively swapping the two arguments of the function
application found at EXPR-LOC.  Commutativity proof for operator will
be tried automatically."
  "~%Swapping terms in a commutative expression and replacing")

(defmethod manip-commutativity-lemmas (term-class) ;; for unsupported types
  nil)

(defmethod manip-commutativity-lemmas ((term-class pvs-type-real))
  nil)    ;; force the use of function-prop-just-step for reals


;;;;;;;;;;

(defstep group (term1 operator term2 term3 &optional (side l) (infix? t))
  (let ((op (string-trim *whitespace-chars* (textify operator)))
	(term1-expr (ee-obj-or-string (car (eval-ext-expr term1))))
	(term2-expr (ee-obj-or-string (car (eval-ext-expr term2))))
	(term3-expr (ee-obj-or-string (car (eval-ext-expr term3))))
	(classes (mapcar #'manip-class-tc
			 (list term1-expr term2-expr term3-expr)))
	(old-side (if (eq side 'l) 'r 'l))
	(old-expr (assoc-expr op term1-expr term2-expr term3-expr 
			      old-side infix?))
	(new-expr (assoc-expr op term1-expr term2-expr term3-expr side infix?))
	(eq-step (group-equate-step op infix? old-expr new-expr classes)))
    eq-step)
  "[Manip] Try associatively regrouping three terms toward SIDE (L or R)
and replacing.  Set INFIX? to nil for prefix applications.  Associativity
proof for operator will be tried automatically."
  "~%Regrouping terms in an associative expression and replacing")

(defstep group! (expr-loc &optional (side l))
  (let ((eq-step
	 (handler-case
	     (let* ((expr  (ee-pvs-obj (car (eval-ext-expr expr-loc))))
		    (op    (textify (operator expr)))
		    (term1 (if (eq side 'l) (args1 expr) (args1 (args1 expr))))
		    (term2 (if (eq side 'l)
			       (args1 (args2 expr))
			       (args2 (args1 expr))))
		    (term3 (if (eq side 'l) (args2 (args2 expr)) (args2 expr)))
		    (infix? (typep expr 'infix-application)))
	       `(group$ ,(textify term1) ,op ,(textify term2)
			,(textify term3) ,side ,infix?))
	   (error (condition)
		  (gen-manip-response 'group! "Invalid expression.")))))
    eq-step)
  "[Manip] Try associatively regrouping the three subexpressions of the
function applications found at EXPR-LOC toward SIDE (L or R).  Associativity
proof for operator will be tried automatically."
  "~%Regrouping terms in an associative expression and replacing")

(defun group-equate-step (op infix? old-expr new-expr expr-classes)
  (let* ((assoc-lemmas (apply #'manip-associativity-lemmas expr-classes))
	 (just-step (if assoc-lemmas
			`(then (hide-all-but 1) (assert)
			       ,@(mapcar #'(lambda (lem) `(rewrite ,lem))
					 assoc-lemmas)
			       (assert))
			(function-prop-just-step op infix?))))
    `(equate$ ,old-expr ,new-expr :try-just ,just-step)))


(defmethod manip-associativity-lemmas
    (class-x class-y class-z)          ;; for unsupported types
  nil)

(defmethod manip-associativity-lemmas
    ((cl-x pvs-type-real) (cl-y pvs-type-real) (cl-z pvs-type-real))
  nil)    ;; force the use of function-prop-just-step for reals


;;; Construct grouped expression by associating L or R.

(defun assoc-expr (op term1 term2 term3 side infix?)
  (if infix?
      (let ((p-term1 (safety-parens term1))
	    (p-term2 (safety-parens term2))
	    (p-term3 (safety-parens term3)))
	(format nil (if (eq side 'l) "(~A ~A ~A) ~A ~A" "~A ~A (~A ~A ~A)")
		p-term1 op p-term2 op p-term3))
      (if (eq side 'l)
	  (format nil "~A(~A(~A, ~A), ~A)" op op term1 term2 term3)
	  (format nil "~A(~A, ~A(~A, ~A))" op term1 op term2 term3))))


(defstep swap-group (term1 operator term2 term3 &optional (side l) (infix? t))
  (let ((op (string-trim *whitespace-chars* (textify operator)))
	(term1-expr (ee-obj-or-string (car (eval-ext-expr term1))))
	(term2-expr (ee-obj-or-string (car (eval-ext-expr term2))))
	(term3-expr (ee-obj-or-string (car (eval-ext-expr term3))))
	(classes (mapcar #'manip-class-tc
			 (list term1-expr term2-expr term3-expr)))
	(assoc-side (if (eq side 'l) 'r 'l))
	(old-expr (assoc-expr op term1-expr term2-expr term3-expr 
			      assoc-side infix?))
	(new-expr (if (eq side 'l)
		      (assoc-expr op term2-expr term1-expr term3-expr
				  assoc-side infix?)
		      (assoc-expr op term1-expr term3-expr term2-expr
				  assoc-side infix?)))
	(eq-step (swap-group-equate-step op infix? old-expr new-expr
					 classes assoc-side)))
    eq-step)
  "[Manip] Try associatively regrouping and swapping three terms according
to the scheme indicated by SIDE: 
  L: x op (y op z) ==> y op (x op z)  R: (x op y) op z ==> (x op z) op y
so as to lift and move center term to the left or right.  Set INFIX? to
nil for prefix applications.  Justification proof for operator will be
tried automatically."
  "~%Regrouping and swapping terms in an associative expression and replacing")

(defstep swap-group! (expr-loc &optional (side l))
  (let ((eq-step
	 (handler-case
	     (let* ((expr  (ee-pvs-obj (car (eval-ext-expr expr-loc))))
		    (op    (textify (operator expr)))
		    (term1 (if (eq side 'l) (args1 expr) (args1 (args1 expr))))
		    (term2 (if (eq side 'l)
			       (args1 (args2 expr))
			       (args2 (args1 expr))))
		    (term3 (if (eq side 'l) (args2 (args2 expr)) (args2 expr)))
		    (infix? (typep expr 'infix-application)))
	       `(swap-group$ ,(textify term1) ,op ,(textify term2)
			     ,(textify term3) ,side ,infix?))
	   (error (condition)
		  (gen-manip-response 'swap-group! "Invalid expression.")))))
    eq-step)
  "[Manip] Try associatively regrouping the three subexpressions of the
function applications found at EXPR-LOC according to the scheme indicated
by SIDE: 
  L: x op (y op z) ==> y op (x op z)  R: (x op y) op z ==> (x op z) op y
so as to lift and move center term to the left or right.  Justification
proof for operator will be tried automatically."
  "~%Regrouping and swapping terms in an associative expression and replacing")

(defun swap-group-equate-step (op infix? old-expr new-expr expr-classes side)
  (let* ((assoc-lemmas (apply #'manip-comm-assoc-lemmas
			      (append expr-classes (list side))))
	 (just-step (if assoc-lemmas
			`(then (hide-all-but 1) (assert)
			       ,@(mapcar #'(lambda (lem) `(rewrite ,lem))
					 (append assoc-lemmas assoc-lemmas))
			       (assert)
			       (swap!$ 1 l 2))
			       ;;;==== needs more cases
			(function-prop-just-step op infix?))))
    `(equate$ ,old-expr ,new-expr :try-just ,just-step)))


(defmethod manip-comm-assoc-lemmas
    (class-x class-y class-z dir)          ;; for unsupported types
  nil)

(defmethod manip-comm-assoc-lemmas
    ((cl-x pvs-type-real) (cl-y pvs-type-real) (cl-z pvs-type-real) dir)
  nil)    ;; force the use of function-prop-just-step for reals


;;;;;;;;;;;;;;;;;;;;

(defstep swap-rel (&rest fnums)
  (let ((f-nums (get-relations (extract-fnums-arg fnums)))
	(swap-step
	  (if f-nums
	      `(then@ ,@(mapcar #'(lambda (n) `(swap-rel-one$ ,n)) f-nums))
	      (gen-manip-response 'swap-rel "No suitable formulas."))))
    swap-step)
  "[Manip] Swap the two sides of relational formulas and reverse the direction
of the relational operators."
  "~%Reversing the order of the relations in formulas ~A")

(defhelper swap-rel-one (fnum)
  (let ((formula (manip-get-formula fnum))
	(operator (id (operator formula)))
	(lhs (textify (args1 formula)))
	(rhs (textify (args2 formula)))
	(new-op (reverse-relation operator))
	(new-expr (format nil "(~A) ~A (~A)" rhs new-op lhs))
	(replace-expr (format nil "~A IFF ~A" formula new-expr))
	(is-eq (and (equal operator '=)
		    (equal (id (type formula)) (id *boolean*))))
        (case-step `(case ,replace-expr))
        (main-branch `(replace -1 ,(if (< fnum 0) (- fnum 1) fnum) :hide? t))
        (just-step `(if ,is-eq (then (iff -1) (ground)) (ground)))
	(steplist (list main-branch just-step)))
    (spread case-step steplist))
  "[Manip] Reverse order of a relational formula."
  "~%Reversing the order of the relation in formula ~A")

;;;;;;;;;;;;;;;;;;;;

(defstep equate (lhs rhs &optional (try-just nil) (fnums *))
  (let ((lhs-expr (safety-parens (ee-obj-or-string (car (eval-ext-expr lhs)))))
	(rhs-expr (virt-ee-string (car (eval-ext-expr rhs))))
	(case-eq `(case ,(format nil "~A = ~A" lhs-expr rhs-expr)))
	(steplist (list (try-fail-announce `(replace -1 ,fnums :hide? t)
					   'equate "Replacement")
			(try-justification 'equate try-just))))
    (spread case-eq steplist))
  "[Manip] Try equating two expressions and replacing the LHS by the
RHS in FNUMS.  Proof of the justification step can be tried or deferred.
Use TRY-JUST to supply the rule for the justification proof or T for
the default rule (GRIND)."
  "~%Equating two expressions and replacing")

;;;;;;;;;;;;;;;;;;;;

(defstep has-sign (term &optional (sign +) (try-just nil))
  (let ((term-expr (ee-obj-or-string (car (eval-ext-expr term))))
	(relation (case sign
		    ((+) '>) ((-) '<) ((0) '=)
		    ((0+) '>=) ((0-) '<=) ((+-) '/=) (t '>)))
	(case-step `(case ,(format nil "~A ~A 0" term-expr relation)))
	(step-list (list '(skip) (try-justification 'has-sign try-just)))
	(step `(then ,@(gen-value-warning 'has-sign sign 'sign '(+ - 0 0+ 0- +-))
		     (spread ,case-step ,step-list))))
    step)
  "[Manip] Try claiming that a TERM has the designated SIGN (relationship
to 0).  Symbols for SIGN are (+ - 0 0+ 0- +-), which have meanings positive,
negative, zero, nonnegative, nonpositive, and nonzero.  Proof of the
justification step can be tried or deferred.  Use TRY-JUST to supply
a step for the justification proof or T for the default rule (GRIND)."
  "~%Claiming the selected term has the designated sign")

;;;;;;;;;;;;;;;;;;;;

(defstep mult-by (fnums term &optional (sign +))
  (let ((f-nums (get-relations (extract-fnums-arg fnums)))
	(term-expr (virt-ee-string (car (eval-ext-expr term))))
	(mult-step
	  (if f-nums
	      `(then@ ,@(gen-value-warning 'mult-by sign 'sign '(+ - *))
		      ,@(mapcar #'(lambda (n)
				    `(mult/div-by$ * ,term-expr ,n ,sign))
				f-nums))
	      (gen-manip-response 'mult-by "No suitable formulas."))))
    mult-step)
  "[Manip] Multiply both sides of relational formulas by the factor TERM.
If TERM is known to be positive or negative, use + or - as the SIGN
argument.  Otherwise, use *, which introduces a conditional expression
to handle the two cases."
  "~%Multiplying both sides of selected formulas by given term")

(defstep div-by (fnums term &optional (sign +))
  (let ((f-nums (get-relations (extract-fnums-arg fnums)))
	(term-expr (virt-ee-string (car (eval-ext-expr term))))
	(div-step
	  (if f-nums
	      `(then@ ,@(gen-value-warning 'div-by sign 'sign '(+ - *))
		      ,@(mapcar #'(lambda (n)
				    `(mult/div-by$ / ,term-expr ,n ,sign))
				f-nums))
	      (gen-manip-response 'div-by "No suitable formulas."))))
    div-step)
  "[Manip] Divide both sides of relational formulas by the factor TERM.
If TERM is known to be positive or negative, use + or - as the SIGN
argument.  Otherwise, use *, which introduces a conditional expression
to handle the two cases."
  "~%Dividing both sides of selected formulas by given term")

(defhelper mult/div-by (op term fnum sign)
  (let ((formula (manip-get-formula fnum))
	(relation (id (operator formula)))
	(rel-class  (manip-class-tc (args1 formula)))
	(term-class (manip-class-tc term))
	(mult/div-step
	 (mult/div-by-steps rel-class term-class
			    op term fnum sign formula relation)))
    mult/div-step)
  "[Manip] Multiply/divide both sides of a relation by a term."
  "~%Multiplying/dividing both sides of formula by given term")


(defmethod mult/div-by-steps         ;; default for unsupported types
           (rel-cl term-cl op term fnum sign formula relation)
  (manip-unsuitable-fnum 'mult-by fnum))


(defmethod mult/div-by-steps ((rel-cl pvs-type-real) (term-cl pvs-type-real)
			      op term fnum sign formula relation)
  (if (and (eq op '*)
	   (or (and (< fnum 0) (member relation '(= <= >=)))
	       (and (> fnum 0) (member relation '(< >)))))
      (mult-by-real term fnum sign formula relation)
      (mult/div-by-nz op term fnum sign formula relation)))

;; If multiplying an antecedent relation in {=, <=, >=}, or a consequent
;; relation in {<, >}, we can allow multiplier to be any real.  Use
;; extension lemmas in extra_real_props.

(defun mult-by-real (term fnum sign formula relation)
  (let* ((lhs-text (textify (args1 formula)))
	 (rhs-text (textify (args2 formula)))
	 (consequent? (> fnum 0))
	 (lemma-rel (if consequent? (negate-inequality relation) relation))
	 (both-sides-lemma
	  (format nil "both_sides_times~A~A~A_imp"
		  (cond ((eq relation '=) "")
			((eq sign '-) "_neg")
			((eq sign '+) "_pos")
			(t            "_pos_neg"))
		  (prepend-underscore
		   (cdr (assoc lemma-rel *real-props-relation*)))
		  "1"))
	 (both-sides-lemma-step `(lemma ,both-sides-lemma))
	 (inst-step (if (and (eq sign '-) (not (eq relation '=)))
			`(inst -1 ,term ,rhs-text ,lhs-text)
			`(inst -1 ,term ,lhs-text ,rhs-text)))
	 (target (if (< fnum 0) (- fnum 1) fnum))
	 (cancel-steps (targeted-rewrites fnum '("div_cancel2")))
	 (simplify-step
	  `(branch (split -1 1)
		   ((then (hide ,target)
			  ,@(if consequent? `((flip-ineq$ -1)) '())
			  ,@cancel-steps)
		    (assert))))
	 (step-list `(,simplify-step (assert))))
    `(branch (then ,both-sides-lemma-step ,inst-step) ,step-list)))

(defun mult/div-by-nz (op term fnum sign formula relation)
  (let* ((lhs-text (textify (args1 formula)))
	 (rhs-text (textify (args2 formula)))
	 (lemma-op (if (eq op '*) "times" "div"))
	 (both-sides-lemma
	  (format nil "both_sides_~A~A~A~A" lemma-op
		  (cond ((eq relation '=) "")
			((eq sign '-) "_neg")
			((eq sign '+) "_pos")
			(t            "_pos_neg"))
		  (prepend-underscore
		    (cdr (assoc relation *real-props-relation*)))
		  "1"))
	 (both-sides-lemma-step `(lemma ,both-sides-lemma))
	 (inst-step (if (and (eq sign '-) (not (eq relation '=)))
			`(inst -1 ,term ,rhs-text ,lhs-text)
			`(inst -1 ,term ,lhs-text ,rhs-text)))
	 (target (if (< fnum 0) (- fnum 1) fnum))
	 (cancel-steps
	  (if (eq op '*)
	      `((repeat ,@(targeted-rewrites fnum '("div_cancel2"))))
	      `((repeat ,@(targeted-rewrites fnum '("div_simp")))
		(repeat ,@(targeted-rewrites fnum '("times_div_cancel1")))
		(repeat ,@(targeted-rewrites fnum '("times_div_cancel2"))))))
	 (replace-step `(then@ (replace -1 ,target rl t) ,@cancel-steps))
	 (step-list `(,replace-step (assert))))
    `(branch (then ,both-sides-lemma-step ,inst-step) ,step-list)))

;;;;;;;;;;;;;;;;;;;;

(defstep split-ineq (fnum &optional replace?)
  (let ((fnumber (car (extract-fnums-arg fnum)))
	(formula (manip-get-formula fnumber))
	(suitable (and formula
		       (is-relation formula t)
		       (member (id (operator formula))
			       (if (< fnumber 0) '(<= >=) '(< >)))))
	(split-step (if suitable
		       `(split-ineq-one$ ,fnumber ,formula ,replace?)
		       (gen-manip-response 'split-ineq
					   "Formula not suitable."))))
    split-step)
  "[Manip] Given that FNUM is a nonstrict antecedent inequality (<= or >=),
split it into two cases, e.g., an equal-to and a less-than case.  Also
works if FNUM is a strict consequent inequality.  Simplification using
(ASSERT) is applied after splitting.  The equality may be optionally
used for replacement by supplying  the direction LR or RL for the
REPLACE? argument."
  "~%Splitting off the equality case from formula ~A")

(defhelper split-ineq-one (fnum formula replace?)
  (let ((rel-op (id (operator formula)))
	(case-step
	  `(case ,(format nil "~A = ~A" (args1 formula) (args2 formula))))
	(eq-step (if replace?
		     `(then (replace -1 :dir ,replace?) (assert))
		     `(assert))))
    (branch case-step (eq-step (assert))))
  "[Manip] Split an inequality based on equal-to case."
  "~%Splitting off the equality case from formula ~A")

;;;;;;;;;;;;;;;;;;;;

(defstep flip-ineq (fnums &optional (hide? t))
  (let ((f-nums (extract-fnums-arg fnums))
	(f-labels (mapcar #'(lambda (n) (name-gensym "flip_ineq")) f-nums))
	(label-steps (mapcar #'(lambda (l n) `(label ,l ,n)) f-labels f-nums))
	(formula-steps (mapcar #'(lambda (l n) `(flip-ineq-one$ ,l ,n ,hide?))
			       f-labels f-nums))
	(err-step (gen-manip-response 'flip-ineq "No suitable formulas."))
	(flip-step
	  (if f-nums
	      `(try (then ,@label-steps
			  (try (then ,@formula-steps)
			       (unlabel ,f-labels)
			       (fail)))
		    (skip)
		    ,err-step)
	      err-step)))
    flip-step)
  "[Manip] Negate the inequality formulas and move the resulting formulas
by exchanging between antecedents and consequents.  Conjunctions and
disjunctions of inequalities are also accepted, causing each conjunct
or disjunct in the form of an inequality to be negated and moved.
If HIDE? is set to NIL, the original formulas are left intact."
  "~%Negating and moving the inequalities in formulas ~A")

(defhelper flip-ineq-one (flabel orig-fnum hide?)
  (let ((fnum (car (map-fnums-arg flabel)))
	(formula (manip-get-formula fnum))
	(new-formula (flip-ineq-formula formula))
	(case-step `(case ,new-formula))
	(main-branch (if hide? `(hide ,fnum) `(skip)))
	(just-step '(then (assert) (ground)))
	(steplist (if (< fnum 0)
		      (list just-step main-branch)
		      (list main-branch just-step)))
	(err-step (gen-manip-response 'flip-ineq
		   (format nil "Formula (originally numbered) ~A is unsuitable."
			   orig-fnum))))
    (if new-formula (spread case-step steplist) err-step))
  "[Manip] Negate and move inequality formulas."
  "~%Negating and moving the inequalities in formula ~A")

(defun flip-ineq-formula (formula)
  (cond ((typep formula 'infix-conjunction)
	 (flip-ineq-con/disjunction formula t))
	((typep formula 'infix-disjunction)
	 (flip-ineq-con/disjunction formula nil))
	((is-relation formula t) (flip-ineq-expr formula))
	(t nil)))

;; For conjunctions and disjunctions, flatten the expression
;; and collect con/disjuncts.  Then negate each one individually.

(defun flip-ineq-con/disjunction (formula conj?)
  (make-new-con/disjunction
    (mapcar #'flip-ineq-expr (collect-con/disjunctive-terms formula conj?))
    (not conj?)))

(defun flip-ineq-expr (expr)
  (if (is-relation expr t)
      (let ((lhs (textify (args1 expr)))
	    (rhs (textify (args2 expr)))
	    (new-op (negate-inequality (id (operator expr)))))
	(format nil "~A ~A ~A" lhs new-op rhs))
      (format nil "NOT ~A" (safety-parens expr))))


;;;;;;;;;;;;;;;;;;;;

(defstep show-parens (&optional (fnums *))
  (let ((f-nums (extract-fnums-arg fnums))
	(dummy (loop for fnum in f-nums
		     initially (when f-nums (terpri))
		     do (format t "~%[~A]  ~A" fnum
				(parenthesize-formula
				  (manip-get-formula fnum)))
		     finally (when f-nums (terpri))))
	(step (if f-nums
		  '(skip)
		  (gen-manip-response 'show-parens "No suitable formulas."))))
    step)
  "[Manip] Show how infix operators and operands are associated by displaying
formulas with full parenthesization.  This strategy overlaps the built-in
feature of PVS (since 3.0), M-x pvs-set-proof-parens (also available from
the PVS menu)."
  "~%")

;; Create a fully parenthesized version of a formula by copying all
;; the relevant object instances in the parse tree and turning on
;; the PARENS slot when an EXPRS slot exists at 2 adjacent levels.
;; NOTE: slots set only in newly created instances.

(defun parenthesize-formula (formula &optional (above 0))
  (handler-case
      (let ((f-arg (argument formula))
	    (obj (make-instance (class-of formula))))
	(setf (place obj) (place formula))
	(setf (operator obj) (operator formula))
	(setf (parens obj) (parens formula))
	(setf (argument obj)
	      (handler-case
	        (let ((subexprs (exprs f-arg)))
		  (setf (parens obj) above)
		  (parenthesize-argument
		    (mapcar #'(lambda (e) (parenthesize-formula e 1))
			    subexprs)))
		(error (condition) (parenthesize-formula f-arg))))
	obj)
    (error (condition) formula)))

(defun parenthesize-argument (expr-list)
  (let ((obj (make-instance 'arg-tuple-expr)))
    (setf (exprs obj) expr-list)
    obj))


;;; =============== Intermediate arithmetic strategies ==============

(defstep move-terms (fnum side &optional (term-nums *))
  (let ((fnumber (car (extract-fnums-arg fnum)))
	(formula (manip-get-formula fnumber))
	(move-step (if (and formula (is-relation formula))
		       `(move-terms-one$ ,(id (operator formula))
					 ,fnumber ,formula ,side ,term-nums)
		       (gen-manip-response 'move-terms
					   "Not a suitable formula."))))
    move-step)
  "[Manip] Move additive terms numbered TERM-NUMS in relational formula FNUM
from SIDE (L or R) to the other side, adding or substracting as needed."
  "~%Moving additive terms to the other side of formula ~A")

(defhelper move-terms-one (rel fnum formula side term-nums)
  (let ((left  (collect-additive-terms '+ (args1 formula)))
	(right (collect-additive-terms '+ (args2 formula)))
	(from-list (if (eq side 'l) left right))
	(to-list   (if (eq side 'l) right left)) 
	(tnums (map-term-nums-arg term-nums (length from-list)))
	(value-class (manip-class-ex (args1 formula)))
	(zero (manip-additive-zero value-class (type (args1 formula))))
	(move-step (if (and tnums zero)  ;; zero = NIL if unsupported
		       `(move-terms-two$ 
			 ,@(list rel fnum formula side from-list to-list tnums
				 value-class zero))
		       (gen-manip-response 'move-terms "No suitable terms."))))
    move-step)
  "[Manip] Move additive terms to the other side of a relation."
  "~%Moving additive terms to the other side of relation")

(defhelper move-terms-two (rel fnum formula side from-list to-list tnums
			   value-class zero &optional append-left)
  (let ((term-mask (mapcar #'(lambda (n) (member (1+ n) tnums))
			   (consec (length from-list))))
	(in-terms (mapcan #'(lambda (p x) (and p (list x)))
			  term-mask from-list))
	(out-terms (mapcan #'(lambda (p x) (and (not p) (list x)))
			   term-mask from-list))
	(new-from (make-new-addition out-terms t t zero))
	(moved-terms (mapcar #'(lambda (term) (cons (xor-signs (car term) '-)
						    (cdr term)))
			     in-terms))
	(new-to (make-new-addition
		  (if append-left
		      (append moved-terms to-list)
		      (append to-list moved-terms))
		  t t zero))
	(new-left  (if (eq side 'l) new-from new-to))
	(new-right (if (eq side 'l) new-to new-from))
	(old-formula (textify formula))
	(new-formula (format nil "~A ~A ~A" new-left rel new-right))
	(just-step (move-terms-just-step
		    value-class side fnum from-list to-list tnums))
	(move-step `(case ,(format nil "~A IFF ~A"
				   old-formula new-formula)))
	(step-list `((replace -1 ,(if (< fnum 0) (- fnum 1) fnum) :hide? t)
		     ,just-step)))
    (spread move-step step-list))
  "[Manip] Move additive terms to the other side of a relation."
  "~%Moving additive terms to the other side of relation")

;;;;;;;;;;;;;

(defmethod manip-additive-zero (any expr-type)
  nil)                          ;; default for unsupported type

(defmethod manip-additive-zero ((num pvs-type-real) expr-type) "0")

(defmethod move-terms-just-step ((num pvs-type-real)
				 side fnum from-list to-list tnums)
  '(smash))


;;;;;;;;;;;;;;;;;;;;

(defstep permute-terms (fnum side &optional (term-nums 1) (end r))
  (let ((permute-step `(permute-terms!$ (! ,fnum ,side) ,term-nums ,end)))
    permute-step)
  "[Manip] Reorder additive terms found on SIDE (L or R) of relational
formula FNUM.  Those terms cited in TERM-NUMS will be moved to the END in
the order listed.  The remaining factors will be placed at the other END
in their original order."
  "~%Permuting additive terms in formula ~A")

(defstep permute-terms! (expr-loc &optional (term-nums 1) (end r))
  (let ((descriptors (eval-ext-expr expr-loc))
	(permute-step
	   (if descriptors
	       `(try (then@ ,@(mapcar
			       #'(lambda (d)
				   `(permute-terms-one$ ,d ,term-nums ,end))
			       descriptors))
		     (skip)
		     ,(gen-manip-response 'permute-terms
					  "No suitable expressions."))
	       (gen-manip-response 'permute-terms
				   "No suitable formulas or expressions."))))
    permute-step)
  "[Manip] Reorder additive terms found in expression at EXPR-LOC.  Those
terms cited in TERM-NUMS will be moved to the END in the order listed.  The
remaining factors will be placed at the other END in their original order."
  "~%Permuting additive terms in selected expression")

(defhelper permute-terms-one (expr-descriptor term-nums end)
  (let ((expr-obj (ee-pvs-obj expr-descriptor))
	(fnum (ee-fnum expr-descriptor))
	(terms (collect-additive-terms '+ expr-obj))
	(tnums (map-term-nums-arg term-nums (length terms)))
	(value-class (manip-class-ex expr-obj))
	(zero (manip-additive-zero value-class (type expr-obj)))
	(permute-step (if (and tnums zero)  ;; zero = NIL if unsupported type
			  (permute-terms-step fnum expr-obj terms tnums end
					      value-class zero)
			  (gen-manip-response 'permute-terms
					      "No suitable terms."))))
    permute-step)
  "[Manip] Permute additive terms on one side of a relation."
  "~%Permuting additive terms in formula ~A")

(defun permute-terms-step (fnum expr-obj terms tnums end value-class zero)
  (let* ((in-terms (loop for n in tnums
			 collect (nth (- n 1) terms)))
	 (out-terms (loop for term in terms
			  for n from 1 to (length terms)
			  when (not (member n tnums)) collect term))
	 (new-terms (if (eq end 'l)
			(append in-terms out-terms)
		        (append out-terms in-terms)))
	 (new-expr (make-new-addition new-terms t t zero))
	 (just-step (permute-terms-just-step value-class fnum terms tnums))
	 (permute-step `(case ,(format nil "~A = ~A" expr-obj new-expr)))
	 (step-list `((replace -1 ,(if (< fnum 0) (- fnum 1) fnum) :hide? t)
		      ,just-step)))
    `(spread ,permute-step ,step-list)))

;; Base generic function not needed for following:

(defmethod permute-terms-just-step ((num pvs-type-real) fnum terms tnums)
  '(smash))


(defstep elim-unary (fnum &optional (side *))
  (let ((formula (manip-get-formula fnum))
	(steps (if formula
		   (append (when (memq side '(l *))
			     `((elim-unary-one$ ,fnum ,(args1 formula))))
			   (when (memq side '(r *))
			     `((elim-unary-one$ ,fnum ,(args2 formula)))))
		   nil))
	(elim-step
	 (if formula
	     `(then ,@steps)
	     (gen-manip-response 'elim-unary "No suitable formulas."))))
    elim-step)
  "[Manip] Eliminate unary minus functions where possible in additive
expressions.  Convert expressions of the form x +/- -y to the form
x -/+ y.  Also convert -x + y to y - x."
  "~%Eliminating unary minus functions from formula ~A")

(defstep elim-unary! (expr-loc)
  (let ((descriptors (eval-ext-expr expr-loc))
	(elim-step
	   (if descriptors
	       `(try (then@ ,@(mapcar #'(lambda (d)
					  `(elim-unary-one$ ,(ee-fnum d)
							    ,(ee-pvs-obj d)))
				      descriptors))
		     (skip)
		     ,(gen-manip-response 'elim-unary!
					  "No suitable expressions."))
	       (gen-manip-response 'elim-unary!
				   "No suitable formulas or expressions."))))
    elim-step)
  "[Manip] Eliminate unary minus functions where possible in additive
expressions.  Convert expressions of the form x +/- -y to the form
x -/+ y.  Also convert -x + y to y - x."
  "~%Eliminating unary minus functions from selected expression")

(defhelper elim-unary-one (fnum expr)
  (let ((value-class (manip-class-ex expr))
	(zero (manip-additive-zero value-class (type expr)))
	(new-terms (elim-unary-terms (collect-additive-terms '+ expr)))
	(new-expr (make-new-addition new-terms t t zero))
	(eq-step `(case ,(format nil "~A = ~A" expr new-expr)))
	(replace-step `(replace -1 ,(if (< fnum 0) (- fnum 1) fnum) :hide? t))
	(elim-steps
	 (if new-terms
	     `(spread ,eq-step (,replace-step
				,(elim-unary-just-step value-class)))
	     (gen-manip-response
	      'elim-unary
	      "No unary minus operators can be eliminated."))))
    elim-steps)
  "[Manip] Eliminate unary minus functions where possible in additive
expressions."
  "~%Eliminating unary minus functions from formula ~A")

;; Rearrange the terms if possible to eliminate all unary negations.
;; Lift the unary operators up and flip the binary operators that
;; join the terms.  If the resulting terms are all negative, return nil
;; to indicate that elimination isn't possible, even if some cases are.

(defun elim-unary-terms (terms)
  (labels ((elim-nested-neg (sign expr)
	     (if (and (typep expr 'unary-application)
		      (eq (id (operator expr)) '-))
		 (elim-nested-neg (if (eq sign '+) '- '+) (argument expr))
		 (list sign expr))))
    (let* ((lifted-terms
	    (loop with lift-count = 0
		  for term in terms
		  collect (elim-nested-neg (car term) (cadr term))))
	   (pos-terms (loop for term in lifted-terms
			    when (eq (car term) '+) collect term))
	   (neg-terms (loop for term in lifted-terms
			    when (eq (car term) '-) collect term)))
      (append pos-terms neg-terms))))


(defmethod elim-unary-just-step (expr)
  (gen-manip-response 'elim-unary "Unsupported type."))

(defmethod elim-unary-just-step ((expr pvs-type-real))
  '(smash))


;;;;;;;;;;;;;;;;;;;;

(defstep isolate (fnum side term-num)
  (let ((expr-desc (car (eval-ext-expr `(! ,fnum ,side))))
	(orig-terms (and expr-desc
			 (collect-additive-terms '+ (ee-pvs-obj expr-desc))))
	(move-step (if (map-term-nums-arg term-num (length orig-terms))
		       `(move-terms$ ,fnum ,side (^ ,term-num))
		       (gen-manip-response 'isolate "Term not suitable."))))
    move-step)
  "Move all additive terms except that numbered TERM-NUM in relational
formula FNUM from SIDE (L or R) to the other side."
  "~%Moving all but one additive terms to the other side of formula ~A")

(defstep isolate-replace (fnum side term-num &optional (targets *))
  (let ((fnumber (car (extract-fnums-arg fnum)))
	(formula (manip-get-formula fnumber))
	(move-step (if (and formula (< fnumber 0)
			    (typep formula 'infix-application)
			    (eq (id (operator formula)) '=))
		       `(then (isolate$ ,fnumber ,side ,term-num)
			      ,(if (eq side 'l)
				    `(replace ,fnumber ,targets lr t)
				    `(replace ,fnumber ,targets rl t)))
		       (gen-manip-response 'isolate-replace
					   "Not a suitable formula."))))
    move-step)
  "[Manip] Isolate the term TERM-NUM on SIDE (L or R) of relational formula FNUM,
then replace and hide it.  Use TARGETS to restrict scope of replacement."
  "~%Isolating and replacing an additive term of formula ~A")


;;;;;;;;;;;;;;;;;;;;

(defstep cancel (&optional (fnums *) sign)
  (let ((candidates (get-relations (extract-fnums-arg fnums)))
	(f-nums (mapcan #'(lambda (n)
			    (and (both-sides-same-op (manip-get-formula n)
						     '(+ - * /))
				 (list n)))
			candidates))
	(cancel-step
	  (if f-nums
	      `(then@ ,@(gen-value-warning 'cancel sign 'sign '(+ - 0+ 0- * nil))
		      ,@(mapcar #'(lambda (n) `(cancel-one$ ,n ,sign)) f-nums))
	      (gen-manip-response 'cancel "No suitable formulas."))))
    cancel-step)
  "[Manip] Cancel terms from both sides of relational formulas involving
arithmetic expressions.  If SIGN = NIL, common terms are assumed to be
(non)positive or (non)negative as needed for the appropriate rewrite
rules to apply.  Otherwise, an explicit SIGN can be supplied to force
a case split so the rules will apply.  If SIGN is `+' or `-', terms
are claimed to be positive or negative.  If SIGN is `0+' or `0-', terms
are nonnegative or nonpositive.  If SIGN is `*', the terms  are assumed
to be arbitrary reals and a three-way case split is used."
  "~%Canceling terms from both sides of selected formulas")

;; Both-sides cancellation (x op y R x op z).

(defhelper cancel-one (fnum sign)
  (let ((formula (manip-get-formula fnum))
	(relation (id (operator formula)))
	(op (id (operator (args1 formula))))
	(term1-lhs (args1 (args1 formula)))
	(term2-lhs (args2 (args1 formula)))
	(term1-rhs (args1 (args2 formula)))
	(term2-rhs (args2 (args2 formula)))
	(same-1 (equal (textify term1-lhs) (textify term1-rhs)))
	(cancel-term (if same-1 term1-lhs term2-lhs))
	(left-term  (if same-1 term2-lhs term1-lhs))
	(right-term (if same-1 term2-rhs term1-rhs))
	(name? (or (typep cancel-term 'infix-application)
		   (typep left-term 'infix-application)
		   (typep right-term 'infix-application)))
	(cancel-step 
	  (cond ((not sign)
		 `(cancel-any$ ,fnum ,formula ,name? ,cancel-term
			       ,left-term ,op ,relation ,right-term))
		((and (eq op '/) same-1)
		 `(cancel-cases$ ,fnum ,formula ,sign ,name? ,cancel-term
				 ,right-term ,op ,relation ,left-term))
		(t `(cancel-cases$ ,fnum ,formula ,sign ,name? ,cancel-term
				   ,left-term ,op ,relation ,right-term)))))
    cancel-step)
  "[Manip] Try canceling terms in a relational formula."
  "~%Canceling terms from both sides of formula ~A")

;; The simplest case tries to apply rewrite rules without considering the
;; polarity of the cancellation term.  If expressions are involved, name
;; replace is used to prevent unwanted simplification.

(defhelper cancel-any (fnum formula name? cancel-term
		       left-term op rel right-term)
  (let ((name-rep (if name?
		      `((name ,(name-gensym "x")     ,(textify cancel-term))
			(name ,(name-gensym "y" nil) ,(textify left-term))
			(name ,(name-gensym "z" nil) ,(textify right-term))
			(replace -1) (replace -2) (replace -3))
		      `()))
	(rep-back (if name?
		      `((replace -1 :dir rl :hide? t)
			(replace -1 :dir rl :hide? t)
			(replace -1 :dir rl) (hide -1))
		      `()))
	(adj-fnum (if (and name? (< fnum 0)) (- fnum 3) fnum))
	(cancel-step
	 `(try (then ,@name-rep
		     (try (try-rewrites$ ,adj-fnum
					 ,@(cancellation-lemma-names op rel ""))
			  (then ,@rep-back)
			  (fail)))
	       (skip)
	       ,(gen-manip-response 'cancel "No cancellation rules apply."))))
    cancel-step)
  "[Manip] Try canceling terms in a relational formula."
  "~%Canceling terms from both sides of formula ~A")

;; Basic cancellation proceeds by introducing the new relation, name
;; replacing expressions if necessary, then simplifying with rewrite
;; rules selected according to the operators involved.  NOTE: propagates
;; failure to caller -- be sure to protect via TRY.

(defhelper cancel-basic (fnum formula name? cancel-term
			 left-term op rel right-term &optional (polarity ""))
  (let ((new-form (format nil "~A ~A ~A" left-term rel right-term))
	(case-step `(case ,(format nil "~A IFF ~A" formula new-form)))
	(name-rep (if name?
		      `((name ,(name-gensym "x")     ,(textify cancel-term))
			(name ,(name-gensym "y" nil) ,(textify left-term))
			(name ,(name-gensym "z" nil) ,(textify right-term))
			(replace -1) (replace -2) (replace -3))
		      `()))
	(just-step
	 `(then ,@name-rep
		(try (try-rewrites$
		       * ,@(cancellation-lemma-names op rel "" polarity))
		     ,(try-justification 'cancel '(assert))
		     (fail))))
	(step-list `((replace -1 :hide? t) ,just-step)))
    (spread case-step step-list))
  "[Manip] Try canceling terms in a relational formula."
  "~%Canceling terms from both sides of formula ~A")

;; For cancellation terms whose type doesn't satisfy the rewrite rules,
;; set up a suitable case split on the term's polarity.

(defhelper cancel-cases (fnum formula sign name? cancel-term
			 left-term op rel right-term)
  (let ((case-step
	  (if (eq sign '*)
	      `(spread
		 (case ,(format nil "~A >= 0" cancel-term)
		       ,(format nil "~A = 0"  cancel-term))
		 ((then (replace -1 :hide? t) (assert))
		  (cancel-basic$ ,(if (< fnum 0) (- fnum 1) (+ fnum 1))
				 ,formula ,name? ,cancel-term
				 ,left-term ,op ,rel ,right-term "_pos_")
		  (cancel-basic$ ,(if (< fnum 0) fnum (+ fnum 1))
				 ,formula ,name? ,cancel-term
				 ,right-term ,op ,rel ,left-term "_neg_")))
	      (let* ((comp (case sign
			     ((+) '>) ((-) '<) ((0+) '>=) ((0-) '<=) (t '>)))
		     (cancel-args 
		       `(,formula ,name? ,cancel-term
				  ,@(if (member sign '(- 0-))
					(list right-term op rel left-term)
					(list left-term op rel right-term))
				  ,(if (member comp '(> >=)) "_pos_" "_neg_"))))
		`(spread (case ,(format nil "~A ~A 0" cancel-term comp))
			 (,(if (member sign '(+ -))
			       `(cancel-basic$ ,(if (< fnum 0) (- fnum 1) fnum)
					       ,@cancel-args)
			       `(spread (case ,(format nil "~A = 0"
						       cancel-term))
				  ((then (replace -1 :hide? t) (assert))
				   (cancel-basic$
				     ,(if (< fnum 0) (- fnum 1) (+ fnum 1))
				     ,@cancel-args))))
			  (assert))))))
	(msg-step (gen-manip-response 'cancel "No cancellation rules apply.")))
    (try case-step (skip) msg-step))
  "[Manip] Try canceling terms in a relational formula."
  "~%Canceling terms from both sides of formula ~A")

;;; Generate list of applicable lemma names based on relation and
;;; top-level operator.

(defun cancellation-lemma-names (operator relation suffix
					  &optional (polarity ""))
  (flet ((lemma (polarity-word op-word number)
	   (format nil "both_sides_~A~A~A~A~A"
		   (cdr (assoc operator *arith-op-name*))
		   polarity-word op-word number suffix)))
    (let ((op (cdr (assoc relation *real-props-relation*))))
      (cond ((eq relation '=)
	     (list (lemma "" "" 1) (lemma "" "" 2)))
	    ((member operator '(+ -))
	     (list (lemma "_" op 1) (lemma "_" op 2)))
	    ((eq operator '*)
	     (if (equal polarity "")
		 (list (lemma "_pos_" op 1) (lemma "_pos_" op 2)
		       (lemma "_neg_" op 1) (lemma "_neg_" op 2))
	         (list (lemma polarity op 1) (lemma polarity op 2))))
	    (t (list (lemma "_pos_" op 1) (lemma "_pos_" op 2)
		     (lemma "_pos_" op 3)
		     (lemma "_neg_" op 1) (lemma "_neg_" op 2)
		     (lemma "_neg_" op 3)) )))))

;;;;;;;;;;;;;;;;;;;;

(defstep cancel-terms (&optional (fnums *) (end l) (sign nil) (try-just nil))
  (let ((candidates (get-relations (extract-fnums-arg fnums)))
	(f-nums (mapcan #'(lambda (n)
			    (and (both-sides-same-op (manip-get-formula n)
						     '(+ - * /))
				 (list n)))
			candidates))
	(cancel-step
	  (if f-nums
	      `(then@ ;,@(gen-value-warning 'cancel-terms sign 'sign
			;		   '(+ - 0+ 0- * nil))
		      ,@(mapcar #'(lambda (n)
				    `(cancel-lr-one$ ,n ,end ,sign ,try-just))
				f-nums))
	      (gen-manip-response 'cancel-terms "No suitable formulas."))))
    cancel-step)
  "[Manip] Cancel left-most or right-most terms, which need not be identical,
from both sides of relational formulas involving arithmetic expressions.
Introduces a case split to prove the terms are equal.  END may be used to
select L or R end of a chain of associative terms for cancellation.  The
`-' operator is considered equivalent to `+' for this purpose.  On the
other hand, only the outer-most application in a chain of `/'-separated
terms is recognized.  SIGN may be used to indicate polarity as in cancel."
  "~%Canceling terms from both sides of selected formulas")

(defhelper cancel-lr-one (fnum end sign try-just)
  (let ((formula (manip-get-formula fnum))
	(lhs (args1 formula))
	(rhs (args2 formula))
	(op (id (operator lhs)))
	(lhs-term (cond ((not (eq op '/))
			 (make-new-product (get-end-terms lhs end 1)))
			((eq end 'l) (args1 lhs))
			(t           (args2 lhs))))
	(rhs-term (cond ((not (eq op '/))
			 (make-new-product (get-end-terms rhs end 1)))
			((eq end 'l) (args1 rhs))
			(t           (args2 rhs))))
	(eq-step `(case ,(format nil "~A = ~A" lhs-term rhs-term)))
	(main-branch
	 `(then@ (replace -1 ,(if (< fnum 0) (- fnum 1) fnum)
			  :hide? t)
		 ,@(case op
		     ((+ -) `((move-terms$ ,fnum l ,(if (eq end 'l) 1 -1))
			      (assert ,fnum)))
		     ((*) (if (eq end 'l)
			      `((invoke$ (permute-mult-terms$ $1j ,fnum 1 r)
					 (! ,fnum l))
				(permute-mult-terms$ ,rhs ,fnum 1 r)
				(cancel$ ,fnum ,sign))
			      `((invoke$ (permute-mult-terms$ $1j ,fnum -1 r)
					 (! ,fnum l))
				(permute-mult-terms$ ,rhs ,fnum -1 r)
				(cancel$ ,fnum ,sign))))
		     ((/) `((cancel$ ,fnum ,sign))) ;; -1 hidden in step above
		     (t nil))))
	(step-list (list main-branch
			 (try-justification 'cancel-terms try-just))))
    (spread eq-step step-list))
  "[Manip] Try canceling terms in a relational formula."
  "~%Canceling terms from both sides of formula ~A")



;;;;;;;;;;;;;;;;;;;;

(defstep cancel-add (&optional (fnums *))
  (let ((candidates (get-relations (extract-fnums-arg fnums)))  ;;; '(=)))
	(cancel-step
	  (if candidates
	      `(then@ ,@(mapcar #'(lambda (n) `(cancel-add-one$ ,n))
				candidates))
	      (gen-manip-response 'cancel-add "No suitable formulas."))))
    cancel-step)
  "[Manip] Cancel additive terms from both sides of selected formulas.
The matching terms can appear in any relative position within their
containing expressions.  Also works for a term and its negation on the
same side of a relation."
  "~%Canceling additive terms from selected formulas")

(defhelper cancel-add-one (fnum)
  (let ((formula (manip-get-formula fnum))
	(value-class (manip-class-ex (args1 formula)))
	(zero (manip-additive-zero value-class (type (args1 formula))))
	(rel (id (operator formula)))
	(left-terms  (collect-additive-terms '+ (args1 formula)))
	(right-terms (collect-additive-terms '+ (args2 formula)))
	(new-terms (collect-nonmatching-terms-all left-terms right-terms))
	(cancel-steps
	 (if new-terms
	     (cancel-add-steps fnum formula value-class zero rel new-terms)
	     (gen-manip-response
	      'cancel-add
	      "No terms can be canceled in selected formula."))))
    cancel-steps)
  "[Manip] Try canceling additive terms in a relational formula."
  "~%Canceling additive terms in formula ~A")

(defun cancel-add-steps (fnum formula value-class zero rel new-terms)
  (let* ((final-sides
	  (mapcar #'(lambda (term) (make-new-addition term t t zero))
		  new-terms))
	 (old-formula (textify formula))
	 (new-formula
	  (format nil "~A ~A ~A" (car final-sides) rel (cadr final-sides)))
	 (just-step (cancel-add-just-step
		     value-class fnum (car new-terms) (cadr new-terms)))
	 (equiv-step `(case ,(format nil "~A IFF ~A"
				     old-formula new-formula)))
	 (step-list `((replace -1 ,(if (< fnum 0) (- fnum 1) fnum) :hide? t)
		      ,just-step)))
    `(spread ,equiv-step ,step-list)))

(defstep cancel-add! (expr-loc)
  (let ((descriptors (eval-ext-expr expr-loc))
	(cancel-step
	   (if descriptors
	       `(try (then@ ,@(mapappend
			       #'(lambda (d)
				   (cancel-add-two (ee-fnum d) (ee-pvs-obj d)))
			       descriptors))
		     (skip)
		     ,(gen-manip-response 'cancel-add!
					  "No suitable expressions."))
	       (gen-manip-response 'cancel-add!
				   "No suitable formulas or expressions."))))
    cancel-step)
  "[Manip] Cancel additive terms from selected expressions.  The matching terms
can appear in any relative position within their containing expressions."
  "~%Canceling additive terms from selected expressions")

(defun cancel-add-two (fnum expr)
  (let* ((name-step `(name-replace ,(name-gensym "cancel_add")
				   ,(textify expr) nil))  ;; don't hide
	 (target-fnum (if (< fnum 0) (- fnum 1) fnum)))
     `(,name-step (cancel-add -1)
       (replace -1 ,target-fnum :dir rl :hide? t))))

;; Look for matching additive terms from a formula that are subject to
;; cancellation, then form the complements of term lists.  Argument across?
;; is used to indicate when matches should have the same polarity (from
;; opposite sides of an equality).  Returns a list (KT KO), where KT is
;; a list of primary terms to keep and KO is a list of other terms to keep.
;; When a term can match multiple targets, the first match is chosen and
;; it becomes ineligible for later matches.

(defun collect-nonmatching-terms (term-list
				  &optional (other-list term-list) across?)
  (loop with num-others = (length other-list)
	with others = (apply #'vector other-list)
	with matches = 0
	for term in term-list
        for n from 0 below (length term-list)
	for drop = (loop 
		    for index from (if across? 0 n) below num-others
		    for other = (aref others index)
		    when (and other
			      (if across?
				  (eq (car term) (car other))
				(not (eq (car term) (car other))))
			      (tc-eq (cadr term) (cadr other)))
		      do (progn (incf matches 1)
				(setf (aref others index) nil)
				(unless across? (setf (aref others n) nil)))
		      and return t)
	unless drop
	  collect term into keep-terms
	finally (let ((keep-others (loop for other in
					 (map 'list #'(lambda (x) x) others)
					 when other collect other)))
		  (return (if across?
			      (list matches keep-terms keep-others)
			      (list matches keep-others))))))

(defun collect-nonmatching-terms-all (left-terms right-terms)
  (let* ((across (collect-nonmatching-terms left-terms right-terms t))
	 (left   (collect-nonmatching-terms (cadr across)))
	 (right  (collect-nonmatching-terms (caddr across))))
    (if (zerop (+ (car across) (car left) (car right)))
	nil
        (list (cadr left) (cadr right)))))


(defmethod cancel-add-just-step (any fnum left-terms right-terms)
  '(skip))                      ;; default for unsupported type

(defmethod cancel-add-just-step ((num pvs-type-real) fnum
				 left-terms right-terms)
  '(assert))


;;;;;;;;;;;;;;;;;;;;

(defstep op-ident (fnum &optional (side l) (operation *1))
  (let ((fnumber (car (extract-fnums-arg fnum)))
	(formula (manip-get-formula fnumber))
	(step (if formula
		  `(then ,@(gen-value-warning 'op-ident operation 'operation
					      '(z+ +z -z 1* *1 /1))
			 (op-ident-one$ ,fnumber ,formula ,side ,operation))
		  (gen-manip-response 'op-ident "Formula not suitable."))))
    step)
  "[Manip] Apply the operator identity given by OPERATION to rewrite
the expression found on SIDE (L or R) of relational formula FNUM.
Performs the following operations using these designated symbols:
   z+      +z      -z      1*      *1      /1
   0 + x   x + 0   x - 0   1 * x   x * 1   x / 1"
  "~%Applying identity operation to rewrite selected expression")

(defhelper op-ident-one (fnumber formula side operation)
  (let ((relation (id (operator formula)))
	(old-expr   (if (eq side 'l) (args1 formula) (args2 formula)))
	(other-expr (if (eq side 'l) (args2 formula) (args1 formula)))
	(new-expr (op-ident-expr old-expr operation))
	(case-expr 
	  (if (eq side 'l)
	      (format nil "(~A) IFF (~A ~A ~A)"
		      formula new-expr relation other-expr)
	      (format nil "(~A) IFF (~A ~A ~A)"
		      formula other-expr relation new-expr)))
	(rewrite-step
	  `(branch (case ,case-expr)
		   ((replace -1 ,(if (< fnumber 0) (- fnumber 1) fnumber)
			     :hide? t)
		    (then (assert) (assert))))))
    rewrite-step)
  "[Manip] Apply operator identity to rewrite expression."
  "~%Applying identity operation to rewrite selected expression")

(defstep op-ident! (expr-loc &optional (operation *1))
  (let ((descriptors (eval-ext-expr expr-loc))
	(rewrite-step
	  (if descriptors
	      `(then@ ,@(gen-value-warning 'op-ident! operation 'operation
					   '(z+ +z -z 1* *1 /1))
		      ,@(mapcar #'(lambda (d) `(op-ident!-one$ ,d ,operation))
				descriptors))
	      (gen-manip-response 'op-ident! "No suitable expressions."))))
    rewrite-step)
  "[Manip] Apply the operator identity given by OPERATION to rewrite
the expression found at EXPR-LOC.  Currently performs the following
operations using these designated symbols:
   z+      +z      -z      1*      *1      /1
   0 + x   x + 0   x - 0   1 * x   x * 1   x / 1"
  "~%Applying identity operation to rewrite selected expression")

(defhelper op-ident!-one (expr-descriptor operation)
  (let ((old-expr (ee-pvs-obj expr-descriptor))
	(fnumber (ee-fnum expr-descriptor))
	(new-expr (op-ident-expr old-expr operation))
	(rewrite-step
	  `(branch (case ,(format nil "~A = ~A" old-expr new-expr))
		   ((replace -1 ,(if (< fnumber 0) (- fnumber 1) fnumber)
			     :hide? t)
		    (assert 1)))))
    rewrite-step)
  "[Manip] Apply operator identity to rewrite expression."
  "~%Applying identity operation to rewrite selected expression")

(defun op-ident-expr (expr operation)
  (case operation
    ((z+) (format nil "0 + ~A" expr))
    ((+z) (format nil "~A + 0" expr))
    ((-z) (format nil "~A - 0" expr))
    ((1*) (format nil "1 * ~A" (safety-parens expr)))
    ((*1) (format nil "~A * 1" (safety-parens expr)))
    ((/1) (format nil "~A / 1" (safety-parens expr)))
    (t    (format nil "~A * 1" (safety-parens expr)))))  ;; *1 default


;;;;;;;;;;;;;;;;;;;;

(defstep cross-mult (&optional (fnums *))
  (let ((f-nums (get-relations (extract-fnums-arg fnums)))
	(times-div-lemmas '("times_div1" "times_div2"))
	(rewrite-steps (loop for n in f-nums
			     collect (targeted-rewrites n times-div-lemmas)))
	(rewrites (loop for steps in rewrite-steps
			append (mapcar #'(lambda (s) `(repeat ,s)) steps)))
	(mult-step
	 `(then@ ,@(mapcar #'(lambda (n rew) `(cross-mult-one$ ,n ,rew))
			   f-nums rewrite-steps)))
	(cross-step (if f-nums
			`(then ,@rewrites ,mult-step (assert ,f-nums))
		        (gen-manip-response 'cross-mult
					    "No suitable formulas."))))
    cross-step)
  "[Manip] Apply cross multiplication to relational expressions.  Multiply
both sides of a formula by the respective divisors of each side and
then simplify.  Checks for negative real divisors and invokes suitable
lemmas as needed.  Applies cross multiplication recursively until all
outermost division operators are gone."
  "~%Multiplying both sides of selected formulas by LHS/RHS divisor(s)")

(defhelper cross-mult-one (fnum pre-rewrites &optional (depth-limit 10))
  (let ((formula (manip-get-formula fnum))
	(value-class (manip-class-ex (args1 formula)))
	(recur-step `(then@ ,@pre-rewrites
			    (cross-mult-one$ ,fnum ,pre-rewrites
					     ,(- depth-limit 1))))
	(mult-step
	  (cond ((= depth-limit 0)
		 (gen-manip-response 'cross-mult "Depth limit exceeded."))
		((cross-mult-cond value-class formula t)  ;; LHS
		 `(spread (cross-mult-lr$ ,fnum ,formula t ,value-class)
			  (,recur-step (skip))))
		((cross-mult-cond value-class formula nil)  ;; RHS
		 `(spread (cross-mult-lr$ ,fnum ,formula nil ,value-class)
			  (,recur-step (skip))))
		(t '(skip)))))
    mult-step)
  "[Manip] Multiply both sides of a relation by LHS/RHS divisor(s)."
  "~%Multiplying both sides of ~A by LHS/RHS divisor(s)")

(defhelper cross-mult-lr (fnum formula left-side value-class)
  (let ((relation (id (operator formula)))
	(side-obj (if left-side (args1 formula) (args2 formula)))
	(other-obj (if left-side (args2 formula) (args1 formula)))
	(lemma-step
	 (cross-mult-step value-class fnum formula relation
			  left-side side-obj other-obj)))
    lemma-step)
  "[Manip] Multiply both sides of a relation by LHS/RHS divisor(s)."
  "~%Multiplying both sides of ~A by LHS/RHS divisor")

;;;;;;;;;;;;;

(defmethod cross-mult-cond (any     ;; default for unsupported type
			    formula left-side)
  nil)

(defmethod cross-mult-cond ((num pvs-type-real) formula left-side)
  (and (is-relation formula)
       (is-term-operator
	(if left-side (args1 formula) (args2 formula)) '/)))


(defmethod cross-mult-step ((num pvs-type-real)
			    fnum formula relation left-side side-obj other-obj)
  (if (eq relation '=)
      (let ((adj-fnum (if (< fnum 0) (- fnum 1) fnum)))
	`(then (lemma ,(if left-side "div_cancel3" "div_cancel4"))
	       (inst? -1 :where ,adj-fnum)
	       (replace -1 ,adj-fnum :hide? t)))
      ;; rewrite has issues with deleting target formula
;     (rewrite ,(if left-side "div_cancel3" "div_cancel4") ,fnum)
      (let ((suffix (format nil "_~A~A"
			    (cdr (assoc relation *real-props-relation*))
			    (if left-side "1" "2")))
	    (divisor-type (textify (type (args2 side-obj)))))
	(if (member divisor-type '("posreal" "negreal") :test #'equal)
	    (let ((sign
		   (if (equal divisor-type "negreal") "_neg" "_pos")))
	      `(rewrite ,(format nil "div_mult~A~A" sign suffix)
			,fnum :target-fnums ,fnum))
	    (let* ((lemmas
		    (mapcar #'(lambda (sign)
				(format nil "div_mult~A~A" sign suffix))
			    '("_pos" "_neg" "_pos_neg")))
		   (terms (list (args2 side-obj) other-obj 
				(args1 side-obj))))
	      (apply #'rewrite-until-justified lemmas fnum terms))))))

;;;;;;;;;;;;;;;;;;;;

(defstep cross-add (&optional (fnums *))
  (let ((f-nums (get-relations (extract-fnums-arg fnums)))
	(add-step (if f-nums
		      `(then@ ,@(mapcar #'(lambda (n) `(cross-add-one$ ,n))
					f-nums))
		      (gen-manip-response 'cross-add "No suitable formulas."))))
    add-step)
  "[Manip] Apply cross addition to relational formulas.  Add to both sides
of a formula the respective subtrahend of each side and then simplify.
Applies cross addition recursively until all outermost subtraction
operators are gone."
  "~%Adding LHS/RHS subtrahend(s) to both sides of selected formulas")

(defhelper cross-add-one (fnum &optional (depth-limit 10))
  (let ((formula (manip-get-formula fnum))
	(add-step
	  (cond ((= depth-limit 0)
		 (gen-manip-response 'cross-add "Depth limit exceeded."))
		((is-term-operator (args1 formula) '-)      ;; LHS
		 `(then (move-terms$ ,fnum l 2)
			(cross-add-one$ ,fnum ,(- depth-limit 1))))
		((is-term-operator (args2 formula) '-)  ;; RHS
		 `(then (move-terms$ ,fnum r 2)
			(cross-add-one$ ,fnum ,(- depth-limit 1))))
		(t '(skip)))))
    add-step)
  "[Manip] Add LHS/RHS subtrahend(s) to both sides of a relation."
  "~%Adding LHS/RHS subtrahend(s) to both sides of formula ~A")


;;;;;;;;;;;;;;;;;;;;

(defstep factor (fnums &optional (side *) (term-nums *) id?)
  (let ((extract-step `(factor!$ (! ,fnums ,side) ,term-nums ,id?)))
    extract-step)
  "[Manip] Extract common multiplicative factors from the additive terms
given by TERM-NUMS for the expression found on SIDE (L or R) of each
relational formula in FNUMS, then rearrange.  ID? = T indicates the factor
made of summed terms should be embedded in a call to the identity function
to prevent later distribution."
  "~%Extracting common factors from additive terms of selected expressions")

(defstep factor! (expr-loc &optional (term-nums *) (id? nil))
  (let ((descriptors (eval-ext-expr expr-loc))
	(extract-step
	   (if descriptors
	       `(try (then@ ,@(mapcar #'(lambda (d)
					  `(factor-one$ ,d ,term-nums ,id?))
				      descriptors))
		     (skip)
		     ,(gen-manip-response 'factor! "No suitable expressions."))
	       (gen-manip-response 'factor!
				   "No suitable formulas or expressions."))))
    extract-step)
  "[Manip] Extract common multiplicative factors from the additive terms
given by TERM-NUMS for the expressions found at EXPR-LOC, then rearrange.
ID? = T indicates the factor made of summed terms should be embedded in
a call to the identity function to prevent later distribution."
  "~%Extracting common factors from additive terms of selected expressions")

(defhelper factor-one (expr-descriptor term-nums id?)
  (let ((expr-obj (ee-pvs-obj expr-descriptor))
	(fnumber (ee-fnum expr-descriptor))
	(value-class (manip-class-ex expr-obj))
	(full-terms (collect-additive-terms '+ expr-obj))
	(tnums (map-term-nums-arg term-nums (length full-terms)))
	(extract-step
	 (cond ((null tnums)
		(gen-manip-response 'factor! "No suitable terms."))
	       ((and (typep expr-obj 'infix-application)
		     (member (id (operator expr-obj)) '(+ -)))
		(factor-terms expr-obj fnumber value-class
			      full-terms tnums id?))
	       (t '(skip)))))
    extract-step)
  "[Manip] Extract common factors from additive terms."
  "~%Extracting common factors from additive terms of selected expression")

(defun factor-terms (old-expr fnum value-class full-terms tnums id?)
  (let* ((term-mask (mapcar #'(lambda (n) (member (1+ n) tnums))
			    (consec (length full-terms))))
	 (in-signs (mapcan #'(lambda (p x) (and p (list (car x))))
			   term-mask full-terms))
	 (in-terms (mapcan #'(lambda (p x) (and p (list (cadr x))))
			   term-mask full-terms))
	 (out-terms (mapcan #'(lambda (p x) (and (not p) (list x)))
			    term-mask full-terms))
	 ;; returns (left-factors right-factors):
	 (in-objs (apply #'mapcar #'list
			 (collect-factor-terms value-class in-terms)))
	 (in-terms-str
	  (mapcar #'(lambda (lr)
		      (mapcar #'(lambda (a)
				  (mapcar #'(lambda (m) (safety-parens m)) a))
			      lr))
		  (mapcar #'extract-gcds in-objs)))
	 (common (mapcar #'find-common-factors in-terms-str))
	 (lf-comm-expr (when (car common) (make-new-product (car common) nil)))
	 (rt-comm-expr
	  (when (cadr common) (make-new-product (cadr common) nil))))

    (if (or (car common) (cadr common))
	(let* ((in-terms-uncommon
		(mapcar #'strip-common-factors in-terms-str common))
	       (uncommon (apply #'mapcar #'append in-terms-uncommon))
	       (uncommon-expr
		(make-new-addition
		 (mapcar #'(lambda (sign uncomm)
			     (list sign (make-new-product uncomm nil)))
			 in-signs uncommon)
		 t))
	       (ident (if id? "id" ""))
	       (lf-comm (if lf-comm-expr (format nil " ~A * " lf-comm-expr) ""))
	       (rt-comm (if rt-comm-expr (format nil " * ~A " rt-comm-expr) ""))
	       (out-expr  (if out-terms (make-new-addition out-terms nil) ""))
	       (new-expr (format nil "~A~A(~A)~A~A"
				 lf-comm ident uncommon-expr rt-comm out-expr))
	       (extract-step `(case ,(format nil "~A = ~A" old-expr new-expr)))
	       (step-list (factor-steps value-class fnum id?)))
	  `(spread ,extract-step ,step-list))
       (gen-manip-response 'factor! "No common factors."))))


;;;;;;;;;;;;;;;;;;;;

(defmethod collect-factor-terms (val-cl add-terms)
  nil)                      ;; default for unsupported types

(defmethod collect-factor-terms ((val-cl pvs-type-real) add-terms)
  ;; collect as left and right mult lists (all left)
  (mapcar #'(lambda (expr)
	      (collect-multiplicative-terms expr #'(lambda (expr) t)))
	  add-terms))


(defmethod factor-steps (val-cl   ;; default for unsupported types
			 fnum id?)
  (gen-manip-response 'factor! "No suitable terms."))

(defmethod factor-steps ((val-cl pvs-type-real)
			 fnum id?)
  (let* ((adj-fnum (if (< fnum 0) (- fnum 1) fnum))
	 (step-list (cond ;;((not lf-common)  `((skip)))
			  (id? `((replace -1 ,adj-fnum :hide? t)
				 (then (expand "id") (assert))))
			  (t   `((replace -1 ,adj-fnum :hide? t) (assert))))))
    step-list))


;;;;;;;;;;;;;;;;;;;;

(defstep distrib (fnums &optional (side *) (term-nums *))
  (let ((descriptors (eval-ext-expr `(! ,fnums ,side)))
	(sides (if (eq side '*) '(1 2) (list side)))
	(additive (loop for s in sides
			for d in descriptors
			for obj = (ee-pvs-obj d)
			collect (and (typep obj 'infix-application)
				     (memq (id (operator obj)) '(+ -)))))
	(locs (loop for p in additive
		    for s in sides
		    collect (if p `(! ,fnums ,s ,term-nums) `(! ,fnums ,s))))
	(distrib-step
	 (if locs
	     `(then ,@(loop for loc in locs collect `(distrib!$ ,loc)))
	     (gen-manip-response 'distrib
				 "No suitable formulas."))))
    distrib-step)
  "[Manip] Distribute multiplication operators over factors having the form
of additive subexpressions.  Apply this action to the top-level additive
terms given by TERM-NUMS for the expression found on SIDE (L or R) of each
relational formula in FNUMS."
  "~%Distributing multiplication over additive terms of selected expressions")

(defstep distrib! (expr-loc)
  (let ((descriptors (eval-ext-expr expr-loc))
	(distrib-step
	   (if descriptors
	       `(try (then@ ,@(mapcar #'(lambda (d)
					  `(distrib-one$ ,d))
				      descriptors))
		     (skip)
		     ,(gen-manip-response 'distrib! "No suitable expressions."))
	       (gen-manip-response 'distrib!
				   "No suitable formulas or expressions."))))
    distrib-step)
  "[Manip] Distribute multiplication operators over factors having the
form of additive subexpressions.  Apply this action to the multiplicative
expression found at EXPR-LOC."
  "~%Distributing multiplication over additive terms of selected expressions")

(defhelper distrib-one (expr-descriptor)
  (let ((expr-obj (ee-pvs-obj expr-descriptor))
	(fnumber (ee-fnum expr-descriptor))
	(distrib-step
	 (cond ((and (typep expr-obj 'infix-application)
		     (member (id (operator expr-obj)) '(*)))
		(distrib-mult-step expr-obj fnumber))
	       ;; add other cases; search for *-subexprs ???
	       (t '(skip)))))
    distrib-step)
  "[Manip] Distribute multiplication operators over additive factors."
  "~%Distributing multiplication over additive terms of selected expressions")


(defun distrib-mult-step (expr-obj fnum)
  (distrib-step (manip-class-ex (args1 expr-obj))
		(manip-class-ex (args2 expr-obj))
		expr-obj fnum))

(defmethod distrib-step (left-cl right-cl   ;; default for unsupported types
			 expr-obj fnum)
  (gen-manip-response 'distrib! "No suitable terms."))

(defmethod distrib-step ((left-cl pvs-type-real) (right-cl pvs-type-real)
			 expr-obj fnum)
  (let* ((adj-fnum (if (< fnum 0) (- fnum 1) fnum)))
    `(then (name ,(name-gensym "distrib") ,expr-obj)
	   (replace -1 ,adj-fnum)
	   (assert -1)
	   (replace -1 ,adj-fnum :dir rl :hide? t))))

;;;;;;;;;;;;;;;;;;;;

(defstep transform-both (fnum transform &optional (swap nil) (try-just nil))
  (let ((fnumber (car (extract-fnums-arg fnum)))
	(formula (manip-get-formula fnumber))
	(step (cond ((not formula)
		     (gen-manip-response 'transform-both
					 "Formula not suitable."))
		    ((stringp transform)
		     `(transform-both-one$ ,fnumber ,formula ,transform
					   ,swap ,try-just))
		    (t (gen-manip-response 'transform-both
					   "TRANSFORM must be a string.")))))
    step)
  "[Manip] Apply TRANSFORM to both sides of relational formula FNUM, where
a transform has the form `...%1...', and `%1' represents the left- and
righthand side expressions in the relation.  The transform can be
regarded as a template expression with `%1' as an implicit template
variable.  Example: (transform-both 3 \"2 * %1 + 1\") multiplies both
sides of formula 3 by 2 then adds 1.  The flag SWAP is used to indicate
when the terms should be swapped (e.g., when multiplying by a negative
number).  Proof of the justification step can be tried by supplying
a proof step for TRY-JUST."
  "~%Applying transform to both sides of formula ~A and simplifying")

(defhelper transform-both-one (fnumber formula transform swap try-just)
  (let ((operator (textify (operator formula)))
	(lhs (textify (car (exprs (argument formula)))))
	(rhs (textify (cadr (exprs (argument formula)))))
	(trans-lhs (percent-subst transform (list lhs)))
	(trans-rhs (percent-subst transform (list rhs)))
	(trans-relation
	  (if swap
	      (format nil "~A ~A ~A" trans-rhs operator trans-lhs)
	      (format nil "~A ~A ~A" trans-lhs operator trans-rhs)))
	(case-step
	  `(case ,(format nil (if (> fnumber 0) "NOT ~A" "~A") trans-relation)))
	(steplist (list '(skip) (try-justification 'transform-both try-just))))
    (spread case-step steplist))
  "[Manip] Apply TRANSFORM to both sides of relational formula FNUM."
  "~%Applying transform to both sides of formula ~A and simplifying")


;;; ============== Strategies for manipulating products ==============

(defstep permute-mult (fnums &optional (side r) (term-nums 2) (end l))
  (let ((extract-step `(permute-mult!$ (! ,fnums ,side) ,term-nums ,end)))
    extract-step)
  "[Manip] Reorder multiplicative terms from the factors given by TERM-NUMS 
for the expression found on SIDE (L or R) of relational formulas FNUMS.
Those factors cited in TERM-NUMS will be moved to the END in the order
listed.  The remaining factors will be placed at the other END in their
original order."
  "~%Permuting factors in selected expressions")

(defstep permute-mult! (expr-loc &optional (term-nums 2) (end l))
  (let ((descriptors (eval-ext-expr expr-loc))
	(extract-step
	  (if descriptors
	      `(then@ ,@(mapcar #'(lambda (d)
				    `(permute-mult-one$ ,d ,term-nums ,end))
				descriptors))
	      (gen-manip-response 'permute-mult!
				  "No suitable formulas or expressions."))))
    extract-step)
  "[Manip] Reorder multiplicative terms from the factors given by TERM-NUMS 
for the expressions found at EXPR-LOC.  Those factors cited in TERM-NUMS
will be moved to the END in the order listed.  The remaining factors
will be placed at the other END in their original order."
  "~%Permuting factors in selected expressions")

(defhelper permute-mult-one (expr-descriptor term-nums end)
  (let ((expr-obj (ee-pvs-obj expr-descriptor))
	(fnumber (ee-fnum expr-descriptor))
	(value-class (manip-class-ex expr-obj))
	(extract-step
	 (if (is-term-operator expr-obj '*)
	     (let* ((all-terms (collect-mult-factors value-class expr-obj))
		    ;; all-terms = (in-terms out-terms)
		    (tnums (map-term-nums-arg term-nums
					      (length (car all-terms)))))
	       (if tnums
		   `(permute-mult-terms$ ,expr-obj ,fnumber ,term-nums ,end)
		   (gen-manip-response 'permute-mult! "No suitable terms.")))
	     (gen-manip-response 'permute-mult! "Not a suitable expression."))))
    extract-step)
  "[Manip] Reorder multiplicative terms."
  "~%Permuting factors in selected expression")

;;; Internal strategy allows permutation in either direction.
;;; END argument indicates movement to L or R.  Term number generation
;;; is redundant for some callers, but there are multiple invokers.

(defhelper permute-mult-terms (old-expr fnum term-nums end)
  (let ((value-class (manip-class-ex old-expr))
	(all-terms (collect-mult-factors value-class old-expr))
	(selectable (car all-terms))
	(tnums (map-term-nums-arg term-nums (length selectable)))
	(term-mask (mapcar #'(lambda (n) (member (1+ n) tnums))
			   (consec (length selectable))))
	(other-terms (mapcan #'(lambda (p x) (and (not p) (list x)))
			     term-mask selectable))
	(selected (mapcan #'(lambda (n) (let ((e (nth (- n 1) selectable)))
					  (and e (list e))))
			  tnums))
	(new-terms (append (if (eq end 'l)
			       (append selected other-terms)
			       (append other-terms selected))
			   (cadr all-terms)))   ;; unselectable
	(new-expr (make-new-product new-terms))
	(extract-step `(case ,(format nil "~A = ~A" old-expr new-expr)))
	(step-list `((replace -1 ,(if (< fnum 0) (- fnum 1) fnum) :hide? t)
		     (assert))))
    (branch extract-step step-list))
  "[Manip] Reorder multiplicative terms."
  "~%Permuting factors in selected expression")

;;; Internal strategy to permute right.

(defhelper permute-mult-right (expr-loc &optional (term-nums 1))
  (let ((expr-descriptor (car (eval-ext-expr expr-loc)))
	(expr-obj (ee-pvs-obj expr-descriptor))
	(fnumber (ee-fnum expr-descriptor))
	(extract-step `(permute-mult-terms$ ,expr-obj ,fnumber ,term-nums r)))
    extract-step)
  "[Manip] Reorder multiplicative terms."
  "~%Permuting factors in selected expression")


(defmethod collect-mult-factors (val-cl expr)
  nil)                      ;; default for unsupported types

(defmethod collect-mult-factors ((val-cl pvs-type-real) expr)
  ;; collect as left and right mult lists (all left)
  (collect-multiplicative-terms expr #'(lambda (e) t)))


;;;;;;;;;;;;;;;;;;;;

(defstep name-mult (name fnum side &optional (term-nums *))
  (let ((name-step `(name-mult!$ ,name (! ,fnum ,side) ,term-nums)))
    name-step)
  "[Manip] Select a list of factors (indicated by TERM-NUMS) from the
expression found on SIDE (L or R) of relational formula FNUM.  Assign a
NAME to the product of the selected factors and replace the product by NAME."
  "~%Permuting factors and replacing selected terms by ~A in expression")

(defstep name-mult! (name expr-loc &optional (term-nums *))
  (let ((expr-desc (car (eval-ext-expr expr-loc)))
	(step (cond ((not expr-desc)
		     (gen-manip-response 'name-mult!
					 "Formula or expression not suitable."))
		    ((or (stringp name) (symbolp name))
		     `(name-mult-one$ ,name ,expr-desc ,expr-loc ,term-nums))
		    (t (gen-manip-response 'name-mult!
			"NAME must be a string or a symbol.")))))
    step)
  "[Manip] Select a list of factors (indicated by TERM-NUMS) from the
expression found at EXPR-LOC.  Assign a NAME to the product of the selected
factors and replace the product by NAME.  Can only handle first expression
that results from EXPR-LOC."
  "~%Permuting factors and replacing selected terms by ~A in expression")

(defhelper name-mult-one (name expr-desc expr-loc term-nums)
  (let ((full-expr (ee-pvs-obj expr-desc))
	(value-class (manip-class-ex full-expr))
	(orig-terms (collect-mult-factors value-class full-expr))
	(tnums (map-term-nums-arg term-nums (length (car orig-terms))))
	(permute-step `(permute-mult!$ ,expr-loc ,tnums))
	(continue-step `(name-mult-rest$ ,name ,expr-loc ,tnums))
	(step (if tnums
		  `(then@ ,permute-step ,continue-step)
		  (gen-manip-response 'name-mult! "No suitable terms."))))
    step)
  "[Manip] Select a list of factors and assign a NAME to their product."
  "~%Permuting factors and replacing selected terms by ~A in expression")

;;; expr-loc is the same, but the expression it locates is different
;;; after permutation.

(defhelper name-mult-rest (name expr-loc term-nums)
  (let ((full-expr (handler-case (ee-pvs-obj (car (eval-ext-expr expr-loc)))
		       (error (cond) nil)))
	(name-step (if full-expr
		       (let* ((terms (get-end-terms full-expr 'l
						    (length term-nums)))
			      (new-expr (make-new-product terms)))
			 ;; might want to replace in just fnum:
			 `(name-replace ,name ,new-expr nil))  ;; don't hide
		       (gen-manip-response
			'name-mult!
			"The operation could not be completed.
If a syntax pattern was used, try a location reference instead."))))
    name-step)
  "[Manip] Permute factors, name selection, and replace."
  "~%Permuting factors and replacing selected terms by ~A in expression")

;;;;;;;;;;;;;;;;;;;;

(defstep recip-mult (fnums side)
  (let ((rewrite-step `(recip-mult!$ (! ,fnums ,side))))
    rewrite-step)
  "[Manip] Convert the top-level division operation for the expression found
on SIDE (L or R) of relational formulas FNUMS to a multiplication by the
reciprocal of the divisor."
  "~%Converting division in selected terms to multiplication by reciprocal")

(defstep recip-mult! (expr-loc)
  (let ((descriptors (eval-ext-expr expr-loc))
	(rewrite-step
	  (if descriptors
	      `(then@ ,@(mapcar #'(lambda (d) `(recip-mult-one$ ,d))
				descriptors))
	      (gen-manip-response 'recip-mult!
				  "No suitable formulas or expressions."))))
    rewrite-step)
  "[Manip] Convert the top-level division operation for the expressions found
at EXPR-LOC to a multiplication by the reciprocal of the divisor."
  "~%Converting division in selected terms to multiplication by reciprocal")

(defhelper recip-mult-one (expr-descriptor)
  (let ((expr (ee-pvs-obj expr-descriptor))
	(fnumber (ee-fnum expr-descriptor))
	(case-step
	  (cond ((not (is-term-operator expr '/))
		 (gen-manip-response 'recip-mult! "Not a suitable expression."))
		(t `(case ,(format nil "~A = ~A * (1/~A)" expr
				   (safety-parens (args1 expr))
				   (safety-parens (args2 expr)))))))
	(adj-fnum (if (< fnumber 0) (- fnumber 1) fnumber))
	(step-list `((replace -1 ,adj-fnum :hide? t) (assert))))
    (branch case-step step-list))
  "[Manip] Convert division operation to multiplication by reciprocal."
  "~%Converting division in selected term to multiplication by reciprocal")

;;;;;;;;;;;;;;;;;;;;

(defstep isolate-mult (fnum &optional (side l) (term-num 1) (sign +))
  (let ((swap-steps (if (eq side 'l) '() `((swap-rel$ ,fnum))))
	(permute-step `(permute-mult-right$ (! ,fnum l) ,term-num))
	(rest-step `(isolate-mult-rest$ ,fnum ,side ,sign))
	(expr-desc (car (eval-ext-expr `(! ,fnum ,side))))
	(orig-terms (and expr-desc
			 (collect-multiplicative-terms (ee-pvs-obj expr-desc))))
	(full-step
	 (cond ((not (extract-fnums-arg fnum))
		(gen-manip-response 'isolate-mult "Formula not suitable."))
	       ((map-term-nums-arg term-num (length orig-terms))
		`(try (then@ ,@(gen-value-warning 'isolate-mult
						  sign 'sign '(+ - *))
			     ,@swap-steps ,permute-step ,rest-step)
		      (skip) (skip)))
	       (t (gen-manip-response 'isolate-mult "Term not suitable.")))))
    full-step)
  "[Manip] Select factor TERM-NUM from one SIDE of formula FNUM and divide
both sides as needed to leave the selected term isolated.  SIGN indicates
the sign of the product of the unselected factors.  A case split to generate
the appropriate condition on the divisor is automatically introduced."
  "~%Dividing by factors to isolate a term in formula ~A")

;;; Assume relation has been swapped first so always operating on left.

(defhelper isolate-mult-rest (fnum side sign)
  (let ((fnumber (car (get-relations (extract-fnums-arg fnum))))
	(step (handler-case
		  (let* ((formula (manip-get-formula fnumber))
			 (relation (id (operator formula)))
			 (condition (cond ((or (eq relation '=) (eq sign '*))
					   "/=")
					  ((eq sign '-) "<")
					  (t            ">")))
			 (divisor (textify (args1 (args1 formula))))
			 (case-step `(case ,(format nil "~A ~A 0"
						    divisor condition)))
			 (adj-fnum (if (< fnumber 0) (- fnumber 1) fnumber))
			 (div-by-step `(div-by$ ,adj-fnum ,divisor ,sign))
			 (group-step `(rewrite "times_div2" ,adj-fnum :dir rl
					       :target-fnums ,adj-fnum))
			 (cancel-steps
			  (targeted-rewrites adj-fnum
					     '("div_simp" "identity_mult")))
			 (unswap-steps
			  (if (eq side 'l) '() `((swap-rel$ ,adj-fnum))))
			 (step-list `((then@ ,div-by-step ,group-step
					     ,@cancel-steps ,@unswap-steps)
				      (assert))))
		    `(branch ,case-step ,step-list))
		(error (condition)
		       `(then ,(gen-manip-response 'isolate-mult
				"Formula or term not suitable.")
			      (fail))))))
    step)
  "[Manip] Divide by factors to isolate term."
  "~%Dividing by factors to isolate a term in formula ~A")

;;;;;;;;;;;;;;;;;;;;

(defstep mult-eq (rel-fnum eq-fnum &optional (sign +))
  (let ((rel-fnumber (car (extract-fnums-arg rel-fnum)))
	(eq-fnumber  (car (extract-fnums-arg eq-fnum)))
	(rel-formula (manip-get-formula rel-fnumber))
	(eq-formula  (manip-get-formula eq-fnumber))
	(suitable (and rel-fnumber eq-fnumber
		       (< eq-fnumber 0)
		       (is-relation rel-formula)
		       (typep eq-formula 'infix-application)
		       (eq (id (operator eq-formula)) '=)))
	(mult-step (if suitable
		       `(then ,@(gen-value-warning 'mult-eq sign 'sign
						   '(+ - 0+ 0-))
			      (mult-eq-one$ ,rel-fnumber ,rel-formula
					    ,eq-fnumber ,eq-formula ,sign))
		       (gen-manip-response 'mult-eq
					   "Formula(s) not suitable."))))
    mult-step)
  "[Manip] Given two formulas, one a relation `a R b', and the other an
antecedent equality `x = y', introduce a new formula relating the products,
a * x R b * y.  If R is an inequality, the SIGN argument can be set to
one of the symbols in {+, -, 0+, 0-} to indicate the polarity of x and y.
A SIGN of `*' is not supported (yet).  The relational formula may appear
on either side of the sequent, but the equality must be an antecedent."
  "~%Multiplying terms from formula ~A by those in ~A to derive a new relation")

(defhelper mult-eq-one (rel-fnum rel-formula eq-fnum eq-formula sign)
  (let ((rel-op (id (operator rel-formula)))
	(normal-order (or (member sign '(+ 0+)) (eq rel-op '=)))
	(rel-term-1 (safety-parens (args1 rel-formula)))
	(rel-term-2 (safety-parens (args2 rel-formula)))
	(eq-term-1  (safety-parens (args1 eq-formula)))
	(eq-term-2  (safety-parens (args2 eq-formula)))
	(left-terms  (if normal-order
			 (format nil "~A * ~A" rel-term-1 eq-term-1)
			 (format nil "~A * ~A" rel-term-2 eq-term-2)))
	(right-terms (if normal-order
			 (format nil "~A * ~A" rel-term-2 eq-term-2)
			 (format nil "~A * ~A" rel-term-1 eq-term-1)))
	(case-step
	  `(case ,(format nil "~A ~A ~A" left-terms rel-op right-terms)))
	(just-step (if (< rel-fnum 0)
		       `(then (replace ,eq-fnum) (cancel$ 1 ,sign) (assert))
		       `(then (replace ,(- eq-fnum 1))
			      (cancel$ -1 ,sign)
			      (assert))))
	(step-list
	  (if (< rel-fnum 0) `((skip) ,just-step) `(,just-step (skip)))))
    (spread case-step step-list))
  "[Manip] Multiply terms in relational formula by equality to form new relation."
  "~%Multiplying terms from formula ~A by those in ~A to derive a new relation")

;;;;;;;;;;;;;;;;;;;;

(defstep mult-ineq (fnum1 fnum2 &optional (signs (+ +)))
  (let ((fnumber1 (car (extract-fnums-arg fnum1)))
	(fnumber2 (car (extract-fnums-arg fnum2)))
	(formula1 (manip-get-formula fnumber1))
	(formula2 (manip-get-formula fnumber2))
	(suitable (and fnumber1 fnumber2
		       (is-relation formula1 t) (is-relation formula2 t)))
	(mult-step (if suitable
		       `(then ,@(gen-value-warning 'mult-ineq signs 'signs
						   '((+ +) (+ -) (- +) (- -)))
			      (mult-ineq-one$ ,fnumber1 ,formula1
					      ,fnumber2 ,formula2 ,signs))
		       (gen-manip-response 'mult-ineq
					   "Formula(s) not suitable."))))
    mult-step)
  "[Manip] Given two antecedent inequalities, a R1 b and x R2 y, form an
inequality on their products, a * x R3 b * y.  If R2 is not in the same
direction as R1, the strategy uses y rev(R2) x instead.  R3 is strict if
either R1 or R2 is.  SIGNS indicates the polarity of the pairs (a,b) and
(x,y).  Only inequalities on terms of matching signs can be usefully
multiplied.  Example: SIGNS = (+ -) indicates a,b are positive terms
while x,y are negative.  If either formula appears as a consequent,
its relation is negated before carrying out the multiplication."
  "~%Multiplying terms from formulas ~A and ~A to derive a new inequality")

(defhelper mult-ineq-one (fnum1 formula1 fnum2 formula2 signs)
  (let ((orig-op1 (id (operator formula1)))
	(orig-op2 (id (operator formula2)))
	(rel-op1 (if (> fnum1 0) (negate-inequality orig-op1) orig-op1))
	(rel-op2 (if (> fnum2 0) (negate-inequality orig-op2) orig-op2))
	(pos1 (not (eq (car signs) '-)))
	(pos2 (not (eq (cadr signs) '-)))
	(lt-1 (member rel-op1 '(< <=)))
	(lt-2 (member rel-op2 '(< <=)))
	(lt-same (eq (not lt-1) (not lt-2)))

	(term1-left  (safety-parens
		       (if pos2 (args1 formula1) (args2 formula1))))
	(term1-right (safety-parens
		       (if pos2 (args2 formula1) (args1 formula1))))
	(rel2-left   (if lt-same (args1 formula2) (args2 formula2)))
	(rel2-right  (if lt-same (args2 formula2) (args1 formula2)))
	(term2-left  (safety-parens (if pos1 rel2-left  rel2-right)))
	(term2-right (safety-parens (if pos1 rel2-right rel2-left)))

	(mult-strict (or (member rel-op1 '(< >)) (member rel-op2 '(< >))))
	(mult-rel-op (if lt-1 (if mult-strict '< '<=) (if mult-strict '> '>=)))
	(case-step `(case ,(format nil "~A * ~A ~A ~A * ~A"
				   term1-left term2-left mult-rel-op
				   term1-right term2-right)))
	(rel-name (cdr (assoc mult-rel-op *real-props-relation*)))
	(rewrite-step
	  `(rewrite ,(format nil "~A_times_~A_any1" rel-name rel-name)
		    1 :target-fnums 1))
	(just-step `(try (then (expand "abs") (assert) (fail))
			 (skip)
			 (assert))))
    (spread case-step ((skip) (then rewrite-step just-step))))
  "[Manip] Multiply terms in relational formulas to form new relation."
  "~%Multiplying terms from formulas to derive a new inequality")


;;;;;;;;;;;;;;;;;;;;

(defstep mult-cases (fnum &optional (abs? nil) (mult-op *1))
  (let ((fnumber (car (extract-fnums-arg fnum)))
	(next-step (if fnumber
		       `(then ,@(gen-value-warning 'mult-cases mult-op 'mult-op
						   '(1* *1))
			      (mult-cases-next$ ,fnumber ,abs? ,mult-op))
		       (gen-manip-response 'mult-cases 
					   "Formula not suitable."))))
    next-step)
  "[Manip] Generate case analyses for relational formulas containing
products.  If FNUM has the form `x * y R 0' (or 0 R x * y), rewrite FNUM
to two cases relating x and y to 0, as appropriate.  Some flattening and
simplification will be attempted after rewriting.

IF FNUM is a consequent inequality of the form a * b R c * d, generate
sufficient conditions to establish the inequality by considering relations
between a and c, and between b and d.  Likewise, for an antecedent inequality
of this form, generate necessary conditions for FNUM.  There is likely to
be some branching of the sequent.  The lemmas used contain instances of the
abs function, which are normally expanded.  To suppress this expansion,
set ABS? to T.

IF FNUM is an inequality of the form 'a * b R c' or 'a R c * d', first
transform FNUM into the form a * b R c * d by multiplying c or a by 1.
MULT-OP may be set to *1 (1*) to multiply on the right (left).  Then
proceed as in the previous case."
  "~%Analyzing cases for the relation in formula ~A")

(defhelper mult-cases-next (fnumber abs? mult-op)
  (let ((formula (manip-get-formula fnumber))
	(expr1 (args1 formula))
	(expr2 (args2 formula))
	(is-mult1 (is-term-operator expr1 '*))
	(is-mult2 (is-term-operator expr2 '*))
	(is-zero1 (equal (textify expr1) "0"))
	(is-zero2 (equal (textify expr2) "0"))
	(split-step
	  (cond ((and (is-relation formula nil)
		      (or (and is-mult1 is-zero2) (and is-mult2 is-zero1)))
		 `(mult-cases-zero$ ,fnumber ,formula ,is-mult1))
		((and (is-relation formula t) (or is-mult1 is-mult2))
		 `(mult-cases-nonzero$ ,fnumber ,abs?
				       ,is-mult1 ,is-mult2 ,mult-op))
		(t (gen-manip-response 'mult-cases "Formula not suitable.")))))
    split-step)
  "[Manip] Generate case analyses for relational formulas containing products."
  "~%Analyzing cases for the relation in formula ~A")

(defhelper mult-cases-zero (fnum formula left-mult)
  (let ((rel-op (id (operator formula)))
	(prefix (if (member rel-op '(< <=))
		    (if left-mult "neg" "pos")
		    (if left-mult "pos" "neg")))
	(lemma-name (if (eq rel-op '=)
			(if left-mult "zero_times3" "zero_times4")
		        (format nil "~A_times_~A" prefix
				(cdr (assoc rel-op *real-props-relation*)))))
	(rewrite-step `(rewrite ,lemma-name ,fnum :target-fnums ,fnum))
	(simp-step (if (< fnum 0) `((split ,fnum)) `()))
	(split-step `(then ,rewrite-step ,@simp-step (flatten) (assert))))
    split-step)
  "[Manip] Analyze cases for a relation on products."
  "~%Analyzing cases for the relation in formula ~A")

(defhelper mult-cases-nonzero (fnum abs? left-mult right-mult mult-op)
  (let ((prep-step
	  (if (and left-mult right-mult)
	      nil
	      `(op-ident$ ,fnum ,(if left-mult 'r 'l) ,mult-op)))
	(split-step
	  `(,(if (> fnum 0) 'mult-cases-cons$ 'mult-cases-ante$)
	    ,fnum ,abs?))
	(nonzero-step (if prep-step `(then ,prep-step ,split-step) split-step)))
    nonzero-step)
  "[Manip] Analyze cases for a relation on products."
  "~%Analyzing cases for the relation in formula ~A")

(defhelper mult-cases-cons (fnum abs?)
  (let ((formula (manip-get-formula fnum))
	(rel-op (id (operator formula)))
	(rel-name (cdr (assoc rel-op *real-props-relation*)))
	(lemma (format nil "~A_times_~A_any1" rel-name rel-name))
	(rewrite-step `(rewrite ,lemma ,fnum :target-fnums ,fnum))
	(all-steps `(then ,rewrite-step 
			  ,@(unless abs? `((expand "abs" ,fnum)))
			  (flatten))))
    all-steps)
  "[Manip] Analyze cases for a relation on products."
  "~%Analyzing cases for the relation in formula ~A")

(defhelper mult-cases-ante (fnum abs?)
  (let ((formula (manip-get-formula fnum))
	(rel-op (id (operator formula)))
	(rel-name (cdr (assoc rel-op *real-props-relation*)))
	(lemma-step
	  `(lemma ,(format nil "~A_times_~A_any2" rel-name rel-name)))
	(inst-step `(invoke$ (inst -1 $*s) (! ,(- fnum 1) * *)))
	(all-steps `(then ,lemma-step ,inst-step
			  ,@(unless abs? `((expand "abs" -1)))
			  (assert) (flatten))))
    all-steps)
  "[Manip] Analyze cases for a relation on products."
  "~%Analyzing cases for the relation in formula ~A")

;;;;;;;;;;;;;;;;;;;;

(defstep mult-extract (name fnum &optional (side *) (term-nums *))
  (let ((extract-step `(mult-extract!$ ,name (! ,fnum ,side) ,term-nums)))
    extract-step)
  "[Manip] Extract additive terms TERM-NUMS from the expression found on 
SIDE of relational formula FNUM.  Each term is treated as a product of
factors, some of which contain divisions.  Each selected product term is
assigned a name derived from NAME and is extracted using name-replace to
form a new antecedent equality.  Then all the divisors are cross multiplied
and any common factors are identified and canceled."
  "~%Naming (using ~A), extracting and canceling terms from expression")

(defstep mult-extract! (name expr-loc &optional (term-nums *))
  (let ((extract-step
	 (handler-case
	     (let* ((expr-descriptor (car (eval-ext-expr expr-loc)))
		    (expr (ee-pvs-obj expr-descriptor))
		    (full-terms (collect-additive-terms '+ expr))
		    (term-numbers (map-term-nums-arg term-nums
						     (length full-terms))))
	       (cond ((not (subtype-of? (type expr) *number_field*))
		      (gen-manip-response 'mult-extract!
					  "Must be a real-valued expression."))
		     ((not (or (stringp name) (symbolp name)))
		      (gen-manip-response 'mult-extract!
					  "NAME must be a string or a symbol."))
		     ((null term-numbers)
		      (gen-manip-response 'mult-extract! "Term not suitable."))
		     ((< (length full-terms) 2)
		      `(mult-extract-one$ ,name ,full-terms 1))
		     (t (flet ((make-step (n)
				 `(mult-extract-one$
				   ,(format nil "~A_~A" name n) ,full-terms ,n)))
			  `(then ,@(mapcar #'make-step term-numbers))))))
	   (error (condition)
		  (gen-manip-response 'mult-extract!
				      "Formula or expression not suitable.")))))
    extract-step)
  "[Manip] Extract additive terms TERM-NUMS from the expression found at
EXPR-LOC.  Each term is treated as a product of factors, some of which
contain divisions.  Each selected product term is assigned a name derived
from NAME and extracted using name-replace to form a new antecedent equality.
Then all the divisors are cross multiplied and any common factors are
identified and canceled.  Can only handle first expression from EXPR-LOC."
  "~%Naming (using ~A), extracting and canceling terms from expression")

(defhelper mult-extract-one (name full-terms term-num)
  (let ((old-mult (cadr (nth (- term-num 1) full-terms)))
	(name-step `(name-replace ,name ,(textify old-mult) nil))
	(factors (collect-multiplicative-terms old-mult))
	(factor-nums (mapcar #'1+ (consec (length factors))))
	(nondiv-terms
	  (mapcan #'(lambda (x n) (and (not (is-term-operator x '/)) (list n)))
		  factors factor-nums))
	(permute-step (if (null nondiv-terms)
			  '(skip)
			  `(permute-mult!$ (! -1 l) ,nondiv-terms)))
	(div-step
	 `(repeat (then ,@(targeted-rewrites -1 '("times_div1" "div_cancel3")))))
	(continue-step `(mult-extract-two$)))
    (then@ name-step permute-step div-step continue-step))
  "[Manip] Extract additive terms formed by factors containing divisions."
  "~%Naming (using ~A), extracting and canceling terms from expression")

(defhelper mult-extract-two ()
  (let ((formula (manip-get-formula -1))
	(left-terms  (collect-multiplicative-terms (args1 formula)))
	(right-terms (collect-multiplicative-terms (args2 formula)))
	(left-str  (mapcar #'(lambda (m) (textify m)) left-terms))
	(right-str (mapcar #'(lambda (m) (textify m)) right-terms))
	(common-factors (car (find-common-factors (list left-str right-str))))
	(common (if (equal common-factors '("1")) nil common-factors))
	(left-posns
	  (mapcar #'(lambda (f) (position f left-str :test #'equal)) common))
	(right-posns
	  (mapcar #'(lambda (f) (position f right-str :test #'equal)) common))
	;; could skip either permute if no change in order:
	(permute-left  `(permute-mult-right$ (! -1 l)
					     ,(mapcar #'1+ left-posns)))
	(permute-right `(permute-mult-right$ (! -1 r)
					     ,(mapcar #'1+ right-posns)))
	(cancel-step `(repeat (rewrite "both_sides_times1" -1 :target-fnums -1)))
	(extract-step
	  (if (null common)
	      '(skip)
	      `(then@ ,permute-left ,permute-right ,cancel-step))))
    extract-step)
  "[Manip] Extract additive terms formed by factors containing divisions."
  "~%Naming, extracting and canceling terms from expression")


;;; ================= General purpose strategies ==================

(defstep invoke (command &rest expr-specs)
  (let ((descriptors (mapappend #'eval-ext-expr expr-specs))
	(new-cmd (build-instan-cmd command descriptors))
	(new-step (gen-manip-response 'invoke (format nil "~S" new-cmd) nil)))
    (then new-step new-cmd))
  "[Manip] Invoke a rule or strategy by instantiating COMMAND with
substitutions extracted from the extended expression specifications
EXPR-SPECS.  Example: suppose formula 1 is f(x+y) = f(a*(z+1)).  Then
   (invoke (case \"%1 = %2\") (? 1 \"f(%1) = f(%2)\"))
would match and create the bindings %1=`x+y' and %2=`a*(z+1)', which
results in the prover command (case \"x+y = a*(z+1)\") being invoked."
  "~%Invoking instantiated command after substitutions")

(defstep for-each (command &rest expr-specs)
  (let ((descriptors (mapappend #'eval-ext-expr expr-specs))
	(for-each-cmd `(for-each-one$ ,command ,descriptors)))
    for-each-cmd)
  "[Manip] Repeatedly invoke a rule or strategy by instantiating COMMAND
with substitutions extracted from the extended expression specifications
EXPR-SPECS.  For each expression specified, instantiate and invoke
COMMAND with a different binding for parameters %1, $1, etc."
  "~%Invoking instantiated command for each substitution")

(defstep for-each-rev (command &rest expr-specs)
  (let ((descriptors (reverse (mapappend #'eval-ext-expr expr-specs)))
	(for-each-cmd `(for-each-one$ ,command ,descriptors)))
    for-each-cmd)
  "[Manip] Repeatedly invoke a rule or strategy by instantiating COMMAND
with substitutions extracted from the extended expression specifications
EXPR-SPECS.  For each expression specified, instantiate and invoke
COMMAND with a different binding for parameters %1, $1, etc.  Performs
the invocations in reverse order."
  "~%Invoking instantiated command for each substitution")

(defhelper for-each-one (command descriptors)
  (let ((cmd-list
	  (mapcan #'(lambda (expr)
		      (let ((cmd (build-instan-cmd command (list expr))))
			(list (gen-manip-response 'for-each
						  (format nil "~S" cmd) nil)
			      cmd)))
		  descriptors))
	(invocations `(then@ ,@cmd-list)))
;;	(invocations `(then@ (skip) ,@cmd-list))) ;; extra skip to suppress msg
    invocations)
  "[Manip] Repeatedly invokes instantiated rule or strategy after substitutions."
  "~%Invoking instantiated command for each substitution")

(defstep show-subst (command &rest expr-specs)
  (let ((descriptors (mapappend #'eval-ext-expr expr-specs))
	(new-cmd (build-instan-cmd command descriptors))
	(new-step (gen-manip-response 'show-subst
				      (format nil "~%~S" new-cmd))))
    new-step)
  "[Manip] Tests command formation with substitutions extracted from
extended expression specifications.  Emits messages to show what
substitutions occur, but doesn't invoke any commands.  Use the idiom
    (show-subst ($*) <ext expr 1> ... <ext expr n>)
to see the evaluation of extended expressions against the current sequent."
  "~%")

;;;;;;;;;;;;;;;;;;;;

(defstep claim (cond &optional (try-just nil) &rest expr-specs)
  (let ((terms (mapappend #'eval-ext-expr expr-specs))
	(case-step (build-instan-cmd `(case ,cond) terms))
	(steplist (list '(skip) (try-justification 'claim try-just))))
    (spread case-step steplist))
  "[Manip] Generalized case step that uses a parameterized condition
applied to multiple terms (two-way split only).  COND can be regarded
as a template expression with %1, %2, ..., serving as implicit template
variables to represent terms to be substituted in the parameterized
condition expression.  The justification step can be tried by setting
TRY-JUST to a proof step.  Example: (claim \"%1 < %2\" t \"x\" \"y+z\")
case splits on `x < y+z' and tries to prove the relation using grind."
  "~%Claiming the parameterized condition holds on the terms supplied")

(defstep name-extract (name &rest expr-specs)
  (let ((exprs (mapcar #'virt-ee-string (eval-ext-expr expr-specs)))
	(extract-step
	 (cond ((not (or (stringp name) (symbolp name)))
		(gen-manip-response 'name-extract
				    "NAME must be a string or a symbol."))
	       ((< (length exprs) 2)
		`(name-replace ,name ,(car exprs) nil))
	       (t (let ((expr-names
			 (mapcar #'(lambda (n) (format nil "~A_~A" name (1+ n)))
				 (consec (length exprs)))))
		    `(then ,@(mapcar #'(lambda (n e) `(name-replace ,n ,e nil))
				     expr-names exprs)))))))
    extract-step)
  "[Manip] Extract expressions using the extended expression specifications
supplied in EXPR-SPECS.  Assign NAME (or NAME_1, NAME_2,...) to the
expressions and replace them throughout the sequent, leaving the
antecedent equalities visible."
  "~%Assigning designated expressions to ~A and replacing")

;;;;;;;;;;;;;;;;;;;;

(defstep move-to-front (&rest fnums)
  (let ((f-nums (extract-fnums-arg fnums))
	(len (length f-nums))
	(move-step (case len
		     ((0) (gen-manip-response 'move-to-front
			                      "No formulas selected."))
		     ((1) (let* ((fn (car f-nums))
				 (fn+1 (if (< fn 0) (- fn 1) (+ fn 1))))
			    `(then (copy ,fn) (delete ,fn+1))))
		     (t (let ((merged-fnum (if (some #'plusp f-nums) 1 -1)))
			  `(then (merge-fnums ,f-nums)
				 (flatten-disjunct ,merged-fnum
						   ,(- len 1))))))))
    move-step)
  "[Manip] Rearranges the order of antecedent and consequent formulas.
Takes the FNUMS given and moves the corresponding formulas to the front
of the antecedent and consequent lists as appropriate."
  "~%Moving selected formulas up in the sequent")

(defstep rotate-- ()
  (let ((fnums (gather-fnums (s-forms (current-goal *ps*))
			     '- nil true-predicate))
	(move-step `(move-to-front$ ,@(cdr fnums))))
    move-step)
  "[Manip] Moves the first antecedent formula to the end of the antecedents."
  "~%Moving the first antecedent to the end")

(defstep rotate++ ()
  (let ((fnums (gather-fnums (s-forms (current-goal *ps*))
			     '+ nil true-predicate))
	(move-step `(move-to-front$ ,@(cdr fnums))))
    move-step)
  "[Manip] Moves the first consequent formula to the end of the consequents."
  "~%Moving the first consequent to the end")


;;;;;;;;;;;;;;;;;;;;

(defstep use-with (lemma &rest fnums)
  (let ((f-nums (extract-fnums-arg fnums))
	(terms (mapcar #'make-preferred-use-term f-nums))
	(pref (format nil "id(~A~{ AND ~A~})" (car terms) (cdr terms)))
	(case-step `(case ,pref))
	(main-branch `(try (use ,lemma) (hide -2) (fail)))
	(just-branch `(then (expand "id" 1) (ground)))
	(use-step (if terms
		      `(spread ,case-step (,main-branch ,just-branch))
		      `(then ,(gen-manip-response 'use-with
			       "No formulas or preferred terms selected.")
			     (try (use ,lemma) (skip) (fail)))))
	(step (if (stringp lemma)
		  `(try ,use-step (skip) (skip))
		  (gen-manip-response 'use-with "LEMMA must be a string."))))
    step)
  "[Manip] USE a lemma with formula preferences for instantiation.  A
temporary copy of the terms in FNUMS is constructed and placed at the
front of the sequent (formula -1).  Then a USE command for LEMMA is
invoked so that the search for instantiable terms begins with the
temporary formula.  The effect is to match terms from the user's preferred
formulas (in the order given) before looking elsewhere in the sequent."
  "~%Using ~A with formula preferences for instantiation")

(defun make-preferred-use-term (fnum)
  (let ((formula (manip-get-formula fnum)))
    (if (> fnum 0)
	(format nil "NOT (~A)" formula)
        formula)))

;;;;;;;;;;;;;;;;;;;;

(defstep apply-lemma (lemma &rest expr-specs)
  (let ((exprs (mapcar #'virt-ee-string (eval-ext-expr expr-specs)))
	(lemma-step `(lemma ,lemma))
	(inst-step  `(inst -1 ,@exprs))
	(step (if (stringp lemma)
		  `(then ,lemma-step ,inst-step)
		  (gen-manip-response 'apply-lemma "LEMMA must be a string."))))
    step)
  "[Manip] Try applying a lemma (via USE) with explicit instantiations using
an implicit variable list.  In PVS, lemma variables appear in alphabetical
order when introduced by the LEMMA rule.  That order needs to be observed
when entering EXPR-SPECS."
  "~%Invoking lemma ~A on given expressions")

(defstep apply-rewrite (lemma &rest expr-specs)
  (let ((exprs (mapcar #'virt-ee-string (eval-ext-expr expr-specs)))
	(lemma-step `(lemma ,lemma))
	(inst-step  `(inst -1 ,@exprs))
	(replace-step (try-fail-announce '(replace -1 :hide? t)
					 'apply-rewrite "Replacement"))
	(step (if (stringp lemma)
		  `(then ,lemma-step ,inst-step ,replace-step)
		  (gen-manip-response 'apply-rewrite
				      "LEMMA must be a string."))))
    step)
  "[Manip] Try applying a (purely equational) rewrite rule with explicit
instantiations using an implicit variable list.  In PVS, lemma variables
appear in alphabetical order when introduced by the LEMMA rule.  That
order needs to be observed when entering EXPR-SPECS."
  "~%Rewriting with lemma ~A on given expressions")


;;; --------------- Syntax matching strategies ----------------


(defstep match (&rest spec-items)
  (let ((step (apply #'match-syntax-step spec-items)))
    step)

  "[Manip] Try matching syntax patterns against formulas in the sequent.
Each pattern can be of the form <patt> or ([fnums] <patt> [occur]), where
<patt> can be either a symbol or a string \"patt\".  Successful matches
can bind subexpressions to pattern variables (identifiers having a leading
'%').  Use these variables to instantiate template expressions and affect
the sequent.  Actions are specified using a symbol, where the choices
include 'rep' (replace first matched instance with template), 'case' (use
case splitting on expressions), a binary relation symbol (split on case
<instance> <op> <template>), 'step' (invoke template as a proof step or
strategy), and a symbol <rule> (invoke <rule> on templates).  Proof steps
for all cases can be provided. See the Manip user's guide for a full
description of all features."
  "~%Matching syntax in formulas and using instantiated templates")

;; See file syntax-matching.lisp for implementation of match strategy.


;;; =============== Misc. utility strategies ===============

(defstep else* (&rest steps)
  (if (null steps)
      (skip)
      (let ((try-step `(try ,(car steps) (skip) (else*$ ,@(cdr steps)))))
	try-step))
  "[Manip] Try STEPS in sequence until the first one succeeds."
  "~%Trying steps in sequence")

(defstep try-rewrites (fnums &rest lemmas)
  (if (null lemmas)
      (skip)
      (let ((f-nums (extract-fnums-arg fnums))
	    (try-step `(try (rewrite ,(car lemmas)
				     ,f-nums :target-fnums ,f-nums)
			    (skip)
			    (try-rewrites$ ,fnums ,@(cdr lemmas)))))
	try-step))
  "[Manip] Try rewriting LEMMAS in sequence within FNUMS until first one succeeds."
  "~%Trying lemma rewrites in sequence")

(defstep rewrite-expr (lemmas expr-loc)
  (let ((descriptors (eval-ext-expr expr-loc))
	(apply-step 
	 (if descriptors
	     `(then@ ,@(mapcar #'(lambda (d) `(rewrite-expr-one$ ,lemmas ,d))
			       descriptors))
	     (gen-manip-response 'rewrite-expr
				 "No suitable formulas or expressions."))))
    apply-step)
  "[Manip] Rewrite LEMMAS in the expressions located by EXPR-LOC.  Only these
expressions will be involved in the rewriting."
  "~%Rewriting ~A in selected expressions")

(defhelper rewrite-expr-one (lemmas descriptor)
  (let ((expr-obj (ee-pvs-obj descriptor))
	(fnum (ee-fnum descriptor))
	(adj-fnum (if (< fnum 0) (- fnum 1) fnum))
	(name-step `(name ,(name-gensym "apply") ,expr-obj))
	(replace-1 `(replace -1 ,adj-fnum))
	(lemma-list (if (consp lemmas) lemmas (list lemmas)))
	(rewrites `(repeat (else*$ ,@(targeted-rewrites -1 lemma-list))))
	(replace-2 `(replace -1 :dir rl :hide? t))
	(apply-step `(then ,name-step ,replace-1 ,rewrites ,replace-2)))
    apply-step)
  "[Manip] Rewrite lemmas in selected expressions"
  "~%Rewriting ~A in selected expressions")

(defstep auto-rewrite-expr (lemmas expr-loc)
  (let ((descriptors (eval-ext-expr expr-loc))
	(apply-step 
	 (if descriptors
	     `(then@ (auto-rewrite ,@lemmas)
		     (unwind-protect$
		      (auto-rewrite-expr-one$ ,descriptors)
		      (stop-rewrite ,@lemmas)))
	     (gen-manip-response 'rewrite-expr
				 "No suitable formulas or expressions."))))
    apply-step)
  "[Manip] Rewrite LEMMAS in the expressions located by EXPR-LOC.  Only these
expressions will be involved in the rewriting."
  "~%Rewriting ~A in selected expressions")

(defhelper auto-rewrite-expr-one (descriptors)
  (let ((expr-objs (mapcar #'ee-pvs-obj descriptors))
	(fnums (mapcar #'ee-fnum descriptors))
	(num-exprs (length expr-objs))
	(adj-fnums (mapcar #'(lambda (n) (if (< n 0) (- n num-exprs) n)) fnums))
	(name-step `(then ,@(mapcar #'(lambda (expr)
					`(name ,(name-gensym "rew_expr") ,expr))
				    expr-objs)))
	(replace-1 `(then ,@(loop for n from 0 below num-exprs
				  collect `(replace ,(- n num-exprs)
						    ,(nth n adj-fnums)))))
	(rewrites `(do-rewrite
		    ,(loop for n from -1 downto (- num-exprs) collect n)))
	(replace-2 `(then ,@(loop for n from -1 downto (- num-exprs)
				  collect `(replace -1 :dir rl :hide? t))))
	(apply-step `(then ,name-step ,replace-1 ,rewrites ,replace-2)))
    apply-step)
  "[Manip] Rewrite lemmas in selected expressions"
  "~%Rewriting ~A in selected expressions")


;;; Following strategy provides an alternative to REWRITE for use when
;;; exact instantiations are desired or when certain automatic
;;; instantiations are problematic.  Note that it can propagate (FAIL).
;;; Be sure to protect by using it within a TRY rule.

(defhelper explicit-rewrite (lemma-name fnum &rest terms)
  (let ((adj-fnum (if (< fnum 0) (- fnum 1) fnum))
	(term-strings (if (every #'stringp terms)
			  terms
			  (mapcar #'(lambda (term) (textify term)) terms)))
	(inst-step `(inst -1 ,@term-strings)))
    (then@ (lemma lemma-name)
	   inst-step
	   (if (typep (manip-get-formula -1) 'forall-expr)
	       (fail)
	       (replace -1 adj-fnum :hide? t))))
  "[Manip] Alternative form of REWRITE using explicit terms, propagating
failure if INST fails."
  "~%Rewriting with lemma ~A in formula ~A")


(defstep branch-back (step steplist)
  (let ((backlist
	  (mapcar #'(lambda (s)
		      `(try (then ,s (assert) (fail))  ;; fail if not proved
			    (skip)
			    (skip)))
		  steplist))
	(branch-step `(branch ,step ,backlist)))
    branch-step)
  "[Manip] Perform a branching STEP that has subproofs with automatic
backtracking for branches that fail to completely prove their goals.
Similar to the built-in strategy BRANCH except that the elements of
STEPLIST are attempted in all-or-nothing fashion.  If the step for a
branch fails to prove its goal completely, the proof state (for that
branch only) is rolled back to the point before the step was invoked."
  "~%Initiating a branching step with a backtracking step list")


;;; Following strategy is used to protect against successful steps
;;; that completely prove one subgoal, thereby preventing proof state
;;; changes that are needed in parallel subgoals.  An example is the
;;; need to turn rewriting off after a proof attempt.

(defstep unwind-protect (main-step cleanup-step)
  (spread (case "id(true)")
	  ((then (delete -1) main-step)
	   (then cleanup-step (expand "id"))))
  "[Manip] Invoke MAIN-STEP followed by CLEANUP-STEP, which is performed
even if MAIN-STEP leads to a proof of the current goal."
  "Invoking proof step with cleanup")


;;;;;;;;;;;
;; END
;;;;;;;;;;;
