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
