
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

(defun cl2pvs (sexpr type &optional context)
  (let* ((context (or context *current-context*))
	 (pexpr (cl2pvs* sexpr type context)))
    pexpr))

;;
;; This needs to be put back in if we ever want to use the result of
;; evaluation in any further computation.  It's pointless at the moment as
;; we're just printing it:
;;
;;    (typecheck pexpr :expected type :context context
;;	       :tccs 'none)))

  
(defmethod cl2pvs* (sexpr (type type-name) context)
  (declare (ignore context))
  (if (tc-eq type *number*)
      (if (eq 'cant-translate sexpr)
	  (throw 'cant-translate 'cant-translate)
	(mk-number-expr sexpr))
    (if (tc-eq (find-supertype type) *boolean*)
	(if sexpr
	    (if (eq 'cant-translate sexpr)
		(throw 'cant-translate 'cant-translate)
	      *true*)
	  *false*)
      (throw 'cant-translate nil))))

(defmethod cl2pvs* (sexpr (type funtype) context)
  (declare (ignore sexpr type context))
  (throw 'cant-translate nil))

(defmethod cl2pvs* (sexpr (type subtype) context)
  (cl2pvs* sexpr (find-supertype type) context))

(defmethod cl2pvs* (sexpr (type tupletype) context)
  (mk-tuple-expr (loop for typ in (types type)
		       as i from 0
		       collect (cl2pvs* (svref sexpr i)
					typ
					context))))

(defmethod cl2pvs* (sexpr (type recordtype) context)
  (cond ((string-type? type)
	 (cl2pvs*-string sexpr))
	((finseq-type? type)
	 (throw 'cant-translate nil))
	(t
	 (mk-record-expr
	  (loop for fld in (sorted-fields type)
		as i from 0
		collect (mk-assignment 'uni
			  (list (list (mk-name-expr (id fld))))
			  (cl2pvs* (svref sexpr i) (type fld) context)))))))

(defmethod string-type? ((type recordtype))
  (let ((range (finseq-type? type)))
    (and range
	 (char-type? range))))
  
(defmethod string-type? (type)
  (declare (ignore type))
  nil)

(defmethod finseq-type? ((type recordtype))
  (with-slots (fields) type
    (and (= (length fields) 2)
	 (let ((lenfieldtype (type (car fields)))
	       (seqfieldtype (type (cadr fields))))
	   (and (tc-eq lenfieldtype *naturalnumber*)
		(get-seq-range-type seqfieldtype lenfieldtype))))))

(defmethod finseq-type? (type)
  (declare (ignore type))
  nil)

(defmethod get-seq-range-type ((type funtype) domaindep)
  (with-slots (domain range) type
    (let ((domtype (simple-below? domain)))
      (and domtype
	   (type domtype)
	   (tc-eq (type domtype) domaindep)
	   (range type)))))
  
(defmethod get-seq-range-type ((type t) domaindep)
  nil)

(defun char-type? (type)
  (let ((stype (find-supertype type)))
    (and (type-name? stype)
	 (eq (id (module-instance (resolution stype)))
	     '|character_adt|))))

(defun char-list-type? (type)
  (and (list-type? type)
       (let ((act (type-value (car (actuals (find-supertype type))))))
	 (and (type-name? act)
	      (eq (id act) '|character|)
	      (module-instance act)
	      (eq (id (module-instance act)) '|character_adt|)))))

; this is a version of xt-string-expr that doesn't do anything
; about places
(defun cl2pvs*-string (str)
  (let ((ne (mk-name-expr '|char?|)))
    (setf (parens ne) 1)
    (make-instance 'string-expr
      'string-value str
      'operator (mk-name-expr '|list2finseq| (list (mk-actual ne)))
      'argument (cl2pvs*-string* (xt-string-to-codes str 0 (length str) '#(0 0 0 0) nil)))))

(defun cl2pvs*-string* (codes)
  (if (null codes)
      (mk-name-expr '|null|)
      (let* ((code (car codes))
	     (head (mk-application (mk-name-expr '|char|) (mk-number-expr code)))
	     (rest (cl2pvs*-string* (cdr codes))))
	(make-instance 'application
	  'operator (mk-name-expr '|cons|)
	  'argument (make-instance 'arg-tuple-expr
		      'exprs (list head rest))))))



(defmethod cl2pvs* (sexpr (type dep-binding) context)
  (cl2pvs* sexpr (type type) context))

(defun list-type? (type)
  (eq (id (module-instance (resolution (find-supertype type)))) '|list_adt|))

(defmethod cl2pvs* (sexpr (type adt-type-name) context)
  (cond ((char-list-type? type)
	 (cl2pvs*-string (coerce sexpr 'string)))
	((list-type? type)
	 (cl2pvs*-list sexpr (type-value (car (actuals (find-supertype type))))
		       context))
	((char-type? type)
	 (cl2pvs*-char sexpr type context))
	(t
	 (let* ((recognizers (recognizers type))
		(recognizer-funs (loop for rec in recognizers
				       collect (lisp-function
						(declaration rec))))
		(recognizer (loop for recfun in recognizer-funs
				  as rec in recognizers
				  thereis
				  (and recfun
				       (funcall recfun sexpr)
				       rec))))
	   (assert recognizer)
	   (let* ((constructor (constructor recognizer))
		  (accessors (accessors constructor))
		  (accessor-funs (loop for acc in accessors
				       collect
				       (lisp-function (declaration acc))))
		  (args (loop for accfn in accessor-funs
			      as acc in accessors
			      collect 
			      (cl2pvs* (funcall accfn sexpr) (range (type acc))
				       context))))
	     (if accessors
		 (mk-application* constructor args)
		 constructor))))))

(defun cl2pvs*-char (expr type context)
  (declare (ignore type context))
  (assert (standard-char-p expr))
  (make-instance 'application
		 'operator (make-instance 'constructor-name-expr 'id '|char|)
		 'argument (make-instance 'number-expr 'number (char-code expr))))

(defun cl2pvs*-list (exprs eltype context)  
  (if exprs
      (let ((ex (cl2pvs* (car exprs) eltype context))
	    (list (cl2pvs*-list (cdr exprs) eltype context)))
	(make-instance 'list-expr
	  'operator (make-instance 'name-expr
		      'id '|cons|)
	  'argument (make-instance 'arg-tuple-expr
		      'exprs (list ex list))))
      (make-instance 'null-expr
	'id '|null|)))
