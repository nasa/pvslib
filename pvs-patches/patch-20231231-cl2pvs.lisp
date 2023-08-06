
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
  (let* ((*current-context* (or context *current-context*))
	 (pexpr (cl2pvs* sexpr type context)))
    pexpr))

;;
;; This needs to be put back in if we ever want to use the result of
;; evaluation in any further computation.  It's pointless at the moment as
;; we're just printing it:
;;
;;    (typecheck pexpr :expected type :context context
;;	       :tccs 'none)))

(define-condition cl2pvs-error (groundeval-error)
  ((sexpr :accessor :sexpr :initarg :sexpr)
   (type :accessor :type :initarg :type))
  (:report (lambda (condition stream)
	     (with-slots (sexpr type) condition
	       (format stream
		   "~@<'~a' (of type '~a')~_  can't be translated to PVS syntax~:>"
		 sexpr type)))))
  
(defmethod cl2pvs* (sexpr (type type-name) context)
  (declare (ignore context))
  (if (tc-eq (find-supertype type) *number*)
      (cond ((rationalp sexpr) (mk-number-expr sexpr))
	    ;; ((floatp sexpr)(mk-number-expr sexpr))
	    ((floatp sexpr)(mk-number-expr (rationalize sexpr)))
	    (t (error 'cl2pvs-error :sexpr sexpr :type type)))
    (if (tc-eq (find-supertype type) *boolean*)
	(if sexpr (if (eq sexpr *cant-translate*)
		      (error 'cl2pvs-error :sexpr sexpr :type type)
		    *true*)
	  *false*)
      (error 'cl2pvs-error :sexpr sexpr :type type))))

(defun dom-subrange? (sexpr type)
  (if #+allegro (excl::simple-array-p sexpr)
      #-allegro (simple-array-p sexpr)
      (let* ((typeof (type-of sexpr))
	     ;(elemtype (cadr typeof))
	     (length (caaddr typeof)))
	(if (eq (cadr typeof) 'character)
	    (cons 0 (1- length))))
      (let ((bnds (simple-subrange? (domtype type))))
	(and bnds (number-expr? (car bnds))(number-expr? (cdr bnds))
	     (cons (number (car bnds))(number (cdr bnds)))))))


(defmethod cl2pvs* (sexpr (type funtype) context)
  (declare (ignore context))
  (let* ((ub (simple-below? (domtype type)))
	 (ubnum (when (number-expr? ub) (number ub))))
    (if (and ubnum
	     (tc-eq (range type) *boolean*))
	;; We have a bitvector - create a form like bv(0b11001010)
	(let ((num 0))
	  (dotimes (i (number ub))
	    (when (pvs-funcall sexpr i)
	      (incf num (expt 2 (- ubnum i 1)))))
	  ;; No easy way to find out if this came from a bitvector-conversion
	  ;; Use the bv form to be on the safe side.
	  (tc-expr (format nil "bv[~d](0b~b)" ubnum num)))
	(let ((bnds (dom-subrange? sexpr type)))
	  (if bnds
	      (let* ((nvar (make-new-variable '|ii| type))
		     (conds (make-subrange-conds  (car bnds)  (cdr bnds)
						 nvar sexpr (range type)
						 (when (dep-binding? (domain type))
						   (domain type))
						 0 nil)))
		(tc-expr (format nil "LAMBDA (~a: ~a): COND ~{~a~^, ~} ENDCOND"
			   nvar (domtype type) conds)))
	      (error 'cl2pvs-error :sexpr sexpr :type type))))))

(defun make-subrange-conds (lower upper nvar sexpr rtype depbnd idx conds)
  #+allegro (declare (:explain :tailmerging))
  (if (> lower upper)
      (nreverse conds)
      (let* ((rty (if depbnd
		      (substit rtype (acons depbnd (make!-number-expr lower) nil))
		      rtype))
	     (val (cl2pvs* (pvs-funcall sexpr idx) rty *current-context*))
	     (cnd (format nil "~a=~d -> ~a" nvar lower val)))
	(make-subrange-conds (1+ lower) upper nvar sexpr rtype depbnd
			       (1+ idx) (cons cnd conds)))))

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
	 (let* ((len (elt sexpr 0))
		(fn (elt sexpr 1))
		(ne (mk-name-expr '|char?|))
		(charcodelist (loop for x from 0 to (- len 1)
				    collect
				    (pvs-funcall fn x))))
	   (make-instance 'string-expr
			  'string-value (format nil "~{~a~}"
						    (loop for chcode in charcodelist
							  collect (code-char chcode)))
			  'operator (mk-name-expr '|list2finseq| (list (mk-actual ne)))
			  'argument (cl2pvs*-string* charcodelist))))
	   ;; (mk-application (mk-name-expr '|list2finseq|)
	   ;; 		   chars)
	(t ;;(format t "~%wrong branch")
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

(defun char-code-accessor ();;NSH(12/21/19): used in rendering strings in cl2pvs*-string
  (lisp-function (accessor-decl (car (arguments (car (constructors (get-theory "character"))))))))

(defmethod finseq-type? ((type recordtype))
  (with-slots (fields) type
    (and (= (length fields) 2)
	 (let* ((lfield (and (eq (id (car fields)) '|length|)
			     (car fields)))
		(sfield (and (eq (id (cadr fields)) '|seq|)
			     (cadr fields)))
		(sfieldtype (when sfield (find-supertype (type sfield)))))
	   (and lfield sfieldtype
		(compatible-type (type lfield) *naturalnumber*)
		(funtype? sfieldtype)
		(simple-below? (domain sfieldtype))
		(range sfieldtype)))))) ;;returns range

(defmethod finseq-type? ((type subtype))
  (with-slots (supertype) type
    (finseq-type? supertype)))
			  
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

(defmethod get-seq-range-type ((type subtype) domaindep)
  (with-slots (supertype predicate) type
    (get-seq-range-type supertype domaindep)))
  
(defmethod get-seq-range-type ((type t) domaindep)
  (declare (ignore domaindep))
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
  (let ((ne (mk-name-expr '|char?|))
	(charcodelist (if (stringp str)   ;;NSH(12/21/19): extracts list of character codes
			  (xt-string-to-codes str 0 (length str) '#(0 0 0 0) nil)
			;;else assuming it's a record-vector
			(loop for i from 0 to (1- (svref str 0))
			      collect (let ((chari (funcall (svref str 1) i)))
					(or (and (characterp chari) (char-code chari))
					    (funcall (char-code-accessor)
						     chari)))))))
    (setf (parens ne) 1)
    (make-instance 'string-expr
		   'string-value (or (and (stringp str) str)
				     (format nil "~{~a~}"
					     (loop for chcode in charcodelist
						   collect (code-char chcode))))
      'operator (mk-name-expr '|list2finseq| (list (mk-actual ne)))
      'argument (cl2pvs*-string* charcodelist))))

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
  (let ((sty (find-supertype type)))
    (and (type-name? sty)
	 (eq (id (module-instance (resolution sty))) '|list_adt|))))

(defmethod cl2pvs* (sexpr (type adt-type-name) context) 
  (cond ((char-list-type? type)
	 (cl2pvs*-string (coerce sexpr 'string)))
	((list-type? type)
	 (cl2pvs*-list sexpr (type-value (car (actuals (find-supertype type))))
		       context))
	((char-type? type) ;;NSH(12/20/19): commented out so that it is treated
	 (cl2pvs*-char sexpr type context));;like any other datatype
	((enumtype? (adt type))
	 (nth sexpr (constructors type)))
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
		  (args (if (and (co-constructor? constructor)
				 accessors);;NSH(2-9-2014)
			    (error 'cl2pvs-error :sexpr sexpr :type type)
			    (loop for accfn in accessor-funs
			      as acc in accessors
			      collect 
			      (cl2pvs* (funcall accfn sexpr) (range (type acc))
				       context)))))
	     (if accessors
		 (mk-application* constructor args)
		 constructor))))))

(defun cl2pvs*-char (expr type context)
  (declare (ignore type context))
      ;(assert (standard-char-p code))
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
