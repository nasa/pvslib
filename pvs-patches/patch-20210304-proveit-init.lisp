;;
;; proveit-init.lisp
;; Release: ProofLite-7.1.0 (11/05/20)
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
  (let ((return-value 0))
    (if theories
	(let ((*disable-gc-printout* t))
	  (pvs-buffer "PVS Status"
		      (with-output-to-string
			(*standard-output*)                                     
			(multiple-value-bind
			    (tot proved unfin untried time)
			    (proveit-proof-summaries theories thfs)
			  (declare (ignore time untried unfin))
			  (unless (= tot proved)
			    (let((miss-count (- tot proved)))
			      (format t "~&*** Warning: Missed ~a formula~:[~;s~].~%" miss-count (< 1 miss-count)))
			    (setq return-value 142))))
		      t))
      (pvs-message "No theories given"))
    return-value))

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

(defun proveit-theories (theories retry? thfs 
			 &optional txtproofs texproofs use-default-dp? save-proofs?)
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
	  (when (and save-proofs? *justifications-changed?*)
	    (save-all-proofs (current-theory))))))))

(defun now-today ()
  (multiple-value-bind (s mi h d mo y dow dst tz) 
		       (get-decoded-time)
		       (declare (ignore tz dst dow))
		       (format nil "~a:~a:~a ~a/~a/~a" h mi s mo d y)))

(defun relative-lib-path (pathname)
  "The relative path of a library is the collection name and the library name separated by a slash. For example, the relative path of '/Users/username/pvs/nasalib/structures' is 'nasalib/structures'."
  (format nil "~{~a/~}" (let ((dir-names
			       (cdr (pathname-directory pathname))))
			  (subseq dir-names (max 0 (- (length dir-names) 2))))))

(defun qualified-path-name (pathname &optional relative?)
  (let ((lib-path pathname))
    (if relative? (relative-lib-path lib-path) lib-path)))

(defun qualified-th-name (theory &optional relative?)
  "The qualified name of a theory is the name to be used in the dependency files."
  (format nil "~a~a" (qualified-path-name (context-path theory) relative?) (id theory)))

(defun proveit ()
  (let* ((proveitversion 
		    (or (environment-variable "PROVEITVERSION") (format nil "proveit ~a" *prooflite-version*)))
	 (context (environment-variable "PROVEITPVSCONTEXT"))
	 (proveitarg (environment-variable "PROVEITARG"))
	 (pvsfile (let ((name (environment-variable "PROVEITPVSFILE")))
		    (when (and name (string/= name "")) name)))
	 (import (let ((envstr (environment-variable "PROVEITLISPIMPORT")))
		   (when envstr (read-from-string envstr))))
	 (scripts (let ((envstr (environment-variable "PROVEITLISPSCRIPTS")))
		    (when envstr (read-from-string envstr))))
	 (write-scripts (let ((envstr (environment-variable "PROVEITLISPWRITESCRIPTS")))
		    (when envstr (read-from-string envstr))))
	 (traces (let ((envstr (environment-variable "PROVEITLISPTRACES")))
		   (when envstr (read-from-string envstr))))
	 (force (let ((envstr (environment-variable "PROVEITLISPFORCE")))
		  (when envstr (read-from-string envstr))))
	 (autotop (let ((envstr (environment-variable "PROVEITLISPAUTOTOP")))
		    (when envstr (read-from-string envstr))))
	 (typecheckonly (let ((envstr (environment-variable "PROVEITLISPTYPECHECK")))
			  (when envstr (read-from-string envstr))))
	 (txtproofs (let ((envstr (environment-variable "PROVEITLISPTXTPROOFS")))
		      (when envstr (read-from-string envstr))))
	 (texproofs (let ((envstr (environment-variable "PROVEITLISPTEXPROOFS")))
		      (when envstr (read-from-string envstr))))
	 (preludext (remove-duplicates
			(let ((envstr (environment-variable "PROVEITLISPPRELUDEXT")))
			  (when envstr (read-from-string envstr)))
		      :test #'string=))
	 (disable (remove-duplicates 
		      (let ((envstr (environment-variable "PROVEITLISPDISABLE")))
			(when envstr (read-from-string envstr)))
		    :test #'string=))
	 (enable (remove-duplicates
		     (let ((envstr (environment-variable "PROVEITLISPENABLE")))
		       (when envstr (read-from-string envstr)))
		   :test #'string=))
	 (auto-fix? (let ((envstr (environment-variable "PROVEITLISPAUTOFIX")))
		      (when envstr (read-from-string envstr))))
	 (default-proof (let ((envstr (environment-variable
				       "PROVEITLISPDEFAULTPROOFSCRIPT")))
			  (when envstr (read-from-string envstr))))
	 (thfs (thfs2list (let ((envstr (environment-variable "PROVEITLISPTHFS")))
			    (when envstr (read-from-string envstr)))))
	 (theories (remove-duplicates
		       (let ((envstr (environment-variable "PROVEITLISPTHEORIES")))
			 (when envstr (read-from-string envstr)))
		     :test #'string=))
	 (dependencies (environment-variable "PROVEITLISPDEPENDENCIES"))
	 (*print-readably* nil)
	 (*noninteractive* t)
	 (*pvs-verbose* (if traces 3 2))
	 (proveit-return-value 0))
    (handler-bind
	((error #'(lambda (cnd)
		    (format t "~%~a~%"
			    (remove-newline
			     (format nil "Error: ~a (~a)" cnd proveitarg)))
		    #+allegro
		    (when (< 2 *pvs-verbose*)
		      (tpl::zoom-command :from-read-eval-print-loop nil :count t :top t))
		    (bye 1))))
      (format t "~%*** ~%*** Processing ~a (~a)~%*** Generated by ~a~%" 
	proveitarg (now-today) proveitversion)
      ;; auto-fix
      (when (and auto-fix? (numberp auto-fix?))
	(setq *auto-fix-on-rerun* auto-fix?)
	(format  t "*** Auto-Fix enabled (siblinghood threshold ~a)~%" auto-fix?))
      ;; default proof script
      (when default-proof
	(setq *proof-for-unexpected-branches* default-proof)
	(format  t "*** Using default proof for open branches: ~a~%" default-proof))
      (extra-disable-oracles-but disable enable)
      (let ((orcls (extra-list-oracles)))
	(when orcls 
	  (format  t "*** Trusted Oracles~%")
	  (loop for orcl in orcls
	     do (format t "***   ~a: ~a~%"
		  (car orcl) (cdr orcl)))))
      (format t "*** ")
      (change-workspace context t)
      (dolist (prelude preludext) (load-prelude-library prelude t))
      ;; generate top if requested
      #+pvsdebug (format t "~&[proveit-init.proveit] pvsfile ~a ~%" pvsfile)
      #+pvsdebug (format t "~&[proveit-init.proveit] autotop ~a ~%" autotop)
      (when autotop
	(handler-case (make-top-file pvsfile)
	  (top-already-exists (cnd)
	   (format t "~%*** Warning: ~a. Omitting generation.~%" (format nil "~a" cnd)))))
      #+pvsdebug (format t "~&[proveit-init.proveit] after autotop checkpoint~%")
      (when pvsfile 
	(let ((*pvs-error-hook*
	       (lambda (msg err buff place)
		 (declare (ignore buff place))
		 (format t "~&Error: ~a - ~a~%" (remove-newline msg) (remove-newline err))
		 (bye 1))))
	  (typecheck-file pvsfile nil nil nil t)))
      #+pvsdebug (format t "~&[proveit-init.proveit] after typecheck checkpoint~%")
      (save-context)
      (let* ((theory-names (or theories (and pvsfile (theories-in-file pvsfile))))
	     (pvstheories 
	      (if import (imported-theories-in-theories theory-names)
		  (mapcar #'get-typechecked-theory theory-names)))
	     (depfile (pathname (format nil "pvsbin/~a.dep" (or pvsfile "bot")))))
	;; check unreachable theories
	#+pvsdebug (format t "~%[proveit-init.proveit] pvsfile ~a import ~a~%" pvsfile import)
	(when (and (string= pvsfile "top") import)
	  (let*((files-in-dir
		 (loop for f in (directory(pathname "*.pvs")) collect (pathname-name f)))
		(reachable-files
		 (loop for th being the hash-values
		       of (pvs-theories (current-workspace)) collect (filename th)))
		(missing-files (set-difference files-in-dir reachable-files :test #'string=)))
	    #+pvsdebug (format t "~%[proveit-init.proveit] files-in-dir ~{~a ~}~%" files-in-dir) 
	    #+pvsdebug (format t "~%[proveit-init.proveit] reachable-files ~{~a ~}~%" reachable-files) 
	    #+pvsdebug (format t "~%[proveit-init.proveit] missing-files ~{~a ~}~%" missing-files) 
	    (when missing-files
	      (let ((*disable-gc-printout* t))
		(let ((plural? (< 1 (length missing-files))))
		  (format t "~&*** Warning: file~:[~;s~] ~{~#[~;~a.pvs~;~a.pvs and ~a.pvs~:;~@{~a.pvs~#[~;, and ~:;, ~]~}~]~} ~:[is~;are~] not reachable from top.pvs~%" plural? missing-files plural?))))))
	;; dependencies
	(unless (equal dependencies "nil") 
	  (let((relative-path-lib-names? (equal dependencies "relative")))
	    (with-open-file 
	      (stream (ensure-directories-exist depfile) 
		      :direction :output
		      :if-exists :supersede
		      :if-does-not-exist :create)
	      (format stream 
		      "~{~a~^,~}~%"
		      (mapcar #'(lambda (th)
				  (qualified-th-name th relative-path-lib-names?))
			      pvstheories))
	      (mapc
	       #'(lambda (ws)
		   (let ((theories-in-ws (loop for th being the hash-keys
				 in (pvs-files ws)
				  collect th)))
		     (when theories-in-ws (format stream "[WSS]~a~{~a~^,~}~%"
			   (qualified-path-name (path ws) relative-path-lib-names?)
			   theories-in-ws))))
	       *all-workspace-sessions*)
	    (loop for th in pvstheories
	       for idth = (id th)
	       do (format stream "~a:~{~a~^,~}~%" (qualified-th-name th relative-path-lib-names?)
			  (mapcar
			      #'(lambda(x) 
				  (if (lib-datatype-or-theory? x)
				      (format nil
					      "~a" (qualified-th-name x relative-path-lib-names?))
				    (qualified-th-name x relative-path-lib-names?)))
			      (immediate-theories-in-theory idth)))))))
	(let ((pvstheories 
	       (remove-if #'(lambda (th) (typep th '(or datatype codatatype)))
			  pvstheories)))
	  (if typecheckonly
	      (if pvsfile (format t "~%File ~a.pvs typechecked~%" pvsfile)
		(format t "~%Typechecked ~a~%" proveitarg))
	    (progn
	      (when scripts
		(dolist (theory pvstheories)
		  (let*((prl-filename (get-prooflite-file-name theory))
			(prlfile (probe-file
				  (make-pathname :defaults *default-pathname-defaults*
						 :name prl-filename))))
		    (when prlfile
		      (pvs-message "Installing proof scripts from ~a into theory ~a.~%"
				   prl-filename (id theory))
		      (install-prooflite-scripts-from-prl-file theory prlfile force))
		    (install-prooflite-scripts (filename theory) (id theory) 0 force))))
	      (proveit-theories pvstheories force thfs txtproofs texproofs nil
				;; if auto-fix?, save proofs
				auto-fix?)
	      (setq proveit-return-value
		    (proveit-status-proof-theories pvstheories thfs))))
	  (save-context)
	  (when write-scripts
	    (dolist (theory pvstheories)
	      (write-all-prooflite-scripts-to-file (format nil "~a" (id theory)))))))
      #+pvsdebug (format t "~&[proveit-init.proveit] proveit-return-value ~a~%" proveit-return-value)
      (bye proveit-return-value)))) 

(defun collect-top-theories ()
  (let ((files-in-dir
	 (sort(loop for f in (directory(pathname "*.pvs")) collect (pathname-name f)) #'string<)))
    (setq *modules-visited* nil)
    (let ((theories-in-dir (loop for f in files-in-dir
				 for theories-in-file
				 = (let ((*pvs-error-hook*
					  (lambda (msg err buff place)
					    (declare (ignore buff place))
					    (error (format nil "~a - ~a" msg err)))))
				     (typecheck-file f nil nil nil t))
				 do (loop for th in theories-in-file
					  do (module-hierarchy* th nil))
				 append (delete-if #'generated-by theories-in-file))))
      (loop for th being the hash-keys of *modules-visited* 
	    for used-ths = (gethash th *modules-visited*)
	    unless (generated-by th)
	    do (setq theories-in-dir (set-difference theories-in-dir used-ths)))
      theories-in-dir )))

(define-condition top-already-exists (error) ())

(defun make-top-file (theoryname)
  (when theoryname
    (let ((filename (format nil "~a.pvs" theoryname)))
      (if (file-exists-p filename)
	  (error 'top-already-exists
		 :format-control "file ~a already exists in the workspace"
		 :format-arguments (list filename))
	(let ((top-theories (collect-top-theories)))
	  (when top-theories
	    (if (get-theory theoryname)
		(error 'top-already-exists
		       :format-control "theory ~a already exists in the workspace"
		       :format-arguments (list theoryname))
	      (handler-case
		  (progn
		    (with-open-file
		     (output filename :direction :output :if-exists :error)
		     (format output "~a: THEORY~%BEGIN~%~%~{  IMPORTING ~a~%~}~%END ~a~%"
			     theoryname (mapcar #'id top-theories) theoryname))
		    (pvs-message "~%File ~a was correctly generated.~%" filename))
		(error (cnd) (pvs-message "~%Error: ~a~%" cnd)))))
	  (unless top-theories
	    (pvs-message "~%No top theories found. Empty workspace?~%")))))))

(defun remove-newline (strin)
  (with-output-to-string
    (strout)
    (loop for ch
	  across strin
	  do (case ch
	       (#\newline
		(write-char #\Space strout))
	       (t (write-char ch strout))))))
