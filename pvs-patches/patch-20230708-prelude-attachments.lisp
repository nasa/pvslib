;;; THIS PATCH NEEDS TO BE ADDED TO PVSio/prelude-attachments.lisp in the source code

(in-package :pvs)

(define-condition pvsio-exception (simple-error)
  ((str-tag :accessor str-tag  :initarg :str-tag)
   (val :accessor val :initarg :val))
  (:report
   (lambda (condition stream)
     (format stream "PVSio Exception (~a): ~a" (str-tag condition) (val condition)))))

(define-condition pvsio-loop (simple-error)
  ((val :accessor val :initarg :val)))

(defun throw-pvsio-exc (str-tag val)
  (error 'pvsio-exception :str-tag str-tag :val val))

(defattach |stdcatch.catch_lift| (tag f1 f2)
  (declare (ignore tag))
  "If F1 throws the exception e tagged tag, then evaluates F2(e). Otherwise, returns F1"
  (handler-case
      (pvs-funcall f1 0)
    (pvsio-exception
     (condition)
     (if (equal tag (str-tag condition))
	 (let* ((exc (pvs2cl_record tag (val condition))))
	   (pvs-funcall f2 exc))
       (error condition)))))

;;; Notice that stdcatch.throw should have only one parameeter of type Exception.
;;; The tag in the parameters is ignored and the exception is thrown to the tag in exception.
;;; This should be corrected in PVS-8/lib/pvsio_prelude.pvs
(defattach |stdcatch.throw| (tag exc)
  "Throws the exception EXC"
  (let ((str-tag (elt exc 0))
	(val     (elt exc 1)))
    (throw-pvsio-exc str-tag val)))

(defattach |stdstr.str2real| (s)
  "Rational denoted by S"
  (let ((i (read-from-string s)))
    (if (numberp i) (rational i)
      (throw-pvsio-exc "NotARealNumber" s))))

(defattach |stdstr.str2int| (s)
  "Integer denoted by S"
  (let ((i (read-from-string s)))
    (if (integerp i) i 
      (throw-pvsio-exc "NotAnInteger" s))))

(defattach |stdio.query_real| (mssg)
  "Queries a real number from standard input with prompt MSSG"
  (prompt mssg)
  (let ((i (read)))
    (if (numberp i) (rational i)
      (throw-pvsio-exc "NotARealNumber" (format nil "~a" i)))))

(defattach |stdio.query_int| (mssg)
  "Queries an integer from standard input with prompt MSSG"
  (prompt mssg)       
  (let ((i (read)))
    (if (integerp i) i 
      (throw-pvsio-exc "NotAnInteger" (format nil "~a" i)))))

(defattach |stdio.fopenin_lisp| (s)
  "Opens file input stream named S"
  (let ((f (open s :direction :input :if-does-not-exist nil)))
    (or f (throw-pvsio-exc "FileNotFound" s))))

(defattach |stdio.fopenout_lisp| (s i)
  "Opens file output stream named S"
  (let ((f (cond ((= i 0) (open s :direction :output :if-exists nil))
                 ((= i 1) (open s :direction :output :if-exists :supersede))
                 ((= i 2) (open s :direction :output :if-exists :append))
                 ((= i 3) (open s :direction :output :if-exists :overwrite))
                 ((= i 4) (open s :direction :output :if-exists :rename)))))
    (or f (throw-pvsio-exc "FileAlreadyExists" s))))

(defattach |stdio.fread_real_lisp| (f)
  "Reads a real number from stream F"
  (let ((i (read f nil nil)))
    (when i 
      (if (numberp i) (rational i)
        (throw-pvsio-exc "NotARealNumber" (format nil "~a" i))))))
  
(defattach |stdio.fread_int_lisp| (f)
  "Reads an integer from stream F"
  (let ((i (read f nil nil)))
    (when i 
      (if (integerp i) i
        (throw-pvsio-exc "NotAnInteger" (format nil "~a" i))))))

(defattach |stdprog.exit| ()
  "Exits the current evaluation and returns to the ground evaluator"
  (error ""))

(defattach |stdprog.loop_lift| (f)
   "Applies F in an infinite loop"
   (handler-case 
       (loop (pvs-funcall f 0))
     (pvsio-loop
      (condition)
      (val condition))))

(defattach |stdprog.return| (e)
  "Returns E from an infinite loop"
  (error 'pvsio-loop :val e))

