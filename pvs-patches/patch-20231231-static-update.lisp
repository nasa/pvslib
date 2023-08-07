
;;The operations in this file are meant to address two concerns:
;;1. What variables in an expression might possibly be destructively updated?
;;2. What variables are live when these variables are destructively updated.

;;For (1), it is sufficient to look at the free variables in the expression
;;that are destructively updateable.
;;For (2), it is sufficient to consider the possibly destructively
;;updateable free variables in the still active expressions.

;;updateable? ensures that a type is definitely destructively
;;updateable, wherever it is updateable.  In contrast, the
;;method contains-updateable? is true whenever the type has
;;any destructively updateable content.  Destructive updates
;;can only be safely invoked when all the content is updateable
;;content is destructively updateable since it would otherwise
;;be necessary to analyze the actual updates to make sure that
;;they all correspond to destructively updateable types.  This is
;;worth considering in a future extension, but it is improbable that
;;there'll be examples where some fields are destructively updateable
;;and others are only nondestructively updateable.

;;updateable? is used to check if the type of an updated expression
;;is possibly destructively. 

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

(defmethod updateable? ((texpr tupletype))
  (updateable? (types texpr)))

;;this is the only case where updateable? can be false, because
;;the given function type is not an array.  
(defmethod updateable? ((texpr funtype)) ;;add enum types, subrange.
  (with-slots (domain range) texpr
    (and (not (contains-possible-closure? domain))
	 ;;(or (simple-below? (domain texpr))(simple-upto? (domain texpr)))
	 (updateable? range))))

(defmethod updateable? ((texpr recordtype))
  (updateable? (mapcar #'type (fields texpr))))

(defmethod updateable? ((texpr subtype))
  (updateable? (find-supertype texpr)))

(defmethod updateable? ((texpr list))
  (or (null texpr)
      (and (updateable? (car texpr))
	   (updateable? (cdr texpr)))))

;;This is subsumed by fall-through case.
;(defmethod updateable? ((texpr type-name))
;  (not (or (eq texpr *boolean*)
;	   (eq texpr *number*))))



;(defmethod updateable? ((texpr actual))
;  (updateable? (type-value texpr)))

(defmethod updateable? ((texpr t))
  t) ;;It is okay to say  updateable? for uninterpreted
;;or actuals since these will not be updated destructively or otherwise.

;;For use in pvs2cl-update* (recordtypes)
(defmethod top-updateable-types ((type tupletype) accum)
  (top-updateable-types (types type) (cons type accum)))

(defmethod top-updateable-types ((type recordtype) accum)
  (top-updateable-types (mapcar #'type (fields type))
			(cons type accum)))

(defmethod top-updateable-types ((type subtype) accum)
  (top-updateable-types (find-supertype type) accum))

(defmethod top-updateable-types ((type list) accum)
  (if (consp type)
      (top-updateable-types (cdr type)
			    (top-updateable-types (car type) accum))
      accum))

(defmethod top-updateable-types ((type funtype) accum)
  (if (or (simple-below? (domain type))(simple-upto? (domain type)))
      (cons type accum) ;;no need to go into range since 
      accum))         ;;dest. updates stop with funtypes.

(defmethod top-updateable-types ((type t) accum)
  accum)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defmethod contains-updateable? ((texpr tupletype))
  t)

(defmethod contains-updateable? ((texpr funtype))
  (or (simple-below? (domain texpr))(simple-upto? (domain texpr))
       (contains-updateable? (range texpr))))

(defmethod contains-updateable? ((texpr recordtype))
  t)

(defmethod contains-updateable? ((texpr subtype))
  (contains-updateable? (find-supertype texpr)))

(defmethod types ((texpr type-expr))
  (list texpr))

(defmethod contains-updateable? ((texpr adt-type-name))
  (some #'(lambda (constr)
	    (and (funtype? (type constr))
		 (loop for ty in (types (domain (type constr)))
		       
		       thereis (and (not (tc-eq (find-supertype ty)
					texpr))
				    (contains-updateable? ty)))))
	(constructors texpr)))


(defmethod contains-updateable? ((texpr list))
  (when (consp texpr)
    (or (contains-updateable? (car texpr))
	(contains-updateable? (cdr texpr)))))

;;This is subsumed by fall-through case.
;(defmethod contains-updateable? ((texpr type-name))
;  (not (or (eq texpr *boolean*)
;	   (eq texpr *number*))))



(defmethod contains-updateable? ((texpr actual))
  (contains-updateable? (type-value texpr)))

(defmethod contains-updateable? ((texpr t))
  nil) ;;It is okay to say not updateable? for uninterpreted
;;since these cannot be updated if nothing is known
;;about their type.

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defmethod contains-possibly-updateable? ((texpr tupletype))
  t)

(defmethod contains-possibly-updateable? ((texpr funtype))
  (or (simple-below? (domain texpr))(simple-upto? (domain texpr))
       (contains-possibly-updateable? (range texpr))))


(defmethod contains-possibly-updateable? ((texpr recordtype))
  t)

(defmethod contains-possibly-updateable? ((texpr subtype))
  (contains-possibly-updateable? (find-supertype texpr)))

(defmethod contains-possibly-updateable? ((texpr adt-type-name))
  (some #'(lambda (constr)
	    (and (funtype? (type constr))
		 (let* ((dom (domain (type constr)))
			(types (if (tupletype? dom)
				 (types dom)
				 (list dom))))
		 (loop for ty in types
		       thereis (and (not (tc-eq (find-supertype ty)
					texpr))
				    (contains-possibly-updateable? ty))))))
	(constructors texpr)))


(defmethod contains-possibly-updateable? ((texpr list))
  (when (consp texpr)
    (or (contains-possibly-updateable? (car texpr))
	(contains-possibly-updateable? (cdr texpr)))))

;;This is subsumed by fall-through case.
;(defmethod contains-possibly-updateable? ((texpr type-name))
;  (not (or (eq texpr *boolean*)
;	   (eq texpr *number*))))



(defmethod contains-possibly-updateable? ((texpr actual))
  (contains-possibly-updateable? (type-value texpr)))

(defmethod contains-possibly-updateable? ((texpr type-name))
  (formal-type-decl? (declaration texpr)))
;;In the context, formal type parameters can later become
;;updateable.  

(defmethod contains-possibly-updateable? ((texpr t))
  nil) ;;It is okay to say not updateable? for uninterpreted
;;since these cannot be updated if nothing is known
;;about their type.  

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;contains-possibly-updateable-or-closure? is used to check if
;;the expression's type is such that some updateable structure might
;;be saved in the result either because the type itself contained
;;updateable structure or because it included a function type which
;;would correspond to a closure value which might keep some variables
;;live in the value.   Used in updateable-free-formal-vars.

(defmethod contains-possibly-updateable-or-closure? ((texpr tupletype))
  t)

(defmethod contains-possibly-updateable-or-closure? ((texpr funtype))
  t)

(defmethod contains-possibly-updateable-or-closure? ((texpr recordtype))
  t)

(defmethod contains-possibly-updateable-or-closure? ((texpr subtype))
  (contains-possibly-updateable-or-closure? (find-supertype texpr)))

(defmethod contains-possibly-updateable-or-closure? ((texpr adt-type-name))
  (some #'(lambda (constr)
	    (and (funtype? (type constr))
		 (let* ((dom (domain (type constr)))
			(types (if (tupletype? dom)
				 (types dom)
				 (list dom))))
		 (loop for ty in types
		       thereis (and (not (tc-eq (find-supertype ty)
					texpr))
				    (contains-possibly-updateable-or-closure? ty))))))
	(constructors texpr)))


(defmethod contains-possibly-updateable-or-closure? ((texpr list))
  (when (consp texpr)
    (or (contains-possibly-updateable-or-closure? (car texpr))
	(contains-possibly-updateable-or-closure? (cdr texpr)))))

(defmethod contains-possibly-updateable-or-closure? ((texpr actual))
  (contains-possibly-updateable-or-closure? (type-value texpr)))

(defmethod contains-possibly-updateable-or-closure? ((texpr type-name))
  (formal-type-decl? (declaration texpr)))
;;In the context, formal type parameters can later become
;;updateable.  

(defmethod contains-possibly-updateable-or-closure? ((texpr t))
  nil) ;;It is okay to say not updateable? for uninterpreted
;;since these cannot be updated if nothing is known
;;about their type.  

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;contains-possible-closure? is used to check if
;;the expression's type is such that some updateable structure might
;;be saved in the result either because the type itself contained
;;updateable structure or because it included a function type which
;;would correspond to a closure value which might keep some variables
;;live in the value.   Used in updateable-free-formal-vars.

(defmethod contains-possible-closure? ((texpr tupletype))
  (contains-possible-closure? (types texpr)))

(defmethod contains-possible-closure? ((texpr funtype))
  t)

(defmethod contains-possible-closure? ((texpr recordtype))
  (let ((prtype (print-type texpr)))
    ;; CM - Strings are internally represented as records, but they are updatable
    (if (and (type-name? prtype) (equal (id prtype) '|string|))
	(contains-possible-closure? prtype)
      (contains-possible-closure? (mapcar #'type (fields texpr))))))

(defmethod contains-possible-closure? ((texpr subtype))
  (contains-possible-closure? (find-supertype texpr)))

(defmethod contains-possible-closure? ((texpr adt-type-name))
  (some #'(lambda (constr)
	    (and (funtype? (type constr))
		 (let* ((dom (domain (type constr)))
			(types (if (tupletype? dom)
				 (types dom)
				 (list dom))))
		 (loop for ty in types
		       thereis (and (not (tc-eq (find-supertype ty)
					texpr))
				    (contains-possible-closure? ty))))))
	(constructors texpr)))


(defmethod contains-possible-closure? ((texpr list))
  (when (consp texpr)
    (or (contains-possible-closure? (car texpr))
	(contains-possible-closure? (cdr texpr)))))

(defmethod contains-possible-closure? ((texpr actual))
  (contains-possible-closure? (type-value texpr)))

(defmethod contains-possible-closure? ((texpr type-name))
  (formal-type-decl? (declaration texpr)))
;;In the context, formal type parameters can later become
;;updateable.  

(defmethod contains-possible-closure? ((texpr t))
  nil) ;;It is okay to say not updateable? for uninterpreted
;;since these cannot be updated if nothing is known
;;about their type.

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defvar *defconstants*)
(defun collect-defconstants (expr)
  (let ((*defconstants* nil))
    (collect-defconstants* expr)
    *defconstants*))

(defmethod collect-defconstants* ((expr name-expr))
  (when (pvs-defconstant? expr)
    (pushnew expr *defconstants* :test #'same-declaration)))

(defmethod collect-defconstants* ((expr list))
  (loop for x in expr
	do (collect-defconstants* x)))

(defmethod collect-defconstants* ((expr binding-expr))
  (with-slots (expression) expr
	      (collect-defconstants* expression)))

(defmethod collect-defconstants* ((expr application))
  (with-slots (operator argument) expr
	      (collect-defconstants* operator)
	      (collect-defconstants* argument)))

(defmethod collect-defconstants* ((expr tuple-expr))
  (with-slots (exprs) expr
	      (collect-defconstants* exprs)))

(defmethod collect-defconstants* ((expr record-expr))
  (with-slots (assignments) expr
	      (collect-defconstants* assignments)))

(defmethod collect-defconstants* ((expr update-expr))
  (with-slots (expression assignments) expr
	      (collect-defconstants* expression)
	      (collect-defconstants* assignments)))

(defmethod collect-defconstants* ((expr assignment))
  (with-slots (expression) expr
	      (collect-defconstants* expression)))

(defmethod collect-defconstants* ((expr field-application))
  (with-slots (argument) expr
	      (collect-defconstants* argument)))

(defmethod collect-defconstants* ((expr projection-application))
  (with-slots (argument) expr
	      (collect-defconstants* argument)))
				  
(defmethod collect-defconstants* ((expr t))
  nil)

    
      
			 


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;free-formal-vars returns the free variables, and when external, 
;;the constant theory parameters. 
(defun free-formal-vars (expr)
  (let ((free-consts-and-vars (append (collect-defconstants expr)(freevars expr))))
    (if *external*
	(let* ((params (free-params expr))
	       (const-params (loop for prm in params
				   when (constant? prm)
				   collect prm))
	       )
	  (append const-params free-consts-and-vars))
      free-consts-and-vars)))

;;updateable-free-formal-vars returns the possibly updateable
;;variables in a term that has a possibly updateable type.
;;This is used to indicate the still live variables in an
;;already evaluated expressions as with f in f(a), when translating
;; the expression a.
(defmethod updateable-free-formal-vars ((expr list))
  (loop for ex in expr nconc (updateable-free-formal-vars ex)))

(defmethod updateable-free-formal-vars ((expr t))
  (when (contains-possibly-updateable-or-closure? (type expr))
    (updateable-vars expr)))  ;was free-formal-vars

(defmethod updateable-output-vars ((expr list))
  (loop for ex in expr nconc (updateable-output-vars ex)))

(defmethod updateable-output-vars ((expr t))
  (when (contains-updateable? (type expr))
    (updateable-outputs expr)))
			     
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;This is the list of possibly updateable free formals. 
(defun updateable-vars (expr)
  (loop for var in (free-formal-vars expr)
	when (contains-possibly-updateable? (type var))
	collect var))

(defun updateable-outputs (expr)
  (loop for var in (free-formal-vars expr)
	when (contains-updateable? (type var))
	collect var))
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;structure* gets at the underlying structure (array, record, or tuple)
;; after peeling away the accesses.  
(defmethod structure* ((expr application))
  (with-slots (operator) expr
    (structure* operator)))

(defmethod structure* ((expr projection-application))
  (with-slots (argument) expr
    (structure* argument)))

(defmethod structure* ((expr injection-application))
  (with-slots (argument) expr
    (structure* argument)))

(defmethod structure* ((expr field-application))
  (with-slots (argument) expr
    (structure* argument)))

(defmethod structure* ((expr t))
  expr)


(defmethod check-update-argument ((expr application) updated-variables)
  (with-slots (operator argument) expr
    (or (not (contains-possible-closure? (type expr)))
	(null (intersection (updateable-free-formal-vars
			     (arguments expr))
			    updated-variables
			    :test #'same-declaration))
	(check-update-argument operator updated-variables))))


(defmethod check-update-argument ((expr projection-application)
				  updated-variables)
  (with-slots (argument) expr
    (or (not (contains-possible-closure? (type expr)))
	(check-update-argument argument updated-variables))))

(defmethod check-update-argument ((expr injection-application)
				  updated-variables)
  (with-slots (argument) expr
    (or (not (contains-possible-closure? (type expr)))
	(check-update-argument argument updated-variables))))

(defmethod check-update-argument ((expr field-application)
				  updated-variables)
  (with-slots (argument) expr
    (or (not (contains-possible-closure? (type expr)))
	(check-update-argument argument updated-variables))))

(defmethod check-update-argument ((expr record-expr)
				  updated-variables)
  (with-slots (assignments) expr
    (check-update-argument assignments updated-variables)))

(defmethod check-update-argument ((expr tuple-expr)
				  updated-variables)
  (with-slots (exprs) expr
    (check-update-argument exprs updated-variables)))

(defmethod check-update-argument ((expr lambda-expr)
				  updated-variables)
  (null (intersection (updateable-vars expr)
		      updated-variables
		      :test #'same-declaration)))

(defmethod check-update-argument ((expr binding-expr)
				  updated-variables)
  (with-slots (expression) expr
    (check-update-argument expression updated-variables)))

(defmethod check-update-argument ((expr update-expr)
				  updated-variables)
  (with-slots (expression assignments) expr
    (and (check-update-argument expression updated-variables)
	 (check-update-argument assignments updated-variables))))

(defmethod check-update-argument ((expr assignment)
				  updated-variables)
  (with-slots (expression) expr
    (check-update-argument expression updated-variables)))

(defmethod check-update-argument ((expr list) updated-variables)
  (loop for x in expr
	always (check-update-argument x updated-variables)))

(defmethod check-update-argument ((expr name-expr) updated-variables)
  (declare (ignore updated-variables))
  t)

(defmethod check-update-argument ((expr t) updated-variables)
  (null (intersection (updateable-vars expr)
		      updated-variables
		      :test #'same-declaration)))
