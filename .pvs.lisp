(defparameter *extra-pvslibs* (make-hash-table :test #'string=))
(defparameter *extra-pvslib-deps* (make-hash-table :test #'string=))

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
	      (format t "~%Warning: Duplicated library id ~a in ~a and ~a.pvslib~%"
		      libid pvslib-path (car (gethash "dir" duplib)))
	    (progn
	      (setf (gethash "dir" pvslib-record) (list pvslib-dir))
	      (setf (gethash libid *extra-pvslibs*) pvslib-record)
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
		    (if (file-exists-p dirname)
			(let ((newdir (format nil "~a/" dirname)))
			  (unless (member newdir *pvs-library-path* :test #'equal)
			    (push newdir *pvs-library-path*)
			    (list newdir)))
		      (format t "~%Warning: Library subdirectory ~a of library ~a not found~%"
			      dirname libid))))))
      (format t "~%Warning: File ~a without library id~%" pvslib-path))))

;; Fill the hash table *extra-pvslibs*
(defun extra-hash-pvslib (pvslib-dir pvslib-path)
  (let* ((pvslib-record (make-hash-table :test #'string=)))
    (with-open-file
     (stream pvslib-path)
     (loop for line = (remove-str-after-sharp (read-line stream nil))
	   while line
	   unless (string= line "")
	   do
	   (let ((keyval (mapcar #'(LAMBDA(x)(string-trim '(#\Space) x))
				 (split line #\:))))
	     (when (>= (length keyval) 2)
	       (setf (gethash (car keyval) pvslib-record) (cdr keyval))))))
    (extra-pvslib-record pvslib-dir pvslib-path pvslib-record)))

(defun extra-load-pvslibs-rec (libs)
  (when libs
    (let* ((pvslib-dir  (car libs))
	   (pvslib-path (merge-pathnames pvslib-dir
					 (make-pathname :name ".pvslib"))))
      (when (file-exists-p pvslib-path)
	(let ((morelibs (extra-hash-pvslib pvslib-dir pvslib-path)))
	  (extra-load-pvslibs-rec (append morelibs (cdr libs))))))))

;; Loop for all .pvslib files in the *pvs-library-path*
(defun extra-load-pvslibs ()
  (clrhash *extra-pvslibs*)
  (clrhash *extra-pvslib-deps*)
  (extra-load-pvslibs-rec *pvs-library-path*)
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
	      do (format t "~a:~{~a~^:~}|" key val))
	(format t "~%")))

(defun extra-pvslib-keyval (id key)
  (let ((pvslib (gethash id *extra-pvslibs*)))
    (when id
      (let ((val (gethash key pvslib)))
	(if (cdr val) val ;; List of values
	  (car val))))))  ;; Only one value

;;; LOADING .pvslib FILES
(extra-load-pvslibs)

;; set *nasalib-version*
(defvar *nasalib-version*
  (format nil "~av-~a (~a)"
	  (extra-pvslib-keyval "NASALib" "id")
	  (extra-pvslib-keyval "NASALib" "version")
	  (extra-pvslib-keyval "NASALib" "date")))
