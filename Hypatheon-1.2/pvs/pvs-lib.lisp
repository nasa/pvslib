
;; Copyright (c) 2012 United States Government as represented by
;; the National Aeronautics and Space Administration.  No copyright
;; is claimed in the United States under Title 17, U.S.Code. All Other
;; Rights Reserved.
;;
;; The software in this package has been released as open-source software
;; under the NASA Open Source Agreement.  See the accompanying file
;; NASA_Open_Source_Agreement.pdf for a full description of the terms.


(in-package :pvs)

;; Need Manip for various functions.  Manip now included in PVS 5.0.

;;; Pathnames need to be discovered and constructed in a platform-
;;; and Lisp-independent way.  Avoid the use of "~" and other
;;; pathname shortcuts.

(defparameter *hypatheon-home-dir*
  (loop for d in *pvs-library-path*
	for p = (merge-pathnames (make-pathname :name "Hypatheon") d)
	when (file-exists-p p) return p))

(defparameter *hypatheon-pathname-dir*
  (make-pathname :directory
		 (append (pathname-directory *hypatheon-home-dir*)
			 '("Hypatheon"))))

;; Load support files needed for prover interaction.

(libload (make-pathname :directory
			(append (pathname-directory *hypatheon-pathname-dir*)
				'("pvs"))
			:name "hyp-support.lisp"))


;;; NOTE: When Hypatheon is loaded automatically on startup, the
;;; client can start concurrently with the loading of other strategy
;;; packages.  To avoid the possibility of deadlocks, livelocks and
;;; hanging processes, refrain from invoking pvs-send-and-wait from
;;; the client during the startup phase.
