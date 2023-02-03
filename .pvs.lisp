(let ((nasalib-location (extra-pvs-nasalib)))
  (when nasalib-location
    (load (format nil "~a/RELEASE/nasalib.lisp" nasalib-location))
    (load (format nil "~a/MetiTarski/metit.lisp" nasalib-location))
    ;; known sub-libraries
    (push (format nil "~a/float/" nasalib-location) *pvs-library-path*)))
