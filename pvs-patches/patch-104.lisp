;;
;; proveit-init.lisp
;; Release: ProofLite-6.0.10 (xx/xx/xx)
;;
;; Contact: Cesar Munoz (cesar.a.munoz@nasa.gov)
;; NASA Langley Research Center
;; http://shemesh.larc.nasa.gov/people/cam/ProofLite
;;
;; Copyright (c) 2011-2012 United States Government as represented by
;; the National Aeronautics and Space Administration.  No copyright
;; is claimed in the United States under Title 17, U.S.Code. All Other
;; Rights Reserved.
;;

(in-package :pvs)

(defun eq-thf (decl thf)
  (and (string= (format nil "~a" (id decl))
		(car thf))))

;; Split string given a character
(defun split (str char) 
  (when str
    (let ((pos (position char str)))
      (if pos
	  (let ((hd (subseq str 0 pos))
		(tl (subseq str (+ pos 1))))
	    (cons hd (split tl char)))
	(list str)))))

;; Converts a string "th.f1:..:fn into a list ("th" "f1" ... "fn"),
(defun thf2list (thf) 
  (let* ((l (split thf #\.)))
    (cons (car l) (split (cadr l) #\:))))


;; l is a sorted list of the form (("th" "f1" .. "fm") ...),
;; thf is an element of the form ("thg" "g1" .. "gk")
(defun thmerge (l thf)
  (cond ((and l thf)
	 (if (string= (caar l) (car thf))
	     (thmerge (cdr l) (append thf (cdar l)))
	   (cons thf (thmerge (cdr l) (car l)))))
	(l
	 (thmerge (cdr l) (car l)))
	(thf
	 (list thf))))

;; Converts a list ("th.f1:..fn" ...) into a list (... ("th" "f1" .. "fm") ...)
;; that is alpabethically ordered and where formulas of the same theory are
;; put together (theories without formulas are removed)
(defun thfs2list (thsf)
  (let* ((l (sort (remove-if-not 
		   #'cdr
		   (mapcar #'thf2list thsf))
		  #'string<= :key #'car)))
    (thmerge l nil)))

(defun proveit-status-proof-theories (theories thfs)
  (if theories
      (let ((*disable-gc-printout* t))
	(pvs-buffer "PVS Status"
	  (with-output-to-string
	      (*standard-output*)                                     
	    (proveit-proof-summaries theories thfs))
	  t))
      (pvs-message "No theories given")))

(defun proveit-proof-summaries (theory-ids thfs
				&optional filename)                            
  (let ((tot 0) (proved 0) (unfin 0) (untried 0) (time 0))
    (when filename
      (format t "~2%Proof summary for file ~a.pvs" filename))
    (dolist (theory theory-ids)
         (let ((thf (car (member theory thfs :test #'eq-thf))))
	   (multiple-value-bind (to pr uf ut tm)
	       (proveit-proof-summary theory thf (when filename 2))
	     (incf tot to) (incf proved pr) (incf unfin uf) (incf untried ut)
	     (incf time tm))))
    (if filename
	(format t "~2%  Totals for ~a.pvs: " filename)
	(format t "~2%Grand Totals: "))
    (format t "~d proofs, ~d attempted, ~d succeeded (~,2f s)"
      tot (+ proved unfin) proved time)
    (values tot proved unfin untried time)))

(defun proveit-proof-summary (theory-id thf &optional (indent 0))
  (if (null thf)
      (format t "~2%~vTProof summary for theory ~a" indent (ref-to-id theory-id))
    (format t "~2%~vTProof summary for formulas ~a in theory ~a" indent
	    (cdr thf) (ref-to-id theory-id)))
  (let* ((tot 0) (proved 0) (unfin 0) (untried 0) (time 0)
	 (theory (get-theory theory-id))
	 (valid? (or (and theory
			  (from-prelude? theory))
		     (valid-proofs-file (context-entry-of theory-id)))))
    (if (and theory
	     (typechecked? theory))
	(let* ((fdecls (provable-formulas theory))
	       (maxtime (/ (reduce #'max fdecls
				   :key #'(lambda (d)
					    (or (run-proof-time d) 0))
				   :initial-value 0)
			   internal-time-units-per-second))
	       (statuslength 20) ; "proved - incomplete "
	       (dplength (+ (apply #'max
			      (mapcar #'(lambda (x) (length (string x)))
				*decision-procedures*))
			    2))
	       (timelength (length (format nil "~,2f" maxtime)))
	       (idlength (- 79 4 statuslength dplength timelength 4 3)))
	  (dolist (decl fdecls)
	    (let ((dof (member (format nil "~a" (id decl)) (cdr thf) 
			       :test #'string=)))
	       (when (or (null thf) dof)
		 (let ((tm (if (run-proof-time decl)
			       (/ (run-proof-time decl)
				  internal-time-units-per-second 1.0)       
			     0)))
		   (incf tot)                 
		   (cond ((proved? decl)
			  (incf proved))
			 ((justification decl) (incf unfin))
			 (t (incf untried)))
		   (incf time tm)
		   (format t "~%    ~v,1,0,'.a...~19a [~a](~a s)"
		     idlength
		     (id decl)
		     (proof-status-string decl)
		     (if (justification decl)
			 (decision-procedure-used decl)
			 "Untried")
		     (if (run-proof-time decl)
			 (format nil "~v,2f" timelength tm)
			 (format nil "~v<n/a~>" timelength))))))))
	(let ((te (get-context-theory-entry theory-id)))
	  (mapc #'(lambda (fe)
		    (let ((status (fe-status fe)))
		      (format t "~%    ~52,1,0,'.a...~(~10a~)"
			(fe-id fe)
			(fe-proof-status-string fe valid?))
		      (incf tot)
		      (case status
			((proved-complete proved-incomplete)
			 (if valid?
			     (incf proved)
			     (incf unfin)))
			((unchecked unfinished)
			 (incf unfin))
			(t (incf untried)))))
		(te-formula-info te))))
    (format t "~%    Theory totals: ~d formulas, ~d attempted, ~d succeeded ~
               (~,2f s)"
      tot (+ proved unfin) proved
      (/ (reduce #'+ (provable-formulas theory)
		 :key #'(lambda (d) (or (run-proof-time d) 0))
		 :initial-value 0)
	 internal-time-units-per-second))
    (values tot proved unfin untried time)))  

(defun proveit-theories (theories retry? thfs traces 
				  &optional txtproofs texproofs use-default-dp?)
  (let ((*use-default-dp?* use-default-dp?))
    (when texproofs
      (with-open-file 
       (texfile
	(ensure-directories-exist 
	 (pathname "pvstex/README.txt"))
	:direction :output
	:if-does-not-exist :create
	:if-exists :supersede)
       (format texfile "To generate PDF files type: pdflatex main-<formula>.tex~%")))
    (read-strategies-files)
    (dolist (theory theories)
      (let ((thf (car (member theory thfs :test #'eq-thf))))
	(if (null thf)   
	    (pvs-message "Proving theory ~a" (id theory))
	  (pvs-message "Proving formulas ~a in theory ~a" 
		       (cdr thf) (id theory)))
	(let ((*justifications-changed?* nil))
	  (dolist (decl (provable-formulas theory))
	    (let ((dof (member (format nil "~a" (id decl)) (cdr thf) 
			       :test #'string=)))
	      (when (or (null thf) dof)
		(setq *last-proof* (pvs-prove-decl decl retry?))
		(when txtproofs
		  (with-open-file 
		   (*standard-output*
		    (ensure-directories-exist 
		     (pathname (format nil "pvstxt/~a.txt" (id decl))))
		    :direction :output
		    :if-does-not-exist :create
		    :if-exists :supersede)
		   (report-proof *last-proof*)))
		(when texproofs
		  (latex-proof (format nil "~a.tex" (id decl)) t)
		  (rename-file (format nil "~a.tex" (id decl)) 
			       (format nil "pvstex/~a.tex" (id decl)))
		  (rename-file "pvs-files.tex"
			       (format nil "pvstex/main-~a.tex" (id decl)))))))
	  (when *justifications-changed?*
	    (save-all-proofs *current-theory*)))))))

(defun now-today ()
  (multiple-value-bind (s mi h d mo y dow dst tz) 
		       (get-decoded-time)
		       (declare (ignore tz dst dow))
		       (format nil "~a:~a:~a ~a/~a/~a" h mi s mo d y)))

(defun proveit ()
  (let* ((proveitversion (environment-variable "PROVEITVERSION"))
	 (context (environment-variable "PROVEITPVSCONTEXT"))
	 (pvsfile (environment-variable "PROVEITPVSFILE"))
	 (import (read-from-string 
		  (environment-variable "PROVEITLISPIMPORT")))
	 (scripts (read-from-string 
		   (environment-variable "PROVEITLISPSCRIPTS")))
	 (traces (read-from-string 
		  (environment-variable "PROVEITLISPTRACES")))
	 (force (read-from-string 
		 (environment-variable "PROVEITLISPFORCE")))
	 (typecheckonly (read-from-string 
			 (environment-variable "PROVEITLISPTYPECHECK")))
	 (txtproofs (read-from-string 
		     (environment-variable "PROVEITLISPTXTPROOFS")))
	 (texproofs (read-from-string 
		     (environment-variable "PROVEITLISPTEXPROOFS")))
	 (preludext (remove-duplicates 
		     (read-from-string 
		      (environment-variable "PROVEITLISPPRELUDEXT"))
		     :test #'string=))
	 (disable (remove-duplicates 
		   (read-from-string 
		    (environment-variable "PROVEITLISPDISABLE"))
		   :test #'string=))
	 (enable (remove-duplicates 
		  (read-from-string 
		   (environment-variable "PROVEITLISPENABLE"))
		  :test #'string=))
	 (thfs (thfs2list (read-from-string 
			   (environment-variable "PROVEITLISPTHFS"))))
	 (theories (remove-duplicates 
		       (read-from-string 
			(environment-variable "PROVEITLISPTHEORIES"))
		     :test #'string=))
	 (dependencies (environment-variable "PROVEITLISPDEPENDENCIES"))
	 (*print-readably* nil)
	 (*noninteractive* t)
	 (*pvs-verbose* (if traces 3 2)))
    (when (and pvsfile (string/= pvsfile ""))
      (multiple-value-bind 
	  (val err)
	  (handler-case    
	   (ignore-errors
	     (format t "~%*** ~%*** ~a (~a)~%*** Generated by ~a~%" 
		     pvsfile (now-today) proveitversion)
	     (extra-disable-but disable enable)
	     (let ((orcls (extra-list-oracles)))
	       (when orcls 
		 (format  t "*** Trusted Oracles~%")
		 (loop for orcl in orcls
		       do (format t "***   ~a: ~a~%"
				  (car orcl) (cdr orcl)))))
	     (format t "*** ")
	     (change-context (probe-file context))
	     (dolist (prelude preludext) (load-prelude-library prelude t))
	     (typecheck-file pvsfile nil nil nil t)
	     (save-context)
	     (let* ((theory-names (or theories (theories-in-file pvsfile)))
		    (pvstheories 
		     (if import (imported-theories-in-theories theory-names)
		       (mapcar #'get-typechecked-theory theory-names)))
		    (depfile (pathname (format nil "pvsbin/~a.dep" pvsfile))))
	       (when (equal dependencies "t")
		 (with-open-file 
		  (stream (ensure-directories-exist depfile) 
			  :direction :output
			  :if-exists :supersede
			  :if-does-not-exist :create)
		  (format stream "/~{~a~^,~}~%" (mapcar #'id pvstheories))
		  (maphash 
		   #'(lambda (k e) 
		       (format stream "~a~{~a~^,~}~%" k 
			       (loop for th being the hash-keys in (car e) collect th)))
		   *imported-libraries*)
		  (loop for th in pvstheories
			for idth = (id th)
			do (format stream "~a:~{~a~^,~}~%" idth
				   (mapcar 
				    #'(lambda(x) 
					(if (typep x '(or library-theory 
							  library-datatype 
							  library-codatatype))
					    (format nil "~a@~a" 
						    (string-right-trim 
						     "/" (lib-ref x))   
						    (id x))
					  (id x)))
				    (immediate-theories-in-theory idth))))))
	       (if typecheckonly
		   (format t "~%File ~a.pvs typechecked" pvsfile)
		 (let ((pvstheories 
			(remove-if #'(lambda (th) (typep th '(or datatype codatatype)))
				   pvstheories)))
		   (when scripts 
		     (dolist (theory pvstheories)
		       (install-prooflite-scripts (filename theory) (id theory) 0 
						  force)))
		   (proveit-theories pvstheories force thfs traces txtproofs texproofs)
		   (proveit-status-proof-theories pvstheories thfs))))
	     (save-context)
	     t)
	   (storage-condition
	    (condition) 
	    (values nil condition)))	      
	(when err 
	  (format t "~%~a (~a)~%" err pvsfile)
	  (bye 0))))
    (fresh-line)
    (bye 1)))
