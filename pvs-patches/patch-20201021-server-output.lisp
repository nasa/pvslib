(in-package :pvs-json)
(defrequest interrupt ()
  "Interrupts PVS."
  (when *pvs-lisp-process*
    (mp:process-interrupt
     *pvs-lisp-process*
     #'(lambda ()
	 (cond (pvs:*in-checker*
		(if pvs::*in-apply*
		    (progn
		      (setf *interrupted-rpc* t)
		      (restore))
		  (continue))) 
	       (t (break "Interrupted by client")))))))

(in-package :pvs)
(defun evaluate-pvsio (input-stream)
  "evaluate-pvsio - the basic REPL.  Normally just evaluates the request, prints the result,
and loops.  If there's an error, it it printed and otherwise ignored, unless
*evaluator-debug* is set, in which case it breaks into lisp.
"
  (restart-case	    ;; catches return-to-pvsio, returns to loop.
      (handler-bind ;; catches errors
	  ((error #'(lambda (c)
		      (unless *evaluator-debug*
			(typecase c
			  (tcerror (format t "~a~%" (msg c)))
			  (t (format t "Hit an error (use \"debug\" to debug):")
			     (format t "~%~a" c)))
			(invoke-restart 'return-to-pvsio)))))
	(evaluate-pvsio* input-stream))
    (return-to-pvsio () nil))
  (evaluate-pvsio input-stream))
