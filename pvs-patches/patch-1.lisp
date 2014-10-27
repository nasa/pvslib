(eval-when (:execute :compile-toplevel :load-toplevel)
  (fmakunbound 'non-recursive-constructor))

(defmethod non-recursive-constructor (c adt)
  (not (some #'(lambda (a)
		 (id-occurs-in (id (adt-type-name adt)) (type a)))
	     (arguments c))))

(defmethod non-recursive-constructor (c (adt recursive-type-with-subtypes))
  (not (some #'(lambda (a)
		 (or (id-occurs-in (id (adt-type-name adt)) (type a))
		     (some #'(lambda (st)
			       (id-occurs-in (id st) (type a)))
			   (subtypes adt))))
	     (arguments c))))

(defmethod subtype-of*? ((t1 adt-type-name) (t2 subtype))
  (when (adt t1)
    (when (symbolp (adt t1))
      ;; May happen after restoring from bin files
      (restore-adt-slot t1)))
  (and (singleton? (constructors (adt t1)))
       (tc-eq t1 (supertype t2))
       (recognizer-name-expr? (predicate t2))))

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

(defun instantiate-sel-resolution (res type args)
  (when (symbolp (adt type))
    ;; May happen after restoring from bin files
    (restore-adt-slot type))
  (let* ((constr (find (id (declaration res)) (constructors (adt type))
		       :key #'id))
	 ;;(args? (arguments constr))
	 )
    (when (if (arguments constr)
	      args
	      (null args))
      (if (fully-instantiated? res)
	  res
	  (multiple-value-bind (rtype thinsts)
	      (find-parameter-instantiation (if args
						(range (type res))
						(type res))
					    type)
	    (when (and rtype
		       (singleton? thinsts)
		       (eq (id (car thinsts)) (id (module (declaration res))))
		       (compatible? rtype type))
	      (make-resolution (declaration res) (car thinsts))))))))

(defmethod adt? ((te type-name))
  #+lucid (restore-adt te)
  (when (adt te)
    (when (symbolp (adt te))
      ;; May happen after restoring from bin files
      (restore-adt-slot te))
    (change-class te 'adt-type-name
      'adt (adt te)
      'single-constructor? (singleton? (constructors (adt te))))
    (adt te)))

