;;
;; defattach.lisp
;; Release: PVSio-6.0.10 (xx/xx/xx)
;;
;; Contact: Cesar Munoz (cesar.a.munoz@nasa.gov)
;; NASA Langley Research Center
;; http://shemesh.larc.nasa.gov/people/cam/PVSio
;;
;; Copyright (c) 2011-2012 United States Government as represented by
;; the National Aeronautics and Space Administration.  No copyright
;; is claimed in the United States under Title 17, U.S.Code. All Other
;; Rights Reserved.
;;
;; Functions and macros for defining PVSio semantic attachments
;;

(in-package :pvs)

(defparameter *pvsio-attachments* (make-hash-table :test #'equal))

(defun pvsio-version ()
  (pvs-message *pvsio-version*))

;; Primitive attachments are TRUSTED
(defstruct attachment theory name args primitive symbol)

(defun find-attachments (name)
  (loop for attachments being the hash-value of *pvsio-attachments*
	append (loop for attachment in attachments
		     when (string= name (attachment-name attachment))
		     collect attachment)))

(defun same-attachment (a1 a2)
  (and (string= (attachment-name a1)
		(attachment-name a2))
       (string= (attachment-theory a1)
		(attachment-theory a2))
       (equal (attachment-args a1)
	      (attachment-args a2))))

(defun find-attachment (attachmnt)
  (find attachmnt (gethash (attachment-theory attachmnt)
			   *pvsio-attachments*)
	:test #'same-attachment))

(defun pvsio-symbol (expr nargs)
  (let* ((nm (string (id expr)))
	 (th (string (id (module-instance expr))))
	 (a  (find-attachment (make-attachment
			       :theory th
			       :name nm 
			       :args nargs))))
      (when a (attachment-symbol a))))

(defun attachment-list ()
  (loop for attachments being the hash-value of *pvsio-attachments*
	append attachments))

(defun attachment-names ()
  (sort (remove-duplicates 
	 (mapcar #'attachment-name (attachment-list))
	 :test #'string=)
	#'string<))

(defun attachment-theories ()
  (sort (loop for theory being the hash-key of *pvsio-attachments*
	      collect theory)
	#'string<))	

(defun attachment-name-prim (attachmnt)
  (format nil "~a [~a~:[~;, primitive~]]" 
	  (attachment-name attachmnt)
	  (attachment-args attachmnt)
	  (attachment-primitive attachmnt)))

(defun list-pvs-attachments-str ()
  (let ((l (loop for theory being the hash-key using (hash-value attachments) of 
		 *pvsio-attachments* 
		 collect (cons (format nil "~a" theory)
			       (format nil "Theory ~a: ~{~a~^, ~}.~2%" theory 
				       (mapcar #'attachment-name-prim 
					       (sort attachments #'(lambda (x y)
								     (string-lessp
								      (attachment-name x)
								      (attachment-name y))))))))))
    (if l (format nil "Semantic attachments loaded in current context:~2%~{~a~}" 
		  (mapcar #'cdr (sort l #'(lambda(x y) (string-lessp (car x) (car y))))))
      (format nil "No semantics attachments loaded in current context.~2%"))))

(defun list-pvs-attachments ()
  (format t "~a" (list-pvs-attachments-str)))

(defun help-attachment-doc (attachmnt)
  (let ((fun (makesym "pvsio_~a_~a_~a" 
		      (attachment-theory attachmnt) 
		      (attachment-name attachmnt)
		      (attachment-args attachmnt))))
    (documentation fun 'function)))

(defun help-theory-attachments-str (theory)
  (let ((l (loop for attachmnt in (gethash theory *pvsio-attachments*)
		 collect (help-attachment-doc attachmnt))))
    (if l (format nil "Semantic attachments in theory ~a:~2%~{~a~}" theory l)
	 (format nil "No semantic attachments in theory ~a.~2%" theory))))

(defun help-pvs-theory-attachments (theory)
  (format t "~a" (help-theory-attachments-str theory)))

(defun help_pvs_theory_attachments (theory)
  (help-pvs-theory-attachments theory))

(defun help-attachment-str (name)
  (let ((l (loop for attachmnt in (find-attachments name)
		 collect (help-attachment-doc attachmnt))))
    (if l
	(format nil "Semantic attachments named ~a:~2%~{~a~}" name l)
      (format nil "No semantic attachments named ~a.~2%" name))))

(defun help-pvs-attachment (name)
  (format t "~a" (help-attachment-str name)))

(defun help_pvs_attachment (name) 
  (help-pvs-attachment name))

(defun check-defattach (name body)
  (cond ((not (symbolp name))
	 (pvs-message
	  "Error: ~a is not a valid name for a semantic attachment"
	  name)
	 nil)
	((null body) 
	 (pvs-message "Error: Body of semantic attachment ~a is missing"
		      name))
	(t t)))

(defmacro defattach (thnm args &rest body)
  (when (check-defattach thnm body)
    (let* ((thnms  (symbol-name thnm))
	   (pos    (position #\. thnms)))
      (cond ((not pos) 
	     (pvs-message  
	      "Error: ~a is not a valid name for a semantic attachment"
	      thnms))
	    (t 
	     (let ((theory (subseq thnms 0 pos))
		   (name   (subseq thnms (+ pos 1))))
	       (pvs-message "Loading semantic attachment: ~a.~a [~a]" 
			    theory name (length args))
	       (defattach-aux theory name args body)))))))

;; semantic primitives are TRUSTED
(defmacro defprimitive (thnm args &rest body)
  (when (check-defattach thnm body)
    (let* ((thnms  (symbol-name thnm))
	   (pos    (position #\. thnms)))
      (cond ((not pos) 
	     (pvs-message  
	      "Error: ~a is not a valid name for a semantic attachment [primitive]"
	      thnms))
	    (t 
	     (let ((theory (subseq thnms 0 pos))
		   (name   (subseq thnms (+ pos 1))))
	       (pvs-message "Loading semantic attachment: ~a.~a [~a, primitive]" 
			    theory name (length args))
	       (defattach-aux theory name args body t)))))))

;; Primitive attachments are TRUSTED
(defun defattach-aux (theory name args body &optional primitive)
  (let* ((nargs     (length args))
	 (newargs   (append args (list '&optional '*the-pvs-type*)))
	 (fnm       (makesym "pvsio_~a_~a_~a" theory name nargs))
	 (attachmnt (make-attachment :theory theory :name name :args nargs 
				     :primitive primitive :symbol fnm))
	 (nm        (makesym "~a" name))
	 (th        (makesym "~a" theory))
	 (argstr    (if args (format nil "(~{~a~^, ~})" args) ""))
	 (dobo      (if (and body (cdr body) (stringp (car body))) 
			body
		      (cons "" body)))
	 (doc       (format nil "
Attachment: ~a.~a~% 
Usage: ~a~a~%
Documentation: ~a~%
Lisp name : ~a~%
Lisp definition: ~%
~s~%~%" 
			   theory (attachment-name-prim attachmnt)
                           name argstr
			   (car dobo) 
			   fnm 
			   (cons 'progn (cdr dobo))))
	 (mssg   
	  (format 
	   nil 
	   "Function ~a.~a is defined as a semantic attachment. 
It cannot be evaluated in a formal proof." 
	   theory name)))
    (when (find-attachment attachmnt)
      (pvs-message "Redefining ~a.~a" theory (attachment-name-prim attachmnt)))
    (setf (gethash theory *pvsio-attachments*)
	  (cons attachmnt (remove-if #'(lambda (x) (same-attachment attachmnt x))
				     (gethash theory *pvsio-attachments*))))
    (let ((body (if primitive
		    (cons 'progn (cdr dobo))
		  `(if *in-evaluator* 
		       ,(cons 'progn (cdr dobo))
		     (throw '*pvsio-inprover* ,mssg)))))
      `(defun ,fnm ,newargs ,doc ,body))))

(defmacro defattach-th-nm (theory nm args &rest body)
  (when (check-defattach nm body)
    (defattach-aux theory (symbol-name nm) args body)))

(defmacro defprimitive-th-nm (theory nm args &rest body)
  (when (check-defattach nm body)
    (defattach-aux theory (symbol-name nm) args body t)))

(defun reattach (theory macros)
  (mapcar #'(lambda (x) 
	      (cond ((and (consp x) (eq (car x) 'defattach))
		     (cons 'defattach-th-nm (cons theory (cdr x))))
		    ((and (consp x) (eq (car x) 'defprimitive))
		     (cons 'defprimitive-th-nm (cons theory (cdr x))))
		    (t x))) 
	  macros))

(defmacro attachments (th &rest macros)
  (cond ((not (symbolp th))
	 (pvs-message "Error: ~a is not a valid theory name" th))
	(t 
	 (let ((theory (symbol-name th))) 
	   (pvs-message "Loading semantic attachments in theory ~a" theory)
	   (cons 'progn (reattach theory macros))))))


;; Definition of macro "using". Contributed by Mariano Moscato (NIA)
(defun make-eval-const (decl)
  ;; This function is based on pvs2cl-theory (src/groundeval/pvseval-update.lisp:1617)
  (unless (eval-info decl)
    (progn
      (make-eval-info decl)
      (or (external-lisp-function decl)
	  (pvs2cl-external-lisp-function decl))
      (or (lisp-function decl)
	  (pvs2cl-lisp-function decl)))))

(defun pvs-lisp-decl (string)
  "Returns the lisp representation of the element referenced by the parameter (string). It adheres to the same precedency order than PVSio: the semantic attachment will be returned if it exists, the lisp translation of the PVS declaration if not."
  (let ((attchs (find-attachments string)))
    (if attchs
	`(function ,(attachment-symbol (car attchs))) 
      (let*((typed-expr (pc-typecheck (pc-parse string 'expr)))
	    (decl (if (typep typed-expr 'coercion)
		      (declaration(car(resolutions(argument typed-expr))))
		    ;; it's a name-expr
		    (declaration(car(resolutions typed-expr))))))
	(progn (make-eval-const decl)
	       (let ((def (definition (in-defn-m decl))))
		 (if def
		     def
		   `(function ,(car(pvs2cl-constant typed-expr nil nil))))))))))

;; how to filter overloaded ids: requesting a coerced expression

(defmacro using (defs . body)
  `((lambda ,(mapcar (lambda (x) (if (listp x) (car x) x)) defs)
      ,@body)
    ,@(mapcar (lambda (x) (if (listp x) (pvs-lisp-decl (cadr x)))) defs)))

;; Reports running-time errors in attachments
(defmacro attach-error (&optional msg)
  "Reports an error in the execution of the semantic attachment. It returns to the PVSio prompt, when running interactively."
  `(throw '*pvsio-error* (or (when ,msg (format t "~%ERROR: ~a" ,msg)) t)))

;; Macros to access global variables by name

(defmacro pvsio_set_gvar (pvsio-global-var value)
  "Sets a value ('value') to a PVSio global variable ('pvsio-global-var')."
  `(progn (when (cdr ,pvsio-global-var) (setf (cdr ,pvsio-global-var) nil))
	  (setf (car ,pvsio-global-var) ,value)))

(defmacro pvsio_get_gvar (pvsio-global-var)
  "Gets the value of a PVSio global variable ('pvsio-global-var')."
  `(car ,pvsio-global-var))

(defmacro pvsio_get_gvar_by_name (name-str)
  "Returns the current value of a PVSio Global variable. It assumes the variable is defined."
  `(using ((rec ,name-str)) (pvsio_get_gvar (funcall rec))))

(defmacro pvsio_set_gvar_by_name (name-str value)
  "Sets a value to a PVSio Global variable."
  `(using ((rec ,name-str)) (pvsio_set_gvar (funcall rec) ,value)))
