;;;;;;;;;;;;;;;;;;;;;;;;;;; -*- Mode: Lisp -*- ;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;; syntax-matching.lisp -- Syntax matching functions for Manip package
;; Author          : Ben Di Vito <b.divito@nasa.gov>
;; Created On      : 19 Sep 2005 (excerpted from manip-strategies.lisp)
;; Last Modified By: Mariano Moscato <mariano.m.moscato@nasa.gov>
;; Last Modified On: 03 Sep 2019
;; Last Modified On: 29 Nov 2005 (v1.2-beta)
;; Last Modified On: 17 Nov 2007 (v1.2)
;; Status          : Stable
;; Version         : 1.2
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(in-package :pvs)

;;; ------------ Support for syntax matching features ------------


;; Following structure returned by spec-items parser.

(defstruct match-items
  (error-msg nil)                ;; only for match strategy form
  (show-flag nil)                ;; only for match strategy form
  (formula-nums '*)
  (patterns nil)
  (occurrence-nums 1)
  (expressions nil)              ;; only for extended expression form
  (action-targets-steps nil)     ;; only for match strategy form
  (comments nil))


;; Conduct a syntax-matching search then generate the appropriate proof
;; step or information display step according to the search results.

(defun match-syntax-step (&rest spec-items)
  (let* ((match-items (parse-match-items spec-items))
	 ;; returns a structure of type match-items
	 (error-msg (match-items-error-msg match-items))
	 (action-targets-steps (match-items-action-targets-steps match-items)))
    (if error-msg
	(gen-manip-response 'match (format nil "~A~%" error-msg))
      (let* ((fnum-patterns (normalize-patterns match-items))
	     (vars-instances-fnums (match-instances fnum-patterns)))
	(cond ((match-items-show-flag match-items)
	       `(match-syntax-show$ ,@vars-instances-fnums
				    ,@action-targets-steps))
	      ((>= (length (cadr vars-instances-fnums))
		   (length fnum-patterns))
	       (apply #'match-syntax-rule
		      (append vars-instances-fnums action-targets-steps)))
	      (t (gen-manip-response
		  'match
		  (if (cadr vars-instances-fnums)
		      (format nil
			      "Only ~A pattern instance(s) matched.~%"
			      (length (cadr vars-instances-fnums)))
		    (format nil "No pattern matches found.~%") ))))))))


;; Following is invoked when only information display is requested.
;; It displays information about pattern matches, template substitutions
;; and generated proof steps.

(defhelper match-syntax-show (var-subs-sep instances fnums op targets steps)
  (let ((var-subs (apply #'append var-subs-sep))
	(variables
	 (if var-subs
	     (let ((subs (loop for vlist in var-subs-sep
			       for fnum in fnums
			       append (mapcar
				       #'(lambda (v)
					   (list fnum (car v)
						 (printable-expr-instance
						  (cadr v))))
				       vlist))))
	       (format nil "~%Variable Matches:~%~:{~5<{~A}~> ~A : ~A~%~}"
		       subs))
	     ""))
	(patterns (format nil "~%Pattern Matches:~%~:{~5<{~A}~> %~A : ~A~%~}"
			  (loop for e in instances
				for i from 1
				for fnum in fnums
				collect (list fnum i
					      (printable-expr-instance e)))))
	(contractum (let ((s-targets
			   (mapcar #'(lambda (targ)
				       (subst-target targ var-subs
						     instances fnums))
				   targets)))
		      (if (null s-targets)
			  ""
			  (format nil "~%Instantiated Templates:~%  ~S~%"
				  s-targets))))
	(rule-steps (if (null op)
			nil
		        (multiple-value-list
			 (match-syntax-rule var-subs-sep instances fnums
					    op targets steps))))
	(rule (if (null op)
		  ""
		  (format nil "~%Generated Proof Step:~%  ~S~%"
			  (car rule-steps))))
	(show-step (gen-manip-response 'match
                     (format nil "~%~{~A~}"
			     (list variables patterns contractum rule)))))
    show-step)
  "Helper strategy for match."
  "~%Matching syntax in formulas and performing actions")

;; Generate the rule or proof step that follows from the specified action
;; and substitution instances.  Defaults are applied as needed.
;; Returns additional values: instantiated proof steps.

(defun match-syntax-rule (var-subs-sep instances fnums op targets steps)
  (let* ((var-subs (apply #'append var-subs-sep))
	 (contracta (mapcar #'(lambda (targ)
				(subst-target targ var-subs instances fnums))
			    targets))
	 ;; proof steps in string form must be read to get s-exprs
	 (prf-steps (mapcar #'(lambda (step)
				(subst-target step var-subs instances fnums t))
			    steps))
	 ;; M3: check for non replaced percent symbol is removed
	 ;;     in order to allow nested applications of match
	 ;; (unmatched-var     ;; check for strings with remaining %-chars
	 ;;   (apply-to-selected-nodes
	 ;;     #'stringp (lambda (s) (find #\% s))
	 ;;     (lambda (x) nil) #'(lambda (s) (some #'identity s))
	 ;;     (append contracta prf-steps)))
	 (lhs (if (and (typep (car instances) 'expr)
		       (> (parens (car instances)) 0))
		  (car instances)
		(format nil "(~A)" (car instances))))
	 (rhs (printable-expr-instance
	       (if (null contracta) (cadr instances) (car contracta))))
	 (match-action-p (memq op *match-action-symbols*))
	 (br-rule (cond ((eq op 'rep)                 ;; replace
			 `(case-replace ,(format nil "~A = ~A" lhs rhs) t))
			((eq op 'case)                ;; case split
			 `(case ,@contracta))
			(match-action-p               ;; relational operator
			 `(case ,(format nil "~A ~A ~A" lhs op rhs)))))
	 (main-rule
	  (cond 
	   ;; M3: check for non replaced percent symbol is removed
	   ;;     in order to allow nested applications of match
	   ;; (unmatched-var
	   ;;  (gen-manip-response 'match
	   ;;    (format nil
	   ;; 	   "Not all %-variables in templates were bound.~%")))
	   ((eq op 'step)
	    (if (stringp (car contracta))
		(handler-case (read-from-string (car contracta))
		  (error (condition)
			 (gen-manip-response 'match
					     (format nil "Bad step: ~A~%" (car contracta)))))
	      (car contracta)))
	   ((not match-action-p)       ;; existing prover rule
		 ;;;; consider variants: T1...Tk followed by P1...Pn ???
	    `(,op ,@(mapcar #'(lambda (e) (format nil "~A" e))
			    instances)))
	   (t br-rule))))
    (values (if ;; M3: check for non replaced percent symbol is removed
		;;     in order to allow nested applications of match
		;; (or unmatched-var (eq op 'step)) ;; (not match-action-p))
		(eq op 'step)
		main-rule
	      `(branch-back$ ,main-rule ,prf-steps))
	    prf-steps)))

;;; ---------------- Extended expression interface ----------------

;; Evaluate EE-based syntax matching specs.  If no target expressions
;; appear in the spec items, use the matching instances %1, ...,%n.
;; Returns a list of EE descriptors.

(defun match-syntax-ee (&rest spec-items)
  (let* ((match-items (parse-match-items spec-items t))
	 ;; returns a structure of type match-items
	 (error-msg (match-items-error-msg match-items))
	 (expressions (match-items-expressions match-items)))
    (if error-msg
	nil   ;; propagate error-msg???
        (let* ((fnum-patterns (normalize-patterns match-items))
	       (vars-instances-fnums (match-instances fnum-patterns)))
	  (apply #'match-syntax-ee-eval
		 (append vars-instances-fnums (list expressions)))))))

(defun match-syntax-ee-eval (var-subs-sep instances fnums expressions)
  (let ((var-subs (apply #'append var-subs-sep)))
    (cond (expressions
	   (mapcan #'(lambda (targ)
		       (multiple-value-list
			 (if (stringp targ)
			     (make-ee-descriptor
			      :string (subst-target-string targ var-subs
							   instances fnums))
			     (subst-target-object targ var-subs
						  instances fnums))))
		   expressions))
	  (var-subs
	   (loop for vlist in var-subs-sep
	         for n in fnums
		 append (mapcar #'(lambda (v) (make-ee-descriptor
					       :pvs-obj (cadr v) :fnum n))
				vlist)))
	  (t (mapcar #'(lambda (e n) (make-ee-descriptor :pvs-obj e :fnum n))
		     instances fnums)))))


;;; ---------------- Syntax matching functions ----------------

;; Sort out possible forms for match item list.  Assumes item syntax:
;;   [show-flag] [fnums] pattern-1 ... pattern-n [onums]
;;     [ action ] [target-1 ... target-m] [! step-1 ... step-k] ]
;; Pattern specs have syntax:
;;   <pattern> | ( [ <fnums> ] <base-pattern> [ <onums> ] )
;; where <base-pattern> ::= <string> | <symbol> | &1 | &2 | ...
;; and   <onums>   ::= * | <num> | ( <num-list> )
;; and targets, steps are s-expressions; numeric steps are mapped into
;; prover rules by lookup table.
;; If ee-form is true, parse according to extended expression syntax:
;;   [fnums] pattern-1 ... pattern-n [onums] [-> expr-1 ... expr-n]
;; Returns a structure of type match-items.
   
(defun parse-match-items (all-items &optional (ee-form nil))
  (if all-items
      (let* ((comment-posn (position '-- all-items :from-end t))
	     (comments
	      (if comment-posn (nthcdr (1+ comment-posn) all-items) nil))
	     (real-items
	      (if comment-posn (subseq all-items 0 comment-posn) all-items))
	     (show-flag (memq (car real-items) '(? show)))
	     (fnums-items (if show-flag (cdr real-items) real-items))
	     (fnums (if (consp fnums-items) (car fnums-items) nil))
	     (fnum-p #'(lambda (e) (or (numberp e) (memq e '(+ - *)))))
	     (items (if (or (funcall fnum-p fnums)
			    (and (consp fnums)
				 (or ;; M3: Adds support for complements of fnums (^, +^, -^)
				  (and (member (car fnums) all-but-symbols) (every fnum-p (cdr fnums)))
				  (every fnum-p fnums))))
			(cdr fnums-items)
		        fnums-items))
	     (global-fnums (if (eq items fnums-items) '* fnums))
	     (patterns nil)
	     (result (make-match-items :show-flag show-flag
				       :formula-nums global-fnums
				       :comments comments)))
	(if ee-form
	    (parse-match-items-ee global-fnums items patterns result)
	    (parse-match-items-match global-fnums items patterns result)))
    (make-match-items :error-msg "No item specifications supplied.")))

;; Parse top-level match strategy items.

(defun parse-match-items-match (global-fnums items patterns result)
  (let* ((action nil)
	 (targets nil)
	 (steps nil)
	 (action-p #'(lambda (e) (or (memq e *match-action-symbols*)
				     (rule-or-strategy e))))
	 (action-posn (position-if action-p items :from-end t))
	 (last-patt-posn (- (or action-posn (length items)) 1))
	 (steps-posn nil)
	 (targets-steps nil))
    (setf (match-items-action-targets-steps result)
	  '(nil nil ((skip) (grind) (assert))))
    (let ((last-patt (and (>= last-patt-posn 0) (nth last-patt-posn items))))
      (if (or (numberp last-patt)
	      (eq last-patt '*)
	      (and (consp last-patt) (every #'numberp last-patt)))
	  (setf (match-items-occurrence-nums result) last-patt
		patterns (butlast items (- (length items) last-patt-posn)))
	  (setf patterns (butlast items
				  (- (length items) (1+ last-patt-posn)))))
      (setf (match-items-patterns result) patterns))
    (unless patterns
      (setf (match-items-error-msg result) "No patterns specified.")
      (return-from parse-match-items-match result))
    (unless action-posn
      (setf (match-items-show-flag result) t)
      (return-from parse-match-items-match result))
    (setf action (nth action-posn items)  ; action-rest)
	  targets-steps (nthcdr (1+ action-posn) items)  ; action-rest))
	  steps-posn (position-if #'(lambda (e) (eq e '!)) targets-steps)
	  targets (if steps-posn
		      (butlast targets-steps
			       (- (length targets-steps) steps-posn))
		      targets-steps))
    (setf steps
	  (loop for s in (and steps-posn
			      (nthcdr (1+ steps-posn) targets-steps))
	        collect (cond ((null s) '(skip))
			      ((eq s t) '(grind))
			      ((numberp s)
			       (let ((index (min (max s 0)
						 *max-match-step-index*)))
				 (nth index *match-step-rules*)))
			      (t s))))
    (let* ((req-len (if (eq action 'case) (length targets) 1))
	   (diff (- (length steps) req-len)))
      (setf steps (append steps
			  (if (< diff 0)
			      (make-list (- diff) :initial-element '(skip))
			      nil)
			  (nthcdr (max diff 0) '((grind) (assert))))))
    (setf (match-items-action-targets-steps result)
	  (list action targets steps))
    result))

;; Parse extended expression forms.

(defun parse-match-items-ee (global-fnums items patterns result)
  (let* ((action-posn (position-if #'(lambda (e) (eq e '->))
				   items :from-end t))
	 (last-patt-posn (- (or action-posn (length items)) 1)))
    (let ((last-patt (and (>= last-patt-posn 0) (nth last-patt-posn items))))
      (if (or (numberp last-patt)
	      (eq last-patt '*)
	      (and (consp last-patt) (every #'numberp last-patt)))
	  (setf (match-items-occurrence-nums result) last-patt
		patterns (butlast items (- (length items) last-patt-posn)))
	  (setf patterns (butlast items
				  (- (length items) (1+ last-patt-posn)))))
      (setf (match-items-patterns result) patterns))
    (unless patterns
      (setf (match-items-error-msg result) "No patterns specified.")
      (return-from parse-match-items-ee result))
    (unless action-posn
      (return-from parse-match-items-ee result))
    (when (> (length items) (1+ action-posn))
      (setf (match-items-expressions result) (nthcdr (1+ action-posn) items)))
    result))


(defparameter *match-action-symbols*
  '(rep case step
    = /= < <= > >= and & or implies => iff <=> when xor))
;; andthen orelse
;; o # ## && /\ <> \/ | ||
(defparameter *match-step-rules*
  '((skip) (prop) (bddsimp) (simplify) (assert)
    (ground) (smash) (bash) (reduce) (grind)))
(defparameter *max-match-step-index*
  (- (length *match-step-rules*) 1))


;; From the output of match-item parsing, create a list of triples
;; (fnums, pattern, onums) suitable for matching.

(defun normalize-patterns (match-items)
  (expand-repeated-patterns (parse-match-patterns
			     (match-items-patterns match-items))
			    (match-items-formula-nums match-items)
			    (match-items-occurrence-nums match-items)))


;; Parse pattern specs, taking care to account for optional fnums in
;; list forms.  When absent, fnums are given the place-holder nil, which
;; will be expanded later.  The same is true for missing occurrence
;; specifiers: they are given the place-holder nil.  If a list of
;; occurrence numbers is supplied, they should be ordered.  If not, the
;; pattern spec will be split into multiple specs with ordered sublists.
;; Returns a list of triples: (... (fnum patt onum) ...).

(defun parse-match-patterns (patterns)
  (let* ((fnum-p #'(lambda (e) (or (numberp e) (memq e '(+ - *)))))
	 (fnums-option-p #'(lambda (fnums) 
			     (or (funcall fnum-p fnums)
				 (and (consp fnums)
				      (or ;; M3: Adds support for complements of fnums (^, +^, -^)
				       (and (member (car fnums) all-but-symbols) (every fnum-p (cdr fnums)))
				       (every fnum-p fnums))))))
	 (fnums-complete 		 
	  (loop for patt in patterns
	        collect (cond ((not (consp patt))
			       (list nil patt nil))
			      ((funcall fnums-option-p (car patt))
			       (if (< (length patt) 2)
				   ;; missing pattern; use universal patt "%"
				   (append patt (list "%"))
				   patt))
			      (t (cons nil patt)))))
	 (patts-complete
	  (loop for patt in fnums-complete
	        collect (if (< (length patt) 3)
			    (append patt (list nil))
			    patt))))
    (loop for patt in patts-complete
          append (let ((prefix (butlast patt 1))
		       (splits (split-unordered-onums (caddr patt))))
		   (if (consp splits)
		       (mapcar #'(lambda (nums)
				   (append prefix
					   (if (cdr nums) (list nums) nums)))
			       splits)
		       (list (append prefix (list splits))))))))
			 
(defun split-unordered-onums (onums)
  (cond ((or (null onums) (eq onums '*) (and (integerp onums) (plusp onums)))
	 onums)
	((not (listp onums)) 1)          ;; invalid value -> use default *****
	((or (notevery #'integerp onums) (notevery #'plusp onums)) 1) ; invalid
	(t (let ((contig nil) (prev 0))
	     (append (loop for n in onums
		           if (< prev n) do (push n contig)
			   else collect (reverse contig) and
			        do (setf contig (list n))
			   do (setf prev n))
		     (list (reverse contig)))))))


;;; Match formulas against syntax patterns.
;;; Input is of the form ((f1 p1 i1) ...), where f is an fnum spec,
;;; p is a pattern, and i is the instance/occurrence number(s) to match.
;;;;; Identifiers with leading '_' or '?_?' are template/pattern variables. ;;;
;;; Identifiers with leading '??' or '?_?' are template/pattern variables.
;;; Allow a choice of which syntactic expr categories to match (t = all).
;;; Returns list (vars instances fnums),
;;; where vars, instances and fnums have the same length.
;;; If multiple patterns exist, the formula numbers, variable bindings and
;;; matching instances are returned for each pattern.

(defun match-instances (fnum-patterns &optional (which-expr t))
  ;; returns ((subst-1 ... subst-n) (expr-1 ... expr-n) (fnum-1 ... fnum-n))
  (let ((fnumber 0) (pattern nil) (anchored nil)
	(occurrence 1) (occ-needed 1) (result nil) (fully-done nil))
    (labels
      ((try-match (expr global-subs)
         ;; pattern comes from LET variable
         ;; returns final value of global-subs (augmented during matching)
         ;; returns ((subst-1 expr-1 fnum-1) ... (subst-n expr-n fnum-n))
         ;;   through LET variable result
         (let* ((patt-match (match-subexpr expr pattern global-subs))
		(table-entry (assoc-if #'(lambda (e) (typep expr e))
				       *pvs-syntax-class-alist*))
		(continue t))
	   (setf continue 
		 (if patt-match
		     (let ((match (list (list (cdr patt-match) expr fnumber))))
		       (setf global-subs (car patt-match))
		       (cond ((eq occ-needed '*)
			      (setf result (append result match)))  ;; -> t
			     ((numberp occ-needed)
			      (if (= occurrence occ-needed)
				  (progn (setf result (append result match))
					 nil)
				   t))
			     ((member occurrence occ-needed)
			      (setf result
				    (append result 
					    (make-list
					     (count occurrence occ-needed)
					     :initial-element (car match))))
			      (setf occ-needed (remove occurrence occ-needed))
			      occ-needed)
			     (t t)))    ;; not a needed one -> continue  
		     t))    ;; not a match -> keep looking
	   (unless continue
	     (setf fully-done t)
	     (return-from try-match global-subs))
	   (when anchored
	     ;; anchored match, skip subexprs
	     (return-from try-match global-subs))
	   (when patt-match (incf occurrence))
	   (when (and continue table-entry (cdr table-entry))
	     (let ((subexpr-fn (cdr table-entry)))
	       (loop for sub-expr in
		         (apply #'append (funcall subexpr-fn expr))
		     do (setf global-subs (try-match sub-expr global-subs))
		     when fully-done do (loop-finish))))
	   global-subs)))

    ;; iterate through the formulas until a match is found for each pattern
      (let* ((goal (current-goal *ps*))
	     (all-p-sforms (mapcar #'formula (p-sforms goal)))
	     (all-n-sforms (loop for f in (n-sforms goal)
			         collect (argument (formula f))))
	     (all-fnums (append (number-items all-n-sforms -1 -1)
				(number-items all-p-sforms)))
	     (all-fmlas (append all-n-sforms all-p-sforms))
	     (all-n-fmlas (mapcar #'cons all-fnums all-fmlas))
	      ;; cache: list of (fp-fnums actual-fnums formulas)
	     (fp-cache-fnum nil)
	      ;; cache: list of (fp-patt patt-obj)
	     (g-subs nil)
	     (matches
	      (loop for fp in fnum-patterns
		    append
		      (let* ((fnums-in (assoc (car fp) fp-cache-fnum
					      :test #'equal))
			     (fnums (cond (fnums-in (cadr fnums-in))
					  ((eq (car fp) '*) all-fnums)
					  (t (map-fnums-arg (car fp)))))
			     (formulas
			      (cond (fnums-in (caddr fnums-in))
				    ((eq (car fp) '*) all-fmlas)
				    (t (loop for n-fmla in all-n-fmlas
				             if (memq (car n-fmla) fnums)
					        collect (cdr n-fmla)))))
			     (anchor-pattern
			      (pattern-object (cadr fp) which-expr)))
			(setf anchored (car anchor-pattern)
			      pattern (cdr anchor-pattern))
			(push (list (car fp)  fnums formulas) fp-cache-fnum)
			(setf result nil
			      fully-done nil
			      occurrence 1
			      occ-needed (or (caddr fp) 1))
			(if pattern
			    (loop for fmla in formulas
			          for fnum in fnums
				  do (setf fnumber fnum)
				  do (setf g-subs (try-match fmla g-subs))
				  when fully-done return result
				  finally (return result))
			    nil)))))
	;; matches = ((subst-1 expr-1 fnum-1) ... (subst-n expr-n fnum-n))
	(if (every #'null matches)
	    '(nil nil nil)
	    (list (mapcar #'car matches)
		  (mapcar #'cadr matches)
		  (mapcar #'caddr matches)))))))

;;; Match a pattern against an expression tree.
;;; Recursively descend both expression and pattern to check for a match.
;;; Pattern variable bindings are collected along the way.
;;; Returns nil for match failure and a list (G b1 ... bn) for a
;;; successful match, where G is an augmented list of global bindings
;;; (for %V variables) and b1...bn are bindings for other variables.

(defvar *match-subexpr-debug* 0)

(defun match-subexpr (expr patt global-subs)
  (flet ((submatches (expr-list patt-list)
		     (when (= (length expr-list) (length patt-list))
		       (let* ((g-subs global-subs) result
			      (r-bind (loop for e in expr-list  for p in patt-list
					    do (setf result (match-subexpr e p g-subs))
					    if (null result)
					    do (return-from match-subexpr nil)
					    append (cdr result)
					    do (setf g-subs (car result)))))
			 (cons g-subs r-bind)))))
    
    (cond ;; check for pattern variables [keep this first]
     ((let* ((patt-var-match (match-pattern-var expr patt global-subs)))
	(when (eq patt-var-match 'prev-mismatch)
	  (return-from match-subexpr nil))
	patt-var-match))
     ;; if expr and pattern are lists, check all subexpr pairs 
     ((and (consp expr) (consp patt))   ;; needed for assignments
      (submatches expr patt))
     ((and (consp expr) (null (cdr expr)))   ;; single expr
      (match-subexpr (car expr) patt global-subs))
     ((and (symbolp expr)
	   (or (and (symbolp patt) (eq patt expr))
	       (and (typep patt 'name-expr) (eq (id patt) expr) (null (actuals patt)))))
      (list global-subs))
     ((symbolp patt)
      ;; entire expr needs to match syntax class:
      (let ((entry (assoc patt *pvs-syntax-name-alist*)))
	(and entry (typep expr (cdr entry)) (list global-subs))))
     
;;; following unlikely to help usually because pattern will be parsed only;
;;; also causes Lisp error in at least one case (null list)
;;;	((tc-eq expr patt)  ;; declare a match if expr is tc-equal to patt
;;;	 (list global-subs))
     ((eql expr patt)    ;; declare a match if objects eql
      (list global-subs))
     
     ;; If syntax classes match, need to check all corresponding pairs
     ;; of subexpressions from expr and patt (all must match).
     
     ((let*((entry (assoc-if #'(lambda (e) (typep expr e))
			     *pvs-syntax-class-alist*)))
	(and entry
	     (or (typep expr (class-of patt))
		 ;; special case so pattern vars and names can match types:
		 (and (typep expr 'type-name) (typep patt 'name-expr))
		 ;; M3:
		 (and (typep expr 'field-application) (typep patt 'application)))
	     (let* ((subexpr-fn (cdr entry))
		    (expr-args (funcall subexpr-fn expr))
		    ;; if expr is a subclass of patt, might lack some slots:
		    (patt-args (ignore-errors
				 (funcall
				  (if (typep patt 'application)
				      (let*((patt-entry (assoc-if #'(lambda (e) (typep patt e)) *pvs-syntax-class-alist*)))
					(cdr patt-entry))
				    subexpr-fn)
				  patt))))
	       (when (and expr-args patt-args)
		 (submatches expr-args patt-args))))))
     (t nil)))
  )      ;; no case applies -> match fails


;;; Check for a pattern variable and if found, see if it matches
;;; against current expression.  All expressions match except when
;;; coordinated variables or type-restricted variables are involved.
;;; Returns 'prev-mismatch if expr fails to match previous instance
;;; in global-subs; otherwise, returns same values as match-subexpr.
;;; Variables will have been preprocessed as follows:
;;;   % -> ??   %v -> ??v   %% -> ????   %%v -> ????v
;;;;;   % -> _   %v -> _v   %% -> __   %%v -> __v
;;;   %{class} -> ?_??_?class      %v{class} -> ?_?v?_?class

(defun match-pattern-var (expr patt global-subs)
  (let* ((list-expr-patt-var
	  (if (consp patt)
	      (and (consp expr) (null (cdr patt))
		   (expr-patt-var-symb (car patt) 4 "????"))
;		   (expr-patt-var-symb (car patt) 2 "__"))
	      (expr-patt-var-symb patt 4 "????")))
;	      (expr-patt-var-symb patt 2 "__")))
	 (expr-patt-var (expr-patt-var-symb patt 2 "??"))
;	 (expr-patt-var (expr-patt-var-symb patt 1 "_"))
	 (class-patt-var
	  (let ((syn-var (expr-patt-var-symb patt 3 "?_?")))
	    (when syn-var
	      (let* ((patt-str (subseq (string syn-var) 3))
		     (class-posn (search "?_?" patt-str))
		     (class-str (subseq patt-str (+ class-posn 3))))
		 (and (typep expr (cdr (assoc (intern class-str :pvs)
					      *pvs-syntax-name-alist*)))
		      (if (string= (subseq patt-str 0 class-posn) "")
			  '??
;			  '_
		          (intern (format nil "??~A"
;		          (intern (format nil "_~A"
					  (subseq patt-str
						  0 class-posn)) :pvs)))))))
	 (patt-var (or list-expr-patt-var
		       ;;;;; following maybe should be consp ???
		       (and (not (listp expr))
			    (or expr-patt-var class-patt-var)))))
    (unless patt-var
      (return-from match-pattern-var nil))
    ;; found a pattern variable that matches any expr [list]
;    (cond ((memq patt-var '(_ __))
    (cond ((memq patt-var '(?? ????))
	   (list global-subs))    ; nonbinding match -- no additional subs
	  (patt-var
	   (let* ((prefix (if list-expr-patt-var "%%" "%"))
		  (offset (if list-expr-patt-var 4 2))
;		  (offset (if list-expr-patt-var 2 1))
		  (var-name (subseq (string patt-var) offset)))
	     (when (upper-case-p (elt var-name 0))  ;; coordinated match
	       ;; note: (elt "" 0) => #\null
	       (let ((prev-match (cadr (assoc patt-var global-subs))))
		 (cond ((not prev-match)
			(push (list patt-var expr) global-subs))
		       (list-expr-patt-var
			(unless (every #'tc-eq expr prev-match)
			  (return-from match-pattern-var 'prev-mismatch)))
		       ((not (tc-eq expr prev-match))
			(return-from match-pattern-var 'prev-mismatch)))))
	     (list global-subs
		   (list (format nil "~A~A" prefix var-name) expr)))))))

;;;;; Determine if pattern variable has the form '_' or '__' or '?_?'.
;;; Determine if pattern variable has the form '??' or '????' or '?_?'.

(defun expr-patt-var-symb (patt prefix-len prefix-chars)
  (flet ((extract-prefix (str)
	   (subseq str 0 (min (length str) prefix-len))))
    (or (and (typep patt 'name)
	     (null (actuals patt))
	     (not (and (typep patt 'binding) (declared-type patt)))
	     (string= (extract-prefix (string (id patt))) prefix-chars)
	     (id patt))
	(and (symbolp patt)
	     (string= (extract-prefix (string patt)) prefix-chars)
	     patt))))


;;; -------------- Functions to traverse PVS syntax objects --------------

;;; Functions for accessing subelements of a syntax expression.  Each
;;; function returns a list of lists Li.  Each Li represents a repeated
;;; subexpression category such as arguments in an application.

(defun null-subexpr-fn (e) nil)

(defun name-type-elements (e)
  (list (cons (id e) (nconc (and (mod-id e) (list (mod-id e)))
			    (and (library e) (list (library e)))))
	(mapcar #'expr (actuals e))))

(defun applic-expr-elements (e)
  (list (list (operator e)) (arg-expr-objects e)))

(defun binding-decl-elements (e)
  (cond ((not (typep e 'bind-decl)) nil)
	((declared-type e)
	 (list (list (id e) (declared-type e))))
	(t (list (list (id e))))))

(defun binding-expr-elements (e)
  (list (bindings e) (list (expression e))))

(defun list-expr-elements (e)
  (if (typep e 'list-expr)
      (let ((list-list (exprs (argument e))))
	(list (cons (car list-list)
		    (car (list-expr-elements (cadr list-list))))))
      (list nil)))

;; Descend LET/WHERE expression tree to extract variable bindings.
;; Expressions are represented by recursively nested function applications.
;; Returns ((<binding> <bind-expr> ...) (<in-expr>)).
;;;;; Returns (((<binding> <bind-expr>) ...) (<in-expr>)).

(defun let-expr-elements (e)
  (if (or (typep e 'let-expr) (typep e 'where-expr))
      (let* ((op (operator e))
	     (bindings (bindings op))
	     (inner (let-expr-elements (expression op))))
;;	(list (cons (list (bindings op) (argument e)) (car inner))
	(list (append (list (bindings op) (argument e)) (car inner))
	      (cadr inner)))
      (list nil (list e))))


(defun coercion-elements (e)
  (list (list (argument e))
	(list (declared-type (car (bindings (operator e)))))))

(defun cases-elements (e)
  (let ((prefix (list (selections e) (list (expression e)))))
    (reverse (if (else-part e)
		 (cons (list (else-part e)) prefix)
	         prefix))))

;; Descend IF/COND expression tree to extract subexpressions.
;; IF/COND expressions are represented by recursively nested conditionals.
;; Returns ((<condition> <then-expr> ...) (<else-expr>)).
;;;;; Returns (((<condition> <then-expr>) ...) (<else-expr>)).

(defun if/cond-expr-elements (e)
  ;; suppress implicit ELSE condition for COND
  (cond ((and (typep e 'last-cond-expr)
	      (string-equal (subseq (princ-to-string e) 5 9) "ELSE"))
	 (list nil (list (caddr (exprs (argument e))))))
	((typep e 'if-expr)
	 (let* ((expr-list (exprs (argument e)))
		(if-then (list (car expr-list) (cadr expr-list)))
		(inner (if/cond-expr-elements (caddr expr-list))))
	   (list (append if-then (car inner)) (cadr inner))))
;;	   (list (cons if-then (car inner)) (cadr inner))))
	(t (list nil (list e)))))


(defparameter *pvs-syntax-table*
  ;; Each entry has the form: (short-name class-name subexpr-fn)
  ;; Note: subclasses precede their superclasses in this list, except for
  ;; cases where the relationship is not syntactically important.
  `((bind_decl bind-decl    ;; (id declared-type)
	       ,#'binding-decl-elements)
    (name_    name-expr    ,#'name-type-elements)
    (number   number-expr   ;; (number)
	      ,#'(lambda (e) (list (list (number e)))))
    (infix    infix-application  ;; (operator argument)
	      ,#'applic-expr-elements)
    (unary    unary-application  ;; (operator argument)
	      ,#'applic-expr-elements)

    (cond     first-cond-expr   ;; (operator argument)
	      ,#'if/cond-expr-elements)
    (if_      if-expr       ;; (operator argument)
	      ,#'if/cond-expr-elements)
    (where    where-expr    ;; (operator argument)
              ,#'let-expr-elements)
    (let_     let-expr      ;; (operator argument)
              ,#'let-expr-elements)
    (coerce   coercion    ;; (argument operator)
 	      ,#'coercion-elements)
    (list     list-expr     ;; (operator argument)
	      ,#'list-expr-elements)
    ;; group above needs to precede applic

    (applic   application  ;; (operator argument)
	      ,#'applic-expr-elements)
    (set      set-expr      ;; (bindings expression)
	      ,#'binding-expr-elements)
    (lambda   lambda-expr   ;; (bindings expression)
	      ,#'binding-expr-elements)
    (forall   forall-expr   ;; (bindings expression)
	      ,#'binding-expr-elements)
    (exists   exists-expr   ;; (bindings expression)
	      ,#'binding-expr-elements)
    (quant    quant-expr    ;; (bindings expression)
	      ,#'binding-expr-elements)
    (bind     binding-expr  ;; (bindings expression)
	      ,#'binding-expr-elements)

    (proj     projappl     ;; (index argument)
	      ,#'(lambda (e) (list (list (index e)) (list (argument e)))))
    (field_   fieldappl    ;; (id argument)
	      ,#'(lambda (e) (list (list (id e)) (list (argument e)))))
    (field__  field-application    ;; (id argument)
	      ,#'(lambda (e) (list (list (id e)) (list (argument e)))))
    (tuple    tuple-expr  ;; (exprs)
	      ,#'(lambda (e) (list (exprs e))))
    (record_  record-expr ;; (assignments)
	      ,#'(lambda (e) (list (assignments e))))
    (null     null-expr     ,#'null-subexpr-fn)

    (assign   assignment    ;; (arguments expression)
	      ,#'(lambda (e) (list (arguments e) (list (expression e)))))
    (update   update-expr ;; (expression assignments)
	      ,#'(lambda (e) (list (list (expression e)) (assignments e))))
    (select   selection   ;; (constructor args expression)
	      ,#'(lambda (e) (list (list (constructor e))
				   (mapcar #'id (args e))  ;; ignore types
				   (list (expression e)))))
    (cases    cases-expr  ;; (expression selections else-part)
	      ,#'cases-elements)

    (bracket  bracket-expr   ;; (operator argument)
	      ,#'(lambda (e) (list (arg-expr-objects e))))
    (paren_vbar  bracket-expr   ;; (operator argument)
	      ,#'(lambda (e) (list (arg-expr-objects e))))
    (brace_vbar  bracket-expr   ;; (operator argument)
	      ,#'(lambda (e) (list (arg-expr-objects e))))
    (string   string-expr    ;; (string-value)
	      ,#'(lambda (e) (list (list (string-value e)))))

    (type_name type-name   ,#'name-type-elements)
    (expr_as_type expr-as-type   ;; (expr)
		  ,#'(lambda (e) (list (list (expr e)))))
    (subtype  subtype      ;; ((bindings expression) of predicate) 
	      ,#'(lambda (e)
		   (let ((p (predicate e)))
		     (list (bindings p) (list (expression p))))))
    (type_applic type-application   ;; (type parameters)
		 ,#'(lambda (e) (list (list (type e)) (parameters e))))
    (funtype  funtype      ;; (domain range)
	      ,#'(lambda (e) (list (types (domain e)) (list (range e)))))
    (tupletype tupletype    ;; (types)
	       ,#'(lambda (e) (list (types e))))
    (field_decl field-decl  ;; (id declared-type)
		,#'(lambda (e) (list (list (id e)) (list (declared-type e)))))
    (recordtype recordtype  ;; (fields)
		,#'(lambda (e) (list (fields e))))
    ))


(defparameter *pvs-syntax-class-alist*
  ;; each entry has the form: (class . subexpr-fn)
  (mapcar #'(lambda (entry) (cons (find-class (cadr entry)) (caddr entry)))
	  *pvs-syntax-table*))

(defparameter *pvs-syntax-name-alist*
  ;; each entry has the form: (short-name . class-name)
  (mapcar #'(lambda (entry) (cons (car entry) (cadr entry)))
	  *pvs-syntax-table*))


;;; ---------------- Match pattern utility functions ----------------

;; Scan pattern list and look for repeated pattern expressions.  
;; Pattern spec items are lists of the form (fnum patt occur), where
;; fnum and occur may have the place-holder value nil.  Repeated patterns
;; may be either a symbol of the form '&k', which means repeat the previous
;; one, or a fnum-pattern combination that matches the previous one.  If
;; the nth pattern repeats its immediate predecessor, and the nth has no
;; occurrence number, increment the (n-1)th pattern's number by k and assign
;; it to the nth.  If the previous pattern has '*' as its occurrence number,
;; ignore the new one as superfluous; consider making it an error.
;; A merged list of occurrence numbers results from the repetition.
;;
;; Repetition of an earlier pattern (not the immediate predecessor) may
;; be recognized if the fnum and pattern fields are equal.  This will bump
;; the occurrence count, but a new pattern tuple is added because of the
;; intervening pattern(s).  This approach supports an optimization:
;; occurrence numbers collected in a list obviate separate searches
;; that must start over at occurrence 1.

(defun expand-repeated-patterns (pattern-items global-fnums global-onums)
  (labels
      ((add-defaults (tuple)
		     (list (list (or (car tuple) global-fnums)
				 (cadr tuple)
				 (or (caddr tuple) global-onums))))
       (is-repeatable (new prev)
		      (and (equal (cadr new) (cadr prev))
			   (or (null (car new)) (equal (car new) (car prev)))
			   (null (caddr new))))
       (next-onum (prev-onum incr early)
		  (cond ((listp prev-onum)  ;; use max of prev list
			 (if early
			     (+ incr (apply #'max 0 prev-onum))
			   (append prev-onum
				   (list (+ incr (apply #'max 0 prev-onum))))))
			((numberp prev-onum)
			 (if early
			     (+ incr prev-onum)
			   (list prev-onum (+ incr prev-onum))))
			(t (list prev-onum 1))))     ;; unknown onum type; use default

       (expand-repeated (patterns previous incr &optional (early-prev nil))
			(let* ((patt (car patterns))
			       (prev (or (car early-prev) (caar previous)))
			       (prev-onum (caddr prev))
			       (next-fnum (or (car patt) (car prev))))
			  (cond ((caddr patt)    ;; explicit next onum value -> use it
				 (let ((tuple (list next-fnum (cadr prev) (caddr patt))))
				   (expand-rec (cdr patterns) (cons (list tuple) previous))))
				((eq prev-onum '*)
				 ;; ignore repetition of '* case
				 (expand-rec (cdr patterns) previous))
				(t (let ((onum (next-onum prev-onum incr early-prev))
					 (new-previous (if early-prev previous (cdr previous))))
				     (expand-rec (cdr patterns)
						 (cons (list (list next-fnum (cadr prev) onum))
						       new-previous)))))))
       (expand-rec (patterns previous)
		   ;; save reversed list of lists (... ((fnum pattern occur)) ...) in
		   ;; accumulator 'previous'; used both for lookup and results
		   (cond ((not (consp patterns))     ;; done, return accumulated tuples
			  (mapcar #'car (reverse previous)))
			 ((not (consp previous))         ;; nothing to repeat
			  (expand-rec (cdr patterns) (list (add-defaults (car patterns)))))
			 ((and (symbolp (cadar patterns))
			       (match-regexp *syntax-match-repeat-symbol*
					     (string (cadar patterns)))
					;		   (excl:match-regexp *syntax-match-repeat-symbol*
					;				      (string (cadar patterns)))
			       (or (null (caar patterns))
				   (equal (caar patterns) (caaar previous))))
			  (expand-repeated patterns previous
					   (read-from-string
					    (subseq (string (cadar patterns)) 1))))
			 ((and (equal (cadar patterns) (cadaar previous))
			       (or (null (caar patterns))
				   (equal (caar patterns) (caaar previous))))
			  (expand-repeated patterns previous 1))
			 (t (let ((match (assoc (car patterns) previous
						:test #'is-repeatable)))
			      (if match
				  (expand-repeated patterns previous 1 match)
				(expand-rec (cdr patterns)
					    (cons (add-defaults (car patterns))
						  previous))))))))
    (expand-rec pattern-items nil)))

(defparameter *syntax-match-repeat-symbol* 
  (compile-regexp "^&(\\d+)$"))          ;; &ddd
;  (excl:compile-regexp "^&\\([0-9]+\\)$"))    ;; &ddd

;; Construct a pattern object by parsing the pattern string.
;; Allow a choice of which expression categories to accept (t = all).

(defun pattern-object (pattern &optional (which-expr t))
  (cond ((symbolp pattern) (cons nil pattern))
	((stringp pattern)
	 (let ((*standard-output* (make-string-output-stream))
	       (anchored nil)
	       (pattern-str pattern)
	       (patt-len-1 (- (length pattern) 1)))
	   (when (eql (elt pattern patt-len-1) #\$)
	     (setf anchored t
		   pattern-str (subseq pattern-str 0 (max 0 patt-len-1))))
	   (when (eql (elt pattern 0) #\^)
	     (setf anchored t
		   pattern-str (subseq pattern-str 1)))
	   (setf pattern-str
;		 (replace-substrings "_" "%"
		 (replace-substrings "??" "%"
				     (replace-syn-class-syms pattern-str)))
	   (when (eq which-expr t) (setf which-expr '(expr type-expr)))
	   (cons anchored
		 (cond ((and (memq 'expr which-expr)
			     (try-pvs-parse pattern-str 'expr))
			(pc-parse pattern-str 'expr))
		       ((and (memq 'type-expr which-expr)
			     (try-pvs-parse pattern-str 'type-expr))
			(pc-parse pattern-str 'type-expr))
		       (t nil)))))
        (t (cons nil nil))))

;; Substitute every occurrence of %{class} by ?_??_?class and
;; %var{class} by ?_?var?_?class.
;; Used to introduce a PVS name object as representation for a
;; syntax-class pattern variable.

(defparameter *embedded-syntax-class-pattern*
  ;; add non-greedy +? to match first } :
  (compile-regexp "%([a-zA-Z0-9?_!]*)\\{([a-zA-Z0-9?_!]+?)\\}"))
;  (excl:compile-regexp "%\\([a-zA-Z0-9?_!]*\\){\\([a-zA-Z0-9?_!]+\\)}"))

(defun replace-syn-class-syms (pattern)
  (do ((patt "") (rest pattern) (start t) (end t) (match '(t)))
      ((not (car match)) (format nil "~A~A" patt rest))
    (setf match (multiple-value-list
		 (match-regexp *embedded-syntax-class-pattern* rest
			       :return :index)))
;		 (excl:match-regexp *embedded-syntax-class-pattern* rest
;				    :return :index :shortest t)))
    (when (car match)
      (setf start (caadr match)  end (cdadr match))
      (setf patt (format nil "~A~A ?_?~A?_?~A " patt (subseq rest 0 start)
			 (subseq rest (caaddr match) (cdaddr match))  ;; var
;;;			 (string-downcase
			 ( #+cmu string-upcase #-cmu string-downcase
			  (subseq rest    ;; class
				  (caaddr (cdr match)) (cdaddr (cdr match)))))
	    rest (subseq rest end)))))

;;; Return a list of arguments from an application object.

(defun arg-expr-objects (application)
  (ignore-errors
    (let ((arg (argument application)))
      (cond ((typep arg 'arg-tuple-expr) (exprs arg))
	    ((listp arg) arg)
	    (t (list arg))))))


;;; ---------------- Target substitution functions ----------------

(defun subst-target (target var-subst instances fnums &optional read-str)
  (if (stringp target)
      (let ((str (subst-target-string target var-subst instances fnums)))
	(if read-str
	    (handler-case (read-from-string str)
	      (error (condition)
                (gen-manip-response 'match (format nil "Bad step: ~A~%" str))))
	    str))
      (subst-target-object target var-subst instances fnums)))

(defun subst-target-string (target var-subst instances fnums)
  (let ((instance-subs (loop for e in instances
			     for i from 1
			     collect (list (format nil "%~A" i) 
					   (princ-to-string 
					    (printable-expr-instance e))))))
    (subst-syntax-pattern-vars target (append var-subst instance-subs))))

(defun subst-syntax-pattern-vars (target-str var-subst)
  (let ((result target-str))
    (dolist (var-sub var-subst)
      (let* ((orig (cadr var-sub))
	     (value (if (stringp orig)
			orig
		        (princ-to-string (printable-expr-instance orig)))))
	(setf result (replace-substrings value (car var-sub) result))))
    result))

(defun subst-target-object (target var-subst instances fnums)
  (let*((build-instan-target-result (build-instan-target target var-subst))
	(result (build-instan-cmd build-instan-target-result
		    (loop for e in instances
			  for fnum in fnums
			  collect (make-ee-descriptor
				   :pvs-obj e :fnum fnum)))))
    result))

;; Start to build instantiated target by substituting for user-defined
;; pattern variables of the form %<var-name>.  Object tree is traversed
;; but only variable substitution in strings is performed.

;; M3: This fix prevents, in nested match applications, outer bindings to be used
;;  in the inner match.
(defun build-instan-target (target var-subst)
  (labels ((build-target (expr)
	     (cond ((stringp expr)
		    (subst-syntax-pattern-vars expr var-subst))
		   ((consp expr)
		    ;; M3: only proceed with the instantiation if the strategy
		    ;;     is not a match itself.
		    (if (or (eq (car expr) 'match) (eq (car expr) 'match$))
			expr
		      (mapcar #'build-target expr)))
		   (t expr))))
    (build-target target)))

;; Generalized function to walk over an s-expr tree and selectively
;; apply functions to leaf and subtree nodes.

(defun apply-to-selected-nodes (select-pred node-fn else-fn list-fn tree)
  (labels ((apply-tree (s-expr)
	     (cond ((funcall select-pred s-expr) (funcall node-fn s-expr))
		   ((consp s-expr)
		    (funcall list-fn (mapcar #'apply-tree s-expr)))
		   (t (funcall else-fn s-expr)))))
    (apply-tree tree)))


;;; Convert expr lists to comma separated text.

(defun printable-expr-instance (expr)
  (cond ((not (listp expr)) expr)
	((= (length expr) 1) (car expr))
	((null expr) "")
	(t (format nil "~A~{, ~A~}" (car expr) (cdr expr)))))


;;; ----------------

(let ((clashes (remove-if-not #'rule-or-strategy
			      (mapcar #'car *pvs-syntax-table*))))
  (when clashes
    (format t "~%WARNING: The syntax symbols ~A clash with existing PVS rules or~%strategies.  Use of these symbols with the 'match' strategy might~%produce unexpected results.~%"
	   clashes)))



;;; ---------- Support for syntax pattern derivation from Emacs ----------

;; Following functions support the Emacs-based feature of deriving a
;; suitable extended expression given a highlighted string of PVS text
;; from the prover buffer.

(defvar *max-gen-pattern-depth*    6)    ;; 5
(defvar *max-gen-pattern-try*     12)
(defvar *min-pattern-specificity*  3)    ;; 4


;; Following two functions provide an interface to Emacs side.
;; These functions are called using pvs-send* and invoke actions in
;; Emacs by calling accept-find-any-status using pvs-emacs-eval.
;; Return pattern type as one of (plain ee-form no-match bad-syntax).

(defun find-any-subexpr-plus (expr-plus left-index scan-left endpt fnum
			      &optional ee-form anchored)
  (let* ((parsed (find-user-expr expr-plus scan-left endpt)))
    (if parsed
	(let* ((plus-beg (car parsed))
	       (plus-end (min (cadr parsed) (length expr-plus)))
	       (expr (subseq expr-plus plus-beg plus-end))
	       (endpts (mapcar #'(lambda (n) (+ n left-index)) parsed))
	       (pattern (find-any-subexpr (list expr) (list fnum)
					  ee-form anchored)))
	  (cond ((stringp pattern)
		 (return-find-any-results 'plain pattern endpts))
		((consp pattern)
		 (dolist (patt (cdr pattern))
		   (return-find-any-results 'ee-form patt endpts)))
		(t (pvs-emacs-eval
		    (format-with-downcased-symbols
		     "~A" `(accept-find-any-status ',pattern))))))
        (pvs-emacs-eval "(accept-find-any-status 'bad-syntax)"))))

(defun find-any-subexpr-fmla (fnums)
  (let* ((ext-expr (find-any-subexpr nil fnums t t)))
    ;; assume ext-expr of form (~ patt1 ...)
    (if (consp ext-expr)
	(dolist (patt (cdr ext-expr))
	  (return-find-any-results 'ee-form patt nil))
        (pvs-emacs-eval
	 (format-with-downcased-symbols
	  "~A" `(accept-find-any-status ',ext-expr))))))

;; Return results to Emacs through this function.  To avoid possible
;; mishandling, break up long result strings into short segments.

(defvar *return-find-seg-len* 40)

(defun return-find-any-results (ptype pattern endpoints)
  (when endpoints
    (pvs-emacs-eval
     (format-with-downcased-symbols
      "~A" `(highlight-text-region 0 ,@endpoints))))
  (let* ((results (format nil "~A" pattern))
	 (len (length results)))
    (loop for index from 0 below len by *return-find-seg-len*
          do (pvs-emacs-eval
	      (format-with-downcased-symbols "~S"
		      `(accept-find-any
			,(subseq results index 
				 (min len
				      (+ index *return-find-seg-len*))))))))
  ;; emit pattern type to end string sequence
  (pvs-emacs-eval (format-with-downcased-symbols
		   "~S" `(accept-find-any ',ptype))))


;; Find matching subexpressions for EXPRS in any formula included in FNUMS.
;; EXPRS is assumed to be a list of strings and FNUMS is a list of numbers.
;; If EE-FORM holds, return a pattern wrapped in an EE S-expr.
;; Otherwise, return only a pattern string.
;; If ANCHORED holds, patterns should match entire formulas only.
;; If no match is found, return original expression as pattern.

(defun find-any-subexpr (exprs fnums &optional ee-form anchored)
  (handler-case
      (let* ((expr-strings
	      (or exprs
		  (mapcar #'princ-to-string 
			  (loop for n in fnums
			        if (manip-get-formula n) collect it))))
	     (patt-strings
	      (loop for e in expr-strings
		    for s = (string-trim '(#\space) e)
		    collect (if anchored (format nil "^~A$" s) s)))
	     (patterns (loop for patt-str in patt-strings
			     collect (or (find-subexpr-pattern
					  patt-str anchored '(expr))
					 (find-subexpr-pattern
					  patt-str anchored '(type-expr))
					 'no-match))))
	(when (memq 'no-match patterns)
	  (return-from find-any-subexpr 'no-match))
	;; currently expect only one non-ee pattern
	(if ee-form `(~ ,@patterns) (car patterns)))
    (error (condition) 
	   (show condition)
	   nil)))


;; Find a syntax matching pattern that evaluates to EXPR.
;; Remove outer whitespace and parentheses.  Map internal whitespace
;; into single blanks.  Generate increasingly specialized candidate
;; patterns and try them until a match occurs.
;; Return the matching pattern or nil if none exists.

(defun find-subexpr-pattern (expr anchored which-expr)
  (let* ((expr-obj (car (match-syntax-single which-expr expr)))
	 (expr-str (princ-to-string expr-obj))
	 (specs (sorted-specializers
		 (gen-expr-specializers expr-obj *max-gen-pattern-depth*))))
    (when (and expr-obj (null specs))
      (return-from find-subexpr-pattern expr-str))
    (loop for patt in specs
	  for patt-str = (if anchored (format nil "^~A$" patt) patt)
	  for matched-expr = (car (match-syntax-single which-expr patt-str))
	  if (and matched-expr
;		  (tc-eq matched-expr expr-obj))
		  (string-equal (princ-to-string matched-expr) expr-str))
	    return patt-str)))

(defun match-syntax-single (which-expr &rest spec-items)
  (let* ((match-items (parse-match-items spec-items))
	 ;; returns a structure of type match-items
	 (error-msg (match-items-error-msg match-items)))
    (if error-msg
	nil
        (let* ((fnum-patterns (normalize-patterns match-items))
	       (vars-instances-fnums
		(match-instances fnum-patterns which-expr)))
	  (cadr vars-instances-fnums)))))  ;; return instances only


;;; ------------ Pattern generation functions ------------ 

;;; Descend into expression tree and create a list of plausible patterns
;;; for matching expr.  Derive a list of patterns of increasing specificity
;;; by specifying one argument at a time and one depth lower at a time.
;;; Depth argument limits how deeply the expression tree is traversed.
;;; Return a list of triples (<pattern string> <specificity> <infix safe>),
;;; where the specificity number estimates how many concrete subexpressions
;;; appear in the pattern, and infix-safe indicates that parentheses are
;;; not needed when combined to form an infix expression.

(defun gen-expr-specializers (expr depth)
  (let ((entry (assoc-if #'(lambda (e) (typep expr e))
			 *pvs-syntax-class-specializers*)))
    ;; First two patterns are generic pattern variable and
    ;; type-restricted pattern variable.
    (append (cons (list "%" 0 t)
		  (let ((class-name (cadr entry)))
		    (and class-name (caddr entry)  ;; use-class-flag
			 (list (list (format nil "%{~A}" class-name) 1 t)))))
	    (and (plusp depth)
		 (let ((specializer-fn (cadddr entry)))
		   (if specializer-fn
		       (funcall specializer-fn expr depth)
		       (list (list (princ-to-string expr) 1 nil))))))))

(defun sorted-specializers (spec-list)
  (let* ((sorted-list
	  (remove-if #'(lambda (e) (< (cadr e) *min-pattern-specificity*))
		     spec-list))
	 (dummy (sort sorted-list #'< :key #'cadr))
	 (final-list (subseq sorted-list 0 (min (length sorted-list)
						*max-gen-pattern-try*))))
    (values (mapcar #'car final-list) final-list)))

(defun product-cartesian (list-lists)
  (cond ((not (consp list-lists)) nil)
	((null (cdr list-lists)) (mapcar #'list (car list-lists)))
	(t (let ((prod  (product-cartesian (cdr list-lists))))
	     (loop for e in (car list-lists)
	           append (mapcar #'(lambda (p) (cons e p)) prod))))))


;;; A specializer function takes an expression E and returns a list of
;;; patterns and specificity values for matching partially specialized
;;; forms of E.  Relevant subelements of E will be specialized one
;;; element at a time.  Some subelements for certain syntax classes
;;; will always be '%' to limit combinatorial growth.

;;; For concrete expressions (names, numbers, etc):

(defun terminal-specializer (weight)
  (lambda (expr depth)
    (list (list (princ-to-string expr) weight t))))

;;; For binding declarations (v: <type expr>).

(defun bind-decl-specializers (var-weight)
  (lambda (expr depth)
    (let ((var (id expr))
	  (decl-type (declared-type expr))
	  (d-1 (- depth 1)))
      (if decl-type
	  (loop for s in (gen-expr-specializers decl-type d-1)
	        collect (list (format nil "~A: ~A" var (car s))
			      (+ var-weight (cadr s))
			      (caddr s)))
	  (list (list (princ-to-string var) var-weight t))))))

;;; For function applications, recursively apply pattern specialization
;;; to the arguments as well as the function object.  The specificity is
;;; one plus the sum of those of the arguments and the function.
;;; Notation arg: 0 - prefix, 1 - unary, 2 - infix

(defun applic-expr-specializers (notation)
  (labels (
       (paren-wrap (term)
	   (if (caddr term)  ;; infix-safe
	       (car term)
	       (format nil "(~A)" (car term))))
       (make-applic (arg-list)
	   (case notation
	     ((1) (format nil "~A~A" (caar arg-list)
			  (paren-wrap (cadr arg-list))))
	     ((2) (format nil "~A ~A ~A" (paren-wrap (cadr arg-list))
			  (caar arg-list) (paren-wrap (caddr arg-list))))
	     ((0) (format nil "~A(~A)" (caar arg-list)
		     (cond ((null (cdr arg-list)) "")
			   ((null (cddr arg-list))
			    (princ-to-string (caadr arg-list)))
			   (t (format nil "~A~{, ~A~}"
				      (caadr arg-list)
				      (mapcar #'car (cddr arg-list))))))))))
   (lambda (expr depth)
    (let* ((d-1 (- depth 1))
	   (list-args
	    ;; discard first "%" to avoid "%(...)" cases
	    (cons (cdr (gen-expr-specializers (operator expr) d-1))
		  (loop for a in (arg-expr-objects expr)
		        collect (gen-expr-specializers a d-1))))
	   (a-lists (product-cartesian list-args))
	   ;; change f(%,...,%) to f(%%), assumed to be first item
	   (arg-lists (if (and (zerop notation) (> (length (cdar a-lists)) 1))
			  (cons `(,(caar a-lists) ("%%" 0 t)) (cdr a-lists))
			  a-lists))
	   ;; use the arg lists to construct applications in text form
	   (applics
	    (loop for arg-specs in arg-lists
		  collect (list (make-applic arg-specs)
				(1+ (reduce #'+ (mapcar #'cadr arg-specs)))
				(zerop notation)))))
      (loop for s in applics
	    if (stringp (car s)) collect s
	    else collect (cons (princ-to-string s) (cdr s)))))))

;; Generate specializers for common objects with a single subexpression.
;; expr-fn is applied to extract the subexpression.  The template function
;; is applied to each subexpr to yield the final expr pattern string.
;; It takes two additional arguments: a value for infix-safe and the parent
;; expr object.

(defun expr-obj-specializers (expr-fn template weight &optional infix-safe)
  (lambda (expr depth)
    (loop for spec in (gen-expr-specializers (funcall expr-fn expr)
					     (- depth 1))
          collect (list (funcall template (car spec) (caddr spec) expr)
			(+ weight (cadr spec))
			infix-safe))))

;; Generate specializers for common objects with multiple subexpressions.
;; exprs-fn is applied to extract a subexpression list.  The template
;; function is applied to the subexpr list to yield a final string.
;; Weight is added to the sum of the specificities of subexpressions.
;; If the list-var option is requested, the pattern "%%" is prepended.

(defun expr-list-specializers (exprs-fn template weight
			       &optional infix-safe list-var)
  (lambda (expr depth)
    (let* ((template-str
	    (if (stringp template) template (funcall template expr)))
	   (list-args (loop for e in (funcall exprs-fn expr)
		            collect (gen-expr-specializers e (- depth 1))))
	   (arg-lists (product-cartesian list-args))
	   (expr-specs
	    (loop for arg-specs in arg-lists
		  collect (list (mapcar #'car arg-specs)
				(reduce #'+ (mapcar #'cadr arg-specs)))))
	   (ext-expr-specs
	    (if (and list-var (> (length list-args) 1))
		(cons '(("%%") 0) expr-specs)
	        expr-specs)))
      (loop for arg-spec in ext-expr-specs
	    collect (list (apply #'format nil template-str (car arg-spec))
			  (+ weight (cadr arg-spec))
			  infix-safe)))))

;; Generate specializers for common objects having syntax similar to
;; function application.  A "head" object is "applied" to an arg list
;; of subexpressions.  head-fn is applied to extract the head object and
;; exprs-fn is applied to extract a subexpression list.  The format-fn
;; is applied to each generated head, args pair to yield a final string.
;; It is also passed the parent object.
;; Weight is added to the sum of the arg specificities.
;; If the head-var option is requested, the pattern "%" is prepended
;; to the list of candidate head patterns.
;; If the list-var option is requested, the pattern "%%" is prepended
;; to the list of candidate arg lists.

(defun applic-style-specializers (head-fn exprs-fn format-fn weight
				  &optional infix-safe head-var list-var)
  (lambda (expr depth)
    (let* ((d-1 (- depth 1))
	   (head (funcall head-fn expr))
	   (args (funcall exprs-fn expr))
	   (head-list (if head-var
			  (gen-expr-specializers head d-1)
			  ;; discard first "%" to avoid "%(...)" cases;
			  (cdr (gen-expr-specializers head d-1))))
	   (ext-arg-specs
	    (and list-var (> (length args) 1)
		(product-cartesian (list head-list '(("%%" 0 nil))))))
	   (specs-exprs (loop for a in args
		              collect (gen-expr-specializers a d-1)))
	   (arg-lists (product-cartesian (cons head-list specs-exprs)))
	   (expr-specs
	    (loop for arg-specs in (append ext-arg-specs arg-lists)
		  collect (list (mapcar #'car arg-specs)
				(reduce #'+ (mapcar #'cadr arg-specs))))))
      (loop for arg-spec in expr-specs
	    collect (list (funcall format-fn 
				   (caar arg-spec) (cdar arg-spec) expr)
			  (+ weight (cadr arg-spec))
			  infix-safe)))))

;; Binding expressions are handled in a uniform way with bindings serving
;; as "arguments".

(defun binding-expr-specializers (keyword weight)
  (applic-style-specializers 
   #'expression #'bindings
   #'(lambda (expr decls parent)
       (format nil "(~A ~{(~A)~@{, (~A)~}~}: ~A)" keyword decls expr))
   weight nil t t))

;; Both name-exprs and type-names can have optional arguments.

(defun name-type-specializers (weight)
  (applic-style-specializers 
    ; consider including library and mod-id slots
    #'id  #'(lambda (e) (mapcar #'expr (actuals e)))
    #'(lambda (name args expr)
	(let ((lib-prefix
	       (if (library expr) (format nil "~A@" (library expr)) ""))
	      (args-list (if args (format nil "[~{~A~@{, ~A~}~}]" args) "")))
	  (if (mod-id expr)
	      (format nil "~A~A~A.~A" lib-prefix (mod-id expr) args-list name)
	      (format nil "~A~A~A" lib-prefix name args-list))))
    weight t nil t))


;; Descend IF expression tree to extract subexpressions.  To reduce
;; combinatorial complexity, conditions are not expanded.

(defun if-subexpr-specializers (expr depth)
  ;; Return (<template string> <specializer lists>)
  (if (typep expr 'if-expr)
      (let* ((expr-list (exprs (argument expr)))
	     (then-specs (gen-expr-specializers (cadr expr-list) (- depth 1)))
	     (rest-expr (caddr expr-list))
	     (rest-if-specs (if-subexpr-specializers rest-expr depth)))
	(list (format nil " ELSIF % THEN ~~A~A" (car rest-if-specs))
	      (cons then-specs (cadr rest-if-specs))))
      (list " ELSE ~A ENDIF"
	    (list (gen-expr-specializers expr (- depth 1))))))

(defun if-expr-specializers (expr depth)
  (let* ((expr-list (exprs (argument expr)))
	 (then-specs (gen-expr-specializers (cadr expr-list) (- depth 1)))
	 (rest-expr (caddr expr-list))
	 (rest-if (if (typep expr 'mixfix-branch)
		      (if-subexpr-specializers rest-expr (- depth 1))
		      (list " ENDIF" nil)))
	 (template (format nil "IF % THEN ~~A~A" (car rest-if)))
	 (arg-lists (product-cartesian (cons then-specs (cadr rest-if))))
	 (expr-specs
	    (loop for arg-specs in arg-lists
		  collect (list (mapcar #'car arg-specs)
				(reduce #'+ (mapcar #'cadr arg-specs))))))
    (loop for arg-spec in expr-specs
          collect (list (apply #'format nil template (car arg-spec))
			(+ 2 (cadr arg-spec)) t))))

;; Descend COND expression tree to extract subexpressions.  To reduce
;; combinatorial complexity, conditions are not expanded.

(defun cond-subexpr-specializers (expr depth)
  ;; Return (<template string> <specializer lists>)
  (if (typep expr 'mixfix-branch)
      (let* ((expr-list (exprs (argument expr)))
	     (then-specs (gen-expr-specializers (cadr expr-list) (- depth 1)))
	     (rest-expr (caddr expr-list)))
	(if (typep expr 'last-cond-expr)
	    (if (string-equal (subseq (princ-to-string expr) 5 9) "ELSE")
		(list ", ELSE -> ~A ENDCOND" (list then-specs))
	        (list ", % -> ~A ENDCOND" (list then-specs)))
	    (let ((rest-cond-specs
		   (cond-subexpr-specializers rest-expr depth)))
	      (list (format nil ", % -> ~~A~A" (car rest-cond-specs))
		    (cons then-specs (cadr rest-cond-specs))))))
      (list ", ELSE -> ~A ENDCOND" 
	    (list (gen-expr-specializers expr (- depth 1))))))

(defun cond-expr-specializers-orig (expr depth)
  (let* ((expr-list (exprs (argument expr)))
	 (then-specs (gen-expr-specializers (cadr expr-list) (- depth 1)))
	 (rest-expr (caddr expr-list))
	 (rest-cond (if (typep expr 'single-cond-expr)
			(list " ENDCOND" nil)
		        (cond-subexpr-specializers rest-expr (- depth 1))))
	 (template (format nil "COND % -> ~~A~A" (car rest-cond)))
	 (arg-lists (product-cartesian (cons then-specs (cadr rest-cond))))
	 (expr-specs
	    (loop for arg-specs in arg-lists
		  collect (list (mapcar #'car arg-specs)
				(reduce #'+ (mapcar #'cadr arg-specs))))))
      (loop for arg-spec in expr-specs
	    collect (list (apply #'format nil template (car arg-spec))
			  (+ 2 (cadr arg-spec)) t))))

;; COND has several variants and implicit ELSE conditions that make it
;; difficult to work with.  Currently we provide only a generic pattern
;; for COND expressions.

(defun cond-expr-specializers (expr depth)
  (list (list "%{cond}" 3 t)))

;; Descend LET/WHERE expression tree to extract variable bindings.
;; To reduce combinatorial complexity, bound subexpressions are
;; not expanded.  Argument expr-type should be let-expr or where-expr.
;; Given a list of bindings and the IN expression, let-where-fn generates
;; the LET/WHERE pattern.

(defun let-expr-specializers (expr-type let-where-fn)
  (labels ((let-expr-spec (e)
	     ;; return (binding-1 ... binding-n expression)
	     (if (typep e expr-type)
		 (let ((op (operator e)))
		   (cons (bindings op) (let-expr-spec (expression op))))
	         (list e)))
	   (let-where-expr (bind-list spec)
	     (funcall let-where-fn 
		      (loop for bindings in bind-list
			    collect (if (endp (cdr bindings))
					(car bindings)
				        (apply #'format nil "(~A~@{, ~A~})"
					       bindings)))
		      (if (caddr spec)      ;; infix-safe
			  (car spec)
			  (format nil "(~A)" (car spec))))))
    (lambda (expr depth)
      (let* ((expression-bindings (reverse (let-expr-spec expr)))
	     (expr-specs (gen-expr-specializers (car expression-bindings)
						(- depth 2))))
	(loop for rev-bindings on (cdr expression-bindings)
	      for bind-list = (reverse rev-bindings)
	      for in-expr-specs = expr-specs then (list (car expr-specs))
	      append (loop for spec in in-expr-specs
		           collect (list (let-where-expr bind-list spec)
					 (+ (reduce #'+ (mapcar #'length
								bind-list))
					    (cadr spec) 1)
					 nil)))))))

;; Extract assignments from a function update expression and formulate
;; a pattern.  To reduce combinatorial complexity, assigned expressions
;; are not expanded, and argument lists are included fully specialized.

(defun update-expr-specializers (expr depth)
  (let* ((fn-specs (gen-expr-specializers (expression expr) (- depth 1)))
	 (assignments
	  (mapcar #'(lambda (a)
		      (apply #'format nil "~A~@{~A~} := %" (arguments a)))
		  (assignments expr)))
	 (template (apply #'format nil "~~A WITH [~A~@{, ~A~}]" assignments))
	 (update-weight (1+ (length assignments))))
      (loop for fn-spec in fn-specs
	    collect (list (format nil template (car fn-spec))
			  (+ update-weight (cadr fn-spec)) nil))))

;; Extract selections from a CASES expression and formulate a pattern.
;; To reduce combinatorial complexity, selection expressions are not
;; expanded.  Neither are constructor arguments; only the constructors
;; themselves are specialized.

(defun cases-expr-specializers (expr depth)
  (let* ((sel-specs (gen-expr-specializers (expression expr) (- depth 1)))
	 (cases (mapcar #'(lambda (s)
			    (format nil (if (args s) "~A(%%): %" "~A: %")
				    (constructor s)))
			(selections expr)))
	 (selections (apply #'format nil "~A~@{, ~A~}" cases))
	 (else-part (if (else-part expr) " ELSE %" ""))
	 (template (format nil "CASES ~~A OF ~A~A ENDCASES"
			   selections else-part))
	 (cases-weight (1+ (length cases))))
      (loop for sel-spec in sel-specs
	    collect (list (format nil template (car sel-spec))
			  (+ cases-weight (cadr sel-spec)) t))))

;; Take a PVS list expression tree and flatten it to a linear Lisp list.

(defun flatten-list-expr (expr)
  (handler-case
      (if (typep expr 'null-expr)
	  nil
	  (cons (args1 expr) (flatten-list-expr (args2 expr))))
    (error (condition) nil)))


(defparameter *pvs-syntax-specializers*
  ;; Each entry has the form:
  ;;   (short-name class-name class-var-flag specializer-fn)
  ;; class-var-flag indicates whether to allow the form %{class}.
  ;; Note: subclasses precede their superclasses in this list, except for
  ;; cases where the relationship is not syntactically important.
  `(
    (bind_decl  bind-decl  nil
                ,(bind-decl-specializers 1))
    (name_    name-expr  nil  ;,(terminal-specializer 1))
	      ,(name-type-specializers 0))
    (number   number-expr  nil  ,(terminal-specializer 2))
    (infix    infix-application  nil  ;; (operator argument)
	      ,(applic-expr-specializers 2))
    (unary    unary-application  nil  ;; (operator argument)
	      ,(applic-expr-specializers 1))

    (cond     first-cond-expr  t  ;; (operator argument)
	      ,#'cond-expr-specializers)
    (if_      if-expr  t     ;; (operator argument)
	      ,#'if-expr-specializers)
    (list     list-expr  t  ;; (operator argument)
	      ,(expr-list-specializers 
		#'flatten-list-expr "(: ~A~@{, ~A~} :)" 1 t t))
    (coerce   coercion  nil   ;; (argument operator)
	      ,(expr-obj-specializers
		#'argument
		#'(lambda (e is expr)
		    (format nil (if is "~A :: %" "(~A) :: %") e))
		1 nil))
    (where    where-expr  t  ;; (operator argument)
              ,(let-expr-specializers 'where-expr
		#'(lambda (bindings in-expr)
		    (format nil "~A~A" in-expr
			    (apply #'format nil
				   " WHERE ~A = %~@{, ~A = %~}" bindings)))))
    (let_     let-expr  t   ;; (operator argument)
              ,(let-expr-specializers 'let-expr
		#'(lambda (bindings in-expr)
		    (format nil "~A~A"
			    (apply #'format nil
				   "LET ~A = %~@{, ~A = %~} IN " bindings)
			    in-expr))))

    (applic   application  nil  ;; (operator argument)
	      ,(applic-expr-specializers 0))
    (set      set-expr  nil    ;; (bindings expression)
	      ,(applic-style-specializers 
		#'expression #'bindings
		#'(lambda (e b x) (format nil "{~{~A~@{, ~A~}~} | ~A}" b e))
		1 t t t))
    (lambda   lambda-expr  t  ;; (bindings expression)
	      ,(binding-expr-specializers "LAMBDA" 1))
    (forall   forall-expr  t  ;; (bindings expression)
	      ,(binding-expr-specializers "FORALL" 1))
    (exists   exists-expr  t  ;; (bindings expression)
	      ,(binding-expr-specializers "EXISTS" 1))

    (proj     projappl  nil    ;; (index argument)
	      ,(expr-obj-specializers
		#'argument
		#'(lambda (e is expr)
		    (format nil (if is "~A`~A" "(~A)`~A") e (index expr)))
		1 nil))
    (field_   fieldappl  nil  ;; (id argument)
	      ,(expr-obj-specializers
		#'argument
		#'(lambda (e is expr)
		    (format nil (if is "~A`~A" "(~A)`~A") e (id expr)))
		1 nil))
    (tuple    tuple-expr  nil  ;; (exprs)
	      ,(expr-list-specializers #'exprs "(~A~@{, ~A~})" 1 t)) ;; 1 t t
    (record_  record-expr  nil ;; (assignments)
	      ,(expr-list-specializers
		#'(lambda (e) (mapcar #'expression (assignments e)))
		"(# % := ~A~@{, % := ~A~} #)" 1 t t))
    (null     null-expr  nil  ,(terminal-specializer 2))

;    (assign   assignment   ;; (arguments expression)
    (update   update-expr  t  ;; (expression assignments)
	      ,#'update-expr-specializers)
;    (select   selection    ;; (constructor args expression)

    (cases    cases-expr  t  ;; (expression selections else-part)
	      ,#'cases-expr-specializers)
    (bracket  bracket-expr  nil  ;; (operator argument)
	      ,(expr-list-specializers
		#'arg-expr-objects "[| ~A~@{, ~A~} |]" 1 t t))
    (paren_vbar  bracket-expr  nil ;; (operator argument)
	      ,(expr-list-specializers
		#'arg-expr-objects "(| ~A~@{, ~A~} |)" 1 t t))
    (brace_vbar  bracket-expr  nil  ;; (operator argument)
	      ,(expr-list-specializers
		#'arg-expr-objects "{| ~A~@{, ~A~} |}" 1 t t))
    (string   string-expr  nil  ,(terminal-specializer 2))
    
    ;; Type expressions:
    (type_name  type-name  nil  ;,(terminal-specializer 1))
	      ,(name-type-specializers 0))
    (expr_as_type expr-as-type  nil  ;; (expr)
	      ,(expr-obj-specializers
		#'expr
		#'(lambda (e is xpr) (format nil "(~A)" e))
		1 t))
    (subtype  subtype  nil    ;; ((bindings expression) of predicate)
	      ,(applic-style-specializers 
		#'(lambda (e) (expression (predicate e)))
		#'(lambda (e) (bindings (predicate e)))
		#'(lambda (e b x) (format nil "{~{~A~@{, ~A~}~} | ~A}" b e))
		1 t t t))

    (type_applic type-application  nil  ;; (type parameters)
	      ,(applic-style-specializers 
		#'type  #'parameters
		#'(lambda (type params expr)
		    (format nil "~A(~{~A~@{, ~A~}~})" type params))
		1 t nil t))
    (funtype  funtype  nil    ;; (domain range)
	      ,(applic-style-specializers 
		#'range  #'(lambda (e) (types (domain e)))
		#'(lambda (r d x) (format nil "[~{~A~@{, ~A~}~} -> ~A]" d r))
		1 t t t))
    (tupletype tupletype  nil  ;; (types)
	      ,(expr-list-specializers #'types "[~A~@{, ~A~}]" 1 t t))
    (field_decl field-decl  nil  ;; (id declared-type)
	      ,(expr-obj-specializers
		#'declared-type
		#'(lambda (e is expr) (format nil "~A: ~A" (id expr) e))
		1 t))
    (recordtype recordtype  nil  ;; (fields)
	      ,(expr-list-specializers #'fields "[# ~A~@{, ~A~} #]" 1 t t))
    ))

(defparameter *pvs-syntax-class-specializers*
  ;; each entry has the form: (class name specializer-fn)
  (mapcar #'(lambda (entry)
	      (cons (find-class (cadr entry))
		    (cons (car entry) (cddr entry))))
	  *pvs-syntax-specializers*))


;;; ----------- Support for extended expression generation -----------

(defparameter *right-delim-chars* '( #\) #\] #\} ))
(defparameter *find-expr-right-delims*  ;; ],),} and whitespace
;  (excl:compile-regexp "[])} 	
  (compile-regexp "[])} 	
]*[])}]"))  ;; last few chars in [...] of line above: blank, tab, newline;
            ;; preserve these whitespace chars when editing

;; Find a syntactically valid expression by adjusting endpoints
;; until selected substring parses.

(defun find-user-expr (expr-plus scan-left endpt)
  ;; temporarily suppress output stream to ignore syntax error messages
  (let ((*standard-output* (make-string-output-stream)))
    (loop with p = 0  ;; could be adjustable later
          for q in (handler-case
		       (candidate-expr-endpts expr-plus scan-left endpt)
		     (error (condition) 
			    (show condition)
			    nil))
	  for min-q = (min q (length expr-plus))
	  for cand = (subseq expr-plus 0 min-q)
	  when (or (try-pvs-parse cand 'expr) (try-pvs-parse cand 'type-expr))
	    return (list p min-q)
	  finally (return nil))))


;; Determine which endpoint indexes to use for attempted parses.
;; Return a list of index values q; will be used to parse (subseq expr 0 q).

(defun candidate-expr-endpts (expr-plus scan-left trial-len)
  (flet ((consec2 (m n) (loop for i from m below n collect i)))
    (let ((prev (char expr-plus (- trial-len 1)))
	  (next (char expr-plus trial-len)))
      (cond ((or (member prev *right-delim-chars*)
		 (member next *right-delim-chars*))
	     (let* ((raw-right (cdadr (multiple-value-list
;				       (excl:match-regexp
				       (match-regexp
					*find-expr-right-delims*
					(subseq expr-plus trial-len)
					:return :index))))
		    (right (and raw-right (+ raw-right trial-len))))
	       (if (member prev *right-delim-chars*)
		   (consec2 scan-left (1+ (or right trial-len)))
		   (consec2 trial-len (1+ right)))))
	    ((identifier-char-p prev)
	     (list (+ trial-len
		      (position-if-not #'identifier-char-p
				       (subseq expr-plus trial-len)))))
	    ((identifier-char-p next)
	     (list (- trial-len 1)
		   (+ trial-len
		      (position-if-not #'identifier-char-p
				       (subseq expr-plus trial-len)))))
	    (t (reverse (consec2 (- trial-len 2) (1+ trial-len))))))))

(defun identifier-char-p (char)
  (or (alphanumericp char) (member char '(#\! #\_ #\?))))

;; To see if a string is parseable, use built-in function parse-expr.
;; It's easier to recover from a syntax error than pc-parse.

(defun try-pvs-parse (candidate syntax-type)
  (let ((*standard-output* (make-string-output-stream))
	(expr-str (case syntax-type
		    (expr candidate)
		    ; use PVS coercion expr to simulate parsing a type-expr
		    (type-expr (format nil "v :: ~A" candidate))
		    (t ""))))
    (not (cadr (multiple-value-list (parse-expr expr-str))))))


;;;;;;;;;;;;; ------ NEW ---------


;;; ------ Utility functions to convert fnum args to patterns ------

;; Interactive function to "upgrade" the steps of a proof file.
;; For each proof step S, the signature of its proof rule is retrieved.
;; If the signature contains any formal arguments having
;; the name 'fnum' or 'fnums', step S will be replaced by
;; (upgrade N arg-mask S), where N is a step number and arg-mask is
;; a list of the same length as S's arg list.  An element of arg-mask
;; is t for formal arg fnum, * for fnums, and nil otherwise.
;; The altered proof file is written out and installed.
;; 
;; Next, the proofs are rerun.  Each instance of the (upgrade ...)
;; strategy causes formula patterns of the form (~ "^...$" -- was N)
;; to be generated for its fnum args.  These patterns are collected and 
;; saved for the given proof and step number.
;;
;; After all patterns are generated, this data is used to revise the
;; proof file again.  Each step that had been replaced by (upgrade ... S)
;; is now replaced by S', where S' is S with the formula number patterns
;; substituted for the explicit fnum arguments.  The revised proof file
;; is written and installed once again.  Then a second proof pass is
;; performed using the final upgraded proof steps.

(defvar *proof-upgrade-pass* 1)

(defvar *upgraded-proof-step-num* 1)

(defvar *upgraded-step-list* nil)

(defun upgrade-proof-file (prf-file &optional (pass 1))
  (setf *proof-upgrade-pass* pass)
  (let ((current-proofs nil))
    (with-open-file (prf prf-file :direction :input)
      (setf current-proofs 
	    (do ((p (read prf nil) (read prf nil)) (result '()))
		((not p) (reverse result))
	      (push p result))))
    (let ((new-proofs (mapcar #'upgraded-theory-proofs current-proofs)))
      (with-open-file (prf prf-file :direction :output :if-exists :supersede)
	(loop for theory in new-proofs
	      do (prin1 theory prf)
	      do (terpri prf))
	(terpri prf))))
  nil)   ;; make sure Emacs gets nothing to complain about

(defun upgraded-theory-proofs (thy-proofs)
  (cons (car thy-proofs)
	(mapcar #'upgraded-formula-proof-set (cdr thy-proofs))))

(defun upgraded-formula-proof-set (fmla-proofs)
  (let* ((fmla-items (list (car fmla-proofs) (cadr fmla-proofs)))
	 (latest-proof (caddr fmla-proofs))
	 (other-proofs (cdddr fmla-proofs))
	 (upgraded-proof (upgraded-formula-proof latest-proof)))
    (append fmla-items (list upgraded-proof) other-proofs)))

; proof instance: (name descrip a b proof-tree c d e f g h)
(defun upgraded-formula-proof (prf)
  (labels ((mark-proof-steps (proof)
	     (cond ((and (consp proof) (eq (car proof) 'upgrade))
		    (if (eql *proof-upgrade-pass* 2)
			(cadr (assoc (cadr proof) *upgraded-step-list*))
			proof))
		   ((consp proof)
		    (if (and (symbolp (car proof)) (car proof))
			(let* (;(name (car proof))
;			       (symb (symbol-name (car proof)))
			       (sig  (rule-or-strategy-sig (car proof)))
			       ;;; add other cases
			       (mask (mapcar #'(lambda (e)
						 (car (memq e '(fnum fnums))))
					     sig))
			       )
			  (if (every #'null mask)
			      proof
			      (progn (incf *upgraded-proof-step-num*)
				     (list 'upgrade *upgraded-proof-step-num*
					   mask proof))))
		        (mapcar #'mark-proof-steps proof)))
		   (t proof))))
    (let* ((cur-steps (extract-steps-from-prf prf))
	   (new-steps (mark-proof-steps cur-steps)))
      (replace-steps-in-prf new-steps prf))))


(defhelper upgrade (step-num mask step)
  (let ((args (cdr step))
	(new-step
	 (cond ((null args) step)
	       ((and (numberp (car args)) (car mask))
		`(invoke (,(car step) $1n ,@(cdr args))
			 (,@(find-any-subexpr nil (list (car args)) t t)
			  -- was ,(car args))))
	       (t step)))
	(dummy (push (list step-num new-step) *upgraded-step-list*)))
    new-step)
  "Convert formula number arguments to patterns."
  "~%Converting formula number arguments to patterns")

(defun upgrade-file-proofs (name)
  (let* ((prf-file (format nil "~A.prf" name)))
    (setf *upgraded-proof-step-num* 1)
    (upgrade-proof-file prf-file)
    (install-pvs-proof-file name)
    (setf *upgraded-step-list* nil)
    (prove-pvs-file name t)
    (upgrade-proof-file prf-file 2)
    (install-pvs-proof-file name)))
