(let ((nasalib-location (extra-pvs-nasalib))) ;; Returns with a trailing "/"
  (when nasalib-location
    (load (format nil "~aRELEASE/nasalib.lisp" nasalib-location))
    (load (format nil "~aMetiTarski/metit.lisp" nasalib-location))
    ;; known sub-libraries
    (push (format nil "~afloat/" nasalib-location) *pvs-library-path*)))
