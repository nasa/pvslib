;; M3 when debugging
;; (push :pvsdebug *features*)
;; (setq *debugger-hook* nil)


(in-package :pvs)

(defvar *pvs-patches* nil)
(let ((path-filename (namestring *load-truename*)))
  (setq *pvs-patches* (remove path-filename *pvs-patches* :test #'string=))
  (push path-filename *pvs-patches*))

(in-package :pvs)

;; {interface/pvs-json-methods.lisp}
(in-package :pvs-json)
(defrequest prover-status ()
  "Checks the status of the prover: active or inactive."
  (format nil "~a" (if *pvs-lisp-process*
      (let ((top-ps (mp:symeval-in-process '*top-proofstate* *pvs-lisp-process*))
	    (ps (mp:symeval-in-process '*ps* *pvs-lisp-process*)))
	(pvs:prover-status ps top-ps))
      :inactive)))

(in-package :pvs-json)
(defrequest add-pvs-library (string)
  "Just evaluate the string in lisp"
  (let ((*package* (find-package :pvs)))
    #+pvsdebug (format t "~%[add-pvs-library] string ~s~%" string)
    (push string pvs::*pvs-library-path*)))


(in-package :pvs-json)
(defrequest interrupt ()
  "Interrupts PVS."
  #+pvsdebug (format t "~%[interrupt] interrupt request received (pvs process: ~s) ~%" *pvs-lisp-process*) ;; debug
  #+pvsdebug (format t "~%[interrupt] interrupt request received (all processes: ~s) ~%" mp:*all-processes*) ;; debug
;;  #+pvsdebug (format t "~%[interrupt] ps-control-info ~s ~%" pvs:*ps-control-info*)
;;  #+pvsdebug (format t "~%[interrupt] ps-control-info ~s ~%" (mp:symeval-in-process 'pvs:*ps-control-info* *pvs-lisp-process*))
;;  #+pvsdebug (format t "~%[interrupt] condition: res-gate ~s cmd-gate ~s ~%"
;;		     (mp:gate-open-p (pvs:psinfo-res-gate pvs:*ps-control-info*))
;;		     (mp:gate-open-p (pvs:psinfo-cmd-gate pvs:*ps-control-info*))) ;; debug
  (when *pvs-lisp-process*
    (mp:process-interrupt
     *pvs-lisp-process*
     #'(lambda ()
	 (cond (pvs:*in-checker*
		#+pvsdebug (format t "~%[interrupt] ps-control-info ~s ~%"
				   (mp:symeval-in-process 'pvs:*ps-control-info* *pvs-lisp-process*))
		#+pvsdebug (format t "~%[interrupt] condition: in-apply ~s res-gate ~s cmd-gate ~s ~%"
				   pvs::*in-apply*
				   (mp:gate-open-p (pvs:psinfo-res-gate pvs:*ps-control-info*))
				   (mp:gate-open-p (pvs:psinfo-cmd-gate pvs:*ps-control-info*))) ;; debug
		(if ;; only allows to interrupt if a command is being processed.
	      	    (or pvs::*in-apply*
			(mp:gate-open-p (pvs:psinfo-res-gate pvs:*ps-control-info*))
	      		(mp:gate-open-p (pvs:psinfo-cmd-gate pvs:*ps-control-info*)))
		    (progn
		      #+pvsdebug (format t "~%[interrupt] process interrupted ~%") ;; debug
		      (setf *interrupted-rpc* t)
		      (restore))
		  (progn
		    #+pvsdebug (format t "~%[interrupt] omitting interruption (continuing) ~%") ;; debug
		    ;; (break "should be continue")
		    (continue)
		    ))) 
	       (t (break "Interrupted by client"))))))
  ;; (when *pvs-lisp-process*
  ;;   (cond ((mp:symeval-in-process 'pvs:*in-checker* *pvs-lisp-process*)
  ;; 	   (when ;; only allows to interrupt if a command is being processed.
  ;; 	       (or (mp:gate-open-p (pvs:psinfo-res-gate pvs:*ps-control-info*))
  ;; 		   (mp:gate-open-p (pvs:psinfo-cmd-gate pvs:*ps-control-info*)))
  ;; 	     (mp:process-interrupt
  ;; 	      *pvs-lisp-process*
  ;; 	      #'(lambda () (progn
  ;; 			     #+pvsdebug (format t "~%[interrupt] process interrupted ~%") ;; debug
  ;; 			     (setf *interrupted-rpc* t)
  ;; 			     (restore))))))
  ;; 	  (t (break "Interruptep by client"))))
  )

;;;;;

(in-package :pvs)
(defun make-prf-pathname (fname &optional (dir *default-pathname-defaults*))
  (assert (or (stringp fname) (pathnamep fname)))
  (let* ((pname (pathname fname))
	 ;; #+pvsdebug (dummy (format t "~%[make-prf-pathname] fname ~s~%" fname))
	 (name (if (let ((type (pathname-type pname)))
		     (and type (not (string= type "pvs")) (not (string= type "prf"))))
		   (format nil "~s" pname)
		 (pathname-name pname)))
	 ;; #+pvsdebug (dummy (format t "~%[make-prf-pathname] name ~s~%" name))
	 (fdir (pathname-directory pname)))
    (make-pathname :directory (or fdir (pathname-directory dir))
		   :name name
		   :type "prf")))

;;; interface/pvs-emacs.lisp
;; Note that this has the side effect of setting the view of the sform,
;; Which is a cons of the string and its view (computed lazily).
(in-package :pvs)
(defun pvs2json-sform (sform fnum par-sforms)
  (let* ((nf (formula sform))
	 (frm (if (negation? nf) (args1 nf) nf)))
    (unless (view sform)
      (multiple-value-bind (frmstr frmview)
	  (pp-with-view frm *proofstate-indent* *proofstate-width*)
	(setf (view sform) (list frmstr frmview))))
    (let ((names-info (names-info-proof-formula sform)))
      `(("labels" . ,(cons fnum (label sform)))
	("changed" . ,(if (memq sform par-sforms) nil t))
	("formula" . ,(car (view sform)))
	("names-info" . ,names-info)))))
