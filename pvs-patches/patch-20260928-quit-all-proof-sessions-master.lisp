(defun quit-all-proof-sessions ()
  "Attempts to quit all proof sessions in *all-sessions*
Sends a quit, waits half a sec, then kills the thread, and moves the session to "
  (dolist (sess *all-sessions*)
    (if (session-alive-p sess)
	(let ((id (id sess)))
	  (handler-case (bt:with-timeout (3) (prover-step (symbol-name id) "(quit)"))
	    (bt:timeout () (session-kill sess))))
	(session-kill sess))))