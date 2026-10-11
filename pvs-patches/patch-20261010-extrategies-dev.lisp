;;
;; Support for .pvslib files
;;

;; Hash table of library records, indexed by library id. A pvslib-record is an association list
;; representing a dictionary (key,val), where val is a list. The following fields are automatically
;; filled: id (library identification), dir (absolute path to the library), and basepath (relative path
;; to the library).
(defparameter *extra-pvslibs* (make-hash-table :test #'equal))

(defun remove-str-after-sharp (str)
  "Remove anything after # and trim"
  (when str
    (let* ((pos     (position #\# str :test #'equal))
	   (newstr  (if pos (subseq str 0 pos) str)))
      (string-trim '(#\Space #\Newline) newstr))))


(defun get-pvslib-val (key pvslib-record)
  "Get value of key in pvslib-record. Return nil key is not in record."
  (cdr (assoc key pvslib-record :test #'string=)))

(defmacro put-pvslib-val (key val pvslib-record)
  "Put pair of key,val into pvslib-record."
  `(push (cons ,key (enlist-it ,val)) ,pvslib-record))

(defun extra-check-pvslib-record (pvslib-dirpath pvslib-file pvslib-record)
  "Check for duplicated id on *extra-pvslibs*, set key dir to pvslib-record, load lisploads, and
process sub-libraries"
  (let ((libid (car (get-pvslib-val "id" pvslib-record))))
    (if libid
	(let ((duplib-record (gethash libid *extra-pvslibs*)))
	  (if duplib-record
	      (pvs-message "Warning: Duplicated library id ~a in ~a and ~a.pvslib"
			   libid pvslib-file (car (get-pvslib-val "dir" duplib-record)))
	      (let ((pvslib-dir (car pvslib-dirpath))
		    (pvslib-basepath (cdr pvslib-dirpath)))
		(setf (gethash libid *extra-pvslibs*) pvslib-record)
		(loop for lispload in (get-pvslib-val "lisploads" pvslib-record)
		      for lispname = (merge-pathnames pvslib-dir (make-pathname :name lispload))
		      do
		      (if (file-exists-p lispname)
			  (let ((*suppress-printing* t))
			    (handler-bind ((sb-kernel:redefinition-warning #'muffle-warning))(load lispname)))
			  (pvs-message "Warning:  Lisp file ~a of library ~a not found"
				       lispname libid)))
;; PRELUDE LIBRARIES CANNOT BE LOADED HERE
;;	      (loop for preludext in (get-pvslib-val "preludedirs" pvslib-record)
;;		    for dirname = (merge-pathnames pvslib-dir (make-pathname :name preludext))
;;		    for preludectx = (merge-pathnames ".pvscontext"
;;						      (uiop:ensure-directory-pathname dirname))
;;		    do
;;		    (cond ((not (uiop:directory-exists-p dirname))
;;			   (pvs-message "Warning: Prelude subdirectory ~a of library ~a not found"
;;					preludext libid))
;;			  ((not (file-exists-p preludectx))
;;			   (pvs-message
;;			    "Warning: Prelude extension ~a of library ~a doesn't appear to be type-checked"
;;			    preludext libid preludectx))
;;			  (t (load-prelude-library dirname nil t))))
		(loop for dir in (get-pvslib-val "sublibdirs" pvslib-record)
		      for dirname = (merge-pathnames pvslib-dir (make-pathname :name dir))
		      append
		      (if (uiop:directory-exists-p dirname)
			  (let ((newdir (format nil "~a/" dirname)))
			    (unless (member newdir *pvs-library-path* :test #'equal)
			      (list (cons newdir pvslib-basepath))))
			  (pvs-message "Warning: Library subdirectory ~a of library ~a not found"
				       dirname libid))))))
      (pvs-message "Warning: File ~a without library id" pvslib-file))))

;; Fill the hash table *extra-pvslibs*
(defun extra-hash-pvslib (pvslib-dirpath pvslib-file)
  (let* ((pvslib-dir (car pvslib-dirpath))
	 (pvslib-record nil)
	 (dirname (car (last (pathname-directory (uiop:ensure-directory-pathname pvslib-dir)))))
	 (pvslib-basepath (append (cdr pvslib-dirpath) (list dirname))))
    (put-pvslib-val "id" dirname pvslib-record) ;; May be overwritten by user
    (when (file-exists-p pvslib-file)
      (flet ((mk-record (line)
	       (let ((keyval (split line #\:)))
		 (if (<= (length keyval) 1)
		     (pvs-message "Warning: Line ~s in ~a doesn't have the form <key>:<val>"
				  line pvslib-file)
		     (let* ((key (string-trim '(#\Space) (car keyval)))
			    (preval (if (= (length keyval) 2)
					(split (cadr keyval) #\,)
					(cdr keyval)))
			    (val (mapcar (lambda (x)(string-trim '(#\Space) x)) preval)))
		       (put-pvslib-val key val pvslib-record))))))
	(with-open-file
	    (stream pvslib-file)
	  (loop for line = (remove-str-after-sharp (read-line stream nil))
		while line
		unless (string= line "")
		do (mk-record line)))))
    (put-pvslib-val "dir" pvslib-dir pvslib-record) ;; Cann't be overwritten by user
    (put-pvslib-val "basepath" pvslib-basepath pvslib-record) ;; Cann't be overwritten by user
    (extra-check-pvslib-record (cons pvslib-dir pvslib-basepath) pvslib-file pvslib-record)))

(defun extra-pvslib-keyval (id key &optional as-list?)
  "Return value of KEY associated to library ID. Output is a list if AS-LIST? is set to T,
otherwise if the val has a unique value it returns the value."
  (let* ((pvslib-record (gethash id *extra-pvslibs*))
	 (val (get-pvslib-val key pvslib-record)))
    (if (or as-list? (cdr val)) val (car val))))

(defun extra-load-pvslibs-rec (libs)
  "A file called '.pvslib' is recursively searched in the directoies in LIBS.
If the file is found, the information contained in it is collected and stored in specific
global variables (see above). This function returns the list of directories recursively recognized
as sub-libraries in the '.pvslib' files that are found. LIBS is a list of conses of
(strings . list of strings), where the first component represents the absolute library directory
and the second one represents the accumlative path starting from the main library as the recursion goes on.
This second component helps to comput the basepath of the PVS library record."
  (when libs
    (let* ((pvslib-dir  (caar libs))
	   (pvslib-file (merge-pathnames pvslib-dir
					 (make-pathname :name ".pvslib")))
	   (additional-libs (extra-hash-pvslib (car libs) pvslib-file)))
      (append (mapcar #'car additional-libs)
	      (extra-load-pvslibs-rec (append additional-libs (cdr libs)))))))

;; Loop for all .pvslib files in the *pvs-library-path*
(defun extra-load-pvslibs ()
  (clrhash *extra-pvslibs*)
  (let ((sub-libs (extra-load-pvslibs-rec (mapcar #'list *pvs-library-path*))))
    (when sub-libs
      ;; [M3] The sub-libraries are added to the end of *pvs-library-path*
      ;; to allow shadowing of libraries.
      (setf *pvs-library-path* (append *pvs-library-path* sub-libs)))))

(defun extra-print-pvslibs ()
  (loop for id being the hash-keys of *extra-pvslibs*
        using (hash-value pvslib-record)
	do
	(loop for keyval in pvslib-record
	      for key = (car keyval)
	      for val = (cdr keyval)
	      do (format t "~a:~{~a~^, ~} | " key val))
	(format t "~%")))

(defun extra-get-pvslib-id-from-dir (dir)
  "Returns the collection id assigned to DIR if any."
  (let* ((path (uiop:ensure-directory-pathname dir))
	 (dirstr (directory-namestring path)))
    (loop for id being the hash-keys of *extra-pvslibs*
	  when (string= dirstr (extra-pvslib-keyval id "dir"))
	  return id)))

;;
;;
;;
