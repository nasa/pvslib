;;;;;;;;;;;;;;;;;;;;;;;;;;; -*- Mode: Lisp -*- ;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;; manip-utilities.lisp -- Support functions for Manip package
;; Author          : Ben Di Vito <b.divito@nasa.gov>
;; Created On      : 19 Sep 2005 (excerpted from manip-strategies.lisp)
;; Last Modified By: 
;; Last Modified On: 13 Dec 2006 (v1.2-beta)
;; Last Modified On: 17 Nov 2007 (v1.2)
;; Last Modified On: 15 Oct 2008 (v1.3)
;; Status          : Development
;; Version         : 1.3
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(in-package :pvs)


(defvar *manip-gensym-count* 0)

(defun name-gensym (str &optional (inc? t))
  (format nil "~A~A__" str
	  (if inc? (incf *manip-gensym-count*) *manip-gensym-count*)))

(defun textify (form) (format nil "~A" form))


;;; ------------- Regular expression package functions -------------

;; Earlier versions of Manip used the regular expression functions
;; built in to Allegro Common Lisp.  When PVS 4.0 was introduced,
;; PVS became available under other Lisp implementations.  A portable
;; regular expression package called "pregexp" is now being used.
;; For the benefit of existing code, the following functions mimic
;; the interface provided by ACL functions in package "excl".

(defun compile-regexp (regexp)
  (pregexp regexp))

;; Only the keyword options actually used are included in this arg list.
;; Arg shortest is currently ignored; instead patterns should included
;; non-greedy operators as appropriate.  If a match is found, multiple
;; values are returned.

(defun match-regexp (regexp match-string &key shortest (return :string))
  (declare (ignore shortest))
  (let* ((match-fn (if (eq return ':index)
		       #'pregexp-match-positions
		       #'pregexp-match))
	 (result (funcall match-fn regexp match-string)))
    (and result (values-list (cons t result)))))


;;; --------------- Parameterized command substitution ----------------

;; Build instantiated command by substituting for special expression
;; symbols.  Can return multiple values.  Interprets these symbols:
;;    $1, $2, ...   -- nth expression descriptor
;;    $*            -- list of all expression descriptors
;;    $1s, $2s, ... -- nth expression text string
;;    $*s           -- list of all text strings
;;    $1n, $2n, ... -- number of nth originating formula
;;    $*n           -- list of originating formula numbers
;;    $1j, $2j, ... -- nth expression CLOS object
;;    $*j           -- list of all expression CLOS objects
;;    $+, $+s, $+n, $+j -- no-duplicates versions of $*, $*s, $*n, $*j

;; Also substitute for %-variables and implement embedded extended
;; expression shortcuts.

;; M3: Modified in order to
;; - allowing to use tilde commands in format control strings inside the steps
;;   parameters of the match strategy.
;; - in nested match applications, preventing outer bindings to be used in the inner match.
(defun build-instan-cmd (cmd descriptors)
  (labels ((build-cmd
	    (expr)
	    (cond
	     ((stringp expr)
	      ;; M3: the string contains a tilde (~) only if it is an argument
	      ;;     to a format command. This tilde has to be removed (because the %
	      ;;     are replaced by ~ to substitute the manip variables: %1, %2, etc).
	      ;;     First, if there is a prefix form by consecutive tildes it is temporarily
	      ;;     stored. Then, the rest of the string is splited on tildes. Every % is
	      ;;     replaced in each piece and finally the stored prefix and every instantiated
	      ;;     part are concatenated.		  
	      (let((expr-length (length expr)))
		(if (< 0 expr-length)
		    (let*((prefix-limit (loop for char across expr
					      for i from 0 to expr-length
					      when (not (char= char #\~))
					      return i))
			  (prefix (subseq expr 0 prefix-limit))
			  (expr (subseq expr prefix-limit expr-length))
			  (results
			   (loop for expr in (lisp (mk::split-string expr :item #\~))
				 collect (let*((str-values (mapcar #'virt-ee-string descriptors))
					       (res1  (percent-subst expr str-values))
					       (res2  (percent-subst-all res1 str-values))
					       (res3  (percent-subst-ext res2 str-values)))
					   res3)))
			  (res (format nil "~a~{~~~a~}" (car results) (cdr results))))
		      (format nil "~a~a" prefix res))
		  expr)))
	     ((symbolp expr)
	      (multiple-value-prog1 (cmd-symbol-subst expr descriptors)))
	     ((and (consp expr) (member (car expr) ext-expr-symbols))
	      (values-list (mapcar #'ee-fnum (eval-ext-expr expr))))
	     ((consp expr)
	      ;; M3: only proceed with the instantiation if the strategy
	      ;;     is not a match itself.
	      (if (or (eq (car expr) 'match) (eq (car expr) 'match$))
		  expr
		(mapcan #'(lambda (e)
			    (multiple-value-list (build-cmd e)))
			expr)))
	     (t expr))))
    (build-cmd cmd)))

;; Embedded extended expressions are allowed in strings using the form
;; "%! ...%".  Extract these, convert to (! ...) form, evaluate them,
;; and substitute them in the target (pattern) string.  Regular %-vars
;; (%1, %2, etc.) may also be included, which get substituted first.

(defparameter *embedded-ext-expr-pattern*
  (compile-regexp ".*%(..*?)%.*"))           ;; non-greedy added ;;M3: the extended expression must be non-empty.
;  (excl:compile-regexp ".*%\\(.*\\)%.*"))

(defun percent-subst-ext (pattern values)
  (loop with target = pattern with index = t
        do (setf index (multiple-value-list
			(match-regexp *embedded-ext-expr-pattern* target
				      :return :index)))
;			(excl:match-regexp *embedded-ext-expr-pattern* target
;					   :return :index :shortest t)))
	unless (car index) return target
	do (let* ((ext (caddr (multiple-value-list
			       (match-regexp *embedded-ext-expr-pattern*
					     target))))
;			       (excl:match-regexp *embedded-ext-expr-pattern*
;						  target :shortest t))))
		  (ext-expr (eval-ext-expr
			     (read-from-string (format nil "(~A)" ext))))
		  (ext-str (if (consp ext-expr)
			       (virt-ee-string (car ext-expr))
			       ""))
		  (start (- (caaddr index) 1))
		  (finish (1+ (cdaddr index))))
	     (setf target (replace-substring ext-str target start finish)))))
					     

(defun cmd-symbol-subst (symb descriptors)
  (let ((name (symbol-name symb)))
    (if (eql (char name 0) subst-symb-char)
	(let* ((num (char name 1))
	       (index (if (digit-char-p num)
			  (- (read-from-string (subseq name 1 2)) 1)
			num))
	       (d-func (if (= (length name) 2) 
			   #'identity
			 ;; use downcased chars for new Allegro 6.2 case-sensitive Lisp
			 (case (char-downcase (char name 2))
			   ((#\s) #'virt-ee-string)
			   ((#\n) #'ee-fnum)
			   ((#\j) #'ee-pvs-obj)))))
	  (cond ((numberp index)
		 ;; M3: [bug fix] if there's no descriptor for the index, the funcall raises an error
		 (if (< index (length descriptors))
		     (funcall d-func (nth index descriptors))
		   symb))
		((eql index #\+)
		 (values-list (remove-duplicates (mapcar d-func descriptors)
						 :test #'equalp :from-end t)))
		;; note: equalp causes case of strings to be ignored
		(t (values-list (mapcar d-func descriptors)))))
      symb)))


;;; ==================== Support functions =====================

;;; ------------------ Proof step generators ------------------

(defun try-fail-announce (step name description)
  (let ((failure (format nil "~A unsuccessful." description)))
    `(try ,step (skip) ,(gen-manip-response name failure))))

(defun try-justification (name try-just)
  (let* ((just-rule (if (eq try-just t) '(grind) try-just))
	 (message
	  (if just-rule
	      (format nil "Justification proof using ~A is unfinished;
undoing proof attempt." just-rule)
	      (format nil "Justification proof is untried."))))
    (if just-rule
	`(try (then ,just-rule (fail))  ;; fail if not completely proved
	      (skip)
	      ,(gen-manip-response name message))
        (gen-manip-response name message))))

;;; Generates steps to try rewriting with lemmas in sequence using given
;;; terms for explicit substitution.

(defun rewrite-until-justified (lemma-names fnum &rest terms)
  (if (= (length lemma-names) 1)
      `(explicit-rewrite$ ,(car lemma-names) ,fnum ,@terms)
      `(try (then (explicit-rewrite$ ,(car lemma-names) ,fnum ,@terms)
		  (if (eql (get-goalnum *ps*) 1)
		      (skip)
		      (then (assert) (fail))))  ;; backtrack if not proved
	    (skip)
	    ,(apply #'rewrite-until-justified (cdr lemma-names) fnum terms))))

;; Generate an error/status message step using skip-msg.  Forces printing by
;; default.  A Manip user, however, which might be another strategy package,
;; can override this setting and suppress the message.

(defun gen-manip-response (name msg &optional (force-printing? t))
  (if *suppress-manip-messages*
      '(skip)
      `(skip-msg ,(format nil "[Manip.~A]  ~A" name msg) ,force-printing?)))

(defvar *suppress-manip-messages* nil)  ;;; consider alternative mechanism

(defun gen-value-warning (name val symb legit &optional (force-printing? t))
  (if (or *suppress-manip-messages* (member val legit :test #'equal))
      '()
      (let ((msg (format nil "[Manip.~A]  Value ~A for ~A should be one of ~A."
			 name val (string-upcase (symbol-name symb)) legit)))
	`((skip-msg ,msg ,force-printing?)))))   ;; returns nil or list of one

(defun manip-unsuitable-fnum (strat fnum)
  (gen-manip-response strat (format nil "Formula ~A is unsuitable." fnum)))

(defun targeted-rewrites (fnum rewrite-lemmas)
  (loop for rule in rewrite-lemmas
	collect `(rewrite ,rule ,fnum :target-fnums ,fnum)))


;;; ------------------ Term/expression utilities ------------------

(defun is-term-operator (term-obj op)
  (and (typep term-obj 'infix-application) (eq (id (operator term-obj)) op)))

(defun is-relation (expr &optional inequality?)
  (and (typep expr 'infix-application)
       (member (id (operator expr)) 
	       (if inequality? '(< <= > >=) '(= < <= > >=)))))

(defun both-sides-same-op (formula operators)
  (let ((lhs (args1 formula)) (rhs (args2 formula)))
    (and (typep lhs 'infix-application)
	 (member (id (operator lhs)) operators)
	 (typep rhs 'infix-application)
	 (eq (id (operator lhs)) (id (operator rhs))))))

;; Next two functions should always be called with a validated operator symbol.

(defun reverse-relation (operator)
  (case operator ((<) '>) ((<=) '>=) ((>) '<) ((>=) '<=) ((=) '=)))

(defun negate-inequality (operator)
  (case operator ((<) '>=) ((<=) '>) ((>) '<=) ((>=) '<)))

;; Get list of term numbers, converting * as needed.  Also accommodate
;; form (^ n1 ... nk) for all numbers but n1,...,nk.

(defun map-term-nums-arg (tnums num-terms)
  (labels ((map-num (num)
             (cond ((eq num '*)
		    (mapcar #'1+ (consec num-terms)))
		   ((stringp num)
		    (map-num (read-from-string num)))
		   (t (and (integerp num)  (not (zerop num))
			   (<= (- num-terms) num num-terms)
			   (list (if (< num 0) (+ num num-terms 1) num)))))))
    (cond ;;((eq tnums '*) (mapcar #'1+ (consec num-terms)))
	  ((and (consp tnums) (eq (car tnums) all-but-symb))
	   (let ((all-nums (mapcar #'1+ (consec num-terms))))
	     (bag-difference all-nums (mapcan #'map-num (cdr tnums)))))
	  ((listp tnums) (mapcan #'map-num tnums))
	  (t (map-num tnums)))))

;; Add parens if necessary to protect expression from combining
;; with adjacent infix operators.

(defun safety-parens (expr)
  (if (or (and (stringp expr)
	       (not (expr-match-success
		      (match-expr *non-infix-expr-patterns* expr))))
	  (and (typep expr 'infix-application) (zerop (parens expr))))
      (format nil "(~A)" expr)
      (textify expr)))

;;;;;;;;;;;;;;;;;;;;

;; Extract the NUM left-most or right-most terms (indicated by END = L or R),
;; returning a list of objects in their original order.

(defun get-end-terms (full-expr end num)
  (if (typep full-expr 'infix-application)
      (let ((top-op (case (id (operator full-expr))
		      ((+ -) '(+ -))
		      ((*) '(*))      ;;; ((* /) '(* /))
		      (t     nil))))
	(labels ((find-terms (expr n)
		   (cond ((zerop n) nil)
			 ((not (typep expr 'infix-application)) (list expr))
			 ((not (member (id (operator expr)) top-op))
			  (list expr))
			 ((eq end 'l) 
			  (let ((terms (find-terms (args1 expr) n)))
			    (append terms
				    (find-terms (args2 expr)
						(- n (length terms))))))
			 (t (let ((terms (find-terms (args2 expr) n)))
			      (append (find-terms (args1 expr)
						  (- n (length terms)))
				      terms))))))
	  (find-terms full-expr num)))
      (list full-expr)))


;;; ------------------ Arithmetic term synthesis ------------------

;; Generate additive terms having form ((+/- term-obj) ... (+/- term-obj)).

(defun collect-additive-terms (sign expr)
  (if (typep expr 'infix-application)
      (let ((op (id (operator expr))))
	(if (member op '(+ -))
	    (append (collect-additive-terms sign (args1 expr))
		    (collect-additive-terms (xor-signs sign op) (args2 expr)))
	    (list (list sign expr))))
      (list (list sign expr))))

(defun xor-signs (s1 s2)
  (cond ((eq s1 '+) s2) ((eq s2 '+) '-) (t '+)))

;; Fuse terms t1, ..., tn into the sum [-] t1 +/- t2 +/- ... +/- tn.

(defun make-new-addition (terms suppress-leading-plus
				&optional (wrap-leading-minus nil) (zero "0"))
  (let ((str-terms
	 (mapcar #'(lambda (x) (format nil (if (symbolp x) " ~A " "~A") x))
		 (apply #'append terms))))
    (apply #'concatenate 'string 
	   (cond ((and suppress-leading-plus (eq (caar terms) '+))
		  (cdr str-terms))
		 ((and wrap-leading-minus (eq (caar terms) '-))
		  (cons (format nil "-(~A)" (cadr str-terms)) (cddr str-terms)))
		 (terms str-terms)
		 (t (list zero))))))

;;;;;;;;;;;;;;;;;;;;

;; Compute list of common factors from list of list of factors.
;; If none found, use "1" as common factor.

(defun find-common-factors (candidates)
  (do ((common (car candidates))
       (rest (cdr candidates) (cdr rest)))
      ((null rest) common)    ;; (or common '("1")))
    ;; Use reverse to keep original order:
    (setf common (bag-intersection common (car rest)))))

;; Factor out common divisors from integer coefficients.  If all
;; multiplicative terms contain integer factors, find their gcd.
;; If gcd > 1, divide each term by the common divisor.  The reduced
;; numbers are returned as Lisp numbers rather than the PVS objects
;; from which they were derived.

(defun extract-gcds (terms)
  (let ((num-list (find-num-factors terms t))
	(nonnum-list (find-num-factors terms nil)))
    (if (member nil num-list)
	terms
        (let* ((nums (mapcar #'(lambda (factors) (reduce #'* factors))
			     num-list))
	       (common-abs (apply #'gcd nums))
	       (common (if (every #'minusp nums) (- common-abs) common-abs)))
	  (if (= common 1)
	      terms
	      (let ((reduced (mapcar #'(lambda (n) (/ n common)) nums)))
		(mapcar #'(lambda (num nonnums)
			    (cons common
				  (if (= num 1) nonnums (cons num nonnums))))
			reduced nonnum-list)))))))

;; Find and extract numeric factors or the complement of same.  Assumes
;; negative numbers are in the form of a unary minus expression.  Numbers
;; are converted from PVS objects to Lisp integers.

(defun find-num-factors (terms numeric?)
  (flet ((numbered-factors (term)
	   (mapcar #'(lambda (factor)
		       (cond ((typep factor 'number-expr)
			      (number factor))
			     ((and (typep factor 'unary-application)
				   (eq (id (operator factor)) '-)
				   (typep (argument factor) 'number-expr))
			      (- (number (argument factor))))
			     (t factor)))
		   term)))
    (mapcar #'(lambda (term)
		(mapcan #'(lambda (factor)
			    (and (eq numeric? (integerp factor))
				 (list factor)))
		        (numbered-factors term)))
	    terms)))

(defun strip-common-factors (terms common)
  ;;; generalize "1" ???
  (mapcar #'(lambda (e) (bag-difference e common)) terms))
;  (mapcar #'(lambda (e) (or (bag-difference e common) '("1"))) terms))

;; Generate list of multiplicative terms (factors) using the form
;; (term-obj ... term-obj).  If supplied, left-mult is a predicate on
;; expressions that forces terms to be collected into left-mult and
;; right-mult lists, which are returned as such.  If left-mult is nil,
;; a single list of terms is returned.  The type-constraint predicate
;; decides whether the operands of an infix application may be collected.

(defun collect-multiplicative-terms
           (mult-expr
	    &optional
	    (left-mult nil)
	    (type-constraint
	     (let ((e-type (type mult-expr)))
	       #'(lambda (a b) (and (subtype-of? (type a) e-type)
				    (subtype-of? (type b) e-type)))))
	    ;; by default, both operands must match parent type;
	    ;; methods for library types can supply other constraints
	    )
  (labels
      ((build-singleton (expr)
	 (if left-mult
	     (if (funcall left-mult expr)
		 (list (list expr) nil)
		 (list nil (list expr)))
	     (list expr)))
       (merge-branches (left right)
	 (if left-mult
	     (mapcar #'append (collect-terms left) (collect-terms right))
	     (append (collect-terms left) (collect-terms right))))
       (collect-terms (expr)
	 (if (typep expr 'infix-application)
	     (let ((op (id (operator expr)))
		   (left (args1 expr))
		   (right (args2 expr)))
	       (if (and (eq op '*) (funcall type-constraint left right))
		   (merge-branches left right)
		   (build-singleton expr)))
	     (build-singleton expr))))
    (collect-terms mult-expr)))

;; Fuse terms t1, ..., tn into product t1 * t2 * ... * tn.

(defun make-new-product (terms &optional (parens? t))
  (case (length terms)
    ((0) "1")
    ((1) (textify (car terms)))
    (t (apply #'concatenate 'string
	      (append (mapcar (if parens?
				  #'(lambda (f) (format nil "~A * "
							(safety-parens f)))
				  #'(lambda (f) (format nil "~A * " f)))
			      (butlast terms))
		      (list (if parens?
				(safety-parens (car (last terms)))
			        (textify (car (last terms))))) )))))

;; Generate con/disjunctive terms having form (term-obj ... term-obj).

(defun collect-con/disjunctive-terms (bool-expr conj?)
  (let ((class (if conj? 'infix-conjunction 'infix-disjunction)))
    (labels ((collect-terms (expr)
	       (if (typep expr class)
		   (append (collect-terms (args1 expr))
			   (collect-terms (args2 expr)))
		   (list expr))))
      (collect-terms bool-expr))))

;; Fuse terms t1, ..., tn into con/disjunction t1 op t2 op ... op tn.

(defun make-new-con/disjunction (terms conj? &optional (parens? t))
  (case (length terms)
    ((0) (if conj? "TRUE" "FALSE"))
    ((1) (textify (car terms)))
    (t (apply #'concatenate 'string
	      (let ((op (if conj? "AND" "OR")))
		(append (mapcar (if parens?
				    #'(lambda (b)
					(format nil "~A ~A "
						(safety-parens b) op))
				    #'(lambda (b) (format nil "~A ~A " b op)))
				(butlast terms))
			(list (if parens?
				  (safety-parens (car (last terms)))
			          (textify (car (last terms))))) ))))))


;;; ---------------- Formula utility functions ----------------

;;; Get formula from current goal (unnegated if antecedent formula).
;;; Assumes symbolic and other forms have already been converted to
;;; numbers using map-fnums-arg.

(defun manip-get-formula (fnum)
  (if (numberp fnum)
      (let ((index (- (abs fnum) 1))
	    (goal (current-goal *ps*)))
	(handler-case
	    (if (> fnum 0)
		(formula (nth index (p-sforms goal)))
	        (argument (formula (nth index (n-sforms goal)))))
	  (error (condition) nil)))
      nil))

;;; Collect fnums for equality hypotheses

(defun get-equalities ()
  (gather-fnums (s-forms (current-goal *ps*)) '- nil
		#'(lambda (sf) (and (negation? (formula sf))
				    (equation? (args1 (formula sf)))))))

;;; Collect fnums for relation formulas in current sequent (except /=)

(defun get-relations (fnums &optional (rel-ops '(= < <= > >=)))
  (gather-fnums (s-forms (current-goal *ps*)) fnums nil
		#'(lambda (sf)
		    (let* ((any (formula sf))
			   (form (if (negation? any) (argument any) any)))
		      (and (typep form 'infix-application)
			   (member (id (operator form)) rel-ops))))))

(defparameter true-predicate #'(lambda (sf) t))

;;; Get list of formula numbers, converting *,-,+ as needed.  Also
;;; converts formula labels (symbols).  Also accommodate form
;;; (^ n1 ... nk) for all numbers but n1,...,nk.  (+^ ...) and (-^ ...)
;;; do the same for antecedents, consequents.

(defun map-fnums-arg (fnums)
  (cond ((numberp fnums) (list fnums))
	((or (stringp fnums) (symbolp fnums))
	 (gather-fnums (s-forms (current-goal *ps*))
		       fnums nil true-predicate))
	((and (consp fnums) (member (car fnums) all-but-symbols))
	 (let ((all-nums (map-fnums-arg
			  (cdr (assoc (car fnums) all-but-dict)))))
	   (bag-difference all-nums (mapappend #'map-fnums-arg (cdr fnums)))))
	((consp fnums) 
	 (remove-duplicates (mapappend #'map-fnums-arg fnums) :from-end t))
	(t nil)))

;;; Get list of formula numbers, converting *,-,+ as needed.  Also
;;; extracts fnum component from extended expression descriptors.

(defun extract-fnums-arg (fnums)
  (let ((nums (mapcar #'ee-fnum (eval-ext-expr fnums))))
    (remove-duplicates (mapcan #'(lambda (n) (and n (list n))) nums)
		       :from-end t)))


(defun rule-or-strategy (name)
  (or (gethash name *rules*) (gethash name *rulebase*) (gethash name *steps*)))


;;; ------------------ Lemma name utilities ------------------

(defparameter *arith-op-name*
  '((+ . "plus") (- . "minus") (* . "times") (/ . "div")))

(defparameter *real-props-relation*
  '((= . "") (< . "lt") (<= . "le") (> . "gt") (>= . "ge")))

(defun prepend-underscore (str)
  (if (equal str "") "" (format nil "_~A" str)))


;;; ---------------- String utility functions ----------------

;;; Perform textual substitution of template variables %1, ..., %n
;;; using list of values provided.  Number of values must equal n.

(defun percent-subst (pattern str-values)
  (let ((result (copy-seq pattern)) (n 1))
    (dolist (v str-values)
      (let* ((p (percent-to-tilde n result))
	     (vals (make-list (car p) :initial-element v)))
	(setf result (apply #'format nil (cadr p) vals)))
      (incf n))
    result))

(defun percent-to-tilde (index str)
  (let* ((match-str (format nil "%~A" index)))
    (do ((done nil) (result str) (n 0 (1+ n)))
	(done (list (- n 1) result))
      (let ((posn (search match-str result)))
	(if posn
	    (setf result (replace result "~A" :start1 posn))
	    (setf done t))))))

;; Same as above except replaces "%*" by all values, and "%," by all
;; values with comma-space delimiters.

(defun percent-subst-all (pattern str-values)
  (let ((p (percent-to-tilde "*" pattern)))
    (if (zerop (car p))
	(progn (setf p (percent-to-tilde "," pattern))
	       (if (zerop (car p))
		   pattern
		   (let ((delim-values
			  (append (mapcar #'(lambda (s) (format nil "~A, " s))
					  (butlast str-values 1))
				  (last str-values))))
		     (format nil (cadr p)
			     (apply #'concatenate 'string delim-values)))))
        (format nil (cadr p) (apply #'concatenate 'string str-values)))))

;; Map a string into another of arbitrary length.  Argument func must take
;; a char and return a list of chars.

(defun map-string (func str)
  (coerce (loop for i from 0 below (length str)
	        append (funcall func (char str i)))
	  'string))

(defun replace-substring (new-str full-str start finish)
  (let ((s1 (subseq full-str 0 start))
	(s2 (subseq full-str finish)))
    (concatenate 'string s1 new-str s2)))

(defun replace-substrings (new-str match-str full-str &optional (count 10000))
  (do ((len (length match-str)) (rest full-str) (result '())
       (loc t) (num 0 (1+ num)))
      ((or (not loc) (>= num count))
       (apply #'concatenate 'string (reverse (cons rest result))))
    (setf loc (search match-str rest))
    (when loc
      (push (subseq rest 0 loc) result)
      (push new-str result)
      (setf rest (subseq rest (+ loc len))))))

(defparameter *whitespace-chars* '(#\Space #\Tab #\Newline))

(defun format-with-downcased-symbols (fmt form)
  (let ((*print-case* :downcase))
    (format nil fmt form)))


;;; ---------------- Misc. utility functions ----------------

(defun consec (n)  ;; Consecutive integers 0, ..., n-1.
  (loop for i from 0 below n collect i))

(defun number-items (items &optional (start 1) (incr 1))
  ;; SO - SBCL doesn't like this loop when incr is negative; replaced with recursion
  ;;  (loop for i from start by incr for e in items collect i)
  (number-items* items start incr nil))

(defun number-items* (items start incr accum)
  (if (null items)
      (nreverse accum)
      (number-items* (cdr items) (+ start incr) incr (cons start accum))))

(defun bag-intersection (a b)
  (cond ((null a) nil)
	((member (car a) b :test #'equal)
	 (cons (car a)
	       (bag-intersection (cdr a)
				 (remove (car a) b :test #'equal :count 1))))
	(t (bag-intersection (cdr a) b))))

(defun bag-difference (a b)
  (cond ((null a) nil)
	((member (car a) b :test #'equal)
	 (bag-difference (cdr a) (remove (car a) b :test #'equal :count 1)))
	(t (cons (car a) (bag-difference (cdr a) b)))))


;;; ============= Utility functions called from Emacs Lisp =============

;;; ------------- Proof maintenance utilities --------------

;; ;; Retrieve the rulebase-signatures file, which is needed by the
;; ;; expand-strategy-steps function.

;; (unless (boundp '*pvs-rulebase-signatures*)
;;   (let* ((sig-name (format nil "rulebase-signatures-~A"
;; 			   (if (> (read-from-string *pvs-version*) 3.1)
;; 			       *pvs-version*
;; 			       "3.1")))
;; 	 (successful (load (merge-pathnames (make-pathname :name sig-name)
;; 					    *manip-pathname-dir*)
;; 			   :if-does-not-exist nil)))
;;     (unless successful
;;       (load (merge-pathnames (make-pathname :name "rulebase-signatures-3.1")
;; 			     *manip-pathname-dir*)))))

;; Derive the rulebase signatures, which are needed by the
;; expand-strategy-steps function.

(defun make-rulebase-signatures ()
  (let ((signatures '()))
    (maphash #'(lambda (key val)
		 (push (list (name val)
			     (let ((opt-args (optional-args val)))
			       (append (required-args val)
				       (if (or (null opt-args)
					       (eq (car opt-args) '&rest))
					   '()
					   '(&optional))
				       opt-args)))
		       signatures))
	     *rulebase*)
    (maphash #'(lambda (key val)
		 (push (list (name val) (formals val)) signatures))
	     *rules*)
    (maphash #'(lambda (key val)
		 (push (list (name val) (formals val)) signatures))
	     *steps*)
    (sort signatures
	  #'(lambda (x y) (string< (symbol-name (car x))
				   (symbol-name (car y)))))))

(defvar *pvs-rulebase-signatures* (make-rulebase-signatures))

(defvar *pvs-rulebase-names* (mapcar #'car *pvs-rulebase-signatures*))

;; Interactive function to "expand" the strategy steps of a proof file.
;; Each proof rule is checked against a list of base rules found in
;; the core PVS distribution.  Any strategy name not found there is
;; appended with a `$' character so that its next proof will expand into
;; steps found only in the core rule base.  A backup file of the
;; original proofs is saved in a ".sprf" version of the proof file.

(defun expand-strategy-steps (prf-file sprf-file)
  (let ((current-proofs nil) (prev-strat-proofs nil))
    (with-open-file (prf prf-file :direction :input)
      (setf current-proofs 
	    (do ((p (read prf nil) (read prf nil)) (result '()))
		((not p) (reverse result))
	      (push p result))))
    (if (probe-file sprf-file)
	(with-open-file (prf sprf-file :direction :input)
	  (setf prev-strat-proofs
		(do ((p (read prf nil) (read prf nil)) (result '()))
		    ((not p) (reverse result))
		  (push p result))))
        (setf prev-strat-proofs nil))
    (with-open-file (prf sprf-file :direction :output :if-exists :supersede)
      (loop for theory in current-proofs
	    do (prin1 (save-new-strat-proofs theory
					     (cdr (assoc (car theory)
							 prev-strat-proofs)))
		      prf)
	    do (terpri prf))
      (terpri prf))
    (with-open-file (prf prf-file :direction :output :if-exists :supersede)
      (loop for theory in current-proofs
	    do (prin1 (expand-strat-proofs theory) prf)
	    do (terpri prf))
      (terpri prf)))
  nil)   ;; make sure Emacs gets nothing to complain about

;; Previously saved proofs in a .sprf file are retained and not overwritten;
;; otherwise, expanded forms of these proofs would wipe out the originals.
;; Only new proof instances will be appended (e.g., f-2 if only f-1 exists).

(defun save-new-strat-proofs (new-thy-prf prev-thy-proofs)
  (let* ((prev-fmla-names (mapcar #'car prev-thy-proofs))
	 (new-fmla-names  (mapcar #'car (cdr new-thy-prf)))
	 (old-fmla-proofs (loop for f in prev-thy-proofs
			        unless (member (car f) new-fmla-names)
				collect f))
	 (merged-proofs
	   (loop for f in (cdr new-thy-prf)
	     collect (if (member (car f) prev-fmla-names)
			 (append (list (car f) (cadr f))
				 (let* ((prfs (cddr (assoc (car f)
							   prev-thy-proofs)))
					(prev-names (mapcar #'car prfs)))
				   (loop for p in (cddr f)
				     collect (if (member (car p) prev-names)
						 (assoc (car p) prfs)
					         p))))
		         f))))
    (cons (car new-thy-prf) (append merged-proofs old-fmla-proofs))))

;; When the multiple proofs feature was added in PVS 3.0, the format of
;; proof files changed.  Each theory portion now takes the form:
;;   (theory-name
;;     (formula-name 0
;;       (name-n <description> <number/nil> <number/nil> <proof-step-tree>
;;               unfinished nil <number/nil> <number/nil> t shostak)
;;       . . .
;;       (name-1 ...))  ;; first proof instance
;;     formula-2 ... formula-k)

(defun expand-strat-proofs (proofs)
  (labels ((subst-proof (proof)
	     (cond ((consp proof)
		    (if (symbolp (car proof))
			(let ((symb (symbol-name (car proof))))
			  (if (or (member (car proof) *pvs-rulebase-names*)
				  (eql (elt symb (- (length symb) 1)) #\$))
			      proof
			      (cons (intern (format nil "~A$" symb) :pvs)
				    (cdr proof))))
		        (mapcar #'subst-proof proof)))
		   (t proof))))
    (cons (car proofs)
	  (loop for f in (cdr proofs)
	        collect (append (list (car f) (cadr f))
				(loop for p in (cddr f)
				  collect (replace-steps-in-prf
					    (subst-proof 
					      (extract-steps-from-prf p))
					    p)))))))
					

;; For proof files as of PVS 3.0:
(defun extract-steps-from-prf (proof) (nth 4 proof))
(defun replace-steps-in-prf (steps proof)
  (append (butlast proof 7) (list steps) (nthcdr 5 proof)))


;; Function to restore the strategy-steps version of a proof file as
;; saved in the ".sprf" file.  The backup file is simply renamed to
;; become the new ".prf" file.

(defun restore-strategy-steps (prf-file sprf-file)
  (rename-file sprf-file prf-file)
  nil)  ;; multiple values from rename-file cause problems with Emacs
  

;;; ------ Utility functions to support the TAB prover-helps features ------

;;; Construct the Lisp function signature for a rule or strategy
;;; known in the current state.  Downcase the symbols for easy
;;; reading by Emacs Lisp.

(defun rule-or-strategy-sig (name)
  (let* ((entry (or (gethash name *steps*)
		    (gethash name *rules*))))
    (cond (entry (formals entry))
	  (t (let ((val (gethash name *rulebase*)))
	       (and val (let ((opt-args (optional-args val)))
			  (append (required-args val)
				  (if (or (null opt-args)
					  (eq (car opt-args) '&rest))
				      '()
				      '(&optional))
				  opt-args))))))))


(defun rule-or-strategy-signature (name)
    (write-to-string (rule-or-strategy-sig name) :case :downcase))


;;;;;;;;;;

(defvar *manip-debug-log* nil)

(defun debug-msg (&rest exprs)
  (unless *manip-debug-log*
    (setf *manip-debug-log*
	  (open "manip-debug-log" :direction :output :if-exists :supersede)))
  (format *manip-debug-log* "~S~2%" exprs)
  (finish-output *manip-debug-log*))
