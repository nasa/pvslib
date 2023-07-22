;; set *pvs-nasalib-version*
(defparameter *nasalib-version* "8.0 (mm/dd/yy)")

(let ((nasalib-location (extra-pvs-nasalib))) ;; Returns with a trailing "/"
  (when nasalib-location
    ;; Load lisp code
    (load (format nil "~aMetiTarski/metit.lisp" nasalib-location))
    ;; Load known sub-libraries
    (push (format nil "~afloat/" nasalib-location) *pvs-library-path*)))
