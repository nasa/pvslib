(defparameter *extra-pvslibs* (make-hash-table :test #'equal))
(defparameter *extra-pvslib-deps* (make-hash-table :test #'equal))
(defparameter *extra-preludelibs* '())

;; Remove anything after # and trim
(defun remove-str-after-sharp (str)
  (when str
    (let* ((pos     (position #\# str :test #'equal))
	   (newstr  (if pos (subseq str 0 pos) str)))
      (string-trim '(#\Space #\Newline) newstr))))

(defun extra-pvslib-record (pvslib-dir pvslib-path pvslib-record)
  (let ((libid (car (gethash "id" pvslib-record))))
    (if libid
	(let ((duplib (gethash libid *extra-pvslibs*)))
	  (if duplib
	      (format t "~&Warning: Duplicated library id ~a in ~a and ~a.pvslib~%"
		      libid pvslib-path (car (gethash "dir" duplib)))
	    (progn
	      (setf (gethash "dir" pvslib-record) (list pvslib-dir))
	      (setf (gethash libid *extra-pvslibs*) pvslib-record)
	      (let ((preludelib (gethash "preludelib" pvslib-record)))
		(when preludelib
		  (push libid *extra-preludelibs*)))
	      (loop for lispload in (gethash "lisploads" pvslib-record)
		    for lispname = (merge-pathnames pvslib-dir (make-pathname :name lispload))
		    do
		    (if (file-exists-p lispname)
			(load lispname)
		      (format t "~%Warning:  Lisp load file ~a of library ~a not found~%"
			      lispname libid)))
	      (loop for dep in (gethash "libdeps" pvslib-record)
		    do
		    (let ((depids (gethash dep *extra-pvslib-deps*)))
		      (setf (gethash dep *extra-pvslib-deps*) (cons libid depids))))
	      (loop for dir in (gethash "sublibdirs" pvslib-record)
		    for dirname = (merge-pathnames pvslib-dir (make-pathname :name dir))
		    append
		    (if (uiop:directory-exists-p dirname)
			(let ((newdir (format nil "~a/" dirname)))
			  (unless (member newdir *pvs-library-path* :test #'equal)
			    (list newdir)))
		      (format t "~%Warning: Library subdirectory ~a of library ~a not found~%"
			      dirname libid))))))
      (format t "~%Warning: File ~a without library id~%" pvslib-path))))

;; Fill the hash table *extra-pvslibs*
(defun extra-hash-pvslib (pvslib-dir pvslib-path)
  (let* ((pvslib-record (make-hash-table :test #'equal)))
    (with-open-file
     (stream pvslib-path)
     (loop for line = (remove-str-after-sharp (read-line stream nil))
	   while line
	   unless (string= line "")
	   do
	   (let ((keyval (mapcar #'(lambda (x)(string-trim '(#\Space) x))
				 (split line #\:))))
	     (when (>= (length keyval) 2)
	       (setf (gethash (car keyval) pvslib-record) (cdr keyval))))))
    (extra-pvslib-record pvslib-dir pvslib-path pvslib-record)))

(defun extra-load-pvslibs-rec (libs)
  "LIBS is assumed to be a list of strings and each string is assumed to
represent a directory. A file called '.pvslib' is searched for in each
of such directories. If the file is found, the information contained in it
is collected and stored in specific global variables (see above).

This function returns the list of directories recognized as sub-libraries
in all the '.pvslib' files in the directories contained in LIBS."
  (when libs
    (let* ((pvslib-dir  (car libs))
	   (pvslib-path (merge-pathnames pvslib-dir
					 (make-pathname :name ".pvslib"))))
      (if (file-exists-p pvslib-path)
	  (let((additional-libs (extra-hash-pvslib pvslib-dir pvslib-path)))
	    (append additional-libs (extra-load-pvslibs-rec (append additional-libs (cdr libs)))))
	(extra-load-pvslibs-rec (cdr libs))))))

(defun extra-pvslib-keyval (id key)
  (let ((pvslib (gethash id *extra-pvslibs*)))
    (when id
      (let ((val (gethash key pvslib)))
	(if (cdr val) val ;; List of values
	  (car val))))))  ;; Only one value

;; Loop for all .pvslib files in the *pvs-library-path*
(defun extra-load-pvslibs ()
  (clrhash *extra-pvslibs*)
  (clrhash *extra-pvslib-deps*)
  (setf *extra-preludelibs* '())
  (let ((sub-libs (extra-load-pvslibs-rec *pvs-library-path*)))
    (when sub-libs
      ;; [M3] The sub-libraries are added to the end of *pvs-library-path*
      ;; to allow shadowing of libraries.
      (setf *pvs-library-path* (append *pvs-library-path* sub-libs))))
  (dolist (id *extra-preludelibs*)
    (let ((libdir (extra-pvslib-keyval id "dir")))
      (format t "Loading prelude library ~a (~a)~%" id libdir)
      ;;(load-prelude-library libdir) [CM] Not working
      ))
  (loop for id being the hash-keys of *extra-pvslib-deps*
	using (hash-value deps)
	when (not (gethash id *extra-pvslibs*))
	do (format t "~%Warning: Library id ~a, used by ~{~a~^:~}, not found~%"
		   id deps)))

(defun extra-print-pvslibs ()
  (loop for id being the hash-keys of *extra-pvslibs*
        using (hash-value rec)
	do
	(loop for key being the hash-keys of rec
	      using (hash-value val)
	      do (or (format t "~a:~{~a~^:~}|" key val) id))
	(format t "~%")))

;;; LOADING .pvslib FILES
(extra-load-pvslibs)

(defun extra-get-pvslib-id-from-dir (dir)
  "Returns the collection id assigned to DIR if any. Otherwise, it returns nil." 
  (loop for id being the hash-keys of *extra-pvslibs*
        using (hash-value rec)
	when
	(loop for key being the hash-keys of rec
	      using (hash-value val)
	      when (and (string= key "dir")
			(some (lambda(d) (string= dir d)) val))
	      return t)
	return id))
