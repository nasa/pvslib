;; Grizzly server in Allegro Lisp

(load "pvs-strategies")

(defparameter *grizzly-log* nil)
(defparameter *grizzly-secure* nil)
(defparameter *grizzly-verbose* nil)
(defparameter *grizzly-id* nil)
(defparameter *grizzly-server* nil)
(defparameter *grizzly-port* 2327)
(defparameter *grizzly-closed* nil)
(defparameter *grizzly-maxclients* 5)
(defparameter *grizzly-clients* 0)
(defparameter *grizzly-clientid* 0)
(defparameter *grizzly-exit* nil)

(defun grizzly-log (msg &rest args)
 (let ((msg (apply 'format (cons nil (cons msg args)))))
   (when *grizzly-verbose*
     (format t "~a~%" msg))
   (format *grizzly-log* "~a: ~a~%" (now-today) msg)))

(defun send-msg (stream msg &rest args)
 (let ((msg (apply 'format (cons nil (cons msg args)))))
   (format stream "~a~%**END**~%" msg)
   (grizzly-log "Sending [~a]" msg)))

(defun build-mk-mvars (varands)
  (let* ((fm    (pc-typecheck (pc-parse varands 'expr)))
	 (vars  (mapcar #'(lambda (x) (format nil "~a" (id x))) (bindings fm)))
	 (fms   (reverse-conjuncts (expression fm)))
	 (vars  (get-intervars fms vars))
	 (lb    (lambda-interval-lb vars))
	 (ub    (lambda-interval-ub vars)))
    (format nil "mk_mvars(~a,~a,~a,intendpts_true,boundedpts_true)" 
	    (length vars) lb ub)))

(defun build-mk-mpoly (pvspoly)
  (let* ((fm   (beta-reduce (pc-typecheck (pc-parse pvspoly 'expr))))
	 (vars (mapcar #'(lambda (x) (format nil "~a" (id x))) (bindings fm)))
	 (poly (get-multivar-polynomial (expression fm) vars)))
    (if poly
	(let* ((terms  (length (cadr poly)))
	       (mdeg   (lambda-list (car poly)))
	       (mcoeff (lambda-list (mapcar #'car (cadr poly))))
	       (mpoly  (lambda-poly (mapcar #'cdr (cadr poly)))))
	  (format nil "mk_mpoly(~a,~a,~a,~a)"
		  mpoly mdeg terms mcoeff))
      (expression fm))))

(defun build-mk-mpoly-rel (pvspoly)
  (let* ((fm    (beta-reduce (pc-typecheck (pc-parse pvspoly 'expr))))
	 (vars  (mapcar #'(lambda (x) (format nil "~a" (id x))) (bindings fm)))
	 (fmrel (expression fm))
	 (rel   (id (operator fmrel)))
	 (poly  (get-multivar-polynomial (args1 fmrel) vars)))
    (if poly
	(let* ((terms  (length (cadr poly)))
	       (mdeg   (lambda-list (car poly)))
	       (mcoeff (lambda-list (mapcar #'car (cadr poly))))
	       (mpoly  (lambda-poly (mapcar #'cdr (cadr poly)))))
	  (format nil "mk_mpoly(~a,~a,~a,~a,~a)"
		  mpoly mdeg terms mcoeff rel))
      (args1 fmrel))))

(defun parse-pvs-expr (string &optional type)
  (multiple-value-bind (value error)
      (with-no-parse-errors (pc-parse string 'expr))
    (if error (format nil "Syntax error [~a,~a]" string error)
      (multiple-value-bind (typedvalue error)
	  (with-no-type-errors (pc-typecheck value :expected type))
	(or error (beta-reduce typedvalue))))))

(defun attend-typecheck (stream msg)
  (let ((expr (parse-pvs-expr (car msg) *real*)))
    (send-msg stream (if (stringp expr) expr ""))))
      
(defun attend-minmax (stream msg)
  (let* ((mvars (build-mk-mvars (nth 0 msg)))
	 (mpoly (build-mk-mpoly (nth 1 msg))))
    (if (stringp mpoly)
	(let* ((strat (parse-pvs-expr 
		       (format nil "LET mm=multipoly_minmax(~a,~a,~a,~a,~a) IN
                                    (mm`lb_min,mm`lb_max,mm`lb_var,
                                     mm`ub_min,mm`ub_max,mm`ub_var,
                                     mm`max_depth,mm`splits)" 
			       mpoly mvars 
			       (nth 2 msg) (nth 3 msg) (nth 4 msg))))) 
	  (if (stringp strat)
	      (send-msg stream strat)
	    (let ((minmax (cl2pvs (eval (pvs2cl strat)) (type strat))))
	      (send-msg stream "Minmax: ~a" minmax))))
      (send-msg stream "Expression ~a doesn't seem to be a polynomial" mpoly))))

(defun attend-boxes (stream msg)
  (let* ((op      (car msg))
	 (mvars   (build-mk-mvars (nth 1 msg)))
	 (mpolys  (mapcar #'build-mk-mpoly-rel (nth 2 msg)))
	 (no-poly (find-if-not #'(lambda (expr) (stringp expr)) mpolys)))
    (if no-poly
	(send-msg stream "Expression ~a doesn't seem to be a polynomial" no-poly)
      (let* ((mpoly-list (format nil "(:~{~a~^,~}:)" mpolys))
	     (strat (parse-pvs-expr 
		     (format nil "LET (lin,vin,lout,vout,lun,vun,bs) = boxes_strategy_~a(~a,~a,~a,~a),
                                      varslb = LAMBDA(b:Box(~a`numvars)):vars_lb(b),
                                      varsub = LAMBDA(b:Box(~a`numvars)):vars_ub(b) IN
                                  (lin,vin,lout,vout,lun,vun,
                                   map(varslb,bs`inside),\";\",map(varsub,bs`inside),\";\",
                                   map(varslb,bs`outside),\";\",map(varsub,bs`outside),\";\",
                                   map(varslb,bs`unknown),\";\",map(varsub,bs`unknown))"
			     op mpoly-list mvars (nth 3 msg) (nth 4 msg) mvars mvars))))
	(if (stringp strat)
	    (send-msg stream strat)
	  (let ((boxes (cl2pvs (eval (pvs2cl strat)) (type strat))))
	    (send-msg stream "Boxes: ~a" boxes)))))))

(defun attend-check (stream msg)
  (let* ((mvars (build-mk-mvars (nth 0 msg)))
	 (mpoly (build-mk-mpoly-rel (nth 1 msg))))
    (if (stringp mpoly)
	(let* ((strat (parse-pvs-expr 
		       (format nil "multipoly_strategy(~a,~a,~a,~a,~a)"
			       mpoly mvars (nth 2 msg) (nth 3 msg) (nth 4 msg)))))
	  (if (stringp strat)
	      (send-msg stream strat)
	    (let ((check (cl2pvs (eval (pvs2cl strat)) (type strat))))
	      (send-msg stream "Check: ~a" check))))
      (send-msg stream "Expression ~a doesn't seem to be a polynomial" mpoly))))

(defun attend-command (stream msg)
  (let* ((command (car msg))
	 (id      (cadr msg)))
    (cond ((equal command 'status)
	   (format t "~%Grizzly ID: ~a. Type: ~:[insecure~;secure~]. Clients: ~a. Status: ~:[open~;closed~].~%"
		   *grizzly-id* *grizzly-secure* *grizzly-clients* *grizzly-closed*)
	   (if *grizzly-secure*
	       (send-msg stream "OK")
	     (send-msg stream "Clients: ~a. Status: ~:[open~;closed~]" *grizzly-clients* *grizzly-closed*)))
	  ((or (not *grizzly-secure*)
	       (equal id *grizzly-id*))
	   (cond ((equal command 'die)
		  (setq *grizzly-exit* (<= *grizzly-clients* 1))
		  (if *grizzly-exit*
		      (send-msg stream "OK")
		    (send-msg stream "FAIL")))
		 ((equal command 'close)
		  (setq *grizzly-closed* t)
		  (send-msg stream "OK"))
		 ((equal command 'open)
		  (setq *grizzly-closed* nil)
		  (send-msg stream "OK"))
		 ((equal command 'unlock)
		  (setq *grizzly-secure* nil)
		  (send-msg stream "OK"))
		 ((equal command 'lock)
		  (setq *grizzly-secure* t)
		  (send-msg stream "OK"))
		 ((equal command 'quiet)
		  (send-msg stream "OK")
		  (setq *grizzly-verbose* nil))
		 ((equal command 'verbose)
		  (send-msg stream "OK")
		  (setq *grizzly-verbose* t))
		 (t (grizzly-log "Don't know what to do with ~a" msg)
		    (send-msg stream "FAIL"))))
	  (t
	   (grizzly-log "Wrong server ID ~a" id)
	   (send-msg stream "FAIL")))))
  
(defun read-eval-loop (stream clientid) 
  (grizzly-log "Grizzly is waking up for ~a. Clients: ~a.~%" clientid *grizzly-clients*)
  (cond ((and (<= *grizzly-clients* *grizzly-maxclients*)
	      (not *grizzly-closed*))
	 (send-msg stream "OK")
	 (loop
	  for line = (read-line stream nil 'eof)
	  until (or (eq line 'eof) *grizzly-exit*)
	  do (progn
	       (grizzly-log "Received [~a]" line)
	       (let ((msg (read-from-string line)))
		 (cond ((equal (car msg) 'command)
			(attend-command stream (cdr msg)))
		       ((equal (car msg) 'typecheck)
			(attend-typecheck stream (cdr msg)))
		       ((equal (car msg) 'minmax)
			(attend-minmax stream (cdr msg)))
		       ((equal (car msg) 'boxes)
			(attend-boxes stream (cdr msg)))
		       ((equal (car msg) 'check)
			(attend-check stream (cdr msg)))
		       ((null msg))
		       (t (grizzly-log "Don't know what to do with ~a" msg))))
	       (force-output stream)
	       (force-output *grizzly-log*))))
	(t (send-msg stream "FAIL")))
  (decf *grizzly-clients*)
  (grizzly-log "Grizzly is going to sleep after attending ~a. Clients: ~a.~%" 
	       clientid *grizzly-clients*)
  (close stream)
  (when (or *grizzly-exit*
	    (and *grizzly-closed*
		 (<= *grizzly-clients* 0)))
    (close *grizzly-log*)
    (close *grizzly-server*)
    (bye)))

(defun next-clientid ()
  (incf *grizzly-clientid*)
  (format nil "Yoggi-~a" *grizzly-clientid*))

(defun start-server ()
  (typecheck-file "grizzly" nil nil nil t)
  (let* ((id (- (get-universal-time) (encode-universal-time 0 0 0 1 1 2011)))
	 (logfile (format nil "grizzly-~a.log" id)))
    (setq *current-context* (saved-context (get-theory "grizzly")))
    (setq *generate-tccs* 'none)
    (setq *grizzly-server* (socket:make-socket :connect :passive :local-port *grizzly-port*))
    (setq *grizzly-id* id)
    (setq *grizzly-log*
	  (open logfile :direction :output))
    (format *grizzly-log* "~a: Server starts in port ~a~%" (now-today) *grizzly-port*)
    (format t "~2%Grizzly ID: ~a. Log: ~a. Type: ~:[insecure~;secure~].~%"
	    *grizzly-id* logfile *grizzly-secure*)
    (force-output *grizzly-log*)
    (format t "~%Grizzly is hibernating...~%")
    (loop
     (let ((stream   (socket:accept-connection *grizzly-server*))
	   (clientid (next-clientid)))
       (incf *grizzly-clients*)
       (mp:process-run-function clientid #'read-eval-loop stream clientid)))))

(setq *grizzly-port*  (or (read-from-string (environment-variable "GRIZZLYPORT"))
			  *grizzly-port*))
(setq *grizzly-maxclients*  (or (read-from-string (environment-variable "GRIZZLYMAX"))
				*grizzly-maxclients*))
(setq *grizzly-secure* (read-from-string (environment-variable "GRIZZLYSECURE")))
(setq *grizzly-verbose* (read-from-string (environment-variable "GRIZZLYVERBOSE")))

(multiple-value-bind 
    (value error)
    (ignore-errors (start-server))
  (when error
    (format t "~2%*** ERROR: ~a ***~%" error)
    (bye)))
  
	
