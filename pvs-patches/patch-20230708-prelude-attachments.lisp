;;; THIS PATCH NEEDS TO BE ADDED TO PVSio/prelude-attachments.lisp in the source code

(in-package :pvs)

(attachments |stdstr|

(defattach |real2decstr| (r precision rounding)
  "Converts rational number to string decimal representation using given precision, i.e., natural number n
denoting 10^(-n), and rounding mode, i.e, TowardsZero, TowardsInfnty, TowardsNegInfnty, TowardsPosInfnty.
Displays trailing zeroes when zeros is set to TRUE"
  (let ((rat (if (floatp r) (rationalize r) r)))
    (ratio2decimal-with-rounding-mode rat rounding precision)))

(defattach |decstr2rat| (s)
  "Converts string representing a decimal number to rational number"
  (handler-case
      (decimals:parse-decimal-number s)
    (decimals:decimal-parse-error
     (condition)
     (declare (ignore condition))
     (throw-pvsio-exc "NotARealNumber" s))))

(defattach |rat2decstr| (r precision)
  "Converts rational number to string decimal representation, truncating at precision, and with
trailing zeros when significant"
  (multiple-value-bind
   (finp infp)
   (decimal-precision-of-rat r precision)
   (let ((prec (if (and (= infp 0) (<= finp precision)) finp precision)))
     (ratio2decimal-with-rounding-mode r 0 prec t))))

(defattach |str2real| (s)
  "Rational denoted by S"
  (handler-case
      (decimals:parse-decimal-number s)
    (decimals:decimal-parse-error
     (condition)
     (declare (ignore condition))
     (let ((n (read-from-string s)))
       (cond ((rationalp n) n)
	     ((floatp n) (rationalize n))
	     (t (throw-pvsio-exc "NotARealNumber" s)))))))

(defattach |str2int| (s)
  "Integer denoted by S"
  (let ((i (read-from-string s)))
    (if (integerp i) i 
      (throw-pvsio-exc "NotAnInteger" s))))

(defattach |filename| (s)
  "Returns the name part of a file name"
  (or (file-namestring s) ""))

)

(attachments |stdio|

(defattach |query_real| (mssg)
  "Queries a real number from standard input with prompt MSSG"
  (prompt mssg)
  (let ((i (read)))
    (if (numberp i) (rational i)
      (throw-pvsio-exc "NotARealNumber" (format nil "~a" i)))))

(defattach |query_int| (mssg)
  "Queries an integer from standard input with prompt MSSG"
  (prompt mssg)       
  (let ((i (read)))
    (if (integerp i) i 
      (throw-pvsio-exc "NotAnInteger" (format nil "~a" i)))))

(defattach |fopenin_lisp| (s)
  "Opens file input stream named S"
  (let ((f (open s :direction :input :if-does-not-exist nil)))
    (or f (throw-pvsio-exc "FileNotFound" s))))

(defattach |fopenout_lisp| (s i)
  "Opens file output stream named S"
  (let ((f (cond ((= i 0) (open s :direction :output :if-exists nil))
                 ((= i 1) (open s :direction :output :if-exists :supersede))
                 ((= i 2) (open s :direction :output :if-exists :append))
                 ((= i 3) (open s :direction :output :if-exists :overwrite))
                 ((= i 4) (open s :direction :output :if-exists :rename)))))
    (or f (throw-pvsio-exc "FileAlreadyExists" s))))

(defattach |fread_real_lisp| (f)
  "Reads a real number from stream F"
  (let ((i (read f nil nil)))
    (when i 
      (if (numberp i) (rational i)
        (throw-pvsio-exc "NotARealNumber" (format nil "~a" i))))))
  
(defattach |fread_int_lisp| (f)
  "Reads an integer from stream F"
  (let ((i (read f nil nil)))
    (when i 
      (if (integerp i) i
        (throw-pvsio-exc "NotAnInteger" (format nil "~a" i))))))

)

(defun formatargs (e type)
  (cond
   ((and (type-name? type)(equal (id type) '|Lisp|))
    (let ((ptype (find-supertype (type-value (car (actuals type))))))
      (cond ((and (listp e) (type-name? ptype) (equal (id ptype) '|list|))
	     (list (loop for ei in e
			 append (formatargs ei (type-value (car (actuals ptype)))))))
	    ((and (arrayp e) (tupletype? ptype))
	     (loop for ei across e
		   for ti in (types ptype)
		   append (formatargs ei ti)))
	    ((numberp e) (list (rat2double e)))
	    (t (list e)))))
   ((or (tc-eq (find-supertype type) *number*)
	(tc-eq (find-supertype type) *string-type*))
    (list e))
   (t (list (cl2pvs e type)))))

(attachments |stdprog|

(defattach |exit| ()
  "Exits the current evaluation and returns to the ground evaluator"
  (error 'pvsio-exit))

(defattach |error| (mssg)
  "Signals the error message MSSG to the ground evaluator"
  (error 'pvsio-error :message mssg))

(defattach |new| ()
  "Creates a new mutable variable with an undefined value"
  (pvsio_new_gvar))

(defattach |ref| (value)
  "Creates a mutable variable and sets it to given value"
  (pvsio_ref_gvar value))

(defattach |def| (gvar value)
  "Sets mutable variable gvar to given value"
  (pvsio_def_gvar gvar value))

(defattach |val_lisp| (gvar)
  "Returns value of mutable variable. Throws exception UndefinedMutableVariable when undefined?(gvar)"
  (pvsio_val_gvar gvar))

(defattach |undef| (gvar)
  "Returns TRUE if mutable variable is undefined"
  (pvsio_undef_gvar gvar))

(defattach |loop_lift| (f)
   "Applies F in an infinite loop"
   (handler-case 
       (loop (pvs-funcall f nil))
     (pvsio-break
      (condition)
      (val condition))))

(defattach |return| (e)
  "Breaks a loop with the value E"
  (let ((the-type (domain the-pvs-type_)))
    (error 'pvsio-break :val e :type the-type)))

(defattach |format| (s e)
   "Formats expression E using Common Lisp format string S"
   (let ((the-type (pc-typecheck (cadr (types (domain the-pvs-type_))))))
     (apply #'format (cons nil (cons s (formatargs e the-type))))))

)

(define-condition pvsio-exception (simple-error)
  ((str-tag :accessor str-tag  :initarg :str-tag)
   (val :accessor val :initarg :val))
  (:report
   (lambda (condition stream)
     (format stream "PVSio Exception (~a)~@[: ~a~]" (str-tag condition) (val condition)))))

(defun throw-pvsio-exc (str-tag val)
  (error 'pvsio-exception :str-tag str-tag :val val))

(define-condition pvsio-error (simple-error)
  ((message :accessor message  :initarg :message))
  (:report
   (lambda (condition stream)
     (format stream "~@[~a~]" (message condition)))))

(define-condition pvsio-exit (simple-error) ())

(define-condition pvsio-return (simple-error)
  ((val :accessor val :initarg :val)
   (type :accessor type :initarg :type))
  (:report
   (lambda (condition stream)
     (let ((val-str (handler-case
			(str (cl2pvs (val condition) (pc-typecheck (type condition))))
		      (error (condition) (declare (ignore condition))))))
       (format stream "Value~@[ ~a~] was returned outside the scope of a function" val-str)))))

(define-condition pvsio-break (pvsio-return) ()
  (:report
   (lambda (condition stream)
     (let ((val-str (handler-case
			(str (cl2pvs (val condition) (pc-typecheck (type condition))))
		      (error (condition) (declare (ignore condition))))))
       (format stream "Value~@[ ~a~] was returned outside the scope of a loop" val-str)))))

(attachments |stdcatch|
	     
(defattach |catch_lift| (tag f1 f2)
  "If F1 throws the exception e tagged tag, then evaluates F2(e). Otherwise, returns F1"
  (handler-case
      (pvs-funcall f1 nil)
    (pvsio-exception
     (condition)
     (if (equal tag (str-tag condition))
	 (let* ((exc (pvs2cl_record tag (val condition))))
	   (pvs-funcall f2 exc))
       (error condition)))))

;;; Notice that throw should have only one parameeter of type Exception.
;;; The tag in the parameters is ignored and the exception is thrown to the tag in exception.
(defattach |throw| (tag exc)
  (declare (ignore tag))
  "Throws the exception EXC"
  (let ((str-tag (elt exc 0))
	(val     (elt exc 1)))
    (throw-pvsio-exc str-tag val)))

)

(attachments |stdpvs|

(defattach |typeof| (e)
  "Returns the string value of the type of E"
  (let* ((the-domain (domain the-pvs-type_)))
    (format nil "~a" (or (print-type the-domain) the-domain))))

(defattach |pvs2str_lisp| (e)
  "Translates PVS expresion E to a string"
  (let ((the-domain (domain the-pvs-type_)))
    (handler-case 
	(str (cl2pvs e (pc-typecheck the-domain)))
      (pvseval-error
       (condition)
       (throw-pvsio-exc "CantTranslateBack"
			(format nil "~a" condition))))))
)
