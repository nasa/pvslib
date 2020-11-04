;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; -*- Mode: Lisp -*- ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; strategies.lisp -- This file contains all the basic PVS strategies.
;; Author          : N. Shankar
;; Created On      : Thu Jan  8 15:02:25 1998
;; Last Modified By: Sam Owre
;; Last Modified On: Thu May 20 22:22:42 2004
;; Update Count    : 5
;; Status          : Stable
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; --------------------------------------------------------------------
;; PVS
;; Copyright (C) 2006, SRI International.  All Rights Reserved.

;; This program is free software; you can redistribute it and/or
;; modify it under the terms of the GNU General Public License
;; as published by the Free Software Foundation; either version 2
;; of the License, or (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program; if not, write to the Free Software
;; Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.
;; --------------------------------------------------------------------

(in-package :pvs)

(eval-when (:execute :compile-toplevel :load-toplevel)

(defun check-formals (formals &optional vars section)
  "Checks that formals are well-formed:
     {var}*
     [&optional {var | (var initform)}*]
     [&key {var | (var initform)}*]
     [&rest var]
     [&inherit {var | (var :except var+)}*]"
  (cond ((null formals)
	 t)
	((eq (car formals) '&optional)
	 (if (member '&optional (cdr formals))
	     (format t "~%'&optional occurs twice")
	     (check-formals (cdr formals) vars '&optional)))
	((eq (car formals) '&key)
	 (cond ((member '&optional (cdr formals))
		(format t "~%'&optional occurs after '&key"))
	       ((member '&key (cdr formals))
		(format t "~%'&key occurs twice"))
	       (t (check-formals (cdr formals) vars '&key))))
	((eq (car formals) '&rest)
	 (cond ((member '&optional (cdr formals))
		(format t "~%'&optional occurs after '&rest"))
	       ((member '&key (cdr formals))
		(format t "~%'&key occurs after '&rest"))
	       ((member '&rest (cdr formals))
		(format t "~%'&rest occurs twice"))
	       ((not (symbolp (cadr formals)))
		(format t "~%'&rest argument should be a symbol."))
	       ((member (cadr formals) vars)
		(format t "~%Duplicate argument symbols"))
	       (t (check-formals (cddr formals) nil '&rest))))
	((eq (car formals) '&inherit)
	 (cond ((member '&optional (cdr formals))
		(format t "~%'&optional occurs after '&inherit"))
	       ((member '&key (cdr formals))
		(format t "~%'&key occurs after '&inherit"))
	       ((member '&rest (cdr formals))
		(format t "~%'&rest occurs after '&inherit"))
	       ((member '&inherit (cdr formals))
		(format t "~%'&inherit occurs twice."))
	       (t (if (every #'(lambda (fm)
				 (or (symbolp fm)
				     (and (consp fm)
					  (eq (cadr fm) :except)
					  (cddr fm)
					  (every #'symbolp (cddr fm)))))
			     (cdr formals))
		      (if (null (cdr formals))
			  (format t "~%'&inherit has no formals.")
			  (if (duplicates?
			       (cdr formals)
			       :key #'(lambda (fm)
					(if (consp fm) (car fm) fm)))
			      (format t "~%'&inherit args duplicated")
			      t))
		      (format t "~%'&inherit args must be symbols or of the form~%~
                                    (symbol :except symbol ...)")))))
	(t (cond ((symbolp (car formals))
		  (cond ((eq section '&rest)
			 (format t "~%Only a single formal allowed after &rest"))
			((and (memq (car formals) '(type !type))
			      section)
			 (format t "~%\"~a\" is not allowed as a variable: ~a"
			   (car formals) section))
			((member (car formals) vars)
			 (format t "~%Duplicate argument symbols"))
			(t
			 (check-formals (cdr formals) (cons (car formals) vars)
					section))))
		 ((consp (car formals))
		  (if (member section '(&optional &key))
		      (if (symbolp (caar formals))
			  (if (or (null (cdar formals))
				  (cddar formals))
			      (format t "~%Optional or key formal lists must be pairs")
			      (check-formals (cdr formals) (cons (caar formals) vars)
					     section))
			  (format t "~%Formals must be symbols or pairs (when optional or keyword)"))
		      (format t "~%Formals are pairs only when optional or keyword")))))))
  
  (defun check-prover-macro-args (name args body doc format)
    (cond ((not (symbolp name))
	   (error "Name ~a must be a symbol." name))
	  ((not (check-formals args))
	   (error "Arguments ~a must be a list of the form~
                 ~%  (arg1 arg2... &optional... &key... &rest arg &inherit...)."
		  args))
	  ((not (stringp doc))
	   (error "Documentation ~a is not a string (in double quotes)."
		  doc))
	  ((not (stringp format))
	   (error "Format-string ~a is not a string (in double quotes)."
		  format)))
    (check-prover-macro-arg-ambiguity name args body)
    ;(check-prover-macro-inherit-args name args body)
    )

  (defun check-prover-macro-arg-ambiguity (name args body)
    (when args
      (when (or (step-or-rule-defn (car args))
		(gethash (car args) *rulebase*))
	(check-prover-macro-arg-ambiguity* name (car args) body))
      (unless (eq (car args) '&inherit)
	(check-prover-macro-arg-ambiguity name (cdr args) body))))

  (defun check-prover-macro-arg-ambiguity* (name arg body)
    (cond ((symbolp body))
	  ((not (consp body)))
	  ((if-form? body)
	   (check-prover-macro-arg-ambiguity* name arg (caddr body))
	   (check-prover-macro-arg-ambiguity* name arg (cadddr body)))
	  ((let-form? body)
	   (check-prover-macro-arg-ambiguity
	    name
	    (mapcar #'car (let-bindings body))
	    (let-body body))
	   (check-prover-macro-arg-ambiguity* name arg (let-body body)))
	  ((and (consp body) (eq (car body) arg))
	   (format t "~%Should probably rename arg ~a in ~a: ~
                      it appears in the body as a possible strategy~%"
		  arg name))
	  ((consp body)
	   (dolist (e body) (check-prover-macro-arg-ambiguity* name arg e)))))

  ;; (defun check-prover-macro-inherit-args (name args body)
  ;;   (let ((inherit-args (get-&inherit-args args)))
  ;;     (check-prover-macro-inherit-args* name inherit-args body)))

  ;; (defun check-prover-macro-inherit-args* (name args body)
  ;;   (when args
  ;;     (let ((rule (gethash (car args) *rulebase*)))
  ;; 	(if rule
  ;; 	    (if (rule-entry? rule)
  ;; 		(if (optional-args rule)
  ;; 		    (check-prover-macro-rule-in-body (car args) body)
  ;; 		    (error "No keyword or optional args in ~a" (car args)))
  ;; 		(error "Not a rule-entry?" (car args)))
  ;; 	    (let ((step (gethash (car args) *rules*)))
  ;; 	      (if step
  ;; 		  (if (defstep-entry? step)
  ;; 		      (let ((formals (formals step)))
  ;; 			(if (or (member '&optional formals)
  ;; 				(member '&key formals)
  ;; 				(member '&inherit formals))
  ;; 			    (check-prover-macro-rule-in-body (car args) body)
  ;; 			    (error "No keyword, optional, or inherit arg in ~a"
  ;; 				   (car args))))
  ;; 		      (error "Strange step ~a" (car args)))
  ;; 		  (error "~a is not a rule or a step" (car args))))))))

  (defun check-prover-macro-rule-in-body (arg body)
    ;; Here we simply check that the rule occurs in the body
    (cond ((symbolp body)
	   nil)
	  ((not (consp body))
	   nil)
	  ((if-form? body)
	   (or (check-prover-macro-rule-in-body arg (caddr body))
	       (check-prover-macro-rule-in-body arg (cadddr body))))
	  ((let-form? body)
	   (or (check-prover-macro-rule-in-body
		(mapcar #'car (let-bindings body))
		(let-body body))
	       (check-prover-macro-rule-in-body arg (let-body body))))
	  ((and (consp body) (eq (car body) arg))
	   t)
	  ((consp body)
	   (some #'(lambda (e) (check-prover-macro-rule-in-body arg e))
		 body))))
  
  (defun extract-lisp-exprs-from-strat-body (body &optional lispexprs)
    (cond ((null body)
	   (nreverse lispexprs))
	  ((consp body)
	   (cond ((eq (car body) 'if)
		  (extract-lisp-exprs-from-strat-body
		   (cddr body) (cons (cadr body) lispexprs)))
		 ((eq (car body) 'let)
		  (let ((nexprs (extract-lisp-exprs-from-strat-body
				 (cddr body))))
		    (nreverse (cons `(let* ,(cadr body)
				       ,@(cons `(list ,@(mapcar #'car
							  (cadr body)))
					       nexprs))
				    lispexprs))))
		 (t (extract-lisp-exprs-from-strat-body
		     (cdr body)
		     (extract-lisp-exprs-from-strat-body (car body) lispexprs)))))
	  (t (nreverse lispexprs))))
  )


(defun get-&required-args (formals)
  (cond ((memq '&optional formals)
	 (ldiff formals (memq '&optional formals)))
	((memq '&key formals)
	 (ldiff formals (memq '&key formals)))
	((memq '&rest formals)
	 (ldiff formals (memq '&rest formals)))
	((memq '&inherit formals)
	 (ldiff formals (memq '&inherit formals)))
	(t formals)))

(defun get-&optional-args (formals)
  (let ((opts (cdr (memq '&optional formals))))
    (when opts
      (cond ((memq '&key opts)
	     (ldiff opts (memq '&key opts)))
	    ((memq '&rest opts)
	     (ldiff opts (memq '&rest opts)))
	    ((memq '&inherit opts)
	     (ldiff opts (memq '&inherit opts)))
	    (t opts)))))
      
(defun get-&key-args (formals)
  (let ((keys (cdr (memq '&key formals))))
    (when keys
      (cond ((memq '&rest keys)
	     (ldiff keys (memq '&rest keys)))
	    ((memq '&inherit keys)
	     (ldiff keys (memq '&inherit keys)))
	    (t keys)))))

(defun get-&rest-args (formals)
  (let ((rest (cdr (memq '&rest formals))))
    (when rest
      (cond ((memq '&inherit rest)
	     (ldiff rest (memq '&inherit rest)))
	    (t rest)))))

(defun get-&inherit-args (formals)
  (cdr (memq '&inherit formals)))
	    
(defun defgen* (name formals definition docstring format-string
		entry-type rules-or-steps &optional step?)
  #+allegro (excl:record-source-file name :type :strategy)
  (let ((primitive (gethash name *rulebase*))
	(rule (gethash name *rules*))
	(strat (gethash name *steps*)))
    (cond (primitive
	   (format t "~%~a exists as a primitive rule.  It cannot be redefined." name))
	  (rule
	   (format-if "~%~a exists as a defined rule." name))
	  (strat
	   (format-if "~%~a exists as a strategy." name)))
    (cond (primitive (format t "~%No change. "))
	  (t (if (or rule strat)
		 (format-if "~%Redefining ~a. " name)
		 (format-if "~%Defining ~a. " name))
	     (if rule (remhash name *rules*))
	     (if strat (remhash name *steps*))
	     #+lucid (record-source-file name 'strategy)
	     (let* ((inh-formals (cdr (memq '&inherit formals)))
		    (rules-inheritance (collect-rules-inheritance inh-formals)))
	       (if (or (null inh-formals) rules-inheritance)
		   (let* ((expanded-formals
			   (expand-inherited-formals formals rules-inheritance))
			  (expanded-docstring
			   (if (equal expanded-formals formals)
			       docstring
			       (format nil "~s :~%  expanded from:~%~a"
				 (cons (if step? (makesym "~a/$" name) name)
				       expanded-formals)
				 docstring))))
		     (update-prover-keywords name expanded-formals)
		     (add-symbol-entry
		      name
		      (make-instance entry-type
			'name name
			'formals expanded-formals
			'source-formals formals
			'defn (add-inherited-args-to-definition
			       definition rules-inheritance)
			'source-defn definition
			'docstring expanded-docstring
			'format-string format-string)
		      rules-or-steps)
		     (when rules-inheritance
		       (update-dependent-proof-rules name)))
		   ;; Need to wait in this case, but we create an entry with
		   ;; what we have
		   (let ((msg (format nil "Not all inherited rules ~a are available"
				inh-formals)))
		     (format t "~%~a is postponed - missing one of inherited rules ~a."
		       name inh-formals)
		     (add-symbol-entry
		      name
		      (make-instance entry-type
			'name name
			'formals :unbound
			'source-formals formals
			'defn `(skip-msg ,msg)
			'source-defn definition
			'docstring docstring
			'format-string format-string)
		      rules-or-steps)
		     )))))))

;;; The &inherit gives a dependency between rules.
;;; Rules may not be in proper order, but even if they were, they
;;; can later be modified.  This function is called from defgen*
;;; Whenever a new rule is added, unless it is a "pending" rule, i.e.,
;;; waiting for some other rule (formals is :unbound in that case)
;;; Note that this can trigger propagation for any rule that is changed
;;; because of this.  Need to be careful of loops.
(defun update-dependent-proof-rules (name)
  (do-all-strategies #'(lambda (entry) (update-dependent-proof-rule name entry))))

(defun update-dependent-proof-rule (name entry)
  (let* ((args (if (rule-entry? entry)
		   (optional-args entry)
		   (source-formals entry)))
	 (inh-formals (get-&inherit-args args)))
    (when (member name inh-formals :test #'symbol-equal)
      (let ((rules-inheritance (collect-rules-inheritance inh-formals)))
	;; If rules-inheritance is null, still waiting on a rule to be defined
	(if rules-inheritance
	    (let ((expanded-formals
		   (expand-inherited-formals (source-formals entry) rules-inheritance)))
	      (unless (equal expanded-formals (formals entry))
		(update-prover-keywords (name entry) expanded-formals)
		(setf (formals entry) expanded-formals)
		(setf (defn entry) (add-inherited-args-to-definition
				    (source-defn entry) rules-inheritance))
		(update-dependent-proof-rules (name entry))))
	    (format t "~%~a is still postponed - missing one of inherited rules ~a."
	      (name entry) inh-formals))))))

  

(defun expand-inherited-formals (formals rules-inheritance)
  (if (memq '&inherit formals)
      (let* ((inherited (memq '&inherit formals))
	     (keyargs (append (get-&optional-args formals)
			      (get-&key-args formals)))
	     (rest (memq '&rest formals))
	     ;;(rules-inheritance (collect-rules-inheritance (cdr inherited)))
	     (inherited-args (merge-inherited-formals
			      rules-inheritance
			      (if rest
				  (cons (cadr rest) keyargs)
				  keyargs))))
	(append (if rest
		    (ldiff formals rest)
		    (ldiff formals inherited))
		(if (memq '&key formals)
		    inherited-args
		    (cons '&key inherited-args))
		(ldiff rest inherited)))
      formals))

(defun merge-inherited-formals (rules-inheritance keyargs &optional newkeyargs)
  ;; keyargs are the &optional and &key args given to the rule
  ;; We are getting all other keyargs from the inherited rules
  (if (null rules-inheritance)
      (nreverse newkeyargs)
      (merge-inherited-formals (cdr rules-inheritance) keyargs
			       (merge-inherited-formals*
				(cdar rules-inheritance)
				keyargs newkeyargs))))

(defun merge-inherited-formals* (inh-keys keyargs newkeyargs)
  (if (null inh-keys)
      newkeyargs
      (let ((inh-key (car inh-keys)))
	(merge-inherited-formals*
	 (cdr inh-keys)
	 keyargs
	 (if (or (member inh-key keyargs :test #'same-prover-keyarg)
		 (member inh-key newkeyargs :test #'same-prover-keyarg))
	     newkeyargs
	     (cons inh-key newkeyargs))))))

(defun prover-keyarg (key)
  (if (consp key) (car key) key))

(defun prover-keydefault (key)
  (when (consp key) (cadr key)))

;; Compares two keyarg-formals (e.g., the args from two different defsteps)
(defun same-prover-keyarg (key1 key2)
  (string-equal (prover-keyarg key1) (prover-keyarg key2)))

;; Compares a formal to an actual - useful in :test for find, etc.
(defun keyword-formal-arg-match (formal arg)
  (and (keywordp arg)
       (string-equal (prover-keyarg formal) arg)))

;; Compares an actual to a formal - useful in :test for find, etc.
(defun keyword-arg-formal-match (arg formal)
  (keyword-formal-arg-match formal arg))

(defun add-inherited-args-to-definition (definition rules-inheritance)
  (if rules-inheritance
      (add-inherited-args-to-definition* definition rules-inheritance)
      definition))

(defun add-inherited-args-to-definition* (sexp rules-inheritance &optional backquoted)
  (cond ((not (consp sexp))
	 sexp)
	((if-form? sexp)
	 (list 'if
	       (cadr sexp)
	       (add-inherited-args-to-definition*
		(caddr sexp) rules-inheritance backquoted)
	       (add-inherited-args-to-definition*
		(cadddr sexp) rules-inheritance backquoted)))
	((let-form? sexp)
	 (cons 'let
	       (cons (mapcar #'(lambda (b)
				 (cons (car b)
				       (add-inherited-args-to-definition*
					(cdr b) rules-inheritance backquoted)))
		       (cadr sexp))
		     (add-inherited-args-to-definition*
		      (cddr sexp) rules-inheritance backquoted))))
	#+sbcl
	((and (consp sexp)
	      (consp (car sexp))
	      (eq (caar sexp) 'quote)
	      (symbolp (cadar sexp))
	      (assq (rule-rawname (cadar sexp)) rules-inheritance))
	 (let* ((rule (rule-rawname (cadar sexp)))
		(formals (get-rule-formals rule))
		(opts (get-&optional-args formals)))
	   (add-keyword-args-to-call
	    sexp opts (cdr (assq rule rules-inheritance))
	    ;; nil is not necessarily correct here - there is no easy way to
	    ;; detect this in SBCL
	    nil)))
	((and (symbolp (car sexp))
	      (assq (rule-rawname (car sexp)) rules-inheritance))
	 ;; Add keyword args to call - need to recurse on subexprs?
	 (let* ((rule (rule-rawname (car sexp)))
		(formals (get-rule-formals rule))
		(opts (get-&optional-args formals)))
	   (add-keyword-args-to-call
	    sexp opts (cdr (assq rule rules-inheritance)) backquoted)))
	((backquoted? sexp)
	 (cons (car sexp)
	       (add-inherited-args-to-definition* (cdr sexp) rules-inheritance t)))
	((unbackquoted? sexp)
	 (cons (car sexp)
	       (add-inherited-args-to-definition* (cdr sexp) rules-inheritance nil)))
	(t (cons (add-inherited-args-to-definition*
		  (car sexp) rules-inheritance backquoted)
		 (add-inherited-args-to-definition*
		  (cdr sexp) rules-inheritance backquoted)))))

(defparameter *backquote-symbols*
  #+allegro
  '(excl::backquote)
  #+sbcl
  (remove-if #'null
    (list (find-symbol "QUASIQUOTE" :sb-int)
	  (find-symbol "BACKQ-CONS" :sb-impl)
	  (find-symbol "BACKQ-LIST" :sb-impl))))

(defparameter *unbackquote-symbols*
  #+allegro
  '(excl::backquote)
  #+sbcl
  (remove-if #'null
    (list (find-symbol "QUASIQUOTE" :sb-int))))

(defun backquoted? (sexp)
  (assert (boundp '*backquote-symbols*) ()
	  "backquoted? not defined for this lisp")
  (and (consp sexp)
       (memq (car sexp) *backquote-symbols*)))

(defun unbackquoted? (sexp)
  (assert (boundp '*unbackquote-symbols*) ()
	  "unbackquoted? not defined for this lisp")
  (and (consp sexp)
       (memq (car sexp) *unbackquote-symbols*)))

(defun rule-rawname (rule)
  (let* ((str (string rule))
	 (len (length str)))
    (if (char= (char str (1- len)) #\$)
	(intern (subseq str 0 (1- len)) :pvs)
	rule)))

(defun add-keyword-args-to-call (step opts keyword-args backquoted)
  (let ((rkeys (remove-used-args-from-keywords (cdr step) opts keyword-args)))
    (append step
	    (mapcan #'(lambda (ka)
			(list (keyword-arg-symbol ka)
			      (if backquoted
				  (list #+allegro 'excl::bq-comma
					#+sbcl (or (find-symbol "QUASIQUOTE" :sb-int)
						   (find-symbol "BACKQ-COMMA" :sb-impl))
					(keyword-arg-symbol ka :pvs))
				  (keyword-arg-symbol ka :pvs))))
	      (remove-if
		  #'(lambda (ka)
		      (memq (keyword-arg-symbol ka) step))
	      rkeys)))))

(defun remove-used-args-from-keywords (step-args opts keyword-args)
  (cond ((and (keywordp (car step-args))
	      (member (car step-args) keyword-args
		      :test #'keyword-arg-formal-match))
	 (remove-used-args-from-keywords
	  (cddr step-args) opts (remove (car step-args) keyword-args
					:test #'keyword-arg-formal-match)))
	((or (null step-args)
	     (null opts))
	 keyword-args)
	(t (remove-used-args-from-keywords
	    (cdr step-args) (cdr opts)
	    (remove (car opts) keyword-args
		    :test #'same-prover-keyarg)))))


;;; Returns an alist of the form
;;; ((rule key1 ... keyn) ...) where each keyi is a symbol or a (symbol init) pair
;;; Note that this can return nil, meaning that an inherited rule was not found.
;;; This can happen because rules are mutually recursive, or simply unsorted.
(defun collect-rules-inheritance (inherited-rules &optional inheritance)
  (if (null inherited-rules)
      (nreverse inheritance)
      (let ((inhrule (car inherited-rules)))
	(multiple-value-bind (rkeys there?)
	    (get-all-keyword-args inhrule)
	  (when there?
	    (collect-rules-inheritance
	     (cdr inherited-rules)
	     (acons (if (consp inhrule) (car inhrule) inhrule) rkeys inheritance)))))))

(defun get-all-keyword-args (rule)
  (if (consp rule)
      (get-all-keyword-args* (list (car rule)) (cddr rule))
      (get-all-keyword-args* (list rule) nil)))

(defun get-all-keyword-args* (pending-rules exclude &optional keys done-rules)
  (cond ((null pending-rules)
	 (values keys t))
	((memq (car pending-rules) done-rules)
	 (get-all-keyword-args* (cdr pending-rules) exclude keys done-rules))
	(t (multiple-value-bind (formals there?)
	       (get-rule-formals (car pending-rules))
	     (when there?
	       (let* ((akeys (get-keyword-args formals))
		      (rkeys (remove-if #'(lambda (akey)
					    (member (if (consp akey) (car akey) akey)
						    exclude :test #'string-equal))
			       akeys)))
		 (assert (not (memq '&inherit formals)))
		 (get-all-keyword-args* (cdr pending-rules)
					exclude
					(merge-keyword-args rkeys keys)
					(cons (car pending-rules) done-rules))))))))

(defun get-keyword-args (formals)
  (append (get-&optional-args formals) (get-&key-args formals)))

(defun merge-keyword-args (new-keys keys)
  (cond ((null new-keys)
	 keys)
	((member (car new-keys) keys :test #'same-prover-keyarg)
	 (merge-keyword-args (cdr new-keys) keys))
	(t (merge-keyword-args (cdr new-keys)
			       (nconc keys (list (car new-keys)))))))

;;; Called from collect-rules-inheritance - if rule is not found,
;;; returns nil for second arg - rule will be processed later
(defun get-rule-formals (rule)
  (let* ((rrule (rule-rawname rule))
	 (rbentry (gethash rrule *rulebase*)))
    (assert (typep rbentry '(or null rule-entry)))
    (if rbentry
	(values (append (required-args rbentry)
			(when (optional-args rbentry)
			  (cons '&optional (optional-args rbentry))))
		t)
	(let ((rentry (gethash rrule *rules*)))
	  (assert (typep rentry '(or null defstep-entry)))
	  (when (and rentry
		     (not (eq (formals rentry) :unbound)))
	    (values (formals rentry) t))))))

(defun defstrat* (name formals definition
		  &optional docstring format-string)
  (defgen* name formals definition docstring format-string
	   'defrule-entry *steps* t))

(defun defrule* (name formals definition
		 &optional docstring format-string)
  (defgen* name formals definition docstring format-string
	   'defrule-entry *rules* t))

(defun defstep* (name formals definition
		 &optional docstring format-string)
  (defgen* name formals definition docstring format-string
	   'defstep-entry *rules* t)
  (defgen* (intern (format nil "~a$" name) :pvs)
      formals definition docstring format-string
      'defstep-entry *steps* t))

(defun defhelper* (name formals definition
		   &optional docstring format-string)
  (defgen* name formals definition docstring format-string
	   'defhelper-entry *rules*)
  (defgen* (intern (format nil "~a$" name) :pvs)
      formals definition docstring format-string
      'defhelper-entry *steps* t))


(defmacro defrule (name args body doc format)
  (check-prover-macro-args name args body doc format)
  (let ((lbody (extract-lisp-exprs-from-strat-body body)))
    (if lbody
	(let ((largs (mapcar #'(lambda (a) (if (consp a) (car a) a))
		       (remove-if #'(lambda (a)
				      (memq a '(&optional &rest)))
			 args))))
	  ;; the defun |(DEFRULE) name| is only there for cross referencing
	  `(progn #-(or cmu sbcl)
		  (defun ,(makesym "(DEFRULE) ~a" name) ,largs
		    ,@lbody
		    (list ,@largs))
		  (defrule* ',name ',args ',body
		    (format nil "~s :~%    ~a"
		      (cons ',(makesym "~a/$" name) ',args)
		      ,doc)
		    (format nil "~%~a," ,format))))
	`(defrule* ',name ',args
	   ',body
	   (format nil "~s:~%    ~a" (cons ',name ',args) ,doc)
	   (format nil "~%~a," ,format)))))

(defmacro defstrat (name args body doc &optional format)
  (check-prover-macro-args name args body doc (or format ""))
  (let ((lbody (extract-lisp-exprs-from-strat-body body)))
    (if lbody
	(let ((largs (mapcar #'(lambda (a) (if (consp a) (car a) a))
		       (remove-if #'(lambda (a)
				      (memq a '(&optional &rest)))
			 args)))
	      )
	  `(progn #-(or cmu sbcl)
		  (defun ,(makesym "(defstrat) ~a" name) ,largs
		    ,@lbody
		    (list ,@largs))
		  (defstrat* ',name ',args ',body
		    (format nil "~s :~%    ~a"
		      (cons ',(makesym "~a/$" name) ',args)
		      ,doc)
		    (format nil "~%~a," ,format))))
	`(defstrat* ',name ',args
	   ',body
	   (format nil "~s:~%    ~a" (cons ',name ',args) ,doc)
	   (format nil "~%~a," ,format)))))

(defmacro defstep (name args body doc format)
  (check-prover-macro-args name args body doc format)
  (let ((lbody (extract-lisp-exprs-from-strat-body body)))
    (if lbody
	(let ((largs (mapcar #'(lambda (a) (if (consp a) (car a) a))
		       (remove-if #'(lambda (a)
				      (memq a '(&optional &key &rest &inherit)))
			 args))))
	  `(progn #-(or cmu sbcl)
		  (defun ,(makesym "(defstep) ~a" name) ,largs
		    ,@lbody
		    (list ,@largs))
		  (defstep* ',name ',args ',body
		    (format nil "~s :~%    ~a"
		      (cons ',(makesym "~a/$" name) ',args)
		      ,doc)
		    (format nil "~%~a," ,format))))
	`(defstep* ',name ',args ',body
	   (format nil "~s :~%    ~a"
	     (cons ',(makesym "~a/$" name) ',args)
	     ,doc)
	   (format nil "~%~a," ,format)))))


(defmacro defhelper (name args body doc format)
  (check-prover-macro-args name args body doc format)
  (let ((lbody (extract-lisp-exprs-from-strat-body body)))
    (if lbody
	(let ((largs (mapcar #'(lambda (a) (if (consp a) (car a) a))
		       (remove-if #'(lambda (a)
				      (memq a '(&optional &rest)))
			 args))))
	  `(progn #-(or cmu sbcl)
		  (defun ,(makesym "(DEFHELPER) ~a" name) ,largs
		    ,@lbody
		    (list ,@largs))
		  (defhelper* ',name ',args ',body
		    (format nil "~s :~%    ~a"
		      (cons ',(makesym "~a/$" name) ',args)
		      ,doc)
		    (format nil "~%~a," ,format))))
	`(defhelper* ',name ',args
	   ',body
	   (format nil "~s :~%    ~a"
	     (cons ',(makesym "~a/$" name) ',args)
	     ,doc)
	   (format nil "~%~a," ,format)))))


;;; if, let, quote, and try are built-in to strat-eval, the following simply
;;; allow help to be given.
(defstrat if (condition step1 step2)
  ()
  "Evaluates the condition (in Lisp) and if it evaluates to nil, step2 is
applied, otherwise step1 is applied."
  "")

(defstrat let (bindings body)
  ()
  "Allows variables in body to be bound to the results of Lisp
computations.  E.g.,
  (let ((x (car *new-fmla-nums*)))
      (then (inst? x)(split x)))."
  "")

(defstrat quote (step)
  ()
  "This simply evaluates to step.  This is used by the let strategy to
ensure that the values for variables are not evaluated again after
substitution.  It is unlikely to be useful otherwise."
  "")

(defstrat try (strategy then else)
  ()
  "Tries strategy STRATEGY on current goal, and if successful, applies
strategy THEN to the subgoals.  If no change, then the ELSE strategy is
applied to current goal.
E.g., (try (skip)(flatten)(skolem!)) is just (skolem!)
      (try (lemma \"assoc\")(beta)(flatten)) is just lemma followed
           by beta if lemma assoc exists."
  "")


(defstep assert (&optional (fnums *) rewrite-flag &key (let-reduce? t)
			   &inherit (simplify :except record? rewrite?))
  (simplify fnums t t)
  "Simplifies/rewrites/records formulas in FNUMS using decision
procedures.  Variant of SIMPLIFY with RECORD? and REWRITE? flags set
to T. If REWRITE-FLAG is RL(LR) then only lhs(rhs) of equality
is simplified. If FLUSH? is T then the current asserted facts are
deleted for efficiency.  LINEAR? is currently ignored.
  If CASES-REWRITE? is T, then
the selections and else parts of a CASES expression are simplified,
otherwise, they are only simplified when simplification selects
a case.  See also SIMPLIFY, RECORD, DO-REWRITE.
Examples:
 (assert):  Simplifies, rewrites, and records all formulas.
 (assert -1 :rewrite-flag RL): Apply assert to formula -1 leaving
    RHS untouched if the formula is an equality.
 (assert :flush? T): Apply assert after flushing existing decision procedure
  database."
  "Simplifying, rewriting, and recording with decision procedures")

(defstep record (&optional (fnums *)
			   &inherit (simplify :except record? rewrite?))
  (simplify fnums t nil)
  "Uses decision procedures to simplify and record the formulas
in FNUMS for further simplification.   Variant of SIMPLIFY with RECORD?
flag set to T and REWRITE? flags set to NIL. If REWRITE-FLAG is
RL(LR) then only lhs(rhs) is simplified.  If FLUSH? is T then the
current asserted facts are deleted for efficiency.  LINEAR? is ignored.
Example:
 (record - :flush? T): flushes database and records antecedent formulas."
  "Simplifying and recording with decision procedures")

(defstep do-rewrite (&optional (fnums *)
			       &inherit (simplify :except record? rewrite?))
  (simplify fnums nil t)
  "Uses decision procedures to rewrite the formulas in FNUMS.
Variant of SIMPLIFY with RECORD? flag set to NIL and REWRITE? flags set to
T. If REWRITE-FLAG is RL(LR) then only lhs(rhs) is simplified.  If FLUSH?
is T then the current asserted facts are deleted for efficiency.  If
LINEAR? is T, then multiplication and division are uninterpreted.  If
CASES-REWRITE? is T, then the selections and else parts of a CASES
expression are simplified, otherwise, they are only simplified when
simplification selects a case.
Examples: (do-rewrite): Simplify every sequent formula with rewriting.
(do-rewrite :rewrite-flag RL :linear? T): Apply rewriting only to left-hand
          sides of any equalities with uninterpreted nonlinear arithmetic."
  "Simplifying and recording with decision procedures")


(defstep auto-rewrite!! (&rest names)
  (let ((names
	 (loop for name in names
	       collect (if (consp name)
			   (if (consp (car name))
			       name (list name))
			   (list (list name))))))
    (auto-rewrite :names names))
  "Similar to auto-rewrite! except that explicit (non-recursive)
definitions are always expanded even when all the arguments
do not occur in the expression.   Examples:
 (auto-rewrite!! \"compose\"):  Installs the rewrite so that compose(f, g)
  is expanded.  "
  "Installing !! rewrites from: ~@{~%  ~a~}")

(defstep auto-rewrite! (&rest names)
  (let ((names
	 (loop for name in names
	       collect (if (consp name) name (list name)))))
    (auto-rewrite :names names))
	 " Similar to auto-rewrite except that the rewrites of lemmas and
explicit (non-recursive) definitions always occur independent of the
righthand-side.  Examples:
 (auto-rewrite! \"assoc\" -3 \"distrib\" \"square\"):  Installs rewrites.
 (auto-rewrite! :names (\"assoc\" -3 \"distrib\" \"square\")): Same."
	 "Installing automatic rewrites from: ~@{~%  ~a~}")

(defun defn-decl? (x)
  (or (const-decl? x)(def-decl? x)))

(defstep auto-rewrite-theory (name &optional exclude defs ;defs-only? 
				   always? tccs?)
  (let ((name (pc-parse name 'modname))
	(current? (eq (id name) (id (current-theory))))
	(theory-name (resolve-theory-name name))
	(theory (get-theory theory-name))
	(exclude (if (listp exclude) exclude (list exclude)))
	(exclude (mapcar #'(lambda (x) (pc-parse x 'name)) exclude))
	(exclude (append exclude
			 (mapappend #'rewrite-names
				    (disabled-auto-rewrites
				     *current-context*))))
	(okay?  (and theory
		     (or (not current?)
			 (null (actuals theory-name))))))
    (if theory
	(if okay?
	    (let ((all-decls (when theory
			       (append (assuming theory)
				       (theory theory))))
		  (exclude-current
		   (when current?
		     (memq (declaration *top-proofstate*)
			   all-decls)))
		  (names
		   (loop for decl in all-decls
			 when
			 (and  (or (defn-decl? decl)
				   (formula-decl? decl))
			       (if defs  ;;-only?
				   (if (eq defs 'explicit)
				       (const-decl? decl)  
				       (defn-decl? decl))
				   (or tccs?
				       (not (tcc? decl))))
			       (or (null current?)
				    (not (memq decl
					       exclude-current)))
			       (not (member (id decl)
					    exclude
					    :test #'same-id)))
			 collect
			 (mk-auto-rewrite-name decl theory-name always?)))
		  (exclude-names
		   (loop for name in exclude
			 collect
			 (mk-name (id name)
			   (actuals theory-name)
			   (id theory-name))))
		  (rule `(auto-rewrite ,@names))
		  (stop-rule (if exclude-names
				 `(stop-rewrite ,@exclude-names)
				 '(skip))))
	      (then rule stop-rule))
	    (if current?
		(skip-msg "Current theory cannot be given actuals.")
		(skip-msg "Need theory actuals to install rewrites.")))
	(skip-msg "No such theory in current context.")))
	 "Installs an entire theory (or only (explicit (non-recursive))
definitions if DEFS is T(EXPLICIT)) as auto-rewrites.  In the case of a parametric
theory, unless the DEFS flag is T or EXPLICIT, the actual parameters must be given.
If ALWAYS? is T the rewrites are installed also so that any rewrite other than a
recursive definition always takes effect (see auto-rewrite!).  (If ALWAYS? is set
to !!, then the non-recursive definitions are always rewritten even when only a
few of the curried arguments have been provided.)  Declarations named in EXCLUDE
are not introduced and any current rewrite rules in the EXCLUDE list are disabled.
By default, TCCs in the theory are excluded but they can be included when the TCC?
flag is T.
  Examples:
    (auto-rewrite-theory \"sets\" :exclude (\"union\" \"subset?\")
			          :defs explicit)
    (auto-rewrite-theory \"lists[nat]\" :always? T)
    (auto-rewrite-theory \"connectives\" :always? !!)."
	 "Rewriting relative to the theory: ~a")

(defstep auto-rewrite-theories (&rest theories)
  (if (null theories)
      (skip)
      (let ((theory (car theories))
	    (rule (if (consp theory)
		      `(auto-rewrite-theory ,@theory)
		      `(auto-rewrite-theory ,theory)))
	    (rest (cdr theories)))
	(then
	 (try rule (skip)
	      (let ((string (format nil "Warning: Auto-rewrite-theory on ~a failed."
			      theory)))
		(skip-msg string :force-printing? t)))
	 (auto-rewrite-theories$ :theories rest))))
  "Iterated version of auto-rewrite-theory.  Each entry in
THEORIES must either be a theory name or a list in the form of
the arguments to AUTO-REWRITE-THEORY. 
E.g.: (auto-rewrite-theories \"real_props\" (\"sets\" :defs explicit))."
  "Installing rewrites from theories: ~{~% ~a~}")

(defstep auto-rewrite-theory-with-importings
  (name &optional exclude-theories importchain? exclude defs
	always? tccs?) 
  (let ((name (pc-parse name 'modname))
	(theory-name (resolve-theory-name name))
	(exclude-theories (listify exclude-theories))
	(exclude-theory-names
	 (mapcar #'(lambda (x) (pc-parse x 'modname))
	   exclude-theories))
	(theory (get-theory theory-name))
	(usings (if importchain?
		    (apply #'append
		      (mapcar #'cdr (all-usings theory)))
		    (immediate-usings theory)))
	(included-usings
	 (loop for z in (cons theory-name usings)
	       unless (member z exclude-theory-names
				 :test
				 #'(lambda (u v)
				     (if (actuals v)
					 (ps-eq u v)
					 (same-id u v))))
	       collect z))
	(theories
	 (loop for x in included-usings
	       collect
	       (list x :exclude exclude :defs defs :always? always? :tccs? tccs?))))
    (auto-rewrite-theories$ :theories theories))
  "Installs rewrites in theory NAME and along with any theories
imported by NAME.  The full import chain of theories can be
installed by supplying the IMPORTCHAIN? flag as T.  Theories named
in EXCLUDE-THEORIES are ignored.  The other arguments are similar
to those of auto-rewrite-theory and apply uniformly to each of
the theories to be installed."
  "Rewriting with ~a and imported theories therein")

(defstep stop-rewrite-theory (&rest theories)
  (if (consp theories)
      (let ((theory (car theories))
	    (rest-theories (cdr theories))
	    (theory-name (typecheck (pc-parse theory 'modname)
			      :context *current-context*))
	    (module (get-theory theory-name))
	    (decls (append (assuming module)(theory module)))
	    (names (loop for decl in
			 decls
			 when (typep decl '(or formula-decl
					       const-decl def-decl))
			 collect
			 (format nil "~a.~a" theory-name
				 (id decl)))))
	(then (stop-rewrite :names names)
	      (stop-rewrite-theory :theories rest-theories)))
      (skip))
  "Turns off rewriting for entire theories given their names.
If THEORIES contains a generic theory, this turns off the
generic definitional rewrite rules installed by AUTO-REWRITE,
AUTO-REWRITE-THEORY, or AUTO-REWRITE-THEORIES. E.g.,
 (stop-rewrite-theory \"real_proofs\" \"sets[nat]\" \"sequences\")."
  "~%Turning off automatic rewriting for theories: ~{~%   ~a~}")


(defhelper tcc (&key (defs !) &inherit grind)
  (if (integerp *tcc-timeout*)
      (let ((timeout *tcc-timeout*))
	(apply (grind$) :timeout timeout))
      (grind$))
  "The guts of the tcc-strategy defined as '(grind :defs defs)'.
Does auto-rewrite-explicit, then applies skolem!, inst?, lift-if,
bddsimp, and assert, until nothing works.  :defs is either
 nil: The definitions in the statement are not installed as auto-rewrites ;
 t: All defns are installed as conditional rewrites
 !: All defns are installed, but with explicit (non-recursive) defns as
    unconditional rewrites
 explicit: Only explicit defns installed as conditional rewrites
 explicit!: Only explicit defns installed as unconditional rewrites."
    "Trying repeated skolemization, instantiation, and if-lifting")

(defhelper subtype-tcc (&key (defs :explicit) &inherit tcc)
  (tcc$)
  "The strategy used for subtype TCCs - invokes 'tcc' (defaults to 'grind',
but may be redefined) with non-recursive definitions as auto-rewrites"
  "Trying repeated skolemization, instantiation, and if-lifting")

(defhelper termination-tcc (&key (defs !) &inherit tcc)
  (tcc$)
  "The strategy used for termination TCCs - invokes 'tcc' (defaults to
'grind', but may be redefined) with all definitions as auto-rewrites."
  "Trying repeated skolemization, instantiation, and if-lifting")

(defhelper existence-tcc (&key (defs :explicit) &inherit tcc)
  (tcc$)
  "The strategy used for existence TCCs - invokes 'tcc' (defaults to
'grind', but may be redefined) with non-recursive definitions as
auto-rewrites"
  "Trying repeated skolemization, instantiation, and if-lifting")

(defhelper judgement-tcc (&key (defs :explicit) &inherit tcc)
  (tcc$)
  "The strategy used for judgement TCCs - invokes 'tcc' (defaults to
'grind', but may be redefined) with non-recursive definitions as
auto-rewrites"
  "Trying repeated skolemization, instantiation, and if-lifting")

(defhelper recursive-judgement-tcc (&key (defs !) &inherit tcc)
  (tcc$)
  "The strategy used for recursive judgement TCCs - invokes 'tcc' (defaults
to 'grind', but may be redefined) with all definitions as auto-rewrites."
  "Trying repeated skolemization, instantiation, and if-lifting")

(defhelper assuming-tcc (&key (defs :explicit) &inherit tcc)
  (tcc$)
  "The strategy used for assuming TCCs - invokes 'tcc' (defaults to 'grind',
but may be redefined) with non-recursive definitions as auto-rewrites"
  "Trying repeated skolemization, instantiation, and if-lifting")

(defhelper mapped-axiom-tcc (&key (defs :explicit) &inherit tcc)
  (tcc$)
  "The strategy used for mapped axiom TCCs - invokes 'tcc' (defaults to
'grind', but may be redefined) with non-recursive definitions as
auto-rewrites"
  "Trying repeated skolemization, instantiation, and if-lifting")

(defhelper cases-tcc (&key (defs :explicit) &inherit tcc)
  (tcc$)
  "The strategy used for cases TCCs - invokes 'tcc' (defaults to 'grind',
but may be redefined) with non-recursive definitions as auto-rewrites"
  "Trying repeated skolemization, instantiation, and if-lifting")

(defhelper well-founded-tcc (&key (defs :explicit) &inherit tcc)
  (tcc$)
  "The strategy used for well-founded TCCs - invokes 'tcc' (defaults to
'grind', but may be redefined) with non-recursive definitions as
auto-rewrites"
  "Trying repeated skolemization, instantiation, and if-lifting")

(defhelper same-name-tcc (&key (defs :explicit) &inherit tcc)
  (tcc$)
  "The strategy used for same-name TCCs - invokes 'tcc' (defaults to
'grind', but may be redefined) with non-recursive definitions as
auto-rewrites"
  "Trying repeated skolemization, instantiation, and if-lifting")

(defhelper cond-disjoint-tcc (&key (defs :explicit) &inherit tcc)
  (tcc$)
  "The strategy used for cond-disjoint TCCs - invokes 'tcc' (defaults to
'grind', but may be redefined) with non-recursive definitions as
auto-rewrites"
  "Trying repeated skolemization, instantiation, and if-lifting")

(defhelper cond-coverage-tcc (&key (defs :explicit) &inherit tcc)
  (tcc$)
  "The strategy used for cond-coverage TCCs - invokes 'tcc' (defaults to
'grind', but may be redefined) with non-recursive definitions as
auto-rewrites"
  "Trying repeated skolemization, instantiation, and if-lifting")

(defhelper monotonicity-tcc (&key (defs :explicit) &inherit tcc)
  (tcc$)
  "The strategy used for monotonicity TCCs - invokes 'tcc' (defaults to
'grind', but may be redefined) with non-recursive definitions as
auto-rewrites"
  "Trying repeated skolemization, instantiation, and if-lifting")

;;NSH(12.15.94): For backward compatibility.
(defhelper tcc-bdd (&optional (defs !) &inherit grind)
  (grind)
  "Obsolete - subsumed by (TCC)."
  "Trying repeated skolemization, instantiation, and if-lifting")

(defstep default-strategy ()
  (let ((theory (when *current-context* (current-theory)))
	(thstrat (when theory (makesym "~a-default-strategy" (id theory))))
	(defstrat (cond ((and thstrat (assq thstrat *prover-keywords*))
			 thstrat)
			((assq 'context-default-strategy *prover-keywords*)
			 'context-default-strategy)
			(t 'grind)))
	(dummy (format-if "~%Using default strategy:  ~a," defstrat)))
    (defstrat))
  "This invokes user defined default strategies.  It first looks for a strategy
of the name 'foo-strategy', where 'foo' is the current theory.  If that is not
defined, it looks for 'context-strategy', and if that is not found, it
invokes 'grind'."
  "")

(defstep bash (&key (if-match t) polarity? (instantiator inst?) (cases-rewrite? t) (where *)
		    &inherit (assert :except fnums) (lift-if :except fnums))
  (then (assert) (bddsimp)
	(if if-match (let ((command (generate-instantiator-command
				     if-match polarity? instantiator nil where)))
		       command)(skip))
	(repeat (then (skolem-typepred) (flatten)))
	(lift-if))
  "Core of REDUCE.  Does ASSERT, BDDSIMP, INST?, SKOLEM-TYPEPRED, 
FLATTEN, and LIFT-IF once and in that order.  The IF-MATCH option
can be NIL, T, ALL, or BEST for no, some, all, or the best instantiation.
If the UPDATES? option is NIL, update applications are not if-lifted.
When the POLARITY? flag is T, INST? matches templates against
complementary subexpressions.
The INSTANTIATOR argument can be used to specify use of an alternative
instantiation mechanism.  This defaults to the (INST?) strategy.
WHERE tells the instantiator where to look for a match."
  "Simplifying with decision procedures, rewriting, propositional
reasoning, quantifier instantiation, skolemization, if-lifting.")


(defun generate-instantiator-command (if-match polarity? instantiator &optional fnum where)
  (let* ((instcmd (if (consp instantiator)
		      (car instantiator)
		      instantiator))
	 (givenargs (when (listp
			   instantiator)
		      (cdr instantiator)))
	 (okkeys (or (assq instcmd *prover-keywords*)
		     (progn
		       (error-format-if "~a is not a valid prover command" instcmd)
		       (let ((*suppress-printing* nil)) ;; M3 Added because (restore) doesn't explain errors [Sept 2020]
			 (explain-errors))
		       (restore))))
	 (okargs (cddr okkeys))
	 (instargs (append (when (and (memq :if-match okargs)
				      (not (memq :if-match givenargs)))
			     (list :if-match if-match))
			   (when (and (memq :polarity? okargs)
				      (not (memq :polarity? givenargs)))
			     (list :polarity? polarity?))
			   (when (and (memq :where okargs)
				      (not (memq :where givenargs)))
			     (list :where where))))
	 (fnum    (when fnum (list fnum)))
	 (command (append (list instcmd) fnum givenargs instargs)))
    (if (check-arguments command)
	command
	'(fail))))

(defstep reduce (&key no-replace? &inherit bash replace*)
  (repeat* (try (bash$)
		(if no-replace? (skip) (replace*))
		(skip)))
  "Core of GRIND (ASSERT, BDDSIMP, INST?, SKOLEM-TYPEPRED, FLATTEN,
LIFT-IF, i.e., BASH then REPLACE*) without reestablishing all the rewrites.
See BASH for more explanation."
  "Repeatedly simplifying with decision procedures, rewriting,
  propositional reasoning, quantifier instantiation, skolemization,
 if-lifting and equality replacement")

(defstep smash (&inherit (assert :except fnums) (lift-if :except fnums))
  (repeat* (then (bddsimp) (assert) (lift-if)))
  "Repeatedly tries BDDSIMP, ASSERT, and LIFT-IF.  If the UPDATES?
option is NIL, update applications are not if-lifted."
  "Repeatedly simplifying with BDDs, decision procedures, rewriting,
and if-lifting")

(defstep install-rewrites (&optional defs theories rewrites
				     exclude-theories exclude)
  (if (or defs theories rewrites exclude-theories exclude)
      (then 
       (if (symbol-equal defs '!!)
	   (auto-rewrite-defs :always? !!)
	   (if (symbol-equal defs '!)
	       (auto-rewrite-defs :always? t)
	       (if (symbol-equal defs 'explicit)
		   (auto-rewrite-defs :explicit? t)
		   (if (symbol-equal defs 'explicit!!)
		       (auto-rewrite-defs :always? !! :explicit? t)
		       (if (symbol-equal defs 'explicit!)
			   (auto-rewrite-defs :always? t :explicit? t)
			   (if defs (auto-rewrite-defs) (skip)))))))
       (auto-rewrite-theories :theories theories)
       (auto-rewrite :names rewrites)
       (if exclude-theories
	   (stop-rewrite-theory :theories exclude-theories)
	   (skip))
       (if exclude (stop-rewrite :names exclude)(skip)))
      (skip-msg "No rewrites installed - please provide arguments."))
  "Sets up auto-rewrites from definitions of operators in the statement,
THEORIES and REWRITES, and stops rewriting on EXCLUDE-THEORIES
and EXCLUDE.   DEFS is either
   NIL:  defns in the statement are not installed as auto-rewrites
   T: All defns are installed as conditional rewrites
   !: All defns are installed, but with explicit (non-recursive) defns as
      unconditional rewrites
   !!: All defns are installed, but with explicit defns as
       unconditional rewrites even when partially applied
   explicit: Only explicit defns installed as conditional rewrites
   explicit!: Only explicit defns installed as unconditional rewrites
   explicit!!: Only explicit defns installed as !! rewrites.
THEORIES is a list of theories to be rewritten in the format expected by
          AUTO-REWRITE-THEORY.
REWRITES is a list of rewrite rules definitions/lemmas/assumptions
in the format expected by the AUTO-REWRITE rule.
EXCLUDE-THEORIES is a list of theories.
EXCLUDE is a list of rewrite rules. "
  "Installing rewrite rules from~
~@[~% definitions (~a) in the sequent~]~
~@[,~% theories: ~a~]~
~@[,~% rewrites: ~a~]~
~@[,~%and excluding theories: ~a~]~
~@[,~%and excluding rewrites: ~a~]")

(defstep grind (&optional (defs !) ;; nil, t, !, explicit, or explicit!
			  &inherit install-rewrites (assert :except fnums)
			  replace* reduce)
  (then
   (install-rewrites$)
   (then (bddsimp) (assert))
   (replace*)
   (reduce$))
    "A super-duper strategy.  Does auto-rewrite-defs/theories,
auto-rewrite then applies skolem!, inst?, lift-if, bddsimp, and
assert, until nothing works. Here
 DEFS is either
   NIL:  defns in the statement are not installed as auto-rewrites
   T: All defns are installed as conditional rewrites
   !: All defns are installed, but with explicit (non-recursive) defns as
      unconditional rewrites
   explicit: Only explicit defns installed as conditional rewrites
   explicit!: Only explicit defns installed as unconditional rewrites.
 THEORIES is a list of theories to be rewritten in the format expected 
          by AUTO-REWRITE-THEORY,
 REWRITES is a list of rewrite rules in AUTO-REWRITE format,
 EXCLUDE is a list of rewrite rules to be disabled (by STOP-REWRITE),
 IF-MATCH is either NIL (no instantiation), T (yes instantiation),
     ALL (all instances) or BEST (best instance) depending on which version
     of INST? is required.
 If the UPDATES? option is NIL, update applications are not if-lifted.
 POLARITY? if T, a positively occurring template is only matched against
     negatively occuring subexpressions, and less-than term occurrences
     are matched against greater-than occurrences.
The INSTANTIATOR argument can be used to specify use of an alternative
instantiation mechanism.  This defaults to the (INST?) strategy."
    "Trying repeated skolemization, instantiation, and if-lifting")


(defstep simplify-with-rewrites (&optional (fnums *) defs theories
					   &inherit install-rewrites stop-rewrite
					   stop-rewrite-theory)
  (then (install-rewrites)
    (assert fnums)
    (let ((decls (collect-referenced-decls
		  (declaration *top-proofstate*)
		  *ps*
		  (memq defs '(explicit explicit!))
		  nil
		  (mapappend #'rewrite-names
				 (disabled-auto-rewrites *current-context*))))
	  (names (loop for decl in decls
		       collect (mk-name-expr (id decl) nil (id (module decl))))))
      (stop-rewrite))
    (let ((theories (if (listp theories) theories (list theories)))
	  (theories (loop for entry in theories
			  collect
			  (if (consp entry)
			      (car entry)
			      entry))))
      (stop-rewrite-theory))
    (stop-rewrite))
  "Installs rewrites from statement (DEFS is either NIL, T, !, explicit,
or explicit!), from THEORIES, and REWRITES, then applies (assert fnums), and
then turns off all the installed rewrites.  Examples:
 (simplify-with-rewrites  + ! (\"real_props\" (\"sets[nat]\"))
                         (\"assoc\"))
 (simplify-with-rewrites * nil :rewrites (\"assoc\" \"distrib\"))."
  "Installing rewrites, simplifying, and disabling installed rewrites")
    
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; The query strategy is the basic interactive strategy where the user
;; is alway queried.

(defun query*-step () '(if *proving-tcc* (quit) (query*)))

(defstrat query* ()
  (if (or *proving-tcc* *in-apply*)
      (postpone)
      (let ((input (let ((input (qread "Rule? ")))
		     (setf (current-input *ps*)
			   input)
		     input))
	    (dummy (setq *rule-args-alist* nil))
	    (rule (retypecheck-sexp (unformat-rule input))))
	(try rule (query*) (query*))))
  "The basic strategy that queries the user for the next step.")


;;The else strategy

(defstrat else (step1 step2)
  (try step1 (skip) step2)
  "If step1 fails, then try step2, otherwise behave like step1" )

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;repeat strategy

(defstrat repeat (step)
  (try step (if (equal (get-goalnum *ps*) 1)
		(repeat step)
		(skip))
       (skip))
  "Successively apply STEP along main branch until it does nothing.")

(defstrat repeat* (step)
  (try step (repeat* step) (skip))
  "Successively apply STEP until it does nothing.")

(defstep prop ()
  (try (flatten) (prop$) (try (split) (prop$) (skip)))
  "A black-box rule for propositional simplification."
  "Applying propositional simplification")

(defrule quit ()
  (lisp (throw 'quit nil))
  "Terminates the proof attempt."
  "Quitting proof.")
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(defstrat then (&rest steps)
  (let ((x (when steps (car steps)))
	(y (when steps (cons 'then (cdr steps)))))
    (if steps (if (cdr steps)(try x y y) x) (skip)))
  "Successively applies the steps in STEPS.")

(defstrat then* (&rest steps)
  (then :steps steps)
  "Obsolete -see (THEN).")


(defstrat spread (step steplist)
  (try step
       (let ((goalnum (get-goalnum *ps*))
	     (par-ps (parent-proofstate *ps*))
	     ;;no dummy as opposed to spread@.
	     (x (if (consp steplist)
		    (nth (1- goalnum)
			 steplist)
		    '(skip))))
	 x)
       (let ((x (if (consp steplist)(car steplist) '(postpone t)))) x))
  "Applies STEP and then pairs the steps in STEPLIST with the subgoals")

(defstrat spread@ (step steplist)
  (try step
       (let ((goalnum (get-goalnum *ps*))
	     (par-ps (parent-proofstate *ps*))
	     (dummy
	      (when (eql goalnum 1)
		(cond ((> (1+ (length (remaining-subgoals par-ps)))
			  (length steplist))
		       (format t "~%***Warning: ~a has ~
                                  fewer subproofs (~s) than subgoals (~s)"
			 (label par-ps)
			 (length steplist)
			 (1+ (length (remaining-subgoals par-ps)))))
		      ((< (1+ (length (remaining-subgoals par-ps)))
			  (length steplist))
		       (format t "~%***Warning: ~a has ~
                                  fewer subgoals (~s) than subproofs (~s)"
			 (label par-ps)
			 (1+ (length (remaining-subgoals par-ps)))
			 (length steplist))))))
	     (x (if (consp steplist)
		    (nth (1- goalnum)
			 steplist)
		    '(skip))))
	 x)
       (let ((x (if (consp steplist)(car steplist) '(postpone t)))) x))
  "Like SPREAD, applies STEP and then pairs the steps in STEPLIST with
the subgoals, but generates warnings if number of subgoals do not match
the number of subproofs.")



(defstrat spread! (step steplist)
  (try (try step
	    (let ((goalnum (get-goalnum *ps*))
		  (par-ps (parent-proofstate *ps*))
		  (mismatch?
		   (when (eql goalnum 1)
		     (cond ((> (1+ (length (remaining-subgoals par-ps)))
			       (length steplist))
			    (format t
				"~%***Error: ~
                                  Fewer subproofs (~s) than subgoals (~s)"
			      (length steplist)
			      (1+ (length (remaining-subgoals par-ps))))
			    t)
			   ((< (1+ (length (remaining-subgoals par-ps)))
			       (length steplist))
			    (format t
				"~%***Error: ~
                                  Fewer subgoals (~s) than subproofs (~s)"
			      (1+ (length (remaining-subgoals par-ps)))
			      (length steplist))
			    t))))
		  (x (if (consp steplist)
			 (nth (1- goalnum)
			      steplist)
			 '(skip))))
	      (if mismatch? (fail) x))
	    (query*))
       (query*)
       (query*))
  "Like SPREAD, applies STEP and then pairs the steps in STEPLIST with
the subgoals, but generates an error and queries the user if the number
of subgoals do not match the number of subproofs.")

(defstrat branch (step steplist)
  (try step (let ((x (if (consp steplist)
			 (nth (1- (min (length steplist)
				       (get-goalnum *ps*)))
			      steplist)
			 '(skip))))
	      x)
       (let ((x (if (consp steplist)(car steplist) '(skip)))) x))
  "Like SPREAD, applies STEP then pairs steps
in STEPLIST with the resulting subgoals, using the last step in STEPLIST
for any excess subgoals.  If STEP does nothing, the first step in STEPLIST
is applied.")

(defstrat try-branch (step steplist else-step)
  (try step (let ((x (if (consp steplist)
			 (nth (1- (min (length steplist)
				       (get-goalnum *ps*)))
			      steplist)
			 '(skip))))
	      x)
       else-step)
  "Like BRANCH, tries STEP and then pairs the steps in STEPLIST to the
resulting subgoals.  The last step is used for any excess subgoals.
If STEP does nothing, then ELSE-STEP is applied.")

(defstep ground (&inherit (assert :except fnums))
  (try (flatten)
       (ground$)
       (try (split) (ground$) (assert)))
  "Does propositional simplification followed by the use of decision procedures."
  "Applying propositional simplification and decision procedures")


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defstep skosimp (&optional (fnum *) preds? &inherit skolem! skolem-typepred)
  (then (if preds?
	    (skolem-typepred fnum)
	    (skolem! fnum))
	(flatten))
  "Skolemize (with typepreds on skolem constants when PREDS? is T)
then disjunctively simplify.  "
  "Skolemizing and flattening")

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defstep skosimp* (&optional preds? &inherit skolem-typepred skolem!)
  (repeat (then (if preds? (skolem-typepred) (skolem!))
		(flatten)))
  "Repeatedly Skolemizes (with typepreds on skolem constants when PREDS?
is T) and disjunctively simplifies."
  "Repeatedly Skolemizing and flattening")

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defmethod predtype? ((te subtype))
  (with-slots (supertype) te
    (predtype? supertype)))

(defmethod predtype? ((te funtype))
  (with-slots (range) te
    (tc-eq (find-supertype range) *boolean*)))

(defmethod predtype? ((te dep-binding))
  (with-slots (type) te
    (predtype? type)))

(defmethod predtype? ((te type-expr))
  nil)

;(def-pvs-term upfrom-subtype "upfrom" "int_types" :nt type-expr)
;(def-pvs-term below-subtype "below" "nat_types" :nt type-expr)
;(def-pvs-term upto-subtype "upto" "nat_types" :nt type-expr)
;(def-pvs-term subrange-subtype "subrange" "subrange_type" :nt type-expr)
;(def-pvs-term above-subtype "above" "int_types" :nt type-expr)

(defun upfrom-res ()
  (car (resolve (mk-type-name '|upfrom| nil '|integers|) 'type nil)))

(defun below-res ()
  (car (resolve (mk-type-name '|below| nil '|naturalnumbers|) 'type nil)))

(defun upto-res ()
  (car (resolve (mk-type-name '|upto|  nil '|naturalnumbers|) 'type nil)))

(defun subrange-res ()
  (car (resolve (mk-type-name '|subrange| nil '|integers|) 'type nil)))

(defun above-res ()
  (car (resolve (mk-type-name '|above| nil '|integers|) 'type nil)))

(defun upfrom? (type)
  (let ((subst (match! (type-value (declaration (upfrom-res)))
		       type nil nil)))
    (when (not (eq subst 'fail))
      (cdr (assoc '|i| subst :test #'same-id)))))

(defun upto? (type)
  (let ((subst (match! (type-value (declaration (upto-res)))
		      type nil nil)))
    (when (not (eq subst 'fail))
      (cdr (assoc '|i| subst :test #'same-id)))))

(defun below? (type)
  (let ((subst (match! (type-value (declaration (below-res)))
		      type nil nil)))
    (when (not (eq subst 'fail))
      (cdr (assoc '|i| subst :test #'same-id)))))

(defun subrange? (type)
  (let ((subst (match! (type-value (declaration (subrange-res)))
		      type nil nil)))
    (when (not (eq subst 'fail))
      (cons (cdr (assoc '|i| subst :test #'same-id))
	    (cdr (assoc '|j| subst :test #'same-id))))))

(defun above? (type)
  (let ((subst (match! (type-value (declaration (above-res)))
		      type nil nil)))
    (when (not (eq subst 'fail))
      (cdr (assoc '|i| subst :test #'same-id)))))

(defun bounded-int-type? (type)
  (and (subtype? type)
       (or (when (tc-eq type *naturalnumber*)
	     (intern
		(format nil
		    "naturalnumbers.nat_induction") :pvs))
	(let ((upfrom? (upfrom? type)))
	     (when upfrom?
	       (intern
		(format nil
		    "bounded_int_inductions[~a].upfrom_induction"
		  upfrom?) :pvs)))
	   (let ((upto? (upto? type)))
	     (when upto?
	       (intern
		(format nil
		    "bounded_nat_inductions[~a].upto_induction"
		  upto?) :pvs)))
	   (let ((below? (below? type)))
	     (when below?
	       (intern
		(format nil
		    "bounded_nat_inductions[~a].below_induction"
		  below?) :pvs)))
	   (let ((above? (above? type)))
	     (when above?
	       (intern
		(format nil
		    "bounded_int_inductions[~a].above_induction"
		  above?) :pvs)))
	   (let ((subrange? (subrange? type)))
	     (when subrange?
	       (intern
		(format nil
		    "subrange_inductions[~a,~a].subrange_induction"
		  (car subrange?)
		  (cdr subrange?)) :pvs)))
	   (bounded-int-type? (supertype type)))))

(defun get-induction-domain-type (induction-name actual-type actual-var)
  (if induction-name  
      (let* ((name-expr (pc-parse induction-name 'name))
	     (resolutions (resolve name-expr 'formula nil *current-context*)))
	(if (singleton? resolutions)
	    (let ((forms (create-formulas (car resolutions))))
	      (if (and (singleton? forms)
		       (forall-expr? (car forms))
		       (predtype? (type (car (bindings (car forms))))))
		  (let ((type (domain (type (car (bindings (car forms)))))))
		    (if (compatible? type actual-type)
			(if (fully-instantiated? type)
			    type
			    (instantiate-from type actual-type actual-var))
			(progn
			  (error-format-if
			   "Induction predicate type: ~a~%~
                            does not match type of variable: ~a"
			   type actual-type)
			  nil)))
		  actual-type))
	    actual-type))
      (if (compatible? actual-type *naturalnumber*)
	  (when (tc-eq (compatible-type actual-type *naturalnumber*)
		       *naturalnumber*)
	    *naturalnumber*)
	  (let ((supertype (find-supertype actual-type)))
	    (when (adt? supertype)
	      supertype)))))

(defstep simple-induct (var fmla &optional name)
  (let ((var (pc-parse var 'expr)) ;;get var name-expr
	(fmla (typecheck (pc-parse fmla 'expr) ;;typecheck fmla
		:expected *boolean*)))
    (if (and fmla ;;if fmla is sensible
	     (forall? fmla)
	     (member var (bindings fmla)
		     :test #'(lambda (x y)
			       (or (format-equal x y)
				   (format-equal x (symbol-prefix (id y)))))))
	(let ((actual-var  (or (find var (bindings fmla) :test #'format-equal)
			       (find var (bindings fmla) ;;get var in fmla
				     :test #'format-equal
				     :key #'(lambda (x)
					      (symbol-prefix (id x))))))
	      (remaining-vars (remove actual-var (bindings fmla)
				      :test #'eq))) ;;get non-var vars
	  (if (not (null (freevars (type actual-var))))
	      ;;type of actual-var should not contain
	      ;;free occurrences of other bound vars.
	      (skip-msg "Type of induction variable contains bound variables.")
	      (let ((body ;;make body of induction predicate
		     (if remaining-vars
			 (lcopy fmla 'bindings
				remaining-vars)
			 (expression fmla)))
		    (actual-type (type actual-var)) ;;type/supertype
		    (actual-supertype ;;of actual-var
		     (find-declared-adt-supertype actual-type))
		    ;;NSH(2.16.97): was find-supertype
		    (induction-name  
		     (if name name ;;get induction-name from
			 ;;given name or actual-(super)type
			 (or (bounded-int-type? actual-type)
			     (if (adt?  actual-supertype)
				 (intern (format nil "~a.~a_induction"
					   (raise-actuals
					    (module-instance
					     (resolution actual-supertype)))
					   (id actual-supertype)) :pvs)
				 (if (compatible? actual-type
						  *naturalnumber*)
				     (if (tc-eq  (compatible-type actual-type
								  *naturalnumber*)
						 *naturalnumber*)
					 '|nat_induction|
					 nil)
				     nil)))))
		    (type ;;get domain type for induction predicate
		     (get-induction-domain-type induction-name actual-type actual-var))
		    (new-bound-var
		     (if (and type (not (tc-eq type actual-type)))
			 (make-bind-decl (id actual-var) type)
			 actual-var))
		    (new-var (make-variable-expr new-bound-var))
		    (subtype-constraints
		     (if (not (eq new-bound-var actual-var))
			 (compatible-preds type actual-type new-var)
			 nil)) ;;compatible? has been checked above.
		    (predicate
		     (when type
		       (if subtype-constraints
			   (let* ((new-body
				   (make-implication
				    (make-conjunction subtype-constraints)
				    (substit body
				      (acons actual-var new-var nil)))))
			     (make-lambda-expr (list new-bound-var)
			       new-body))
			   (make-lambda-expr (list actual-var) body)))))
		(if induction-name
		    (if predicate
			(let ((rule `(then (lemma ,induction-name)
					   (inst -1 ,predicate))))
			  rule)
			(skip-msg "Could not construct induction predicate"))
		    (skip-msg "Given variable does not have type natural number or datatype.")))))
	(skip-msg "Formula does not universally quantify given variable.")))
  "Selects an induction scheme according to the type of VAR in FMLA and uses FMLA
 to formulate  an induction predicate.  The name of the induction
formula can be explicitly supplied using the optional NAME argument.
See also INDUCT."
  "Inducting on ~a with formula ~a")
 
(defstep induct (var &optional (fnum 1) name)
  (let ((fmla (let* ((sforms (select-seq (s-forms (current-goal *ps*))
					 (list fnum))))
		(when sforms
		  (formula (car sforms)))))
	(var (pc-parse var 'name))
	(new-var-symbol (new-sko-symbol var *current-context*))
	(skolem-list (if (forall? fmla)
			 (loop for x in (bindings fmla)
			       collect (if (format-equal var x)
					   new-var-symbol
					   "_"))
			 nil)))
    (if fmla
	(try (simple-induct var fmla name)
	     (if *new-fmla-nums* ;;NSH(4.25.97) record fnum here
		 (let ((fnum (find-sform (s-forms (current-goal *ps*))
					 '+
					 #'(lambda (sform)
					     (eq (formula sform)
						 fmla)))))
		   (let ((fmla ;;NSH(4.25.97) record fmla here
			  (let ((sforms (select-seq
					 (s-forms (current-goal *ps*))
					 (list fnum))))
			    (when sforms (formula (car sforms))))))
		     (branch (let ((x (car *new-fmla-nums*)))
			       (then (beta x)	  ;;NSH(4/5/04)
				     ;;moved beta down here
				     (inst? x)
				     (split x)))
			     ((let ((num (find-sform
					  (s-forms (current-goal *ps*))
					  '+
					  #'(lambda (sform)
					      (eq (formula sform)
						  fmla)))))
				(then (prop)
				      (skolem fnum skolem-list)
				      (inst - new-var-symbol)
				      (prop)))
			      (let ((num (find-sform
					  (s-forms (current-goal *ps*))
					  '+
					  #'(lambda (sform)
					      (eq (formula sform)
						  fmla)))))
				(delete num))))))
		 (skip))
	     (skip-msg "Could not find suitable induction scheme."))
	(let ((msg (format nil "No formula corresponding to fnum ~a"
		     fnum)))
	  (skip-msg msg))))
  "Selects an induction scheme according to the type of VAR in FNUM and uses
formula FNUM to formulate an induction predicate, then simplifies yielding base
and induction cases.  The induction scheme can be explicitly supplied
as the optional NAME argument.
 (induct \"i\"): If i has type nat and occurs outermost universally quantified
   in formula FNUM, the nat_induction scheme is instantiated with a predicate
   constructed from formula FNUM, and beta-reduced and simplified to yield base
   and induction subcases.  If i has type that is a datatype, then the
   induction scheme for that datatype is used by default.
 (induct \"x\" :fnum 2 :name \"below_induction[N]\"): The below_induction
   scheme is instantiated with an induction predicate constructed from fnum 2."
  "Inducting on ~a~@[ on formula ~a~]~@[ using induction scheme ~a~]")

(defstep induct-and-simplify (var &optional (fnum 1) name &key (defs t)
				  (if-match best) (instantiator inst?) (where *)
				  &inherit assert install-rewrites)
  (then
   (install-rewrites$)
   (try (induct var fnum name)
	(then
	 (skosimp*)
	 (assert) ;;To expand the functions in the induction conclusion
	 (repeat (lift-if)) ;;To lift the embedded ifs,
	 ;;then simplify, split, then instantiate
	 ;;the induction hypothesis.  
	 (repeat* (then (assert)
			(bddsimp)
			(skosimp*)
			(if if-match
			    (let ((command (generate-instantiator-command
					    if-match nil instantiator nil where)))
			      command)
			    (skip))
			(lift-if))))
	(skip)))
  "Inducts on VAR in formula number FNUM using the induction
scheme named NAME, then simplifies using rewrite rules taken
from THEORIES and REWRITES.
 DEFS is either
   NIL:  defns in the statement are not installed as auto-rewrites
   T: All defns are installed as conditional rewrites
   !: All defns are installed, but with explicit (non-recursive) defns as
      unconditional rewrites
   explicit: Only explicit defns installed as conditional rewrites
   explicit!: Only explicit defns installed as unconditional rewrites.
 IF-MATCH is either all, best, or T, as in INST?,
             or NIL meaning don't use INST?.
 THEORIES is a list of theories to be rewritten in format expected by
          AUTO-REWRITE-THEORY,
 REWRITES is a list of rewrite rules in AUTO-REWRITE format.
 EXCLUDE is a list of rewrite rules on which rewriting must be stopped.
 WHERE tells the instantiator where to look for a match.
The INSTANTIATOR argument can be used to specify use of an alternative
instantiation mechanism.  This defaults to the (INST?) strategy.

  (induct-and-simplify \"i\" :defs ! :theories \"real_props\"
               :rewrites \"assoc\" :exclude (\"div\_times\" \"add\_div\")):
    If i has type nat, then the natural number induction
    scheme is instantiated with a predicate constructed from sequent
    formula 1, and the resulting cases are simplified using
    definitions in the given sequent (unconditionally expanding
    explicit definitions), the rewrites in the  prelude theory 
    real_props but excluding div_times and add_div,
    and the rewrite rule assoc."
  "By induction on ~a, and by repeatedly rewriting and simplifying")
  
(defstep induct-and-rewrite (var &optional (fnum 1)  &rest rewrites)
  (induct-and-simplify$ var fnum :defs nil :rewrites rewrites) 
  "Performs induction according to the type of VAR using FNUM
to formulate induction predicate, and then simplifies using the given 
REWRITES.
 (induct-and-rewrite \"x\" 1 \"append\" \"reverse\"): Inducts on x in formula 1,
   then simplifies the base and induction using the definitions append and
   reverse. "
  "By induction on ~a and rewriting")

(defstep induct-and-rewrite! (var &optional (fnum 1)  &rest rewrites)
  (induct-and-simplify$ var fnum :defs ! :rewrites rewrites)
  "Performs induction according to the type of VAR using FNUM
to formulate induction predicate, and then simplifies using the given 
REWRITES while expanding all definitions.
 (induct-and-rewrite! \"x\"): Inducts on x then simplifies the base and
   induction using the definitions of functions appearing in the sequent."
  "By induction on ~a and rewriting")

(defstep name-induct-and-rewrite (var &optional (fnum 1) name
				     &rest rewrites)
  (induct-and-simplify$ var fnum name :rewrite rewrites)
  "Performs induction according to the type of VAR or the induction scheme
named NAME, using FNUM to formulate induction predicate, and then
simplifies using given REWRITES. "
  "By induction on ~a and rewriting")

(defun domain-compatible? (type1 type2)
  (if (and (consp type1)(tupletype? type2))
      (compatible? type1 (types type2))
      (if (and (tupletype? type1)(consp type1))
	  (compatible? (types type1) type2)
	  (compatible? type1 type2))))


(defstep simple-measure-induct (measure vars &optional  (fnum 1)
					order)
  (let ((fmla (let* ((sforms (select-seq (s-forms (current-goal *ps*))
					  (list fnum))))
		 (when sforms
		   (formula (car sforms)))))
	(vars (if (consp vars) vars (list vars))))
    ;;select induction formula and variables
    (if (and fmla
	     (forall? fmla)
	     (subsetp vars (bindings fmla) :test #'format-equal))
	;;if induction formula universally quantifies induction
	;;variables
	(let ((actual-vars  (loop for var in vars
				  collect
				  (find var (bindings fmla)
					:test #'format-equal)))
	      (remaining-vars (loop for var in (bindings fmla)
				    when (not (memq var actual-vars))
				    collect var)))
	  (if (not (subsetp
		    (freevars (mapcar #'type actual-vars))
		    actual-vars
		    :test #'same-declaration))
	  (skip-msg "Type(s) of induction variable(s) contains bound variables.")
	  (let ((predicate
		 (let ((body
			(if remaining-vars
			    (lcopy fmla 'bindings
				   remaining-vars)
			    (expression fmla))))
		   (make-lambda-expr actual-vars body)))
		(domain-type (make-domain-type-from-bindings actual-vars))
		(measure (pc-parse measure 'expr))
		(measure (mk-lambda-expr actual-vars measure))
		(measure (typecheck measure))
		(measure-types (loop for typ in
				     (if (type measure)
					 (list (type measure))
					 (types measure))
				     when (and (funtype? typ)
					       (domain-compatible?
						(domain typ)
						domain-type))
				     collect typ))
		(range-type (if (member *naturalnumber* measure-types
					:test #'(lambda (x y)
						  (compatible? x (range y))))
				*naturalnumber*
				(if (member *ordinal* measure-types
					    :test #'(lambda (x y)
						      (compatible? x
								   (range
								    y))))
				    *ordinal*
				    (if measure-types
					;; SO 1997-06-25: took the range
					(range (car measure-types))
					nil))))
		(measure (when range-type ;;NSH(5.8.99)
			   (pc-typecheck measure
			     :expected (mk-funtype domain-type range-type))))
		(measure-freevars (when range-type (freevars measure)))
		(order-type (when range-type 
			      (make-predtype (make-tupletype
							 (list range-type
							       range-type)))))
		(order (when range-type
			 (if order
			     (typecheck (pc-parse order 'expr)
			       :expected order-type)
			     (typecheck (pc-parse
					 ;; CRW(8/8/94): changed <= to < in
					 ;; string below, to match new defn.
					 ;; of well_founded?
					 (format nil
					     "(LAMBDA (m, n: ~a): m<n)"
					   range-type)
					 'expr)
			       :expected order-type))))
		(induction-name
		 (when range-type 
		   (mk-name (intern "measure_induction" :pvs)
			  (mapcar #'mk-actual (list domain-type range-type measure order)))))
		)
	    (if measure-freevars
		(let ((msg (format nil "Given measure contains free variables ~a" measure-freevars)))
		  (skip-msg msg))
		(if range-type
		(if induction-name
		    (if (tc-eq range-type *naturalnumber*)
			(let ((rule `(spread (lemma ,induction-name)
				      ((instantiate -1 ,predicate)
				       (then (lemma "naturalnumbers.wf_nat")
					(prop))))))
			  rule)
			(if (tc-eq range-type *ordinal*)
			(let ((rule `(spread (lemma ,induction-name)
				      ((instantiate -1 ,predicate)
				       (then (lemma "ordinals.well_founded_le")
					(prop))))))
			  rule)
			(let ((rule `(spread (lemma ,induction-name)
					     ((instantiate -1 ,predicate)))))
			  rule)))
		    (skip-msg "Given variable does not have type natural
number or datatype,"))
		(skip-msg "Given measure does not map to a natural number or
ordinal."))))))
	(skip-msg "Formula does not universally quantify given variable,")))
  "Selects and insert as an antecedent, an instance of measure
induction with measure MEASURE containing only free variables from
VARS using formula FNUM to formulate an induction predicate.
Uses ORDER as the well-founded relation; if not specified defaults
to < on nats or ordinals.

Example: (simple-measure-induct \"i+j\" (\"i\" \"j\")).
See also SIMPLE-MEASURE-INDUCT."  
  "Inducting with measure ~a on ~a")

(defhelper measure-induct (measure vars &optional (fnum 1) order skolem-typepreds?)
  (try-branch (simple-measure-induct$ measure vars fnum order)
	      ((if *new-fmla-nums*
		   (branch
		    (let ((x (car *new-fmla-nums*)))
		      (then (beta)
			    (split x)))
		    ((then (let ((skoterms
				  (fill-up-terms fnum nil *ps*))
				 (bndvars (bindings
					   (formula
					    (car (select-seq
						  (s-forms
						   *goal*)
						  (list fnum))))))
				 (vars (if (consp vars) vars
					   (list vars))) 
				 (var-skoterms
				  (loop for var in vars
					collect
					(loop for bvar in bndvars
					      as skosymb in skoterms
					      thereis
					      (and (same-id bvar var)
						   skosymb))))
				 (var-skoterm
				  (if (singleton? var-skoterms)
				      (car var-skoterms)
				      (format nil "(~{~a~^,~})" var-skoterms)))
				 (rest-skoterms
				  (loop for bvar in bndvars
					as skosymb in skoterms
					when (not (member bvar vars
							  :test #'same-id))
					collect skosymb))
				 (inst-rule1 `(inst -
					      ,var-skoterm))
				 (inst-rule2 `(inst -
						    ,@rest-skoterms)))
			     (then (skolem fnum skoterms
					   :skolem-typepreds? skolem-typepreds?)
				   inst-rule1
				   inst-rule2
				   (beta)
				   (prop)
				   ))
			   (skip))
		     (let ((incfnum ;;NSH(5.23.99)
			    (length (loop for x in *new-fmla-nums*
					  when (and (> x 0)
						    (<= x fnum))
					  collect x)))
			   (delfnum (+ fnum incfnum)))
		       (then (delete delfnum)
			     (if (and (consp vars);;NSH(8.28.96)
				      (> (length vars) 1))
				 (detuple-boundvars 1 :singles? t)
				 (skip))))))
		   (skip))
	       (skip))
    (skip-msg "Could not find suitable induction scheme,"))
  "This is a helper strategy; use MEASURE-INDUCT+ instead."
  "Inducting on ~a")

(defstep measure-induct+ (measure vars &optional (fnum 1) order skolem-typepreds?)
  (try (measure-induct$ measure vars fnum order skolem-typepreds?)
       (then (skosimp :preds? skolem-typepreds?)
	     (let ((ihnum (if *new-fmla-nums*
			      (apply #'min *new-fmla-nums*)
			      0))
		   (ih (unless (>= ihnum 0)
			 (args1
			  (formula
			   (car (select-seq (s-forms *goal*) (lisp ihnum))))))))
	       (if ih
		   (let ((outerbvars (when (forall-expr? ih)
				       (bindings ih)))
			 (body (when (forall-expr? ih)
				 (expression ih)))
			 (measure-ineq (when (implication? body)
					 (args1 body)))
			 (innerbvars (when (and measure-ineq
						(forall-expr? (args2 body)))
				       (bindings (args2 body))))
			 (innerbody (when innerbvars (expression (args2 body)))))
		     (if innerbvars
			 (let 
			     ((new-outers (make-new-bindings outerbvars nil body))
			      (psubst-list (pairlis outerbvars new-outers))
			      (new-innerbvars (substit innerbvars psubst-list))
			      (subst-list (pairlis innerbvars new-innerbvars psubst-list))
			      (new-measure-ineq (substit measure-ineq subst-list))
			      (new-innerbody (substit innerbody subst-list))
			      (new-ih (make-forall-expr new-outers
					(make-forall-expr new-innerbvars
					  (make-implication new-measure-ineq
							    new-innerbody)))))
			   (branch (case new-ih)
				   ((let ((ihfnum (1- ihnum)))
				      (hide ihfnum))
				    (let ((outer-skonames
					   (fill-up-terms 1 nil *ps*)))
				      (then (skolem 1 outer-skonames skolem-typepreds?)
					    (instantiate ihnum
							 outer-skonames)
					    (let ((inner-skonames
						   (fill-up-terms 1 nil *ps*)))
					      (then
					       (skolem 1 inner-skonames skolem-typepreds?)
					       (branch (split ihnum)
						       ((instantiate ihnum inner-skonames)
							(skip)))
					       (prop))))))))
			 (skip)))
		   (skip))))
       (skip))
  "Uses MEASURE-INDUCT but recasts induction hypothesis in a more usable form,
i.e. (FORALL x, w: m(x) < m(y) IMPLIES p(x, w)) rather than
     (FORALL x: m(x) < m(y) IMPLIES (FORALL w: p(x, w))).
This form should always be preferred over MEASURE-INDUCT.

Suitably instantiates and uses the measure induction scheme in the
PVS prelude.  Selects an instance of measure induction with measure
MEASURE containing only free variables from VARS using formula FNUM to
formulate an induction predicate.   Uses ORDER as the well-founded
relation; if not specified defaults to < on nats or ordinals.
Adds typepreds of the introduced skolem constants if SKOLEM-TYPEPREDS? is T.
Simplifies out the result to yield the induction goal.

Example:  (measure-induct+ \"length(x) + length(y)\" (\"x\" \"y\"))."
  "Inducting on measure: ~a, ~% with variables: ~a" )

(defstep measure-induct-and-simplify
    (measure vars &optional (fnum 1) order expand (defs t)
	     (if-match best) theories rewrites exclude
	     (instantiator inst?) skolem-typepreds? (where *))
  (then
   (install-rewrites$ :defs defs :theories theories
		      :rewrites rewrites :exclude exclude)
   (try (measure-induct+$ measure vars fnum order skolem-typepreds?)
	(then
	 (let ((expands
		(if (consp expand)
		    (loop for x in expand
		       collect `(expand ,x :fnum +))
		    `((expand ,expand :fnum +))))
	       (command `(then ,@expands)))
	   command)
	 (skosimp* skolem-typepreds?)
	 (assert) ;;To expand the functions in the induction conclusion
	 (repeat (lift-if)) ;;To lift the embedded ifs,
	 ;;then simplify, split, then instantiate
	 ;;the induction hypothesis.  
	 (repeat* (then (assert)
			(bddsimp)
			(skosimp* skolem-typepreds?)
			(if if-match
			    (let ((command (generate-instantiator-command
					    if-match nil instantiator nil where)))
			      command)
			    (skip))
			(lift-if))))
	(skip)))
  "Invokes MEASURE-INDUCT+ on MEASURE, VARS, FNUM, and ORDER, and then
repeatedly expands definition(s) taken from EXPAND in the succedent,
skolemizes, simplifies using rewrite rules taken from THEORIES and
REWRITES, instantiates, and lifts IFs.

 ORDER is a well-founded relation;
       if not specified defaults to < on nats or ordinals
 EXPAND is either a single definition name, or a list of names
 DEFS is either
   NIL:  defns in the statement are not installed as auto-rewrites
   T: All defns are installed as conditional rewrites
   !: All defns are installed, but with explicit (non-recursive) defns as
      unconditional rewrites
   explicit: Only explicit defns installed as conditional rewrites
   explicit!: Only explicit defns installed as unconditional rewrites.
 IF-MATCH is either all, best, or T, as in INST?,
             or NIL meaning don't use INST?.
 THEORIES is a list of theories to be rewritten in format expected by
          AUTO-REWRITE-THEORY,
 REWRITES is a list of rewrite rules in AUTO-REWRITE format.
 EXCLUDE is a list of rewrite rules on which rewriting must be stopped.
 INSTANTIATOR argument can be used to specify use of an alternative
       instantiation mechanism.  This defaults to the (INST?) strategy.
 SKOLEM-TYPEPREDS? when T indicates that typepreds should be generated for
       the introduced skolem constants.
 WHERE tells the instantiator where to look for a match.

Example:
    (measure-induct-and-simplify \"size(x)\" (\"x\") :expand \"unfold\" :if-match all)."
  "Invoking measure induction and simplifying")

(defstep replace-extensionality (f g &optional expected keep?)
  (let ((tt (when expected (typecheck (pc-parse expected 'type-expr))))
	(ff (pc-typecheck (pc-parse f 'expr) :expected tt))
	(gg (pc-typecheck (pc-parse g 'expr) :expected tt))
	(tf (type ff))
	(tg (type gg)))
    (try (if tt
	     (extensionality tt)
	     (try (extensionality tf) (skip) (extensionality tg)))
	 (branch (inst - ff gg)
		 ((branch (split -1)
			  ((then (replace -1)
				 (if keep? (skip) (delete -1)))
			   (then* (skolem! 1)
				  (beta 1)
				  (assert 1))))
		  (assert)))
	 (skip)))
  "Uses the extensionality axiom on the type of F (or with
EXPECTED as the type when given) to replace F by G.  Retains the
extensionality axiom scheme if KEEP? is T, and discards it otherwise.
See also EXTENSIONALITY, APPLY-EXTENSIONALITY."
  "Replacing ~a by ~a using extensionality")

(defstep replace-ext (f g &optional expected keep?)
  (let ((tt (when expected (typecheck (pc-parse expected 'type-expr))))
	(ff (pc-typecheck (pc-parse f 'expr) :expected tt))
	(gg (pc-typecheck (pc-parse g 'expr) :expected tt))
	(tf (type ff))
	(tg (type gg)))
    (try (if tt
	     (extensionality tt)
	     (try (extensionality tf) (skip) (extensionality tg)))
	 (try-branch (inst - ff gg)
		     ((branch (split -1)
			      ((then (replace -1)
				     (if keep? (skip) (delete -1)))
			       (then* (skolem! 1)
				      (beta 1)
				      (assert 1))))
		      (assert))
		     (fail)) ;;NSH(4/15/13)
	 (skip)))
  "Uses the extensionality axiom on the type of F (or with
EXPECTED as the type when given) to replace F by G.  Retains the
extensionality axiom scheme if KEEP? is T, and discards it otherwise.
This command supersedes REPLACE-EXTENSIONALITY: it fails gracefully
if the inst step doesn't succeed.  
See also EXTENSIONALITY, APPLY-EXTENSIONALITY, REPLACE-EXTENSIONALITY."
  "Replacing ~a by ~a using extensionality")

;;The extensionality-type method returns the supertype to which extensionality
;;can be applied, or nil otherwise. 
(defmethod extensionality-type ((type funtype))
  type)

(defmethod extensionality-type ((type tupletype))
  type)

(defmethod extensionality-type ((type cotupletype))
  type)

(defmethod extensionality-type ((type recordtype))
  type)

(defmethod extensionality-type ((type subtype))
  (if (and (adt? (find-supertype type))
	   (recognizer? (predicate type)))
      type
      (extensionality-type (supertype type))))

(defmethod extensionality-type ((type t))
  nil)


(defstep apply-ext (&optional (fnum +) keep? (hide? t))
  (let ((sforms (select-seq (s-forms (current-goal *ps*))
			    (if (memq fnum '(* + -)) fnum
				(list fnum))))
	(fmla (loop for sf in sforms thereis
		    (let ((sf-fmla (formula sf)))
		      (and (equation? (formula sf))
			   (extensionality-type (type (args1 (formula sf))))
			   sf-fmla))))
	(lhs (when fmla (args1 fmla)))
	(rhs (when fmla (args2 fmla)))
	(type (when fmla
		(typecase (type lhs)
		  (adt-type-name (ext-find-recognizer-subtype lhs rhs))
		  (cotupletype (ext-find-injective?-subtype lhs rhs))))))
    (if fmla
	(try (replace-ext$ lhs rhs :keep? keep? :expected type)
	     (then
	      (let ((fnums (find-all-sformnums (s-forms
						(current-goal *ps*))
					       '+
					       #'(lambda (x)
						   (eq x fmla))))
		    (fnum (if fnums (car fnums) nil)))
		(if (and hide? fnum) (hide fnum) (skip)))
	      (assert))
	     (let ((msg (format nil
			    "Couldn't find a suitable extensionality rule ~
                             for formula ~a"
			  (car (gather-fnums sforms fnum nil
					     #'(lambda (x)
						 (tc-eq (formula x) fmla)))))))
	       (skip-msg msg)))
	(skip-msg "Couldn't find suitable formula for applying extensionality.")))
  "Tries to prove an equality indicated by FNUM via extensionality.  Note that
if FNUM is not given, then the first consequent that is an equation is used.
If KEEP? is T, the equality is retained as an antecedent.
If HIDE? is T (default), the equality formula to which extensionality is applied,
is hidden.  Supersedes APPLY-EXTENSIONALITY: finds the right sform for applying
extensionality, and hides the main formula instead of deleting it.  
See also EXTENSIONALITY, APPLY-EXTENSIONALITY."
  "Applying extensionality")

(defstep apply-extensionality (&optional (fnum +) keep? hide? expected)
  (let ((sforms (select-seq (s-forms (current-goal *ps*))
			    (if (memq fnum '(* + -)) fnum
				(list fnum))))
	(fmla (loop for sf in sforms thereis
		    (when (equation? (formula sf))
		      (formula sf))))
	(lhs (when fmla (args1 fmla)))
	(rhs (when fmla (args2 fmla)))
	(type (when fmla
		(or expected
		    (typecase (type lhs)
		      (adt-type-name (ext-find-recognizer-subtype lhs rhs))
		      (cotupletype (ext-find-injective?-subtype lhs rhs)))))))
    (if fmla
	(try (replace-extensionality$ lhs rhs :keep? keep? :expected type)
	     (then
	      (let ((fnums (find-all-sformnums (s-forms
						(current-goal *ps*))
					       '+
					       #'(lambda (x)
						   (eq x fmla))))
		    (fnum (if fnums (car fnums) nil)))
		(if (and hide? fnum) (delete fnum) (skip)))
	      (assert))
	     (let ((msg (format nil
			    "Couldn't find a suitable extensionality rule ~
                             for formula ~a"
			  (car (gather-fnums sforms fnum nil
					     #'(lambda (x)
						 (tc-eq (formula x) fmla)))))))
	       (skip-msg msg)))
	(skip-msg "Couldn't find suitable formula for applying extensionality.")))
  "Tries to prove an equality indicated by FNUM via extensionality.  Note that
if FNUM is not given, then the first consequent that is an equation is used.
If KEEP? is T, the equality is retained as an antecedent.
If HIDE? is T, the equality formula to which extensionality is applied,
is hidden.
See also EXTENSIONALITY."
  "Applying extensionality")

(defun ext-find-recognizer-subtype (lhs rhs)
  (when (symbolp (adt (type lhs)))
    ;; May happen after restoring from bin files
    (restore-adt-slot (type lhs)))
  (dolist (c (constructors (adt (type lhs))))
    (let* ((rec (make!-recognizer-name-expr (recognizer c) (type lhs)))
	   (lhs-rec (make!-application rec lhs)))
      (when (true-p (assert-test lhs-rec))
	(let ((rhs-rec (make!-application rec rhs)))
	  (when (true-p (assert-test rhs-rec))
	    (return (make!-expr-as-type rec))))))))

(defun ext-find-injective?-subtype (lhs rhs)
  (dotimes (i (length (types (type lhs))))
    (let ((lhs-inj? (make!-injection?-application (1+ i) lhs)))
      (when (true-p (assert-test lhs-inj?))
	(let ((rhs-inj? (make!-injection?-application (1+ i) rhs)))
	  (when (true-p (assert-test rhs-inj?))
	    (return
	     (make!-expr-as-type
	      (make!-injection?-expr (1+ i) (type lhs))))))))))

(defstep eta (type)
  (let ((type (typecheck (pc-parse type 'type-expr))))
    (if (adt? (find-supertype type))
	(if (subtype? type)
	    (if (recognizer? (predicate type))
		(let ((name (format nil "~a_~a_eta~@[[~{~a~^, ~}]~]"
			 (id (find-supertype type))
			 (op-to-id (constructor (predicate type)))
			 (actuals (module-instance (supertype type))))))
		  ;;NSH(2.25.97):was find-supertype but that
		  ;;now finds list[number] rather than list[nat].
		  ;;find-declared-adt-supertype is not needed
		  ;;since the supertype will be right anyway.
		  (lemma name))
		(if (datatype-subtype? type)
		    (skip-msg "Need a constructor subtype to generate an eta axiom.")
		    (let ((supertype
			   (supertype type)))
		      (eta supertype))))
	    (skip-msg "No relevant eta axiom for ~a"
		      type))
	(let ((eta-formula (make-eta-formula type)))
	  (if eta-formula
	      (try (extensionality type)
		   (branch (case eta-formula)
			  ((delete -2)
			  (then* (skolem! 1)
				 (inst? -1 :where 1)
				 (ground))))
		   (skip-msg "No suitable extensionality axiom for given type. "))
	      (skip-msg "No suitable eta formula for given type")))))
  "Introduces Eta version of extensionality axiom for given TYPE "
  "Introducing Eta axiom for type ~a")

(defmethod make-eta-formula ((type subtype))
  (make-eta-formula (supertype type)))

(defmethod make-eta-formula ((type recordtype))
  (let* ((var (generate-variable (gentemp "r_") type
				*current-context*))
	 (fields (fields type))
	 (assignments (loop for fld in fields
			    collect
			    (mk-assignment 'uni
			      (list (list (mk-field-name-expr
					   (id fld)
					   (resolution fld))))
			      (make-field-application
			       (id fld) var))))
	 (record-expr (make-record-expr assignments type)))
    (close-freevars (make-equality record-expr var) *current-context* (list var))))

(defmethod make-eta-formula ((type tupletype))
  (let* ((var (generate-variable (gentemp "u_") type
				*current-context*))
	 (lhs 
	  (make-tuple-expr
	       (loop for index from 1 to (length (types type))
		     collect
		     (make-projection-application index  var)))))
    (close-freevars (make-equality lhs var)
		    *current-context*
		    (list var))))

(defmethod make-eta-formula ((type funtype))
  (let* ((var (generate-variable (gentemp "u_") type
				*current-context*))
	 (bvar (generate-variable (gentemp "x_")
				  (domtype type)
				*current-context*))
	 (lhs (quant-to-lambda
	       (let ((*no-expected* t)) ;shadowing (NSH:10-29-01)
		 (close-freevars (make-application var bvar)
			       *current-context*
			       (list bvar))))))
    (close-freevars (make-equality lhs var) *current-context*
		    (list var))))

(defmethod make-eta-formula ((type type-expr))
  nil)

(defun pc-type (type)
  (with-slots (print-type) type
    (if print-type print-type type)))

(defstep replace-eta (term &optional expected keep?)
  (let ((type (if expected
		  (typecheck (pc-parse expected 'type-expr))
		  nil))
	(term (if type
		  (pc-typecheck (pc-parse term 'expr)
		    :expected type)
		  (typecheck (pc-parse term 'expr))))
	(type (if type (pc-type type)
		  (if (type term) (pc-type (type term)) nil))))
    (if type
	(try (eta type)
	     (then (inst -1 term)
		   (replace -1)
		   (if keep? (skip)
		       (delete -1)))
	     (skip-msg "No suitable eta axiom scheme found."))
	(skip-msg "Please supply optional type argument.")))
  "Instantiates eta axiom scheme for type EXPECTED or type of TERM with TERM
See also ETA, APPLY-ETA."
  "Applying eta axiom scheme to ~a and does replace to eta-reduce")


(defstrat then@ (&rest steps)
  (if steps
    (let ((x (car steps))
	  (y (cdr steps))
	  (rest-step `(then@ ,@y)))
      (spread x (rest-step)))
    (skip))
  "Applies first step to the current goal and remaining
steps to the first subgoal, postponing remaining subgoals.")


(defstep case-replace (formula &inherit replace)
  (then@ (case formula) (replace -1))
  "Case splits on a given FORMULA lhs=rhs and replaces lhs by rhs.
See also CASE, CASE*.  Hides FORMULA when HIDE? is T."
  "Assuming and applying ~a")

(defstep name-case-replace (a b x &inherit case-replace name-replace)
  (let ((a (pc-typecheck (pc-parse a 'expr)))
	(b (pc-typecheck (pc-parse b 'expr)))
	(eq (make-equality a b)))
    (then@ (case-replace eq)(name-replace x b))) 
  "Replace A with B, then name B as X" 
  "Replacing ~a with ~a which is then named ~a")

;;NSH(8.20.93): Strategy for timing proof steps.
(defstrat time (strat)
  (let ((init (get-internal-run-time)))
    (then strat
	  (let ((string
		 (format nil "~%~%Run time for ~s~%  = ~,2F secs."
			    strat
			    (/ (- (get-internal-run-time) init)
			       internal-time-units-per-second))))
	    (skip-msg string))))
  "Times a strategy from initial point to leaf nodes."
  "")
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;NSH(12.16.93): replace* strategy does LR replacement on fnums.

(defun non-self-looping-replace (fmla &optional direction)
  (let* ((lhs (when (and (negation? fmla)
			 (or (equation? (args1 fmla))
			     (iff-or-boolean-equation? (args1 fmla))))
		(if (string-equal direction 'rl)
		    (args2 (args1 fmla))
		    (args1 (args1 fmla)))))
	 (rhs (when lhs
		(if (string-equal direction 'rl)
		    (args1 (args1 fmla))
		    (args2 (args1 fmla))))))
    (or (null lhs)
	(not (occurs-in lhs rhs)))))

(defstep replace* (&rest fnums &inherit replace)
  (let ((fnums (find-all-sformnums (s-forms *goal*)
				   (if (null fnums) '* fnums)
				   #'(lambda (fmla)
				       (non-self-looping-replace fmla dir))))
	(x `(then* ,@(loop for y in fnums collect `(replace ,y)))))
    x)
  "Apply left-to-right replacement with formulas in FNUMS, but only for
those formulas that don't introduce self-loops."
  "Repeatedly applying the replace rule")

(defstep skolem! (&optional (fnum *) keep-underscore? &inherit skolem)
  (let ((sformnum (find-!quant fnum *ps*)))
    (let ((newterms (fill-up-terms sformnum nil *ps* keep-underscore?)))
      (skolem sformnum newterms)))
  "Skolemizes by automatically generating skolem constants.
When KEEP-UNDERSCORE? is T, a bound variable x_1 is replaced by skolem constant
x_1!n rather than x!n, for some number n."
  "Skolemizing") 

(defun check-inst-quant (fmla terms pos?)
  (let ((terms-length (length terms)))
    (or (zerop terms-length)
	(and (if pos? (exists-expr? fmla)(forall-expr? fmla))
	     (let ((bind-length  (length (bindings fmla))))
	       (or (eql bind-length terms-length)
		   (and (< bind-length terms-length)
			(let* ((rest-terms (nthcdr bind-length terms))
			       (current-terms (ldiff terms rest-terms)))
			  (and  (or (not
				     (some #'(lambda (x)
					       (or (and (symbolp x)
							(eq x '_))
						   (and (stringp x)
							(equal x "_"))
						   (and (name-expr? x)
							(eq (id x) '_))))
					   current-terms))
				    (error-format-if "~%Misplaced underscore in given term list."))
			       (check-inst-quant (expression fmla)
						 rest-terms
						 pos?))))))))))

(defstep instantiate-one (fnum terms &optional copy?)
  (else (try (instantiate fnum terms copy?)
	     (let ((new-sforms
		    (select-seq (s-forms (current-goal *ps*))
				*new-fmla-nums*))
		   (rest (delete-seq (s-forms (current-goal *ps*))
				     *new-fmla-nums*)))
	       (if (subsetp new-sforms rest
			    :test #'tc-eq
			    :key #'formula)
		   (then (let ((msg (format nil
					"Avoiding instantiation leading to duplicate ~
                                         formulas ~:[~;(due to TCCs)~]:~
                                         ~{~%  ~a~}"
				      (tcc-proofstate? *ps*) new-sforms)))
			   (skip-msg msg))
			 (fail))
		   (skip)))
	     (skip))
	(skip))
  "Same as INSTANTIATE but treated as a SKIP if the instantiation would
introduce a duplicate formula."
  "~%Instantiating the top quantifier in ~a with the terms: ~% ~a,")


(defstep inst (fnum &rest terms)
  (let ((terms (if (listp terms) terms (list terms)))
	(fnums-arg (extract-fnums-arg fnum))
	(fnums (gather-fnums (s-forms (current-goal *ps*)) fnums-arg nil
			     #'(lambda (sform)
				 (if (negation? (formula sform))
				     (check-inst-quant (args1 (formula sform))
						       terms nil)
				     (check-inst-quant (formula sform)
						       terms t)))))
	(fnum (car fnums))
	(bindings (let* ((sforms (select-seq (s-forms (current-goal *ps*))
					     fnum))
			 (fmla (when sforms (formula (car sforms)))))
		    (when fmla
		      (if (negation? fmla)
			  (bindings (args1 fmla))
			  (bindings fmla))))))
    (if fnum
	(if (eql (length terms)(length bindings))
	    (instantiate-one$ fnum terms)
	    (if (< (length bindings)(length terms))
		(let ((current-terms (loop for x in terms as nil in bindings
					collect x))
		      (remaining-terms (nthcdr (length bindings) terms)))
		  (try-branch (instantiate-one$ fnum current-terms)
			      ((try (inst fnum :terms remaining-terms)
				    (skip)
				    (fail))
			       (skip))
			      (skip)))
		(skip-msg "Not enough terms given.")))
	(skip-msg "No quantified formula matching given number of terms.")))
  "Instantiates the top quantifier in formula FNUM. See INST-CP for copying
quantified formula." 
  "Instantiating the top quantifier in ~a with the terms: ~% ~{~a~^, ~}")

(defstep inst-cp (fnum &rest terms)
  (let ((terms (if (listp terms) terms (list terms)))
	(fnum (find-sform (s-forms (current-goal *ps*)) fnum
			   #'(lambda (sform)
			      (if (negation? (formula sform))
				  (check-inst-quant (args1 (formula sform))
						    terms nil)
				  (check-inst-quant (formula sform)
						    terms t)))))
	(bindings (let* ((sforms (select-seq (s-forms (current-goal *ps*))
					   fnum))
			(fmla (when sforms (formula (car sforms)))))
		    (when fmla
		      (if (negation? fmla)
			  (bindings (args1 fmla))
			  (bindings fmla))))))
    (if fnum
	(if (eql (length terms)(length bindings))
	    (instantiate-one$ fnum terms t)
	    (if (< (length bindings)(length terms))
		(let ((current-terms (loop for x in terms as nil in bindings
					   collect x))
		      (remaining-terms (nthcdr (length bindings) terms)))
			  (try (instantiate-one$ fnum current-terms t)
			       	(let ((fnum
				       (if (minusp fnum)(1- fnum)(1+ fnum))))
				  (inst fnum :terms remaining-terms))
			       (skip)))
			(skip-msg "Not enough terms given.")))
	(skip-msg "No quantified formula matching given number of terms.")))
  "Instantiates the top quantifier in formula FNUM but retains a copy of the
quantified formula.
See INST for a non-copying version." 
  "Instantiating (with copying) the top quantifier in ~a with the terms:
~{~a~^, ~}")

(defstep inst? (&optional (fnums *) subst (where *)
			  copy? if-match polarity? (tcc? t))
  (let ((fnums-arg (extract-fnums-arg fnums))
	(sforms (remove-if-not #'exists-sform?
		  (select-seq (s-forms (current-goal *ps*))
			      fnums-arg)))
	(search (find-quant-terms sforms subst where
				  if-match polarity? tcc? *ps*))
	(sformnum (when search (car search)))
	(newterms (when search (cdr search))))
    (if newterms
	(let ((x (make-inst?-rule sformnum newterms copy? if-match)))
	  x)
	(if (all-or-best? if-match)
	    ;;try again with no polarity
	    (let ((dummy (format-if "~%Trying instantiation with ~
                                      IF-MATCH set to NIL~%"))
		  (search (find-quant-terms sforms subst where
					    nil polarity? tcc? *ps*))
		  (sformnum (when search (car search)))
		  (newterms (when search (cdr search)))
		  (x (make-inst?-rule sformnum newterms copy? nil)))
	      x)
	    (skip))))
  "Tries to automatically instantiate a quantifier:
FNUMS indicates which quantified formula:  *,-, +, or (n1, n2,..)
SUBST is a partial substitution for the bound variable names.
WHERE indicates which fnums to search for a match.
COPY? if T, the quantified formula is copied.
IF-MATCH if all, all possible instantiations of a chosen template 
                 subexpression containing all the instantiable variables
                 of the chosen quantified formula are found, and if
                 this fails, then it tries INST? with IF-MATCH set to NIL,
         if best, the instantiation from the all case that generates
                  the fewest TCCs is chosen,
         if T, the instantiation only occurs if the match succeeds,
               otherwise the given partial substitution is used.
         if first*, all possible instantiations of the
                    first successful template are chosen.
POLARITY? if T, a positively occurring template is only matched against
                negatively occuring subexpressions, and less-than
                term occurrences are matched against greater-than
                occurrences.
TCC? if NIL only selects instantiations that do not generate any TCCs.
     The default value is T.  There is no check to see if the TCCs are
     true in the given context."
  "Instantiating quantified variables")

 (defhelper quant? (&optional (fnums *) subst (where *)
		   copy? if-match)
  (inst? fnums subst where copy? if-match)
  "Use INST? instead.  Tries to automatically instantiate a quantifier:
FNUM indicates which quantified formula: n, *,-, +.
SUBST is a partial substitution for the bound variable names.
WHERE indicates which fnums to search for a match.
COPY? if T, the quantified formula is copied.
IF-MATCH if all, all possible instantiations of a chosen template 
                 subexpression of the chosen quantified formula are
                 found,
         if best, the instantiation from the all case that generates
                  the fewest TCCs is chosen,
         if T, the instantiation only occurs if the match succeeds,
               otherwise the given partial substitution is used."
  "Instantiating quantified variables")

(defstep inst* (fnum &rest terms-lists)
  (let ((steps (inst*-steps fnum terms-lists)))
    (if steps
	steps
	(skip)))
  "Instantiates a given formula, creating as many copies of the formula FNUM as
   needed to use the TERMS-LISTS.  The original formula is hidden afterward, copy
   it before this command if desired.  If there is an error in any of the instances,
   the entire command fails.
   Examples:
    (inst* -1 (1 2) (3 4) (5 6) (7 8) (9 10))
      Assuming FNUM -1 is a universal formula that expects two numbers, this would
      create five instances of that formula.
    (inst* -1 (1 2) (3 4) (5) (7 8) (9 10))
      Gives the error \"No quantified formula matching given number of terms.\"
      and the sequent is unchanged.
    "
  "Instantiating quantifying variables lists")

(defun inst*-steps (fnum terms-lists &optional steps)
  (if (null terms-lists)
      steps
      (let ((step (if steps
		      `(inst-cp$ ,fnum ,@(car terms-lists))
		      `(inst$ ,fnum ,@(car terms-lists)))))
	(inst*-steps fnum (cdr terms-lists)
		     `(try ,step ,steps (fail))))))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defrule track-rewrite (&rest names)
  (let ((dummy (loop for name in names
		     do
		     (if (has-id? name) ;;NSH(4.23.97)
			 (pushnew name *track-rewrites* :test #'same-id)
			 (error-format-if "~%Bad name: ~a" name))))
	(msg (format nil "Tracking rewrites: ~{~a, ~}" names))) 
    (skip-msg msg))
  "Tracks the named rewrite rules during rewriting when the rule fails to
apply.  Behaves like a (SKIP), otherwise." 
  "Tracking ~a")


(defrule untrack-rewrite (&rest names)
  (if (null  names)
      (let ((dummy (setq *track-rewrites* nil))
	    (msg "Untracking all rewrite rules"))
	(skip-msg msg))
      (let ((names (loop for name in names
			 when (or (has-id? name) ;;NSH(4.23.97)
				  (error-format-if "~%Bad name: ~a" name))
			 collect name))
	    (dummy (setq *track-rewrites*
			 (set-difference *track-rewrites*  names
					 :test #'same-id)))
	    (msg (format nil "Untracking ~{~a, ~}" names)))
	(skip-msg msg)))
  "(See TRACK-REWRITE) Turns off tracking for all rewrite rules when NAMES is
empty, and for the named rewrite rules, otherwise.  Behaves like (SKIP) otherwise."
  "Turning off tracking")

(defrule rewrite-msg-off ()
  (let ((dummy (setq *rewrite-msg-off* t)))
    (skip-msg "Turning off rewriting commentary,"))
  "Turns off listing of applied auto rewrites and skips."
  "")
(defrule rewrite-msg-on ()
  (let ((dummy (setq *rewrite-msg-off* nil)))
    (skip-msg "Turning on rewriting commentary,"))
  "Turns on list of applied auto rewrites and skips."
  "")

(defrule track-all-current-rewrites ()
  (let ((names (all-auto-rewrites))
	(dummy (loop for name in (all-auto-rewrites)
		  do (pushnew name *track-rewrites* :test #'same-id)))
	(msg (format nil "Tracking all ~d current rewrites" (length names))))
    (skip-msg msg))
  "Tracks all the current rewrite rules during rewriting when the rule fails to
apply.  Behaves like a (SKIP), otherwise." 
  "Tracking ~a")

(defstep auto-rewrite-defs (&optional explicit? always? exclude-theories)
  (let ((exclude-theories (if (listp exclude-theories)
			      exclude-theories
			      (list exclude-theories)))
	(exclude-theories
	 (loop for name in exclude-theories
	    collect (get-theory
		     (typecheck (pc-parse name 'modname)))))
			   
	(exclude (mapappend #'rewrite-names
			    (disabled-auto-rewrites *current-context*)))
	(decls (collect-referenced-decls (declaration *top-proofstate*)
					 *ps*
					 explicit?
					 exclude-theories
					 exclude))
	(rule-list (loop for decl in decls
		      collect
			(let ((name (mk-auto-rewrite-name
				     decl
				     (mk-modname (id (module decl)))
				     always?)))
			  `(auto-rewrite ,name))))
	(rule `(then* ,@rule-list)))
    rule)
  "Installs all the definitions used directly or indirectly in the
original statement as auto-rewrite rules.  If the explicit? flag is T, the
recursive definitions are not installed and only the explicit ones are.
If always? is !!, it uses auto-rewrite!!, and if it 
is T, then it uses auto-rewrite! on explicit definitions,
else auto-rewrite." 
  "Auto-rewriting with all the definitions relevant to conjecture")

(defstep auto-rewrite-explicit (&optional always?)
  (auto-rewrite-defs t always?)
  "Installs all the explicit (non-recursive) definitions in the original
statement.  If always? is T, then it uses auto-rewrite! else auto-rewrite."
  "Auto-rewriting with all the explicit definitions relevant to statement")

(defhelper rewrite-directly-with-fnum (fnum &optional (fnums *) (dir lr) dont-delete?)
  (if (select-seq (s-forms (current-goal *ps*)) fnums)
      (then (beta fnum dir)
	    (try-branch (split fnum)
			((let ((newnum (car *new-fmla-nums*)))
			   (let ((newnums (list newnum)))
			     (then (assert newnums dir)
				   (replace newnum fnums dir
					    :dont-delete? dont-delete?)
				   (delete newnums))))
			 (then (beta *) (assert *)))
			(then (assert fnum dir)
			      (replace fnum fnums dir
				       :dont-delete? dont-delete?)
			      (delete fnum))))
      (skip-msg "Invalid target formula(s) given to rewrite-directly-with-fnum"))
  "Beta-reduces, splits, and simplifies FNUM, and does a replacement in FNUMS
corresponding to dir (left-to-right when LR, and right-to-left when RL)."
  "Rewriting directly with ~a")

(defun pc-parse-subst (subst)
  (loop for (x . y) in
	(make-alist subst)
	collect (cons (pc-parse x 'name)
		      (pc-parse y 'expr))))

(defun check-subst-wrt-formula (fmla subst)
  (let* ((in-subst (pc-parse-subst subst))
	 (outervars (substitutable-vars fmla))
	 (check (loop for (x . nil) in in-subst
		      always
		      (member x outervars :test #'same-id)))
	 (subvars (when check
		    (loop for x in outervars
			  when (member x in-subst
				       :test #'(lambda (y z)
						 (same-id y (car z))))
			  collect x)))
	 (temp-subst
	  (when check
	    (loop for x in subvars
		  collect (cons x (cdr (assoc x in-subst :test #'same-id))))))
	 (in-subst (if check
		       (let ((*tccforms* *tccforms*));;protecting
					;NSH(11/17/93: too strong a check
					;(tc-alist temp-subst)
			 (loop for (nil . y) in temp-subst
			       do (typecheck y))
			 temp-subst)
		       'fail)))
    in-subst))

(defstep rewrite-with-fnum (fnum &optional subst (fnums *) (dir lr) dont-delete?)
  (let ((fnum (find-sform (s-forms (current-goal *ps*)) fnum))
	;;NSH(5.9.99): numeralizes labels.
	 (sforms (select-seq (s-forms (current-goal *ps*))
			    (list fnum))))
    (if sforms
	(let ((fmla (formula (car sforms)))
	      (form (if (negation? fmla)
			(args1 fmla)
			(if (exists-expr? fmla)
			    (negate (change-class (copy fmla)
						  'forall-expr))
			    fmla)))
	      (in-subst (check-subst-wrt-formula form subst))
	      (fnums-sforms (select-seq (s-forms (current-goal *ps*))
					fnums))
	      (fnums-sforms (if (memq (car sforms) fnums-sforms)
				(append;;moves fnum to the end
				 (remove (car sforms) fnums-sforms)
				 (list (car sforms)))
				fnums-sforms))
	      (out-subst (if (equal in-subst 'fail) 'fail
			     (let ((lhs (split-rewrite form
						       (mapcar #'car in-subst)
						       dir)))
			       (find-match-list lhs 
						(mapcar #'formula
						  fnums-sforms)
						in-subst
						t))))
	      (subs (unless (eq out-subst 'fail)
		      (if (negation? fmla)
			  (quant-subs* form ;cons NIL needed for quant-subs*
				       (cons nil out-subst) nil nil)
			  (quant-subs* fmla (cons nil out-subst)
				       t nil)))))
	  (if (eq out-subst 'fail)
	      (skip-msg "No matching substitution found")
	      (let ((fnum1 (inc-fnum fnum))
		    (sign-fnum (if (> fnum 0) 1 -1))
		    (rules
		     (cons `(copy ,fnum)
			   (when subs
			     (loop for sub in subs
				     collect
				     `(inst  ,sign-fnum :terms ,sub))))))
		(then (then@ :steps rules)
		      (let ((fnums (gather-fnums (s-forms (current-goal *ps*))
						 '* nil
						 #'(lambda (sf)(memq sf fnums-sforms)))))
		      (rewrite-directly-with-fnum sign-fnum fnums dir dont-delete?))))))
	(skip-msg "No rewritable FNUM found.")))
  "Rewrites using the formula named in FNUM given input substitution
SUBST, target FNUMS where rewrites are to occur, and the rewrite direction
DIR (LR for left-to-right, and RL, otherwise)."
  "Rewriting with ~a")

(defstep rewrite-lemma (lemma-name subst &optional (fnums *)
				   (dir lr) dont-delete?)
  (let ((in-sformnums (if (consp fnums)
			  (loop for x in fnums
			     collect (if (and (integerp x)
					      (< x 0))
					 (1- x)
					 x))
			  (if (and (integerp fnums)(< fnums 0))
			      (1- fnums)
			      fnums))))
    (try-branch (lemma lemma-name subst)
		((if *new-fmla-nums*
		     (let ((num (car *new-fmla-nums*)))
		       (rewrite-directly-with-fnum num in-sformnums dir dont-delete?))
		     (skip))
		 (then (beta *)(assert *)))
		(skip )))
  "Rewrites using the given lemma/defintion as a (conditional) rewrite
 rule, relative to the given substitution (which must provide substitutions
 for all of the substitutable variables).  See REWRITE."
  "Rewriting using ~a~@[ where~{~%   ~a gets ~a~^,~}~]")

(defstep rewrite (lemma-or-fnum &optional (fnums *)  subst (target-fnums *)
		    (dir lr) (order in) dont-delete?) ;;(hash-rewrites? t) NSH(9.21.95)
  (if (find-sform (s-forms (current-goal *ps*)) lemma-or-fnum) ;integerp lemma-or-fnum)
      (rewrite-with-fnum lemma-or-fnum subst target-fnums dir dont-delete?)
  (let ((x (rewrite-step lemma-or-fnum fnums subst
			  target-fnums dir order dont-delete?)))
    x))
  "Rewrites using LEMMA-OR-FNUM (lemma name or fnum) of the form
H IMPLIES L = R by finding match L' for L and replacing L' by R' with
subgoal proof obligations for H'.  A lemma H IMPLIES L is treated as
H IMPLIES L = TRUE, and also H can be empty.
FNUMS constrains where to search for a match,
SUBST takes a partial substitution and tries to find a match extending this,
TARGET-FNUMS constrains where the rewriting occurs,
DIR is left-to-right(LR) or right-to-left(RL),
ORDER is inside-out(IN) or outside-in (OUT),
DONT-DELETE? prevents antecedent/succedent formulas from being rewritten to
      true/false."
  "Rewriting using ~a~@[, matching in ~a~]~@[ where~{~%  ~a gets ~a~^,~}~]")

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defstrat skip-msg (msg &optional force-printing?)
  (let ((dummy (if force-printing?
		   (format-nif "~%~a" msg)
		   (format-if "~%~a" msg))))
    (skip))
  "Prints the given string but behaves like a skip.
Useful for generating error messages in strategies."
  "")

(defun forward-fnum? (fnum)
  (or (integerp fnum)
      (eq fnum '-)
      (eq fnum '*)
      (and (listp fnum)
	   (every #'forward-fnum? fnum))))

(defstep forward-chain (lemma-or-fnum &optional quiet?)
  (if (forward-fnum? lemma-or-fnum);;added (7.17.98)
      (chain-antecedent$ lemma-or-fnum)
      (let ((lemma lemma-or-fnum);;NSH(7.17.98): dummy to preserve previous name
	    (name (pc-parse lemma 'name))
	    (reses (resolve name 'formula nil *current-context*))
	    (resolutions (if (cdr reses)
			     (or (remove-if (complement #'fully-instantiated?)
				   reses)
				 reses)
			     reses)))
	(if resolutions
	    (if (singleton? resolutions)
		(let ((res (car resolutions))
		      (info (check-forward-lemma res)))
		  (if info
		      (let ((conc (car info))
			    (antec-fmlas (cdr info))
			    (formlist (append *-*
					      (mapcar #'negate *+*)))
			    (sub-list (multiple-value-list
				       (forward-match res conc antec-fmlas
						      formlist)))
			    (sub (car sub-list)))
			(if (eq sub 'fail)
			    (if quiet?
				(skip)
				(let ((msg
				       (if (cadr sub-list)
					   (format nil "Forward match for ~a already in sequent."
					     lemma-or-fnum)
					   (format nil "No forward match for ~a."
					     lemma-or-fnum))))
				  (skip-msg msg)))
			    (let ((fsub (flatten-sub sub)))
			      (then* (lemma lemma fsub)
				     (if (loop for x in fsub
					       thereis (lambda-expr? x))
					 (beta -1)
					 (skip))
				     (let ((x (car *new-fmla-nums*)))
				       (split x))
				     (flatten)))))
		      (skip-msg
		       "Given lemma is not in a form suitable for forward-chaining.
The correct form is A1 & ... & An => B, where free variables in B
occur among the free variables in the Ai.")))
		(skip-msg "Given lemma does not resolve uniquely."))
	    (skip-msg "No resolution for given lemma."))))
      "Forward chains on given lemma or antecedent formula of the form
   A1 & A2 & A3 IMPLIES B
by introducing the antecedent instance B' when the corresponding
instances A1', A2', and A3' can be found as antecedents in the
current goal.  If the instance B' already exists as an antecedent,
this rule backtracks to find a fresh instance.  Note that the free variables
in B must occur among the free variables in the Ai."  
      "Forward chaining on ~a")

(defstep forward-chain-theory (theory-name)
  (let ((name (pc-parse theory-name 'modname))
	(current? (eq (id name) (id (current-theory))))
	(theory-name (resolve-theory-name name))
	(theory (get-theory theory-name)))
    (if theory
	(let ((fc-formulas (collect-forward-chain-formulas
			    theory theory-name))
	      (step `(forward-chain*$ ,@fc-formulas)))
	  step)
	(skip-msg "No such theory in current context.")))
  "Forward-chains on all applicable formulas of the given theory-name"
  "forward-chaining on formulas of theory: ~a")

(defun collect-forward-chain-formulas (theory theory-name)
  (collect-forward-chain-formulas* (all-decls theory) theory theory-name))

(defun collect-forward-chain-formulas* (decls theory theory-name
					      &optional fc-forms)
  (if (null decls)
      fc-forms
      (collect-forward-chain-formulas*
       (cdr decls) theory theory-name
       (if (and (formula-decl? (car decls))
		(not (tcc? (car decls))))
	   (let ((decl (car decls)))
	     (unless (closed-definition decl)
	       (let* ((*in-checker* nil)
		      (*current-context* (context decl)))
		 (setf (closed-definition decl)
		       (universal-closure (definition decl)))))
	     (let ((def (subst-mod-params (closed-definition decl)
					  theory-name theory)))
	       (if (check-forward-formula def)
		   (cons (mk-name-expr (id decl)
			   (actuals theory-name)
			   (id theory-name)
			   :mappings (mappings theory-name)
			   :library (library theory-name)
			   :target (target theory-name)
			   :dactuals (dactuals theory-name))
			 fc-forms)
		   fc-forms)))
	   fc-forms))))

(defstep forward-chain* (&rest lemmas-or-fnums)
  (let ((fc-step `(forward-chain@$ ,@lemmas-or-fnums)))
    (repeat* fc-step))
  "Given a list of forward chain lemmas or formula numbers, apply forward-chaining
repeatedly until no more changes occur.  The rules are applied in the order
given, but if any succeeds, it starts over from the beginning."
  "forward-chaining on formulas or fnums ~{~a~^, ~}")

(defstep forward-chain@ (&rest lemmas-or-fnums)
  (let ((first `(forward-chain$ ,(car lemmas-or-fnums) :quiet? t))
	(msg (format nil "Forward-chaining on: ~a" (car lemmas-or-fnums)))
	(rest (if lemmas-or-fnums
		  `(forward-chain@$ ,@(cdr lemmas-or-fnums))
		  '(skip))))
    (try first (skip-msg msg :force-printing? t) rest))
  "Given a list of forward chain lemmas or formula numbers, this tries each in
turn until one succeeds."
  ;; Leave this blank, skip-msg prints the one actually used, unless
  ;; the proof of the given branch succeeds.
  "")


(defhelper chain-antecedent (fnum)
  (let ((fnums (gather-fnums (s-forms (current-goal *ps*))
			      fnum '+)))
    (chain-antecedent*$ fnums))
  "Forward chains on antecedent formula chosen by FNUM (which can be
- or *)."
  "Forward chaining on antecedent formula ~a")

(defhelper chain-antecedent* (fnums)
  (if (consp fnums) ;;fnums has to be a list from chain-antecedent
      (let ((fnum (car fnums))
	    (fmla1 (formula (car (select-seq (s-forms (current-goal *ps*))
				    fnum))))
	    (nfmla1 (negate fmla1))
	    (rest-fnums (cdr fnums))
	    (info (when (forall-expr? nfmla1)
		    (check-forward-formula nfmla1))))
	(if info
	    (let ((conc (car info))
		  (antec-fmlas (cdr info))
		  (formlist (remove fmla1
				    (append *-*
					    (mapcar #'negate *+*))))
		  (sub (forward-match* conc antec-fmlas
				      formlist formlist nil)))
	      (if (eq sub 'fail)
		  (chain-antecedent* rest-fnums)
		  (let ((check (loop for var in
				      (bindings nfmla1)
				      always
				      (assoc var sub
					     :test #'same-declaration)))
						    
			(fsub (loop for var in
				    (bindings nfmla1)
				    collect
				    (cdr (assoc var sub
						:test
						#'same-declaration)))))
		    (if check
			(then* (inst  fnum :terms fsub)
			       (let ((x (car *new-fmla-nums*)))
				 (split x))
			       (flatten))
			(skip-msg "Could not instantiate all the forward-chain variables")))))
		  (chain-antecedent* rest-fnums)))
      (skip-msg "Could not find a matching forward-chaining antecedent
formula."))
  "Forward chains on antecedent formulas given by FNUMS until a match is
found. "
  "Forward chaining on antecedent formulas ~a")

(defun forward-match (res conc antec-fmlas formlist)
  (let* ((mod-inst (module-instance res))
	 (theory (get-theory mod-inst))
	 (current-mod? (eq theory (current-theory)))
	 (actuals (unless current-mod? (actuals mod-inst)))
	 (formals (unless current-mod?
		    (formals-sans-usings theory)))
	 (*modsubst*
	  (if formals (if actuals t
			  (mapcar #'(lambda (x) (list x)) formals))
	      t)))
    (forward-match* conc antec-fmlas formlist formlist nil)))

(defvar *forward-match-dup?*)

(defun forward-match* (conc antec-fmlas formlist all-formlist subst)
  (let ((*modsubst* (if *modsubst* *modsubst* t))
	(*forward-match-dup?* nil))
    (forward-match*-rec conc antec-fmlas formlist all-formlist subst)))

(defun forward-match*-rec (conc antec-fmlas formlist all-formlist subst)
  (cond ((null antec-fmlas)
	 (cond ((subsetp (and+ (substit conc subst)) all-formlist
			:test #'tc-eq)
		(setq *forward-match-dup?* t)
		(values 'fail t))
	       (t subst)))
	((null formlist) (values 'fail *forward-match-dup?*))
	(t (let* ((antec1 (car antec-fmlas))
		  (fmla1 (car formlist))
		  ;;(*modsubst* t)
		  (sub1 (match antec1 fmla1 nil subst)))
	     (if (eq sub1 'fail)
		 (forward-match*-rec conc antec-fmlas (cdr formlist)
				 all-formlist subst)
		 (let ((result (forward-match*-rec conc (cdr antec-fmlas)
						   all-formlist
						   all-formlist sub1)))
		   (if (eq result 'fail)
		       (forward-match*-rec conc antec-fmlas (cdr formlist)
				       all-formlist subst)
		       (values result *forward-match-dup?*))))))))

(defun find-trans-match (info)
  (let ((resolution (car info))
	(a (cadr info))
	(b (caddr info))
	(c (cadddr info)))
  (loop for f1 in *-* thereis
	(let* ((mod-inst (module-instance resolution))
	       (theory (get-theory mod-inst))
	       (current-mod? (eq theory (current-theory)))
	       (actuals (unless current-mod? (actuals mod-inst)))
	       (formals (unless current-mod?
			  (formals-sans-usings theory)))
	       (*modsubst*
		(if formals (if actuals t
				(mapcar #'(lambda (x) (list x)) formals))
		    t))
	       (subst1 (match a f1 nil nil)))
	    (unless (eq subst1 'fail)
	      (loop for f2 in *-*
		    thereis
		    (and (not (eq f1 f2))
		    (let ((subst2 (match b f2 nil subst1)))
		      (unless (or (eq subst2 'fail)
				  (member (substit c subst2) *-*
					  :test #'tc-eq))
			subst2)))))))))
			  

(defun conjuncts (fmla)
  (cond ((negation? fmla)
	 (mapcar #'negate  (disjuncts (args1 fmla))))
	((conjunction? fmla)
	 (nconc (conjuncts (args1 fmla))
		 (conjuncts (args2 fmla))))
	(t (list fmla))))

(defun disjuncts (fmla)
  (cond ((negation? fmla)
	 (mapcar #'negate (conjuncts (args1 fmla))))
	((disjunction? fmla)
	 (nconc (disjuncts (args1 fmla))(disjuncts (args2 fmla))))
	((implication? fmla)
	 (nconc (mapcar #'negate (conjuncts (args1 fmla)))
		(disjuncts (args2 fmla))))
	(t (list fmla))))
	 

(defun check-forward-lemma (res)
  (let* ((fmlas (create-formulas res))
         (fmla (when fmlas (car fmlas)))
	 )
    (check-forward-formula fmla)))
    
(defun check-forward-formula (fmla)
  (let* ((body (forall-body* fmla))			      
	 (antec (when (implication? body)
		  (args1 body)))
	 (antec-fmlas (when antec (conjuncts antec)))
	 (conc (if (implication? body) (args2 body) body)))
    (if (subsetp (freevars conc)(freevars antec-fmlas)
		 :test #'tc-eq)
	(cons conc antec-fmlas)
	nil)))


;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;;;NSH(5.15.94): detupling

(defmethod detuple* ((expr binding-expr))
  (with-slots (bindings expression) expr
    (let* ((lists
	    (if (or (null *detuple-singletons?*)
		    (and (singleton? bindings)
			 (or (tupletype? (find-supertype (type (car bindings))))
			     (recordtype? (find-supertype (type (car bindings)))))))
		(make-new-detupled-bindings bindings nil nil expression)
		(cons nil bindings))) ;;NSH(9.19.96) was bindings.
	   (alist (car lists))
	   (new-bvars (cdr lists)))
      (if (equal bindings new-bvars)
	  (lcopy expr 'expression (detuple* expression))
	  (lcopy expr
	    'bindings new-bvars
	    'expression (detuple* (substit expression alist)))))))
      
(defun make-new-detupled-binding-list (boundvar types alist expr)
  (if (null types) nil
      (let* ((type1 (car types))
	     (type11 (if (dep-binding? type1) (type type1) type1))
	     (new-id 
	      (new-boundvar-id
	       (id boundvar) expr))
	     (stype11 (substit type11 alist))
	     (new-bvar
	      (copy boundvar
		'id new-id
		'type stype11
		'types (list stype11)
		'declared-type (or (print-type stype11) stype11))))
	(setf (resolutions new-bvar)
	      (list (make-resolution new-bvar nil
				     (type new-bvar))))
	(if (dep-binding? type1)
	    (cons new-bvar
		  (make-new-detupled-binding-list
		   boundvar
		   (cdr types)
		   (cons (cons type1 new-bvar) alist)
		   (cons new-id expr)))
	    (cons new-bvar
		  (make-new-detupled-binding-list
		   boundvar (cdr types) alist (cons new-id expr)))))))

(defmethod detuple* ((expr application))
  (let ((op (detuple* (operator expr)))
	(args (detuple* (arguments expr))))
	(lcopy expr 'operator op 'argument (make-arg-tuple-expr args))))

(defmethod detuple* ((expr projection-application))
  (let ((result (detuple* (argument expr))))
    (if (tuple-expr? result)
	(nth (1- (index expr))
	     (exprs result))
	(lcopy expr 'argument result))))

(defmethod detuple* ((expr injection-application))
  (let ((result (detuple* (argument expr))))
    (lcopy expr 'argument result)))

(defmethod detuple* ((expr injection?-application))
  (let ((result (detuple* (argument expr))))
    (lcopy expr 'argument result)))

(defmethod detuple* ((expr extraction-application))
  (let ((result (detuple* (argument expr))))
    (lcopy expr 'argument result)))

(defmethod detuple* ((expr field-application))
  (cond ((record-expr? (argument expr))
;;	(break "dt*")
      (detuple*
       (expression (find (id expr)
			 (assignments (argument expr))
			 :test #'(lambda (x y)
				   (eq x (id (caar (arguments y)))))))))
	(t (let ((result (detuple* (argument expr))))
	(if (record-expr? result)
	    (expression (find (id expr)
			 (assignments result)
			 :test #'(lambda (x y)
				   (eq x (id (caar (arguments y)))))))
	(lcopy expr 'argument result))))))

(defun make-new-detupled-bindings (bindings alist bvars expr)
  (cond ((null bindings) (cons alist bvars))
	((or (tupletype? (type (car bindings)))
	     (recordtype? (type (car bindings))))
	 (let* ((bind1 (car bindings))
		(type (find-supertype (type bind1)))
		(types (if (recordtype? type)
			   (mapcar #'type (fields type))
			   (types type)))
		(new-bvars (make-new-detupled-binding-list
			    bind1 types alist expr))
		(new-vars (loop for x in new-bvars
				collect (make!-name-expr
					 (id x) nil nil
					 (make-resolution x nil (type x)))))
		(new-tuple (if (recordtype? type)
			       (make-record-expr
				(loop for fld in (fields type)
				      as var in new-vars
				      collect
				      (mk-assignment 'uni
					(list (list (mk-field-name-expr
						     (id fld)
						     (resolution fld))))
					var))
				type)
			       (make-tuple-expr new-vars type))))
	   (make-new-detupled-bindings (cdr bindings)
				       (cons (cons bind1
						   new-tuple)
					     alist)
				       (nconc bvars new-bvars)
				       (append new-bvars expr))))
	(t (make-new-detupled-bindings (cdr bindings)
				       (cons (cons (car bindings)
						   (car bindings))
					     alist)
				       (append bvars (list (car bindings)))
				       (cons (car bindings) expr)))))

(defmethod detuple* ((expr record-expr))
  (lcopy expr
    'assignments (detuple* (assignments expr))))

(defmethod detuple* ((expr assignment))
  (lcopy expr
    'arguments (detuple* (arguments expr))
    'expression (detuple* (expression expr))))


(defmethod detuple* ((expr tuple-expr))
  (let ((dexprs (detuple* (exprs expr))))
    (if (eq dexprs (exprs expr))
	expr
	(copy expr
	  'exprs dexprs
	  'type (mk-tupletype (mapcar #'type dexprs))))))


(defmethod detuple* ((expr cases-expr))
  (lcopy expr
    'expression (detuple* (expression expr))
    'selections (detuple* (selections expr))
    'else-part (detuple* (else-part expr))))

(defmethod detuple* ((expr update-expr))
  (lcopy expr
    'expression (detuple* (expression expr))
    'assignments (detuple* (assignments expr))))

(defmethod detuple* ((expr list))
  (let ((new-expr (mapcar #'detuple* expr)))
    (if (every #'eq expr new-expr)
	expr
	new-expr)))

(defmethod detuple* ((expr t))
  expr)


(defstep detuple-boundvars (&optional (fnums *) singles?)
  (let ((sforms (select-seq (s-forms (current-goal *ps*)) fnums))
	(formulas (mapcar #'formula sforms))
	(formulas (mapcar #'(lambda (x) (if (negation? x) (args1 x) x))
			  formulas)))
    (detuple-boundvars-in-formulas formulas singles?))
  "Replaces formulas given by FNUMS by equivalent formulas where any
bound variable of tuple type is replaced by a list of variables.
When SINGLES? is T, detupling is restricted to those bound variables
of tuple/record type that are the sole bound variables of a binding operator,
i.e. those x of the form (FORALL x: ...), (EXISTS x: ...),
or (LAMBDA x: ...)."
  "De-tupling formulas")

(defhelper detuple-boundvars-in-formulas (formulas singles?)
  (if (consp formulas)
      (let ((fmla (car formulas))
	    (de-fmla (let ((*detuple-singletons?* t))
		       (detuple* fmla)))
	    (equality (make-equality fmla de-fmla))
	    (fmlas (cdr formulas)))
	(then (case-replace equality :hide? t)
	      (detuple-boundvars-in-formulas fmlas singles?)))
      (skip))
  "Replaces given formulas by equivalent formulas where any bound
variable of tuple type is replaced by a list of variables.
When SINGLES? is T, detupling is restricted to those bound variables
of tuple type that are the sole bound variables of a binding operator,
i.e. those x of the form (FORALL x: ...), (EXISTS x: ...),
or (LAMBDA x: ...)."
  "De-tupling the given formulas")
 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;NSH(7.27.94): skolem then typepred the skolem constants.

(defstep skolem-typepred (&optional (fnum *) &inherit skolem)
  (let ((sformnum (find-!quant fnum *ps*))
	(newterms (fill-up-terms sformnum nil *ps*))
	(x `(typepred ,@newterms))) 
    (then (skolem sformnum newterms)
	  x))
  "Skolemizes and then introduces type-constraints of the Skolem
constants.
See also SKOLEM!, TYPEPRED."
  "Skolemizing (with typepred on new Skolem constants)")
    
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defstep name-replace (rname expr &optional (hide? t) &inherit replace)
  (try-branch (name rname expr)
	      ((replace -1)
	       (skip))
	      (skip-msg "NAME step in NAME-REPLACE failed."))
  "Uses NAME, REPLACE, and HIDE to abbreviate an expression with a
newly chosen name"
  "Using ~a to name and replace ~a")

(defstep name-replace* (name-and-exprs &optional (hide? t)
				       &inherit name-replace)
  (if (consp name-and-exprs)
      (if (consp (cdr name-and-exprs))
	  (let ((name (car name-and-exprs))
		(expr (cadr name-and-exprs))
		(rest (cddr name-and-exprs)))
	    (then (name-replace name expr hide?)
		  (name-replace* rest hide?)))
	  (skip-msg "Odd number of name/expr entries."))
      (skip))
  "Iterates NAME-REPLACE.  The NAME-AND-EXPRS argument must be
of the form (<name1> <expr1> <name2> <expr2>...).  The command
replaces each expri in the sequent with the corresponding namei."
  "Letting ~{~%  ~a name ~a~^,~}")
    
(defstep trace (&rest names)
  (let ((dummy (loop for name in names do (pushnew name *ruletrace*)))
	(msg (format nil "Tracing ~a" (format-list-of-items names))))
    (skip-msg msg))
  "Traces rules or proof steps given by NAMES."
  "")



(defstep untrace (&rest names)
  (let ((msg (if names
		 (format nil "Untracing ~a" (format-list-of-items names))
		 (format nil "Untracing everything: ~a"
		   (format-list-of-items *ruletrace*))))
	(dummy (if names
		   (loop for name in names do (setq *ruletrace*
						    (delete name *ruletrace*)))
		   (setq *ruletrace* nil))))
    (skip-msg msg))
  "Turns off tracing on the rules and proof steps given in NAMES."
  "")

;;NSH(5.27.95) : From JMR
;;added exclude argument to grind and if-match argument to use.
(defstep use (lemma-name &optional subst (if-match best) (instantiator inst?)
		    polarity? let-reduce? (where *))
  (try-branch (lemma lemma-name subst)
	      ((let ((fnum (car *new-fmla-nums*))
		     (command (generate-instantiator-command
			       if-match polarity? instantiator fnum where)))
		 (then 
		  (beta fnum :let-reduce? let-reduce?)
		  (repeat command)))
	       (skip))
	      (skip))
  "Introduces lemma LEMMA-NAME, then does BETA and INST? (repeatedly) on
 the lemma.  The INSTANTIATOR argument may be used to specify an alternative
 to INST?.  WHERE tells the instantiator where to look for a match."
  "Using lemma ~a")

(defstep use* (&rest names &inherit use)
  (if (consp names)
      (let ((first (car names))
            (rest (cdr names)))
        (then (use$ first)
              (use*$ :names rest)))
      (skip))
  "Iterating USE for a list of lemmas names NAMES."
  "Iterated lemma application on ~@{~%   ~a, ~}")

(defun collect-constant-names (expr)
  (let ((*constant-names* nil))
    (mapobject #'(lambda (x) (when (name-expr? x)
			       (pushnew x *constant-names*
					:test #'tc-eq)))
	       expr)
    *constant-names*))

(defun collect-subterms (expr pred)
  (let ((*collect-subterms* nil))
    (mapobject #'(lambda (x) (or (typep x 'actual)
				 (when (funcall pred x)
				   (pushnew x *collect-subterms*
					    :test #'tc-eq))))
	       expr)
    *collect-subterms*))

(defstep merge-fnums (fnums)
  (let ((seq (s-forms (current-goal *ps*)))
	(sforms (select-seq seq fnums))
	(antec-fmlas
	 (loop for sf in sforms when (negation? (formula sf))
	       collect (args1 (formula sf))))
	(conseq-fmlas
	 (loop for sf in sforms when (not (negation? (formula sf)))
	       collect (formula sf)))
	(fmla (if antec-fmlas
		  (make-implication
		   (make-conjunction antec-fmlas)
		   (make-disjunction conseq-fmlas))
		  (make-disjunction conseq-fmlas)))) 
    (if (or antec-fmlas conseq-fmlas)
	(if (and (null antec-fmlas)
		 (singleton?  conseq-fmlas))
	    (skip-msg "Nothing to merge.")
	    (spread (case fmla)
		    ((prop)
		     (let ((oldfnums
			    (find-all-sformnums
			     (s-forms (current-goal *ps*))
			     '* 
			     #'(lambda (x);;must be a pred on formulas
				 (member x sforms
					 :key #'formula)))))
		       (delete oldfnums)))))
	(skip-msg "Failed to find mergeable fnums.")))
  "Merges indicated FNUMS into a single formula in the sequent."
  "Merging formulas: ~a")

(defmethod pc-typecheck ((expr expr) &key expected (fnums '*) (uniquely? t))
  ;;assumption is that expr is pc-parsed, and expected is typechecked.
  (protect-types-hash
   expr
   (typecheck expr :expected expected)
   (cond ((and (type expr)
	       (fully-instantiated? (type expr)))
	  expr)
	 ((and (singleton? (types expr))
	       (fully-instantiated? (car (types expr))))
	  (set-type expr (car (types expr)))
	  expr)
	 (t (let* ((sforms
		    (when *ps*
		      (select-seq (s-forms (current-goal *ps*)) fnums)))
		   (forms (mapcar #'formula sforms))
		   (terms (collect-subterms forms
					    #'(lambda (x)
						(print-equal x expr))))
		   (term (loop for tm in terms
			       thereis (and (null (freevars tm))
					    (or (null expected)
						(strict-compatible?
						 expected
						 (type tm)))
					    tm)))
		   (type (if term
			     (type term)
			     expected)))
	      (if type
		  (let ((ptypes (remove-if-not #'(lambda (pty)
						   (compatible? pty type))
				  (ptypes expr))))
		    (set-type expr
			      (if (and (singleton? ptypes)
				       (fully-instantiated? (car ptypes)))
				  (car ptypes)
				  type))
		    expr)
		  (if uniquely?
		      (type-ambiguity expr)
		      expr)))))))

(defmethod pc-typecheck ((expr t) &key expected (fnums '*) (uniquely? t))
  (declare (ignore expected fnums uniquely?))
  (typecheck expr))

(defstep generalize (term var &optional gtype (fnums *)
			  (subterms-only? t))
  (branch (merge-fnums fnums)
	  ((let ((sforms
		  (select-seq (s-forms (current-goal *ps*)) '(1)))
		 (sform (car sforms))
		 (form (when sform (formula sform)))
		 (var (pc-parse var 'name))
		 (vtype (when gtype
			 (typecheck (pc-parse gtype 'type-expr))))
		 (term (pc-parse term 'expr))
		 (term (pc-typecheck term :expected vtype :fnums '(1)))
		 (vtype (if vtype vtype (type term)))
		 (var-decl (when (and term vtype)
			     (make-bind-decl
				 (id var) vtype
				 )))
		 (var (when (and term var-decl)
			(make-variable-expr var-decl)))
		 (newform1 (when term
			     (if subterms-only?
				 (termsubst form
					    #'(lambda (x)
						(declare (ignore x))
						var)
					    #'(lambda (x) (tc-eq x term)))
				 (gensubst form
				   #'(lambda (x) (declare (ignore x)) var)
				   #'(lambda (x) (tc-eq x term))))))
		 (nonsubst (when (forall-expr? newform1)
			     (mapcan #'(lambda (b)
					 (list (make-variable-expr b) "_"))
			       (bindings newform1))))
		 (newform (when term
			    (if (forall-expr? newform1)
				(copy newform1
				  'bindings (cons var-decl (bindings newform1)))
				(make!-forall-expr (list var-decl) newform1))))
		 (subst (when term
			  (if (forall-expr? newform1)
			      (cons term (make-list (length (bindings newform1))
						    :initial-element "_"))
			      (list term)))))
	     (if vtype
		 (if (valid-pvs-id (id var))
		     (if term
			 (spread (case newform)
				 ((then (instantiate -1 subst)
					(prop))
				  (hide 2)))
			 (skip-msg "No such generalizable term found in given fnums"))
		     (skip-msg "Given variable is not a valid PVS identifier"))
		 (skip-msg "Please supply the type argument.")))
	     (skip)))
  "Generalizes TERM in FNUMS by VAR of type GTYPE.  By default, only the
subterm occurrences of TERM will be generalized and not those occurrences
in types or actuals.  If the command is invoked with the SUBTERMS-ONLY? flag
set to the NIL, then every occurrence of TERM will be generalized.  This
might go too far so if a more delicate generalization of selected occurrences
is needed, the best option is to use CASE."
  "Generalizing ~a by ~a")

(defvar *terms* nil)

(defmethod mapobject* (fn (ps proofstate))
  (mapobject* fn (s-forms (current-goal ps))))

(defmethod mapobject* (fn (sf s-formula))
  (mapobject* fn (formula sf)))

(defun collect-terms (pred obj)
  (let* ((*terms* nil))
    (mapobject #'(lambda (x)(collect-terms-fun pred x)) obj)
    *terms*))

(defmethod collect-terms-fun (pred (expr expr))
  (cond  ((funcall pred expr)
	  (push expr *terms*)
	  nil)
	 (t nil)))

(defmethod collect-terms-fun (pred (ps proofstate))
  (declare (ignore pred))
  nil)

(defmethod collect-terms-fun (pred (sf s-formula))
  (declare (ignore pred))
  nil)

(defmethod collect-terms-fun (pred (list list))
  (declare (ignore pred))
  nil)

(defmethod collect-terms-fun (pred (obj t))
  (declare (ignore pred))
  t)

(defun collect-applications-of-fun (id obj)
  (collect-terms
    #'(lambda (x) (and (application? x)(eq (id (operator* x)) id)))
    obj))

(defun skolem-constant? (expr)
  (and (name-expr? expr)(skolem-const-decl? (declaration expr))))

(defun sko-symbol-prefix (id)
  (let* ((string (string (op-to-id id)))
	 (pos (position #\! string :from-end t))
	 (prefix (if pos (subseq string 0 pos)
		     string))
	 (index (when pos  ;;NSH(9.20.95)
		  (parse-integer string :start (1+ pos) :junk-allowed t))))
    (if index (intern prefix :pvs) id)))

(defun make-constant-bind-decl-alist (constants done-alist expr)
  ;;constants must be sorted according to occurrence as done in
  ;;generalize-skolem-constants defstep.
  ;; The expr is passed in to new-boundvar-id
  (if (null constants)
      (nreverse done-alist)
      (let ((new-id (new-boundvar-id
		     (sko-symbol-prefix (id (car constants))) expr)))
	(make-constant-bind-decl-alist
	 (cdr constants)
	 (cons (cons (car constants)
		     (make-bind-decl new-id
		       (gensubst
			   (type (car constants))
			 #'(lambda (x)
			     (make-variable-expr
			      (cdr (assoc x done-alist :test #'tc-eq))))
			 #'(lambda (x)(assoc x done-alist :test #'tc-eq)))))
	       done-alist)
	 (cons new-id expr)))))

(defstep generalize-skolem-constants (&optional (fnums *))
  (then (merge-fnums fnums)
	(let ((sforms (s-forms (current-goal *ps*))))
	  (if (or *new-fmla-nums*
		  (and (singleton? sforms)
		       (find-sform sforms fnums)))
	      (let ((fnums (if *new-fmla-nums* *new-fmla-nums* fnums))
		    (sforms (select-seq sforms fnums))
		    (sform (car sforms))
		    (form (formula sform))
		    (skolem-constants
		     (collect-subterms form
				       #'skolem-constant?))
		    (skolem-constants
		     (sort skolem-constants
			   #'(lambda (x y)
			       (member x (collect-subterms y #'skolem-constant?)))))
		    (constant-bind-decl-alist
		     (make-constant-bind-decl-alist skolem-constants nil form))
		    (constant-variable-alist
		     (loop for (x . y) in constant-bind-decl-alist
			   collect (cons x (make-variable-expr y))))
		    (newform1 (gensubst form
				#'(lambda (x)
				    (cdr (assoc x constant-variable-alist
						:test #'tc-eq)))
				#'(lambda (x)
				    (assoc x constant-variable-alist
					   :test #'tc-eq))))
		    (newform (universal-closure newform1))
		    (instantiation-list
		     (when (forall? newform)
		       (loop for bd in (bindings newform)
			     collect
			     (let ((entry (rassoc bd constant-bind-decl-alist
						  :test #'tc-eq)))
			       (if entry (car entry) "_"))))))
		(branch
		 (case newform)
		 ((then (inst -1 :terms instantiation-list)
			(prop))
		  (let ((hfnums (find-all-sformnums
				 (s-forms (current-goal *ps*))
				 '*
				 #'(lambda (x)
				     (member x sforms :key #'formula)))))
		    (hide hfnums)))))
	      (skip-msg "Merge-fnums failed.")))
	(skip-msg "Merge-fnums failed."))
  "Merges the formulas and universally generalizes the skolem constants
in the given fnums."
  "Merging and generalizing")

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;NSH(9.3.97): integrating Sam's decompose-equality strategy
;;for converting (dis)equalities on compound types to their
;;component equalities.

(defun disequality? (expr)(disequation? expr))

(defvar *decomposable-formulas-tried*)

(defun decomposable-equality? (fmla)
  (unless (memq fmla *decomposable-formulas-tried*)
    (prog1 (and (or (equation? fmla)
		    (disequality? fmla))
		(or (typep (find-supertype (type (args1 fmla)))
			   '(or funtype recordtype tupletype cotupletype))
		    (adt? (find-supertype
			   (type (args1 fmla))))))
      (push fmla *decomposable-formulas-tried*))))

(defstep decompose-equality (&optional (fnum *) (hide? t)
				       &inherit simplify replace* grind)
  (let ((*decomposable-formulas-tried* nil)
	(sforms (select-seq (s-forms (current-goal *ps*))
			    (if (memq fnum '(* + -)) fnum
				(list fnum))))
	(fm (find-if
		#'(lambda (sf)
		    (or (decomposable-equality? (formula sf))
			(and (negation? (formula sf))
			     (decomposable-equality? (args1 (formula sf))))))
	      sforms))
	(ffm (when fm (formula fm)))
	(equality? (when fm
		     (or (equation? ffm)
			 (and (negation? ffm)
			      (disequation? (args1 ffm))))))
	(fmla (when fm
		(if (negation? ffm)
		    (args1 ffm)
		    ffm)))
	(lhs (when fmla (args1 fmla)))
	(rhs (when fmla (args2 fmla)))
	(comp-equalities (when (and fmla (not equality?))
			   (component-equalities
			    lhs rhs
			    (find-declared-adt-supertype (type lhs)))))
	(fnum-count (length (s-forms (current-goal *ps*)))))
    (if fmla
	(try
	 (if equality?
	     (apply-extensionality fnum :hide? hide)
	     (branch (case comp-equalities)
		     ((then (let ((fnums *new-fmla-nums*))
			      (simplify fnums))
			    (if (null *new-fmla-nums*)
				(let ((msg (format nil
					       "Generated equation simplifies to true:~%  ~a"
					     comp-equalities)))
				  (then (skip-msg msg) (fail)))
				(let ((fnums (find-all-sformnums
					      (s-forms (current-goal *ps*))
					      '* #'(lambda (x) (eq x ffm))))
				      (fnum (if fnums (car fnums) nil)))
				  (if (and hide? fnum
					   (/= (length (s-forms (current-goal *ps*)))
					       fnum-count))
				      (delete fnum)
				      (skip))))
			    (flatten))
		      (then (flatten) (replace* :hide? nil)
			    (grind :defs nil :if-match nil :hide? nil)))))
	 (skip)
	 (decompose-equality))
	(skip-msg "Couldn't find a suitable equation")))
  "Decomposes an equality or disequality to the component equalities.
This only works for equalities between functions, records, or tuples.  If
HIDE? is T, the original (dis)equality is hidden.  If it is an equality in
the consequents or a disequality in the antecedents then this simply
invokes apply-extensionality.  Otherwise it decomposes the
 (dis)equality into its component equalities."
  "Applying decompose-equality")

(defmethod component-equalities (lhs rhs (te recordtype))
  (make-conjunction
   (mapcar #'(lambda (fld)
	       (make-equality (make-field-application fld lhs)
			      (make-field-application fld rhs)))
     (fields te))))

(defmethod component-equalities (lhs rhs (te tupletype))
  (make-conjunction
   (loop for i from 1 to (length (types te))
	 collect (make-equality (make-projection-application i lhs)
				(make-projection-application i rhs)))))

(defmethod component-equalities (lhs rhs (te cotupletype))
  (if (injection-application? lhs)
      (if (and (injection-application? rhs)
	       (= (index lhs) (index rhs)))
	  (make-equality (make!-extraction-application (index lhs) lhs)
			 (make!-extraction-application (index rhs) rhs))
	  (make!-conjunction
	   (make!-injection?-application (index lhs) rhs)
	   (make-equality (make!-extraction-application (index lhs) lhs)
			  (make!-extraction-application (index lhs) rhs))))
      (if (injection-application? rhs)
	  (make!-conjunction
	   (make!-injection?-application (index rhs) lhs)
	   (make-equality (make!-extraction-application (index rhs) lhs)
			  (make!-extraction-application (index rhs) rhs)))
	  (let ((index 0))
	    (make-disjunction
	     (mapcar #'(lambda (type)
			 (declare (ignore type))
			 (incf index)
			 (apply #'make-conjunction
			   (make!-injection?-application index lhs)
			   (make!-injection?-application index rhs)
			   (make-equality
			    (make!-extraction-application index lhs)
			    (make!-extraction-application index rhs))))
	       (types te)))))))

(defmethod component-equalities (lhs rhs (te funtype))
  (let* ((id (make-new-variable '|x| (list te lhs rhs)))
	 (dom (if (dep-binding? (domain te)) (type (domain te)) (domain te)))
	 (bd (typecheck* (mk-bind-decl id dom dom) nil nil nil))
	 (nvar (mk-name-expr id nil nil (make-resolution bd nil dom))))
    (make!-forall-expr
	(list bd)
      (make-equality (make-application lhs nvar)
		     (make-application rhs nvar)))))

(defmethod component-equalities (lhs rhs (te type-name))
  (let* ((rec-subtypes (mapcar #'(lambda (r) (typecheck (mk-expr-as-type r)))
			 (recognizers te)))
	 (lhs-subtype (find-if #'(lambda (rst)
				   (subtype-of? (type lhs) rst))
			rec-subtypes)))
    (if lhs-subtype
	(let ((accessors (accessors (constructor (predicate lhs-subtype)))))
	  (make-conjunction
	   (if (subtype-of? (type rhs) lhs-subtype)
	       (mapcar #'(lambda (a)
			   (make-equality
			    (make-application a lhs)
			    (make-application a rhs)))
		 accessors)
	       (cons (make-application (predicate lhs-subtype) rhs)
		     (mapcar #'(lambda (a)
				 (make-equality
				  (make-application a lhs)
				  (make-application a rhs)))
		       accessors)))))
	(let ((rhs-subtype (find-if #'(lambda (rst)
					(subtype-of? (type rhs) rst))
			     rec-subtypes)))
	  (if rhs-subtype
	      (let ((accessors
		     (accessors (constructor (predicate rhs-subtype)))))
		(make-conjunction
		 (cons (make-application (predicate rhs-subtype) lhs)
		       (mapcar #'(lambda (a)
				   (make-equality
				    (make-application a lhs)
				    (make-application a rhs)))
			 accessors))))
	      (make-disjunction
	       (mapcar #'(lambda (r c)
			   (make-conjunction
			    (cons (make-application r lhs)
				  (cons (make-application r rhs)
					(mapcar #'(lambda (a)
						    (make-equality
						     (make-application a lhs)
						     (make-application a rhs)))
					  (accessors c))))))
		 (recognizers te) (constructors te))))))))

;;checks if formula is a well-formed induction scheme
;;returns p(x, y, z) where p is the induction predicate.
(defun inductive-scheme? (formula)
  (if (forall-expr? formula)
      (inductive-scheme? (expression formula))
      (and (implication? formula)
	   (inductive-conclusion? (args2 formula)))))

(defun coinductive-scheme? (formula)
  (if (forall-expr? formula)
      (coinductive-scheme? (expression formula))
      (and (implication? formula)
	   (coinductive-conclusion? (args2 formula)))))

;;checks if conclusion of formula is induction conclusion.
(defun inductive-conclusion? (formula)
  (if (forall-expr? formula)
      (inductive-conclusion? (expression formula))
      (and (implication? formula)
	   (inductive-predicate? (operator* (args1 formula)))
	   (args1 formula))))

(defun coinductive-conclusion? (formula)
  (if (forall-expr? formula)
      (coinductive-conclusion? (expression formula))
      (and (implication? formula)
	   (coinductive-predicate? (operator* (args2 formula)))
	   (args2 formula))))

;;checks if name is an inductively defined predicate.
(defun inductive-predicate? (name)
  (inductive-decl? (declaration name)))

(defun coinductive-predicate? (name)
  (coinductive-decl? (declaration name)))

;;Returns resolution for inductive induction scheme given
;;rel or induction name.
(defun get-inductive-scheme-res (rel induction)
  (if induction
      (let* ((name (pc-parse induction 'name))
	    (resolutions (resolve name 'formula nil *current-context*)))
	(car resolutions))
      (let* ((name (pc-parse (format nil "~a.~a_weak_induction"
			      (module-instance (resolution rel))
			      (op-to-id (id rel)))
		    'name))
	    (resolutions (resolve name 'formula nil *current-context*)))
	(car resolutions))))

(defun get-coinductive-scheme-res (rel coinduction)
  (if coinduction
      (let* ((name (pc-parse coinduction 'name))
	     (resolutions (resolve name 'formula nil *current-context*)))
	(car resolutions))
      (let* ((name (pc-parse (format nil "~a.~a_weak_coinduction"
			      (module-instance (resolution rel))
			      (op-to-id (id rel)))
		    'name))
	    (resolutions (resolve name 'formula nil *current-context*)))
	(car resolutions))))

;;returns flattened (uncurried) list of arguments
(defun arguments! (expr)
  (apply #'append (arguments* expr)))

;;prints the fully resolved name from a resolution
(defun print-resolution (res)
  (format nil "~a.~a" (module-instance res) (id res)))

;;checks if a formula is of the form rel(....).
(defun inductive-antecedent-or-coinductive-consequent? (rel)
  #'(lambda (x)
      (let ((xf (formula x)))
	(if (negation? xf)
	    (and (name-expr? (operator* (args1 xf)))
		 (same-id (operator* (args1 xf))
			  rel)
		 (inductive-predicate? (operator* (args1 xf))))
	    (and (name-expr? (operator* xf))
		 (same-id (operator* xf) rel)
		 (coinductive-predicate? (operator* xf)))))))

(defstep rule-induct-step (rel &optional (fnum *) name)
  (let ((sforms (s-forms (current-goal *ps*)))
	(rel (pc-parse rel 'expr))
	(pred-sforms
	 (gather-seq sforms
		     fnum nil
		     (inductive-antecedent-or-coinductive-consequent? rel))))
    (if (null pred-sforms)
	(skip-msg "No appropriate (co)inductive formula in the goal sequent.")
	(let ((pred-sform (car pred-sforms))
	      (pred-application (if (negation? (formula pred-sform))
				    (args1 (formula pred-sform))
				    (formula pred-sform)))
	      (rel (operator* pred-application))
	      (ind-res (when rel
			 (if (inductive-predicate? rel)
			     (get-inductive-scheme-res rel name)
			     (get-coinductive-scheme-res rel name))))
	      (ind-scheme-name (print-resolution ind-res))
	      (ind-scheme (car (create-formulas ind-res)))
	      (ind-pred (if (inductive-predicate? rel)
			    (inductive-scheme? ind-scheme)
			    (coinductive-scheme? ind-scheme)))
	      (ind-scheme (when ind-pred ind-scheme)))
	  (if (null ind-scheme)
	      (let ((format-string
		     (format nil
			 "No (co)induction scheme associated with relation ~a"
		       rel)))
		(skip-msg format-string))
	      (let ((ind-bindings (apply #'append (bindings* ind-scheme)))
		    (pred-fixed
		     (loop for x in (arguments! ind-pred)
			   as y in (arguments! pred-application)
			   when (member x ind-bindings
					:test #'same-declaration)
			   nconc (list (id x) y)))
		    (pred-varying
		     (loop for x in (arguments! ind-pred)
			   as y in (arguments! pred-application)
			   when (not (member x ind-bindings
					     :test #'same-declaration))
			   collect y)))
		(if (not (every #'skolem-constant? pred-varying))
		    (let ((format-string
			   (format nil
			       "(Co)Inductive relation:~%~a~%must be over ~
skolem constants for the (co)induction scheme to make sense."
			     pred-application)))
		      (skip-msg format-string))
		    (if (duplicates? pred-varying :test #'tc-eq)
			(let ((format-string
			       (format nil
				   "Duplicates in (co)induction parameters: ~a"
				 pred-varying)))
			  (skip-msg format-string))
			(let ((pred-constants
			       (sort pred-varying
				     #'(lambda (x y)
					 (member x
						 (collect-subterms
						  y #'constant?)))))
			      (all-antec-fmlas
			       (if (inductive-predicate? rel)
				   (loop for sf in sforms
					 when (and (negation? (formula sf))
						   (intersection
						    pred-constants
						    (collect-subterms (formula sf)
								      #'constant?)
						    :test #'tc-eq))
					 collect (args1 (formula sf)))
				   (loop for sf in sforms
					 when (and (not (negation? (formula sf)))
						   (intersection
						    pred-constants
						    (collect-subterms (formula sf)
								      #'constant?)
						    :test #'tc-eq))
					 collect (formula sf))))
			      (antec-fmlas (delete pred-application
						   all-antec-fmlas))
			      (conseq-fmlas
			       (if (inductive-predicate? rel)
				   (loop for sf in sforms
					 when (and (not (negation? (formula sf)))
						   (intersection
						    pred-constants
						    (collect-subterms
						     (formula sf) #'constant?)
						    :test #'tc-eq))
					 collect (formula sf))
				   (loop for sf in sforms
					 when (and (negation? (formula sf))
						   (intersection
						    pred-constants
						    (collect-subterms
						     (formula sf) #'constant?)
						    :test #'tc-eq))
					 collect (args1 (formula sf)))))
			      (form (if antec-fmlas
					(make-implication
					 (make-conjunction antec-fmlas)
					 (make-disjunction conseq-fmlas))
					(make-disjunction conseq-fmlas)))
			      (constant-bind-decl-alist
			       (make-constant-bind-decl-alist pred-constants nil form))
			      (constant-variable-alist
			       (loop for (x . y) in constant-bind-decl-alist
				     collect (cons x (make-variable-expr y))))
			      (newform (gensubst form
					 #'(lambda (x)
					     (cdr (assoc x constant-variable-alist
							 :test #'tc-eq)))
					 #'(lambda (x)
					     (assoc x constant-variable-alist
						    :test #'tc-eq))))
			      (induction-pred
			       (if constant-bind-decl-alist
				   (make-lambda-expr
				       (mapcar #'cdr constant-bind-decl-alist)
				     newform)
				   newform))
			      (ind-var (car (last ind-bindings)))
			      (ind-subst (cons (id ind-var)
					       (cons induction-pred
						     pred-fixed))))
			  (then (lemma ind-scheme-name
				       :subst ind-subst)
				(beta)
				(branch (prop)
					((then (inst? :polarity? t)(prop))
					 (let ((old-fmlas
						(append all-antec-fmlas
							conseq-fmlas))
					       (fnums
						(find-all-sformnums
						 (s-forms (current-goal
							   *ps*))
						 '*
						 #'(lambda (x)
						     (or (and (negation? x)
							      (memq (args1 x)
								    old-fmlas))
							 (memq x old-fmlas))))))
					   (hide :fnums fnums)))))))))))))
  "Applies rule (co)induction over a (co)inductive relation REL in order to
prove a sequent of the form
     ..., REL(x1,...,xn) ... |-- ... for an inductive REL, or
     ... |-- ..., REL(x1,...,xn) ... for a coinductive REL.
RULE-INDUCT-STEP searches for an antecedent (for inductive REL) or
consequent (for coinductive REL) formula of this form but this can also be
given explicitly as FNUM.  The (co)induction predicate is formulated using
all the sequent formulas containing x1,...,xn.   The strategy uses the
weak (co)induction scheme by default but can be told to use an alternative 
scheme by giving a different NAME argument, e.g., REL_induction or
REL_coinduction."
  "Applying rule induction over ~a")

(defstep rule-induct (rel &optional (fnum *) name)
  (let ((relname (pc-parse rel 'expr)))
    (if (name-expr? relname)
	(then (repeat (skolem! fnum))
	      (try (flatten)
		   (let ((fnum *new-fmla-nums*))
		     ;;note rule-induct recursively, not rule-induct-step
		     ;;to deal with embedded induction predicates.
		     (rule-induct$ rel :fnum * :name name))
		   (else (rule-induct-step$ rel :fnum * :name name) (fail))))
	(skip-msg "Expected the name of an (co)inductive relation for the REL argument to rule-induct")))
  "Applies rule (co)induction over an inductive relation REL in order to
prove a sequent of the form
      ...|- (FORALL ...: REL(...) IMPLIES ... or
     ..., REL(x1,...,xn) ... |-- ...
   or, for coinductive REL,
      ...|- (FORALL ...: REL(...) IMPLIES ... or
     ..., REL(x1,...,xn) ... |-- ... 
RULE-INDUCT first applies repeated skolemization  and flattening to the
specified FNUM (or the first skolemizable formula) before invoking
RULE-INDUCT-STEP.   The strategy uses the default weak (co)induction scheme
but can be told to use strong (co)induction by giving REL_induction
or REL_coinduction as the NAME argument."
  "Applying rule (co)induction over ~a")


(defmethod bindings* ((expr binding-expr))
  (cons (bindings expr)(bindings* (expression expr))))

(defmethod bindings* ((expr t))
  nil)

(defstep apply-eta (term &optional expected)
  (let ((type (if expected
		  (typecheck (pc-parse expected 'type-expr))
		  nil))
	(term (if type
		  (pc-typecheck (pc-parse term 'expr)
		    :expected type)
		  (typecheck (pc-parse term 'expr))))
	(type (if type (pc-type type)
		  (if (type term) (pc-type (type term)) nil))))
    (if type
	(try (eta type)
	     (inst -1 term)
	     (skip-msg "No suitable eta axiom scheme found."))
	(skip-msg "Please supply optional type argument.")))
  "Instantiates eta axiom scheme for type TYPE or type of TERM with TERM
See also ETA"
  "Applying eta axiom scheme to ~a")

(defun ineq? (expr)
  (and (application? expr)
       (let ((op (operator expr)))
	 (and (name-expr? op)
	      (interpreted? op)
	      (memq (id op) '(= < <= > >=))
	      op))))

(defun find-ineq-conjunction (fmla)
  (if (conjunction? fmla)
      (let ((conjuncts (and+ fmla)))
	(if (every #'ineq? conjuncts)
	    fmla
	    (loop for x in (arguments fmla)
		  thereis (find-ineq-conjunction x))))
	    (if (propositional-application? fmla)
		(loop for x in (arguments fmla)
		      thereis (find-ineq-conjunction x))
		(if (ineq? fmla) fmla nil))))
	       

(defstep both-sides (op term &optional (fnum 1) &inherit case-replace assert)
  (let ((op (pc-parse op 'name))
	(term (pc-parse term 'expr))
	(sforms (select-seq (s-forms (current-goal *ps*)) fnum))
	(fmla (when sforms (formula (car sforms))))
	(ineq-conjunction (find-ineq-conjunction fmla))
	(new-ineq-conjunction
	 (when ineq-conjunction
	   (let* ((ineq-conjuncts (and+ ineq-conjunction))
		  (new-conjuncts
		   (loop for conj in ineq-conjuncts	
		      collect
			(make-application
			    (operator conj)
			  (typecheck
			      (mk-application op
				(args1 conj) term)
			    :expected
			    (if *integer*
				(compatible-type
				 (type (args1 conj))
				 *integer*)
				(type (args1 conj))))
			  (typecheck
			      (mk-application op
				(args2 conj) term)
			    :expected
			    (compatible-type (type (args2 conj))
					     *integer*))))))
	     (make-conjunction new-conjuncts))))
	(case-fmla (when new-ineq-conjunction
		     (make-equality ineq-conjunction new-ineq-conjunction))))
    (if case-fmla
	(spread (case-replace case-fmla)
		((hide -1)
		 (then
		  (try (typepred term)
		       (let ((fnums *new-fmla-nums*))
			 (then (assert fnums)
			       (hide :fnums fnums)))
		       (skip))
		  (auto-rewrite-theory "real_props")
		  (do-rewrite :fnums 1)
		  (stop-rewrite-theory "real_props"))
		 ))
	(skip-msg "Failed to find inequality/equality chain")))
  
  "Applies OP to TERM uniformly over a conjunction of inequalities.
Example: (both-sides \"*\" \"2\") multiplies both sides of the target
         inequalities by 2"
  "Applying ~a ~a to both sides of an inequality/equality conjunction")

(defstep case* (&rest formulas)
  (if (consp formulas)
      (let ((first (car formulas))
	    (rest (cdr formulas)))
	(then (case first)
	      (case*$ :formulas rest)))
      (skip))
  "Complete version of CASE command where all the formulas are case split
along every branch."
  "Case-splitting fully on ~@{~%   ~a, ~}")

(defhelper expand1* (names)
  (if (null names)
      (skip)
      (let ((name1 (car names))
	    (rest-names (cdr names)))
	(then (expand name1) (expand1* rest-names))))
  "Expands all the given names and simplifies.
See also EXPAND"
  "Expanding the definition(s) of ~a")

(defstrat checkpoint ()
  (query*)
  "A synonym for (query*): inserting (checkpoint) an edited proof and
 rerunning it causes the non-checkpointed subproofs to be installed
 (using JUST-INSTALL-PROOF) so that the proof is only run up to the
checkpoint.  "
 " ")

(defhelper label-fnums (labels fnums &optional push?)
  (if (consp labels)
      (if (consp (cdr labels))
	  (if (consp fnums)
	      (let ((label (car labels))
		    (cdr-labels (cdr labels))
		    (fnum (car fnums))
		    (cdr-fnums (cdr fnums)))
		(then (label label fnum :push? push?)
		      (label-fnums cdr-labels cdr-fnums :push? push?)))
	      (skip))
	  (let ((label (car labels)))
	    (label label fnums)))
      (label labels fnums :push? push?))
  "Labels a list of formulas from FNUMS with corresponding labels
taken from LABELS so that the last label is applied to any
remaining fnums.  If PUSH? is T, the new label is added to existing
labels, otherwise, the old labels are deleted."
  "Labelling some formulas")

(defstep with-labels (rule labels &optional push?)
  (try (apply rule)
       (let ((fnums *new-fmla-nums*)
	     (labels (if (consp labels) labels (list labels)))
	     (current-labels
	      (nth-or-last (subgoalnum *ps*) labels)))
	 (label-fnums current-labels fnums :push? push?))
       (skip))
  "If RULE generates subgoal sequents S1...Sn where each Si has
new formulas, i.e., those numbered with {}, numbered fi1..fim, then
if LABELS is a list of list of labels ((l11 ... l1k)...(ln1...lnm)),
then each formula fij is labelled with label lij.  As usual, any of
the lists can be replaced a single label, and if there are not enough
labels in a list, then the last label is applied to the remaining
fnums."
  "Applying ~a and labelling new subgoal formulas with~_ ~a")

(defstep hide-all-but (&optional keep-fnums (fnums *))
  (let ((fnums (gather-fnums (s-forms (current-goal *ps*))
			     fnums keep-fnums)))
    (hide :fnums fnums))
  "Hides all sequent formulas from FNUMS except those listed in
KEEP-FNUMS.  Useful when all but a few formulas need to be hidden."
  "Keeping ~a and hiding ~a")

(defstep flatten (&rest fnums) (flatten-disjunct fnums nil)
 "Disjunctively simplifies chosen formulas.  It simplifies 
top-level antecedent conjunctions, equivalences, and negations, and
succedent disjunctions, implications, and negations from the sequent."
 "Applying disjunctive simplification to flatten sequent")

(defstep model-check (&optional (dynamic-ordering? t) cases-rewrite?
				defs	; NIL, T, !, explicit, or explicit!
				theories
				rewrites
				exclude
				irredundant?)
  (let ((cuth (current-theory))
	(cuthstr (string (id cuth)))
	(init-real-time (get-internal-real-time))
	(init-run-time (get-run-time)))
    (then* (skolem-typepred)
	   (install-rewrites$ :defs defs :theories theories
			      :rewrites rewrites :exclude exclude)
	   (auto-rewrite-theory cuthstr :always? t)
	   (auto-rewrite-theory "ctlops" :defs t :always? !!)
	   (auto-rewrite-theory "fairctlops" :defs t :always? !!)
	   (auto-rewrite-theory "Fairctlops" :defs t :always? !!)
	   (auto-rewrite "/=")
	   (auto-rewrite "K_conversion")
	   (stop-rewrite "mucalculus.mu" "mucalculus.nu"
			 "Reachable.Reachable")
	   (rewrite-msg-off)
	   (assert :cases-rewrite?  cases-rewrite?)
	   (musimp :dynamic-ordering? dynamic-ordering?
		   :irredundant? irredundant?)
	   (let ((dummy
		  (format t
		      "~%model-checking took ~,2,-3f real, ~
                       ~,2,-3f cpu seconds total"
		    (realtime-since init-real-time)
		    (runtime-since init-run-time))))
	     (skip))))
  "Rewrites temporal operators into mu/nu expressions, and
simplifies using mu-calculus checker.  If DYNAMIC-ORDERING? is T,
the BDD package uses dynamic ordering to minimize the BDD size.
If CASES-REWRITE is NIL, this turns off rewriting within the
selections of unsimplified CASES expressions.  The optional arguments
DEFS, THEORIES, REWRITES, and EXCLUDE are as in INSTALL-REWRITES."
  "By rewriting and mu-simplifying")

(defstep expand* (&rest names)
  (expand1* names)
  "Expands all the given names in order, and simplifies. "
  "Expanding the definition(s) in order of ~a")

(defstep expand-names (&optional (fnums *) &rest names)
  ;; Need to check for recursive names
  (expand1-names fnums names names)
  "Expands the set of given names in the specified fnums"
  "Expanding the definition(s) in ~a of ~a")

(defhelper expand1-names (fnums rest-names names)
  (if (null rest-names)
      (skip)
      (let ((name1 (car rest-names))
	    (cdr-names (cdr rest-names)))
	(try (expand name1 :fnum fnums)
	     (expand1-names fnums names names)
	     (expand1-names fnums cdr-names names))))
  "Expands each name in rest-names in the specified fnums, until no definitions are left.
If one succeeds, starts again from the beginning"
  "Expanding the definition(s) in ~a of ~a")

;; For backward compatibility
(defhelper auto-rewrite-theory-always (thlist)
  (if (or (stringp thlist)
	  (and (listp thlist)
	       (every #'stringp thlist)))
      (if (null thlist)
	  (skip)
	  (let ((hd (if (listp thlist) (car thlist) thlist))
		(tl (if (listp thlist) (cdr thlist) nil)))
	    (then
	     (auto-rewrite-theory hd :always? t)
	     (auto-rewrite-theory-always tl))))
      (let ((dummy (error-format-if
		    "Argument to auto-rewrite-theory-always must be a~%  ~
                     theory name or list of theory names")))
	(skip)))
  "Applies (auto-rewrite-theory :always? T) on a given list of theories."
  "Auto-rewriting given theories ~a with :always? T option")

(defstep lazy-grind  (&optional (if-match t) polarity? (defs !)
				&inherit grind reduce)
  (then
   (grind$ :if-match nil)
   (reduce$))
  "Equiv. to (grind) with the instantiations postponed until after simplification."
  "By skolemization, if-lifting, simplification and instantiation")

(defstep grind-with-lemmas
  (&optional (lazy-match? t) (lazy-inst? nil) (if-match t) (polarity? t) (defs !)
	     &rest lemmas &inherit grind reduce use)
  (then
   (if lemmas
       (if lazy-inst?
	   (let ((lemmata (if (listp lemmas) lemmas (list lemmas)))
		 (x `(then ,@(loop for lemma in lemmata
				   append `((skosimp* t)(lemma ,lemma))))))
	     x)
	   (let ((lemmata (if (listp lemmas) lemmas (list lemmas)))
		 (x `(then ,@(loop for lemma in lemmata
				   append `((skosimp* t) (use ,lemma))))))
	     x))
       (skip))
   (if lazy-match?
       (then (grind :if-match nil) (reduce))
       (grind :if-match if-match)))
  "Does a combination of (lemma) and (grind); if lazy-match? is t,
     postpones instantiations to follow a first round of simplification."
  "~%Grinding away with the supplied lemmas,")

(defstep grind-with-ext (&optional (defs !); nil, t, !, explicit, or explicit!
				   &inherit install-rewrites (assert :except fnums)
				   replace* reduce-with-ext)
				   
  (then
   (install-rewrites$)
   (then (bddsimp) (assert))
   (replace*)
   (reduce-with-ext$))
  "Like GRIND, but calls REDUCE-EXT, which also uses APPLY-EXTENSIONALITY.  See GRIND for an explanation of the arguments."
  "Trying repeated skolemization, instantiation, if-lifting, and extensionality")

(defstep reduce-with-ext (&key no-replace? &inherit bash replace*)
  (repeat* (then (bash$)
		 (apply-extensionality$ :hide? t)
		 (if no-replace? (skip) (replace*))))
  "Core of GRIND-WITH-EXT (ASSERT, BDDSIMP, INST?, SKOLEM-TYPEPRED, FLATTEN,
LIFT-IF, i.e., BASH then REPLACE*), like REDUCE, but includes
APPLY-EXTENSIONALITY.  See reduce for an explanation of the arguments."
  "Repeatedly simplifying with decision procedures, rewriting,
  propositional reasoning, quantifier instantiation, skolemization,
 if-lifting, extensionality, and equality replacement")


(defstep all-typepreds (&optional (fnums *))
  (let ((sforms (select-seq (s-forms (current-goal *ps*)) fnums))
        (cmd (make-all-typepreds-cmd sforms)))
    cmd)
  "Provides useful typepreds for all subexpressions of specified FNUMS,
meaning those that are not already dealt with by the ground prover.  Thus a
typepred is deemed useful if it has an expandable definition or is
propositional, since these will have been treated as uninterpreted in the
ground prover until they are exposed."
  "Adding type information on subexpressions")

(defun make-all-typepreds-cmd (sforms)
  (let* ((exprlis (collect-all-subexprs-with-useful-typepreds sforms))
         (cmdlis (loop for x in exprlis collect `(typepred ,x)))
         (cmd (cons 'then cmdlis)))
    (format t "Generating typepreds for expressions:~{~%  ~a~^~}" exprlis)
    cmd))

(defun collect-all-subexprs-with-useful-typepreds (sforms)
  (let ((exprs nil))
    (mapobject #'(lambda (ex)
		   (when (and (expr? ex)
			      (null (freevars ex)))
		     (let ((preds (type-constraints ex)))
		       (unless (member ex exprs :test #'tc-eq)
			 (when (useful-typepred? preds)
			   (push ex exprs)))))
		   (binding-expr? ex))
	       sforms)
    exprs))

(defun useful-typepred? (preds)
  ;; A predicate is useful if it contains an expandable definition or
  ;; is propositional, since these will be treated as uninterpreted in
  ;; the ground prover.
  (let ((found-one nil))
    (mapobject #'(lambda (ex)
		   (or found-one
		       (when (or (propositional-application? ex)
				 (quant-expr? ex)
				 (and (name-expr? ex)
				      (const-decl? (declaration ex))
				      (definition (declaration ex))))
			 (setq found-one t))))
	       preds)
    found-one))
	     

;; Don't go down: (or type-expr field-decl symbol lambda-expr)
;; Collect if: (and (or name-expr application field-application)
;;                  (not boolean?))

;;; Called from typepred-step for typepred! :implicit? t
(defun collect-implicit-type-constraints (exprs ps all? &optional (quiet? t))
  (when exprs
    (let* ((texprs
	    (if (eq exprs t)
		t
	      (mapcar #'(lambda (ex)
			  (let ((*generate-tccs* 'none)
				(tex (pc-typecheck (pc-parse ex 'expr))))
			    (when (freevars tex)
			      (unless quiet? (error-format-if "~%Free variables in expr ~a" tex)))
			    tex))
		      exprs)))
	   (sforms (s-forms (current-goal ps)))
	   (preds (implicit-type-constraints sforms texprs)))
      (or (if all?
	      preds
	    (remove-if #'ignored-type-constraint-pred preds))
	  (progn (unless quiet?
		   (error-format-if "No top-level occurrences of any of the terms in ~:_~
                          ~w~_ yielded type constraints" exprs))
		 nil)))))

(defun ignored-type-constraint-pred (pred)
  (let ((ignored (mapcar #'predicate
		   (remove-if #'null
		     (list *integer* *rational* *real* *number_field*)))))
    (and (application? pred)
	 (or (member (operator pred) ignored :test #'tc-eq)
	     ;; Special test for *naturalnumber*
	     (and (tc-eq (operator pred) (greatereq-operator))
		  (number-expr? (args2 pred))
		  (= (number (args2 pred)) 0))))))

(defvar *collected-implicit-type-exprs* nil)

(defun implicit-type-constraints (ex exprs)
  (let ((*collected-implicit-type-exprs* nil))
    (implicit-type-constraints* ex exprs nil nil)))

;; (defmethod implicit-type-constraints* :around (ex exprs parity preds)
;;   (call-next-method))

(defmethod implicit-type-constraints* ((ex s-formula) exprs parity preds)
  (implicit-type-constraints* (formula ex) exprs parity preds))

(defmethod implicit-type-constraints* ((ex negation) exprs parity preds)
  (implicit-type-constraints* (argument ex) exprs (not parity) preds))
  
(defmethod implicit-type-constraints* ((ex conjunction) exprs parity preds)
  (if parity
      (implicit-type-constraints* (argument ex) exprs parity preds)
      preds))

(defmethod implicit-type-constraints* ((ex disjunction) exprs parity preds)
  (if parity
      preds
      (implicit-type-constraints* (argument ex) exprs parity preds)))

(defmethod implicit-type-constraints* ((ex implication) exprs parity preds)
  (if parity
      preds
      (implicit-type-constraints*
       (args2 ex) exprs parity
       (implicit-type-constraints* (args1 ex) exprs (not parity) preds))))

(defmethod implicit-type-constraints* ((ex branch) exprs parity preds)
  (declare (ignore exprs parity))
  preds)

(defmethod implicit-type-constraints* ((ex binding-expr) exprs parity preds)
  (declare (ignore exprs parity))
  preds)

(defmethod implicit-type-constraints* ((ex cases-expr) exprs parity preds)
  (implicit-type-constraints* (expression ex) exprs parity preds))

(defmethod implicit-type-constraints* ((ex application) exprs parity preds)
  (let ((npreds (implicit-type-predicates ex exprs preds)))
    (implicit-type-constraints*
     (operator ex) exprs parity
     (implicit-type-constraints* (argument ex) exprs parity npreds))))

(defmethod implicit-type-constraints* ((ex record-expr) exprs parity preds)
  (implicit-type-constraints* (assignments ex) exprs parity preds))

(defmethod implicit-type-constraints* ((ex assignment) exprs parity preds)
  (implicit-type-constraints*
   (expression ex) exprs parity
   (implicit-type-constraints* (arguments ex) exprs parity preds)))

(defmethod implicit-type-constraints* ((ex list) exprs parity preds)
  (if (null ex)
      preds
      (implicit-type-constraints*
       (cdr ex) exprs parity
       (implicit-type-constraints* (car ex) exprs parity preds))))

(defmethod implicit-type-constraints* ((ex tuple-expr) exprs parity preds)
  (implicit-type-constraints* (exprs ex) exprs parity preds))

(defmethod implicit-type-constraints* ((ex projection-application)
				       exprs parity preds)
  (implicit-type-constraints* (argument ex) exprs parity preds))

(defmethod implicit-type-constraints* ((ex injection-application)
				       exprs parity preds)
  (implicit-type-constraints* (argument ex) exprs parity preds))

(defmethod implicit-type-constraints* ((ex injection?-application)
				       exprs parity preds)
  (implicit-type-constraints* (argument ex) exprs parity preds))

(defmethod implicit-type-constraints* ((ex extraction-application)
				       exprs parity preds)
  (implicit-type-constraints* (argument ex) exprs parity preds))

(defmethod implicit-type-constraints* ((ex field-application)
				       exprs parity preds)
  (implicit-type-constraints* (argument ex) exprs parity preds))

(defmethod implicit-type-constraints* ((ex update-expr) exprs parity preds)
  (implicit-type-constraints*
   (assignments ex) exprs parity
   (implicit-type-constraints* (expression ex) exprs parity preds)))

(defmethod implicit-type-constraints* ((ex expr) exprs parity preds)
  (declare (ignore exprs parity))
  preds)

;; add to assert
;; check!!

(defmethod implicit-type-predicates ((expr application) exprs preds)
  (if (member expr *collected-implicit-type-exprs* :test #'tc-eq)
      preds
      (let* ((op (operator expr))
	     (arg-list (arguments expr))
	     (optype (type op))
	     (domtypes (if (singleton? arg-list)
			   (list (if (dep-binding? (domain optype))
				     (type (domain optype))
				     (domain optype)))
			   (domain-types optype)))
	     (args (if (singleton? domtypes)
		       (list (argument expr))
		       arg-list)))
	(assert (= (length domtypes) (length args)))
	(let ((npreds (when (and (cdr args) ;; ow done in implicit-type-predicates*
				 (or (eq exprs t)
				     (member (argument expr) exprs :test #'tc-eq)))
			(compatible-preds
			 (type (argument expr))
			 (if (dep-binding? (domain optype))
			     (type (domain optype))
			     (domain optype))
			 (argument expr)))))
	  (prog1 (implicit-type-predicates* domtypes args exprs
					    (nunion npreds preds :test #'tc-eq))
	    (push expr *collected-implicit-type-exprs*)
	    )))))

(defun implicit-type-predicates* (domtypes args exprs preds)
  (if (null domtypes)
      preds
      (let ((apreds (when (or (eq exprs t)
			      (member (car args) exprs :test #'tc-eq))
		      (compatible-preds
		       (type (car args)) (car domtypes) (car args)))))
	(implicit-type-predicates*
	 (if (dep-binding? (car domtypes))
	     (substit (cdr domtypes) (acons (car domtypes) (car args) nil))
	     (cdr domtypes))
	 (cdr args)
	 exprs
	 (nunion apreds preds :test #'tc-eq)))))

(defmethod implicit-type-predicates (expr exprs preds)
  (declare (ignore expr exprs))
  preds)

;;;

(defstep all-implicit-typepreds (&optional (fnums *))
  (let ((sforms (select-seq (s-forms (current-goal *ps*)) fnums))
        (cmd (make-implicit-typepreds-cmd sforms)))
    cmd)
  ""
  "Adding type information on subexpressions")

(defun make-implicit-typepreds-cmd (sforms &optional (quiet? t))
  (let* ((exprlis (collect-all-subexprs-with-implicit-typepreds sforms))
         (cmd (list 'typepred! exprlis :implicit? t)))
    (unless quiet?
      (format t "~%Generating implicit typepreds for expressions:~{~%  ~a~^~}"
	      exprlis))
    cmd))

(defun collect-all-subexprs-with-implicit-typepreds (sforms)
  (subexprs-with-implicit-type-constraints sforms))

(defun subexprs-with-implicit-type-constraints (ex)
  (subexprs-with-implicit-type-constraints* ex nil nil))

(defmethod subexprs-with-implicit-type-constraints* ((ex s-formula) parity subexprs)
  (subexprs-with-implicit-type-constraints* (formula ex) parity subexprs))

(defmethod subexprs-with-implicit-type-constraints* ((ex negation) parity subexprs)
  (subexprs-with-implicit-type-constraints* (argument ex) (not parity) subexprs))
  
(defmethod subexprs-with-implicit-type-constraints* ((ex conjunction) parity subexprs)
  (if parity
      (subexprs-with-implicit-type-constraints* (argument ex) parity subexprs)
      subexprs))

(defmethod subexprs-with-implicit-type-constraints* ((ex disjunction) parity subexprs)
  (if parity
      subexprs
      (subexprs-with-implicit-type-constraints* (argument ex) parity subexprs)))

(defmethod subexprs-with-implicit-type-constraints* ((ex implication) parity subexprs)
  (if parity
      subexprs
      (subexprs-with-implicit-type-constraints*
       (args2 ex) parity
       (subexprs-with-implicit-type-constraints* (args1 ex) (not parity) subexprs))))

(defmethod subexprs-with-implicit-type-constraints* ((ex branch) parity subexprs)
  (declare (ignore parity))
  subexprs)

(defmethod subexprs-with-implicit-type-constraints* ((ex binding-expr) parity subexprs)
  (declare (ignore parity))
  subexprs)

(defmethod subexprs-with-implicit-type-constraints* ((ex cases-expr) parity subexprs)
  (subexprs-with-implicit-type-constraints* (expression ex) parity subexprs))

(defmethod subexprs-with-implicit-type-constraints* ((ex record-expr) parity subexprs)
  (subexprs-with-implicit-type-constraints* (assignments ex) parity subexprs))

(defmethod subexprs-with-implicit-type-constraints* ((ex assignment) parity subexprs)
  (subexprs-with-implicit-type-constraints*
   (expression ex) parity
   (subexprs-with-implicit-type-constraints* (arguments ex) parity subexprs)))

(defmethod subexprs-with-implicit-type-constraints* ((ex list) parity subexprs)
  (if (null ex)
      subexprs
      (subexprs-with-implicit-type-constraints*
       (cdr ex) parity
       (subexprs-with-implicit-type-constraints* (car ex) parity subexprs))))

(defmethod subexprs-with-implicit-type-constraints* ((ex tuple-expr) parity subexprs)
  (subexprs-with-implicit-type-constraints* (exprs ex) parity subexprs))

(defmethod subexprs-with-implicit-type-constraints* ((ex projection-application)
				       parity subexprs)
  (subexprs-with-implicit-type-constraints* (argument ex) parity subexprs))

(defmethod subexprs-with-implicit-type-constraints* ((ex injection-application)
				       parity subexprs)
  (subexprs-with-implicit-type-constraints* (argument ex) parity subexprs))

(defmethod subexprs-with-implicit-type-constraints* ((ex injection?-application)
				       parity subexprs)
  (subexprs-with-implicit-type-constraints* (argument ex) parity subexprs))

(defmethod subexprs-with-implicit-type-constraints* ((ex extraction-application)
				       parity subexprs)
  (subexprs-with-implicit-type-constraints* (argument ex) parity subexprs))

(defmethod subexprs-with-implicit-type-constraints* ((ex field-application)
				       parity subexprs)
  (subexprs-with-implicit-type-constraints* (argument ex) parity subexprs))

(defmethod subexprs-with-implicit-type-constraints* ((ex update-expr) parity subexprs)
  (subexprs-with-implicit-type-constraints*
   (assignments ex) parity
   (subexprs-with-implicit-type-constraints* (expression ex) parity subexprs)))

(defmethod subexprs-with-implicit-type-constraints* ((ex expr) parity subexprs)
  (declare (ignore parity))
  subexprs)

(defmethod subexprs-with-implicit-type-constraints* ((ex application) parity subexprs)
  (let ((nsubexprs (implicit-typepred-args ex subexprs)))
    (subexprs-with-implicit-type-constraints*
     (operator ex) parity
     (subexprs-with-implicit-type-constraints* (argument ex) parity nsubexprs))))

(defun implicit-typepred-args (ex subexprs)
  (let* ((op (operator ex))
	 (optype (find-supertype (type op)))
	 (domain (domain optype))
	 (args (if (tupletype? domain)
		   (arguments ex)
		   (list (argument ex))))
	 (domtypes (if (cdr args)
		       (domain-types optype)
		       (list (domain optype))))
	 (argtypes (mapcar #'type args)))
    (assert (= (length domtypes) (length args)))
    (implicit-typepred-args* domtypes argtypes args subexprs)))

(defun implicit-typepred-args* (domtypes argtypes args subexprs)
  (if (null domtypes)
      subexprs
      (let ((apreds (compatible-preds
		     (car argtypes) (car domtypes) (car args))))
	(implicit-typepred-args*
	 (cdr domtypes)
	 (cdr argtypes)
	 (cdr args)
	 (if (and apreds
		  (not (member (car args) subexprs :test #'tc-eq)))
	     (cons (car args) subexprs)
	     subexprs)))))


(defstep let-name-replace (&optional (fnum *) hide? (where top))
  (let ((step (let-name-replace-step fnum hide? where)))
    (if step
	step
	(if (eq where 'top)
	    (skip-msg "No top-level LETs found")
	    (skip-msg "No LET exprs found occurring outside a binding"))))
  "Selects LET expressions of the current sequent based on FNUM and WHERE.
For each one, creates local definitions corresponding to the LET bindings
using the NAME strategy, substituting these names into the rest of the LET
expr.  The names must be new, if the LHS of the LET binding is in the
context, then \"_1\", etc. are appended till a new name is found.

If HIDE? is t, the names are hidden, though they may still be expanded, etc.

FNUM and WHERE control which LET expressions are selected.  LET expression
may come from anywhere in the sequent, but it doesn't include LET
expressions that have a binding whose body has a reference to a binding of a
containing expression, e.g., \"∀ (x: int): LET y = f(x) IN e(x,y)\" 
WHERE is one of:
  top - for only a top-level LET expression,
  first - for the first valid LET expression
  all - for all valid LET expressions.

Examples:
  {-1}  LET (x, u, v) = ns, y = x * x * x, z = y * y * x IN z = x * y
  [-2]  (1, 2, 3) = ns
    |-------
  Rule? (let-name-replace)
  {-1}  x = ns`1
  {-2}  u = ns`2
  {-3}  v = ns`3
  {-4}  y = x * x * x
  {-5}  z = y * y * x
  {-6}  (z = x * y)
  [-7]  (1, 2, 3) = ns
    |-------
Or:
  Rule? (let-name-replace :hide? t)
  {-1}  (z = x * y)
  [-2]  (1, 2, 3) = ns
    |-------
"
  "Replacing the LET variables with names")

(defun let-name-replace-step (fnum hide? where)
  (let* ((sforms (select-seq (s-forms (current-goal *ps*)) fnum))
	 (let-exprs (liftable-let-exprs sforms where)))
    (when let-exprs
      (create-let-name-replace-step let-exprs hide?))))

;;; collect all let-exprs of the current sequent depending on where:
;;; all - all let-exprs that do not reference a bound variable in their RHSs
;;;       Note that chained-let-expr instances are excluded
;;; first - the first such let-expr
;;; top - only collect top-level let-exprs
(defun liftable-let-exprs (s-forms where)
  (let* ((forms (mapcar #'formula s-forms))
	 (pforms (mapcar #'(lambda (form)
			     (if (negation? form) (argument form) form))
		   forms)))
    (if (eq where 'top)
	(remove-if-not #'let-expr? pforms)
	(let ((*bound-variables* nil)
	      (let-exprs nil))
	  (mapobject #'(lambda (ex)
			 (or (and (eq where 'first)
				  let-exprs)
			     (typecase ex
			       (binding-expr
				(let ((*bound-variables*
				       (append (bindings ex) *bound-variables*)))
				  t))
			       (chained-let-expr
				;; Skip inside these
				t)
			       (let-expr
				(let ((rhs-freevars (freevars (let-rhs-exprs ex))))
				  (when (every #'(lambda (fv)
						   (member fv *bound-variables*
							   :test #'same-declaration))
					       rhs-freevars)
				    (push ex let-exprs)))))))
		     expr)
	  let-exprs))))

;; Given:
;;  LET x1 = e1, x2 = e2(x1), ... xn = en(x1,...,xn-1) IN e(x1,...,xn)
;; Generate:
;; (name "n1" "e1")
;; (branch
;;   (case-replace "(LET x1 = e1, x2 = e2(x1), ... xn = en(x1,...,xn-1) IN e(x1,...,xn))
;;     = LET x2 = e2(n1), ... xn = en(n1,x2,...,xn-1) IN e(n1,x2,...,xn)" :hide? t)
;;   ((then
;;     (name "n2" "e2(n1)")
;;     (branch
;;       (case-replace "(LET x2 = e2(n1), ... xn = en(n1,x2,...,xn-1) IN e(n1,x2,...,xn))
;;         = LET x3 = e3(n1,n2), ..., xn = en(n1,n2,x3,...,xn-1) IN e(n1,n2,x3,...xn)" :hide? t)
;;       ((then ...)
;;        (assert))))
;;     (assert)))
(defun create-let-name-replace-step (let-exprs hide? &optional names-alist steps)
  (if (null let-exprs)
      (if (cdr steps)
	  (cons 'then (nreverse steps))
	  (car steps))
      (multiple-value-bind (new-names-alist step)
	  (create-let-name-replace-step* (car let-exprs) hide? names-alist)
	(create-let-name-replace-step (cdr let-exprs) hide? new-names-alist
				      (cons step steps)))))

(defun create-let-name-replace-step* (let-expr hide?
				      &optional names-alist names-steps case-steps
					else-steps commutes-steps)
  ;; Names-alist is for substitution in the rest of the let-exprs
  ;; step parts are pairs ((name "nn" "ee") (case-replace ...))
  ;; At the end, these will be put into the step above
  (let* ((bindings (bindings (operator let-expr)))
	 (expr (substit (expression (operator let-expr)) names-alist))
	 (arg (substit (argument let-expr) names-alist))
	 (args (if (cdr bindings)
		   (if (tuple-expr? arg)
		       (exprs arg)
		       (make-projections arg))
		   (list arg)))
	 (new-names (create-let-replace-names bindings names-alist))
	 (new-labels (create-new-labels new-names))
	 ;; Note that the new-names are name-exprs, whose type matches the
	 ;; corresponding binding, but the declaration is bogus This is used
	 ;; to substitute the name in creating the next-expr, which is then
	 ;; printed as a string anyway, and when the steps are actually run,
	 ;; the name will be available.
	 (new-names-alist (pairlis bindings new-names))
	 (name-steps (mapcar #'(lambda (name arg label)
				 (let ((sname (string (id name)))
				       (sarg (str arg)))
				   (if hide?
				       `(then (name ,sname ,sarg) (hide -1))
				       `(with-labels (name ,sname ,sarg) ,label))))
		       new-names args new-labels))
	 (commute-steps (unless hide?
			  (mapcar #'(lambda (name arg label)
				      (let* ((sname (string (id name)))
					     (sarg (str arg))
					     (eqn (format nil "~a = ~a" sname sarg)))
					`(branch (case ,eqn)
						 ((hide ,label) (expand ,sname)))))
			    new-names args new-labels)))
	 (next-expr (substit expr new-names-alist))
	 (case-step (list 'case-replace
			  (format nil "(~a) = (~a)" let-expr next-expr)
			  :hide? t))
	 (else-step (cons 'expand* (mapcar #'(lambda (nn) (string (id nn))) new-names))))
    (if (chained-let-expr? expr)
	(create-let-name-replace-step*
	 next-expr hide? (append new-names-alist names-alist)
	 (cons name-steps names-steps)
	 (cons case-step case-steps)
	 (cons else-step else-steps)
	 (nconc (nreverse commute-steps) commutes-steps))
	(let ((step (finish-let-name-replace-step
		     (cons name-steps names-steps)
		     (cons case-step case-steps)
		     (cons else-step else-steps)
		     (nconc (nreverse commute-steps) commutes-steps))))
	  (values names-alist step)))))

(defun finish-let-name-replace-step (names-steps case-steps else-steps commute-steps
				     &optional (step '(skip)))
  (if (null names-steps)
      (if commute-steps
	  `(then ,step ,@commute-steps)
	  step)
      (finish-let-name-replace-step
       (cdr names-steps)
       (cdr case-steps)
       (cdr else-steps)
       commute-steps
       `(then ,@(car names-steps)
	      (branch ,(car case-steps) (,step ,(car else-steps)))))))

(defun create-let-replace-names (bindings names-alist &optional names)
  (if (null bindings)
      (nreverse names)
      (let ((name (create-let-replace-name (car bindings) names-alist)))
	(create-let-replace-names (cdr bindings) names-alist (cons name names)))))

(defun create-let-replace-name (binding names-alist &optional num)
  (let ((nid (if num (makesym "~a_~d" (id binding) num) (id binding))))
    (if (or (resolve nid 'expr nil)
	    (member nid names-alist :key #'cdr :test #'same-id))
	(create-let-replace-name binding names-alist (if num (1+ num) 1))
	(let ((bd (lcopy binding 'id nid)))
	  (make-variable-expr bd)))))

(defmethod let-rhs-exprs ((ex let-expr) &optional (first? t))
  (if first?
      (cons (argument ex) (let-rhs-exprs (expression (operator ex))))))

(defmethod let-rhs-exprs ((ex chained-let-expr) &optional first?)
  (declare (ignore first?))
  (cons (argument ex) (let-rhs-exprs (expression (operator ex)))))

(defmethod let-rhs-exprs (ex &optional first?)
  (declare (ignore ex first?))
  nil)

(defun create-new-labels (names)
  (let ((cur-labels (collect-labels-of-current-sequent)))
    (create-new-labels* names cur-labels)))

(defun create-new-labels* (names cur-labels &optional new-labels)
  (if (null names)
      (nreverse new-labels)
      (let ((new-label (create-new-label (car names) cur-labels)))
	(create-new-labels* (cdr names) cur-labels (cons new-label new-labels)))))

(defun create-new-label (name &optional
				(cur-labels (collect-labels-of-current-sequent))
				num)
  (let* ((id (ref-to-id name))
	 (nlab (if num (makesym "~a_~d" id num) id)))
    (if (memq nlab cur-labels)
	(create-new-label id cur-labels (if num (1+ num) 1))
	nlab)))


;;;;;;;  end of let-name-replace

(defstep inst! (&optional (fnums *) copy? (relativize? t))
  (skip-msg "inst! does not work for now.")
  "" "")

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defstep case-if (cases)
  (if (consp cases)
      (let ((top-case (car cases))
	    (then-case (cadr cases))
	    (else-case (caddr cases)))
	(branch (case top-case)
		((case-if then-case)
		 (case-if else-case))))
    (skip))
  "Creates a case split according to a given structure so that
   (cases '(A (B (C nil nil) (D nil nil)) (E nil nil))) yields
   sequents with A, B, C |-...,
              A, -B, D |- ...,
              -A, E  |- ..."
   "Case-splitting on ~a")

(defstep case-if* (cases-list)
  (if (consp cases-list)
      (let ((fst (car cases-list))
	    (rst (cdr cases-list)))
	(then (case-if fst)
	      (case-if* rst)))
    (skip))
  "Iterative version that applies case-if successively to each element of the
conditions given in cases-list."
  "Applying case-if iteratively")

(defstep case-old-lift-if (fnums &optional (updates? t))
  (let ((*lift-if-updates* updates?)
	(sforms (select-seq  (s-forms *goal*) fnums))
	(all-conds (loop for sf
			 in sforms
			 collect (top-collect-conds-old (formula sf)))))
    (case-if* all-conds))
  "Simulates the case-splits in PVS4.2."
  "Case-splitting on lift-if conditions in PVS4.2")

(defmethod top-collect-conds-old ((expr branch))
  (let ((if-conds (collect-conds-old (condition expr))))
    (if (null if-conds)
	(let ((then-conds (top-collect-conds-old (then-part expr))))
	  (if (null then-conds)
	      (top-collect-conds-old (else-part expr))
	      then-conds))
	if-conds)))

(defmethod top-collect-conds-old ((expr cases-expr))
  (with-slots (expression selections else-part) expr
      (let ((expr-conds (collect-conds-old expression)))
	(or expr-conds
	    (let ((selection-conds (collect-conds-old selections)))
	      (or selection-conds
		  (collect-conds-old else-part)))))))

(defmethod top-collect-conds-old ((expr application))
  (let ((nexpr (if *lift-if-updates*
		   (translate-update-to-if expr)
		   expr)))
    (if (eq nexpr expr)
	(call-next-method)
	(collect-conds-old nexpr))))

(defmethod top-collect-conds-old ((expr expr))
  (if (negation? expr)
      (top-collect-conds-old (args1 expr))
      (collect-conds-old expr)))

(defmethod collect-conds-old ((expr branch) &optional boundvars)
  (if (branch? expr)
      (let ((condn (condition expr)))
	(unless (intersection (freevars condn) boundvars
			      :test #'same-declaration)
	  ;;no bound variables in the conditional
	  (let ((conds (collect-conds-old condn boundvars)))
	    (if (null conds)
		(list condn
		      (collect-conds-old (then-part expr) boundvars)
		      (collect-conds-old (else-part expr) boundvars))
		conds))))
      (collect-conds-old (arguments expr) boundvars)))

(defmethod collect-conds-old ((expr binding-expr) &optional  boundvars)
  (collect-conds-old (expression expr) 
			(append (bindings expr) boundvars)))

;;; SO 9/5/94 - Added methods for projection-application and field-application
(defmethod collect-conds-old ((expr projection-application) &optional boundvars)
  (collect-conds-old (argument expr) boundvars))

(defmethod collect-conds-old ((expr injection-application) &optional boundvars)
  (collect-conds-old (argument expr) boundvars))

(defmethod collect-conds-old ((expr injection?-application) &optional boundvars)
  (collect-conds-old (argument expr) boundvars))

(defmethod collect-conds-old ((expr extraction-application) &optional boundvars)
  (collect-conds-old (argument expr) boundvars))

(defmethod collect-conds-old ((expr field-application) &optional boundvars)
  (collect-conds-old (argument expr) boundvars))

(defmethod collect-conds-old ((expr application)  &optional  boundvars)
  (if (and *lift-if-updates*
	   (update-expr? (operator* expr))
	   (null (intersection (freevars (update-application* expr))
			       boundvars
			       :test #'same-declaration)))
      (let ((nexpr (translate-update-to-if expr)))
	(if (eq nexpr expr)
	    (let ((opconds (collect-conds-old (operator expr) boundvars)))
	      (if (null opconds)
		  (collect-conds-old (arguments expr)
				 boundvars)
		  opconds))
	    (collect-conds-old nexpr)))
      (let ((opconds (collect-conds-old (operator expr) boundvars)))
	(if (null opconds)
	    (collect-conds-old (arguments expr)
			   boundvars)
	    opconds))))

(defun update-application* (expr)
  (if (typep (operator expr) 'update-expr)
      expr
      (update-application* (operator expr))))

(defmethod collect-conds-old ((expr record-expr) &optional boundvars)
  (collect-conds-old (assignments expr) boundvars))

(defmethod collect-conds-old ((expr tuple-expr) &optional boundvars)
  (collect-conds-old (exprs expr) boundvars))

(defmethod collect-conds-old ((expr update-expr) &optional boundvars)
  (let ((expr-conds (collect-conds-old (expression expr) boundvars)))
    (if (null expr-conds)
	(collect-conds-old (assignments expr) boundvars)
	expr-conds)))

(defmethod collect-conds-old ((expr assignment) &optional boundvars)
  (or  (collect-conds-old (arguments expr) boundvars)
       (collect-conds-old (expression expr) boundvars)))

(defmethod collect-conds-old ((expr cases-expr) &optional boundvars)
  (unless (intersection (freevars (expression expr)) boundvars
			:test #'same-declaration)
    (collect-conds-old (translate-cases-to-if expr) boundvars)))

(defmethod collect-conds-old ((expr selection) &optional boundvars)
  (collect-conds-old (expression expr)
		 (append (args expr) boundvars)))

(defmethod collect-conds-old ((list list)  &optional  boundvars)
  (if (null list)
      nil
      (or (collect-conds-old (car list) boundvars)
	  (collect-conds-old (cdr list) boundvars))))

			  
			  

(defmethod collect-conds-old ((expr name-expr)  &optional  boundvars)
  (declare (ignore boundvars))
  nil)

(defmethod collect-conds-old ((expr number-expr)  &optional  boundvars)
  (declare (ignore boundvars))
  nil)


;; BEGIN: Modified by MM to inclue auto-fix [February 19, 2020]
(defmacro ps-label-as-list (label)
  `(uiop:split-string ,label :separator "."))

(defmacro neighbor-branch-id? (id1 id2 &optional (degree 1))
  `(let ((dist (abs (- (parse-integer ,id1 :junk-allowed t) (parse-integer ,id2 :junk-allowed t)))))
     (and
      (>= ,degree dist)
      (> dist 0))))

(defstrat try-siblings-proofs (&optional (degree 1))
  (let ((own-branch-label (ps-label-as-list(label *ps*))))
    (if (< 1 (length own-branch-label))
	(let ((own-branch-id (car(reverse own-branch-label)))
	      (justifs (loop for sg in (all-subgoals (parent-proofstate *ps*))
			     when (neighbor-branch-id? own-branch-id (car(reverse(ps-label-as-list(label sg)))) degree)
			     collect (editable-justification(collect-justification sg)))))
	  (if justifs
	      (rerun* justifs)
	    (skip)))
      (skip-msg "Current goal has no siblings.")))
  "")

(defmacro current-pvs-verbose-level ()
  (if (and *noninteractive*
	   (integerp *pvs-verbose*))
      *pvs-verbose*
    -1))

(defstrat rerun (&optional proof recheck? break? default auto-fix?)
  (let ((default (if *proof-for-unexpected-branches*
		     (let ((dummy (when (and (> (current-pvs-verbose-level) 2) default)
				    (format t "~%[rerun] WARNING default proof given by argument is being omitted since a default proof is set in *proof-for-unexpected-branches*.~%"))))
		       *proof-for-unexpected-branches*)
		     default))
	(auto-fix? (if *auto-fix-on-rerun*
		       (let ((dummy (unless (or (not (> (current-pvs-verbose-level) 2)) auto-fix?)
				      (format t "~%[rerun] WARNING auto-fix? is set in *auto-fix-on-rerun*.~%"))))
			 *auto-fix-on-rerun*)
		       auto-fix?))
	(x (rerun-step (cond  ((null proof)
			       (justification *ps*))
			      ((null (check-edited-justification proof))
			       (revert-justification proof))
			      (t (error-format-if
				  "~%Given proof is not well-formed")
				 '(skip)))
		       recheck?
		       break?
		       default
		       auto-fix?)))
    x)
  "Strategy to rerun existing or supplied proof. The RECHECK? flag when T is
used to rerun an entire proof using only primitive proof steps.  Normally
rerun gives warnings when there is a mismatch between the number of sobgoals
and the number of subproofs.  The BREAK? flag causes an error and queries
the user instead."
  "")

(defstrat rerun* (proofs)
  (mapstep #'(lambda(prf)`(finalize (rerun ,prf))) proofs)
  "Apply rerun to every script in the PROOFS parameter."
  "")

;; Auto-Fix parameters
;; - default proof to be tried on open branches after the stored proof was rerun.
(defparameter *proof-for-unexpected-branches* nil)
;; - when a non-integer value is stored in *auto-fix-on-rerun*, that value is assumed
;;   to determine the acceptable neighborhood size to look for misplaced proofs. For
;;   example, if the branch 1.1.2.4 of a particular lemma cannot be closed with the
;;   proof stored for it in the prf file, and the value *auto-fix-on-rerun* is 2, the
;;   subproofs corresponding to the branches 1.1.2.2, 1.1.2.3, 1.1.2.5, and 1.1.2.6
;;   will be tried on the open branch (1.1.2.4).
(defparameter *auto-fix-on-rerun* nil)

;; END: Modified by MM to inclue auto-fix [February 19, 2020]
