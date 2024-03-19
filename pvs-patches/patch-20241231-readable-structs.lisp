(in-package :pvs)

(defun mk-newconstructors (constrs)
  (mapcar #'(lambda (constructor)
	      (let* ((id (id constructor))
		     (accessors (accessors constructor))
		     (accessor-ids (mapcar #'id accessors))
		     (struct-id (mk-newconstructor id accessor-ids))
		     (recognizer-id (makesym "~a?" struct-id))
		     (make-struct (makesym "~a-~a" 'make struct-id))
		     (mk-struct (makesym "mk-~a" struct-id))
		     (defs `(defstruct (,struct-id
					(:predicate ,recognizer-id))
			      ,@accessor-ids))
		     (defn `(defun ,mk-struct ,accessor-ids
			      (,make-struct ,@(mapcan #'(lambda (a)
							  (list (intern (string a) :keyword)
								a))
						accessor-ids)))))
		(eval defs)
		(eval defn)
		(cons struct-id defs)))
    constrs))

(defun mk-newconstructor (id accessor-ids &optional (counter 0))
  (let* ((const-str (format nil "~a_~a" id counter))
	 (const-str? (find-symbol const-str))
	 (mk-str? (find-symbol (format nil "mk-~a" const-str)))
	 (rec-str? (find-symbol (format nil "~a?" const-str)))
	 (acc-strs? (loop for acc in accessor-ids
			 thereis
			 (find-symbol (format nil "~a_~a"
					const-str
					acc)))))
    (if (or const-str? mk-str? rec-str? acc-strs?)
	(mk-newconstructor id accessor-ids (1+ counter))
	(intern const-str :pvs))))

(defun pvs2cl-constructor (constructor struct all-structs datatype)
  (let ((decl (declaration constructor)))
    (or (and (eval-info decl)
	     (lisp-function decl))
      ;;above test duplicated in pvs2cl-resolution
      (cond ((enum-adt? datatype)
	     (let* ((pos (position (id constructor)
				   (constructors (adt datatype))
				   :test #'eq :key #'id))
		    (recognizer (recognizer constructor))
		    (rec-decl (declaration recognizer))
		    (rec-id (mk-newsymb (id recognizer)))
		    (rec-defn `(defun ,rec-id (x) (eql x ,pos))))
	       (unless (eval-info decl) (make-c-eval-info decl))
	       (setf (in-name decl) pos)
	       (unless (eval-info rec-decl)(make-c-eval-info rec-decl))
	       (setf (in-name rec-decl) rec-id)
	       (setf (definition (in-defn rec-decl))
		     rec-defn)
	       (eval rec-defn)
	       (compile rec-id)
	       pos))
	    (t (let* ((accessors (accessors constructor))
		      (struct-id (car struct))
		      (constructor-symbol (makesym "mk-~a" struct-id))
		      (defn (cdr struct))
		      (xvar (gentemp "x"))
		      )
		 (unless (eval-info (declaration constructor))
		   (make-c-eval-info (declaration constructor)))
		 (setf (definition (in-defn-m (declaration constructor)))
		       defn)
		 (setf (in-name-m (declaration constructor))
		       constructor-symbol)
		 (when accessors
		   ;; Added :pvs to intern (Feb 20 2015) [CM]
		   (let* ((uname (intern 
				  (format nil "~a_~a" constructor-symbol "unary") :pvs))
			  (unary-binding (when accessors
					   (if (cdr accessors)
					       (loop for ac in accessors
						     as i from 0
						     collect (list (id ac)
								   `(svref ,xvar ,i)))
					     (list (list (id (car accessors)) xvar))))) ;; Let requires a list of list (March 17 2015) [CM] 
			  ;;NSH(2-4-2014): delay co-constructor arguments
			  (unary-form (when accessors
					`(lambda (,xvar) (let ,unary-binding
							   (,constructor-symbol
							    ,@(loop for ac in accessors
								    collect (id ac)))))))
			  (udefn (when accessors `(defun ,uname () ,unary-form))))
		     (setf (definition (in-defn (declaration constructor)))
			   udefn)
		     (eval udefn)
		     (setf (in-name (declaration constructor))
			   uname)))
		 (unless (eval-info (declaration (recognizer constructor)))
		   (make-c-eval-info (declaration (recognizer constructor))))
		 (setf (in-name (declaration (recognizer constructor)))
		       (makesym "~a?" struct-id))
		 (loop for x in accessors
		    do (unless (and (eval-info (declaration x))
				    (lisp-function (declaration x)))
			 (make-c-eval-info (declaration x)))
		    do (pvs2cl-accessor-defn*
			      (declaration x) constructor
			      struct-id all-structs
			      datatype))
		 ))))))
