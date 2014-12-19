;;
;; pvs-lib.lisp
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
;; This code implements the functionality to load PVSio semantic
;; attachments from the files pvs-attachments and ~/.pvs-attachments
;;

(in-package :pvs)

(defparameter *pvsio-version* "PVSio-6.0.10 (xx/xx/xx)")
(defparameter *pvsio-imported* nil)
(defparameter *pvsio-update-files* (make-hash-table :test #'equal))

(defun load-update-attachments (dir filename &optional force (verbose t))
  (let* ((file (merge-pathnames dir filename)))
    (when (probe-file file)
      (let ((date    (gethash file *pvsio-update-files*))
	    (newdate (file-write-date file)))
	(when (or force (not date) (not newdate) (< date newdate))
	  (setf (gethash file *pvsio-update-files*) newdate)
	  (load file :verbose verbose))))))
		
(defun libload-attachments (dir file &optional force (verbose t))
  (if (probe-file (merge-pathnames dir file))
      (load-update-attachments dir file force verbose)
    (some #'(lambda (path) 
	      (let ((lib (format nil "~a~a" path dir)))
		(load-update-attachments lib file force verbose)))
	  *pvs-library-path*)))

(defun load-imported-attachments (libs &optional force (verbose t))
  (loop for dir being the hash-key of libs 
	when (or (and (not (member dir *pvsio-imported* :test #'string=))
		      (push dir *pvsio-imported*))
		 force)
	do (libload-attachments dir "pvs-attachments" force verbose)))

(defun load-pvs-attachments (&optional force (verbose t))
  (format t "Loading semantic attachments~%")
  (when force (initialize-prelude-attachments))
  (load-imported-attachments *prelude-libraries* force verbose)
  (load-imported-attachments *imported-libraries* force verbose)
  (load-update-attachments "~/" ".pvs-attachments" force verbose)
  (load-update-attachments *pvs-context-path* "pvs-attachments" force verbose))

