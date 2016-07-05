;;
;; prelude-attachments.lisp
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
;; Semantic attachments for PVSio standard library
;;

(defun stdstr-attachments ()

(eval '(attachments |stdstr|

(defattach |charcode| (n)
  "Char whose code is N"
  (format nil "~a" (code-char n)))

(defattach |chartable| ()
  "Standard char table"
  (or 
   (do ((i 0 (+ i 1)))
       ((>= i 128))
       (let ((c (code-char i)))
	 (when (and (graphic-char-p c)
		    (standard-char-p c))
	   (format t "~3d : ~a " i c))))
   t))
   
(defattach |newline| ()
  "New line"
  (format nil "~a" #\Newline))

(defattach |tab| ()
  "Tabular"
  (format nil "~a" #\Tab))

(defattach |spaces| (n)
  "N spaces"
  (make-string n :initial-element #\Space))

(defattach |upcase| (s)
  "Converts string S to uppercase"
  (string-upcase s))

(defattach |downcase| (s)
  "Converts string S to downcase"
  (string-downcase s))

(defattach |capitalize| (s)
  "Capitalizes string S"
  (string-capitalize s))

(defattach |substr| (s i j)
  "Substring S[i..j] if i <= j, S[j..i] if j <= i, empty if indices are out of range"   
  (cond ((and (<= 0 i) (<= i j) (< j (length s)))
	 (subseq s i (+ j 1)))
	((and (<= 0 j) (<= j i) (< i (length s)))
	 (reverse (subseq s j (+ i 1)))	 )
	(t "")))

(defattach |strfind| (s1 s2)
  "Index of leftmost occurrence of S1 in S2, starting from 0, or -1 if none"
  (or (search s1 s2 :test #'char=) -1))

(defprimitive |concat| (s1 s2)
  "Concatenates S1 and S2"
  (format nil "~a~a" s1 s2))

(defattach |real2str| (r)
  "Converts real number r to string, where the integer n represents the precision 10^-n, and m is the rounding mode
    (0: to zero, 1: to infinity (away from zero), 2: to negative infinity (floor), 3: to positive infinity (ceiling)"
  (let ((n 6)
	(m 0))
    (ratio2decimal r (or (= m 3) (and (= m 1) (> r 0)) (and (= m 0) (< r 0))) n)))

(defattach |str2real| (s)
  "Rational denoted by S"
  (let ((i (read-from-string s)))
    (if (numberp i) (rational i) 
      (throw '|NotARealNumber|
	     (pvs2cl_record (the string "NotARealNumber")
			    (the string s))))))

(defattach |str2int| (s)
  "Integer denoted by S"
  (let ((i (read-from-string s)))
    (if (integerp i) i 
      (throw '|NotAnInteger|
	     (pvs2cl_record (the string "NotAnInteger")
			    (the string s))))))

(defattach |number?| (s)
  "Tests if S denotes a number"
  (numberp (read-from-string s)))

(defattach |int?| (s)
  "Tests if S denotes an integer"
  (integerp (read-from-string s)))

(defattach |strcmp| (s1 s2 sensitive)
  "Returns 0 if s1 = s2, < 0 if s1 < s2, > 0 if s1 > s2. ~
   Comparison is case sensitive according to sensitive"
  (if sensitive
      (cond ((string= s1 s2) 0)
	    ((string< s1 s2) -1)
	    (t 1))
    (cond ((string-equal s1 s2) 0)
	  ((string-lessp s1 s2) -1)
	  (t 1))))
  
(defattach |strtrim| (s1 s2)
   "A substring of s2, with all the characters in s1 stripped of the beginning and end"
   (string-trim s1 s2))

(defattach |strtrim_left| (s1 s2)
   "A substring of s2, with all the characters in s1 stripped of the beginning"
   (string-left-trim s1 s2))

(defattach |strtrim_right| (s1 s2)
   "A substring of s2, with all the characters in s1 stripped of the end"
   (string-right-trim s1 s2))

(defattach |trim| (s)
   "A substring of s, with all the space characters stripped of the beginning and end"
   (string-trim '(#\Space #\Tab #\Newline) s))

(defattach |trim_left| (s)
   "A substring of s, with all the space characters stripped of the beginning"
   (string-left-trim '(#\Space #\Tab #\Newline) s))

(defattach |trim_right| (s)
   "A substring of s, with all the space characters stripped of the end"
   (string-right-trim '(#\Space #\Tab #\Newline) s))

(defattach |filename| (s)
  "Returns the name part of a file name"
  (file-namestring s))

(defattach |directory| (s)
  "Returns the directory part of a file name"
  (directory-namestring s))

)))

(defun prompt (s)
  (when (string/= s "")
    (format t "~a~%" s)
    (finish-output))
  (clear-input))

(defparameter *pvsio_length_str_stream* (make-hash-table))

(defun read-token (f s)
  (get-output-stream-string
   (let ((c (read-char f nil nil)))
     (when c
       (do* ((str   (make-string-output-stream))
	     (start t))
	   ((not c) str)
	 (let ((p (when c (position c s)))
	       (m (when c (member c '(#\Space #\Tab #\Newline)))))
	   (cond ((and start p)(write-char c str)
		  (return str))
		 (p (unread-char c f)
		    (return str))
		 ((and start m) (setq c (read-char f nil nil)))
		 (m (return str))
		 (t (setq start nil)
		    (write-char c str)
		    (setq c (read-char f nil nil))))))))))

(defun stdio-attachments ()

(eval '(attachments stdio  

(defprimitive |printstr| (s) 
  "Prints lisp format of string S"
  (not (format t "~a" s)))

(defattach |query_token| (mssg s)
  "Queries a token separated by characters in S from standard input with prompt MSSG"
  (prompt mssg)
  (format nil "~a" (read-token *standard-input* s)))

(defattach |query_line| (mssg) 
  "Queries a line from standard input with prompt MSSG"
  (prompt mssg)
  (format nil "~a" (read-line)))

(defattach |query_real| (mssg) 
  "Queries a real number from standard input with prompt MSSG"
  (prompt mssg)
  (let ((i (read)))
    (if (numberp i) (rational i)
      (throw '|NotARealNumber|
	     (pvs2cl_record (the string "NotARealNumber")
			    (the string (format nil "~a" i)))))))

(defattach |query_int| (mssg) 
  "Queries an integer from standard input with prompt MSSG"
  (prompt mssg)
  (let ((i (read)))
    (if (integerp i) i 
      (throw '|NotAnInteger|
	     (pvs2cl_record (the string "NotAnInteger")
			    (the string (format nil "~a" i)))))))

(defattach |stdin| () 
  "Standard input stream"
  *standard-input*)

(defattach |stdout| ()
  "Standard output stream"
  *standard-output*)

(defattach |stderr| ()
  "Error output stream"
  *error-output*)

(defattach |fopenin_lisp| (s) 
  "Opens file input stream named S"
  (let ((f (open s :direction :input :if-does-not-exist nil)))
    (or f (throw '|FileNotFound|
		 (pvs2cl_record (the string "FileNotFound")
				(the string s))))))

(defattach |sopenin| (s) 
  "Opens string S as an input stream"
  (let ((str (make-string-input-stream s)))
    (setf (gethash str *pvsio_length_str_stream*) (length s))
    str))

(defattach |fopenout_lisp| (s i) 
  "Opens file output stream named S"
  (let ((f (cond ((= i 0) (open s :direction :output :if-exists nil))
		 ((= i 1) (open s :direction :output :if-exists :supersede))
		 ((= i 2) (open s :direction :output :if-exists :append))
		 ((= i 3) (open s :direction :output :if-exists :overwrite))
		 ((= i 4) (open s :direction :output :if-exists :rename)))))
    (or f (throw '|FileAlreadyExists|
		 (pvs2cl_record (the string "FileAlreadyExists")
				(the string s))))))

(defattach |sopenout| (s) 
  "Opens string output stream"
  (let ((f (make-string-output-stream)))
    (format f s)
    f))

(defattach |fclose| (f) 
  "Closes stream F"
  (or (when (typep f 'file-stream)
	(close f))
      t))

(defattach |fexists| (s) 
  "Tests if file named S already exists"
  (and (probe-file s) t))

(defattach |fopen?| (f)
  "Tests if stream F is open"
  (open-stream-p f))

(defattach |strstream?| (f)
  "Tests if F is a string stream"
  (typep f 'string-stream))

(defattach |filestream?| (f)
  "Tests if F is a file stream"
  (typep f 'file-stream))

(defattach |finput?| (f)
  "Tests if F is an input string"
  (input-stream-p f))

(defattach |foutput?| (f)
  "Tests if F is an output string"
  (output-stream-p f))

(defattach |fname_lisp| (f)
  "Gets the name of a file stream"
  (namestring f))
  
(defattach |fgetstr_lisp| (f) 
  "Gets string from string output stream F"
  (if (typep f 'string-stream)
      (get-output-stream-string f)
    ""))

(defattach |eof_lisp| (f) 
  "Tests end of input stream F"
  (not (peek-char nil f nil nil)))

(defattach |flength_lisp| (f) 
  "Length of stream F"
  (cond ((typep f 'file-stream)   (file-length f))
	((typep f 'string-stream) 
	 (nth-value 0 (gethash f *pvsio_length_str_stream*)))
	(t 0)))

(defattach |fgetpos_lisp| (f) 
  "Gets current position of file stream F"
  (if (typep f 'file-stream) 
      (file-position f)
    0))

(defattach |fsetpos_lisp| (f n) 
  "Set current position of file stream F"
  (when (typep f 'file-stream)
    (cond ((<= n 0) (file-position f :start))
	  ((>= n (file-length f)) (file-position f :end))
	  (t (file-position f n)))))

(defattach |fprint_lisp| (f s) 
  "Prints S in stream F"
  (not (format f "~a" s)))

(defattach |fread_token_lisp| (f s) 
  "Reads a token from stream F separated by characters in S"
  (format nil "~a" (read-token f s)))

(defattach |fread_line_lisp| (f) 
  "Reads a line from stream F"
  (let ((s (read-line f nil nil)))
    (format nil "~a" s)))

(defattach |fread_real_lisp| (f)
  "Reads a real number from stream F"
  (let ((i (read f nil nil)))
    (when i 
      (if (numberp i) (rational i)
	(throw '|NotARealNumber|
	       (pvs2cl_record (the string "NotARealNumber")
			      (the string (format nil "~a" i))))))))

(defattach |fread_int_lisp| (f)
  "Reads an integer from stream F"
  (let ((i (read f nil nil)))
    (when i 
      (if (integerp i) i
	(throw '|NotAnInteger|
	       (pvs2cl_record (the string "NotAnInteger")
			      (the string (format nil "~a" i))))))))
)))

(defun rat2double (x) 
  (float x 1.0d0))

(defun stdmath-attachments ()

(eval '(attachments stdmath
	     
(defattach |PI| () 
  "Number Pi"
  (rational pi))

(defattach |SIN| (x) 
  "Sine of X"
  (rational (sin (rat2double x))))

(defattach |COS| (x)
  "Cosine of X"
  (rational (cos (rat2double x))))

(defattach |EXP| (x) 
  "Exponential of X"
  (rational (exp (rat2double x))))

(defattach |RANDOM| ()
  "Real random number in the interval [0..1]"
  (rational (random (rat2double 1))))

(defattach |NRANDOM| (x)
  "Natural random number in the interval [0..X)"
  (random x))

(defattach |sqrt_lisp| (x) 
  "Square root of X"
   (rational (sqrt (rat2double x))))

(defattach |log_lisp| (x) 
  "Logarithm of X"
  (rational (log (rat2double x))))

(defattach |atan_lisp| (x y)
  "Arctangent of Y/X"
  (rational (atan (rat2double x) (rat2double y))))

(defattach |asin_lisp| (x)
  "Arcsine of X"
  (rational (asin (rat2double x))))

(defattach |acos_lisp| (x)
  "Arccosine of X"
  (rational (acos (rat2double x))))

)))

(defstruct indent stack n prefix)

(defun stdindent-attachments ()

(eval '(attachments stdindent  

(defattach |create_indent| (n s) 
  "Creates an ident structure with indentation N and prefix S"
  (make-indent :stack nil :n n :prefix s))

(defattach |pop_indent| (i)
  "Pops one element of indent I"
  (or (setf (indent-stack i) (cdr (indent-stack i))) t))

(defattach |push_indent| (i n) 
  "Pushes a N-indentation in indent I"
  (setf (indent-stack i)
	(cons (+ n (pvsio_stdindent_top_indent_1 i))
	      (indent-stack i))))

(defattach |top_indent| (i) 
  "Top of I"
  (or (car (indent-stack i)) 0))

(defattach |get_indent| (i) 
  "Gets current indentation value of indent I"
  (indent-n i))
  
(defattach |set_indent| (i n) 
  "Sets a new indentation value to indent I"
  (setf (indent-n i) n))

(defattach |get_prefix| (i)
  "Gets prefix of indent I"
  (indent-prefix i))

(defattach |set_prefix| (i s) 
  "Sets prefix S to indent I"
  (setf (indent-prefix i) s))

)))

(defun formatargs (e type)
  (cond ((or (stringp e) (numberp e)
	     (and (atom e) (type-name? type) (equal (id type) '|Blisp|))) e)
	((and (listp e)
	      (type-name? type)
	      (equal (id type) '|Slisp|))
	 (let ((ntype (type-value (car (actuals type)))))
	   (loop for ei in e
		 collect (formatargs ei ntype))))
	(t (cl2pvs e type))))

(defun stdprog-attachments ()

(eval '(attachments stdprog  

(defattach |exit| ()
  "Exits the current evaluation and returns to the ground evaluator"
  (throw 'abort t))

(defattach |error| (mssg)
  "Signals the error message MSSG to the ground evaluator"
  (error "~a" mssg))

(defattach |new| ()
  "Creates a new mutable variable without any current value"
  (cons nil t))

(defattach |ref| (e)
  "Creates a mutable variable with a current value E"
  (list e))

(defattach |def| (v e)
  "Sets to E the value of a mutable variable V"
  (pvsio_set_gvar v e))

(defattach |undef| (v)
  "Tests if a mutable variable V is undefined"
  (cdr v))

(defattach |val_lisp| (v)
  "Gets the current value of a mutable variable V"
  (pvsio_get_gvar v))

(defattach |loop_lift| (f)
   "Applies F in an infinite loop"
   (catch '|*pvsio-loop*|
     (loop (pvs-funcall f 0))))

(defattach |return| (e)
  "Returns E from an infinite loop"
  (throw '|*pvsio-loop*| e))

(defattach |format| (s e)
   "Formats expression E using Common Lisp format string S"
   (let* ((the-type (pc-typecheck (cadr (types (domain *the-pvs-type*))))))
     (if (and (arrayp e)
	      (tupletype? the-type))
	 (let* ((the-types (types the-type))
		(l (loop for ei across e
			 for ti in the-types
			 collect (formatargs ei ti))))
	   (apply #'format (cons nil (cons s l))))
       (apply #'format (cons nil (cons s (list (formatargs e the-type))))))))
)))

(defun stdcatch-attachments ()

(eval '(attachments stdcatch  
	     
(defattach |catch_lift| (tag f1 f2)
  "If F1 throws the exception e tagged tag, then evaluates F2(e). Otherwise, returns F1"
  (let ((e (catch (makesym tag) (cons '*pvsio-catch* (pvs-funcall f1 0)))))
    (if (and (consp e) (eq (car e) '*pvsio-catch*))
	(cdr e)
      (pvs-funcall f2 e))))

(defattach |throw| (tag e)
  "Throws the exception E"
  (throw (makesym tag) e))
)))

(defun stdpvs-attachments ()

(eval '(attachments stdpvs  

(defattach |typeof| (e)
  "Returns the string value of the type of E"
  (let* ((the-domain (domain *the-pvs-type*)))
    (format nil "~a" (or (print-type the-domain) the-domain))))

(defattach |str2pvs| (s)
  "Translates string S to PVS format"
  (eval (pvs2cl (pc-typecheck (pc-parse s 'expr)))))

(defattach |pvs2str_lisp| (e)
  "Translates PVS expresion E to a string"
  (let* ((the-domain (domain *the-pvs-type*)))
    (format nil "~a" (cl2pvs e (pc-typecheck the-domain)))))

(defattach |slisp| (l)
  "Returns a s-expression representing list l. To be used exclusively in format functions."
  l)

)))

(defun stdpvsio-attachments ()
 
(eval '(attachments stdpvsio 

(defattach |help_pvs_attachment| (s)
  "Displays help for semantic attachment S"
  (or (help-pvs-attachment s) t))

(defattach |help_pvs_theory_attachments| (s)
  "Displays help for semantic attachments in theory S"
  (or (help-pvs-theory-attachments s) t))

(defattach |pvsio_version| ()
  "Shows current version of PVSio"
  *pvsio-version*)

(defattach |set_promptin| (s)
  "Change current PVSio input prompt to S"
  (when (setq *pvsio-promptin* s) t))

(defattach |set_promptout| (s)
  "Change current PVSio output prompt to S"
  (when (setq *pvsio-promptout* s) t))

)))

(defun stdsys-attachments ()

(eval '(attachments stdsys  

(defattach |get_time| ()
  "Gets current system time"
  (multiple-value-bind (s mi h d mo y dow dst tz) (get-decoded-time)
    (the (simple-array *) (pvs2cl_record d dow dst h mi mo s tz y))))

(defattach |sleep| (n)
  "Sleeps n seconds"
  (or (sleep n) t))

(defattach |get_env| (name default)
  "Gets environment variable NAME. Returns DEFAULT if undefined"
  (or (environment-variable (string name)) default))

(defattach |blisp| (b)
  "Returns a Boolean lisp expression representing b. To be used exclusively in format functions."
  b)

)))

(defun initialize-prelude-attachments ()
  (stdstr-attachments)
  (stdio-attachments)
  (stdmath-attachments)
  (stdindent-attachments)
  (stdprog-attachments)
  (stdcatch-attachments)
  (stdpvs-attachments)
  (stdpvsio-attachments)
  (stdsys-attachments))
