;; set *pvs-nasalib-version*
(defparameter *nasalib-version* "7.1.0 (08/20/20)")

(let ((nasalib-location (extra-pvs-nasalib))) ;; Returns with a trailing "/"
  (when nasalib-location
    ;; Load lisp code
    (load (format nil "~aMetiTarski/metit.lisp" nasalib-location))
    ;; Load known sub-libraries
    (push (format nil "~afloat/" nasalib-location) *pvs-library-path*)))
