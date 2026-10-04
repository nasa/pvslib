;;
;; proveit-init.lisp
;;
;; Contact: Cesar Munoz (cesar.a.munoz@nasa.gov)
;;          Mariano Moscato (mariano.m.moscato@nasa.gov)
;; NASA Langley Research Center
;; http://shemesh.larc.nasa.gov/people/cam/ProofLite
;;
;; Copyright (c) 2011-2012 United States Government as represented by
;; the National Aeronautics and Space Administration.  No copyright
;; is claimed in the United States under Title 17, U.S.Code. All Other
;; Rights Reserved.
;;

(setf sb-ext:*muffled-warnings* 'sb-kernel:redefinition-warning)

(in-package :pvs)

(defparameter *proveit-debug* t)

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


;; l is list of the form (("th" "f1" .. "fm") ...),
;; the output is a new where formulas of the same theory are put together
(defun thmerge (l)
    (let ((result nil))
      (dolist (entry l)
        (let* ((key (car entry))
               (existing (assoc key result :test #'equal)))
          (if existing
              (dolist (e (cdr entry))
                (unless (member e (cdr existing) :test #'equal)
                  (nconc existing (list e))))
              (push entry result))))
      (nreverse result)))

;; Converts a list ("th.f1:..fn" ...) into a list (... ("th" "f1" .. "fm") ...)
;; where formulas of the same theory are put together
(defun thfs2list (thsf)
  (thmerge (mapcar #'thf2list thsf)))

;;
;; Proof-Status Reporters
;;

(defclass proof-status-reporter () ())

(defgeneric initialize-collection-proof-status-report (proof-status-reporter thfs)
  (:documentation "Initialize the report for a collection of theories (library, file, or any other arbitrary collection.)"))

(defgeneric finish-collection-proof-status-report
    (proof-status-reporter thfs tot proved unfin time))

(defgeneric initialize-theory-proof-status-report
    (proof-status-reporter thf))

(defgeneric report-decl-proof-status
    (proof-status-reporter decl-id proof-status decision-procedure time))

(defgeneric finish-theory-proof-status-report
    (proof-status-reporter total-forms attempted-forms succeeded-forms total-time))

;;
;; Classic Proof-Status Reporter
;;

(defclass textual-proof-status-reporter (proof-status-reporter)
  ((timelength :accessor timelength)
   (idlength :accessor idlength)
   (ostream :initform t :accessor ostream)))

(defun short-thfs-str (thfs)
  (flet ((short-thf-str (thf)
	   (format nil "~a~@[ (~{~a~^, ~})~]"
		   (id (car thf))
		   (mapcar #'id (cdr thf)))))
    (mapcar #'short-thf-str thfs)))

(defmethod initialize-collection-proof-status-report
    ((reporter textual-proof-status-reporter) thfs)
  (let ((plural (if (cdr thfs) 0 1))
	(thfstr (short-thfs-str thfs)))
    (summary-message "Proving theor~@p ~{~a~^, ~}" plural thfstr)
    (summary-message "")))

(defmethod finish-collection-proof-status-report
    ((reporter textual-proof-status-reporter) thfs tot proved unfin time)
  (let ((stream (ostream reporter)))
    (format stream "~2%Grand Totals: ")
    (format stream "~d proofs, ~d attempted, ~d succeeded (~,2f s)"
	    tot (+ proved unfin) proved time)
    (unless (= tot proved)
      (let((miss-count (- tot proved)))
	(format stream "~&Warning: Missed ~a formula~:[~;s~]~%" miss-count (< 1 miss-count))))))

(defmethod initialize-theory-proof-status-report
    ((reporter textual-proof-status-reporter) thf)
  (let* ((stream (ostream reporter))
	 (theory (car thf))
	 (theory-id (id theory))
	 (decls (or (cdr thf) (provable-formulas theory)))
	 (plural (if (cddr thf) 0 1)))
    (if (null (cdr thf))
	(format stream "~2%  Proof summary for theory ~a" theory-id)
	(format stream "~2%  Proof summary for formula~p ~{~a~^, ~} in theory ~a"
		plural (mapcar #'id (cdr thf)) theory-id))
    (let ((maxtime (/ (reduce #'max decls
			      :key #'(lambda (d)
				       (or (run-proof-time d) 0))
			      :initial-value 0)
		      internal-time-units-per-second)))
      (let ((statuslength 20) ; "proved - incomplete "
	    (dplength (+ (apply #'max
				(mapcar #'(lambda (x) (length (string x)))
					*decision-procedures*))
			 2))
	    (timelength (length (format nil "~,2f" maxtime))))
	(setf (idlength reporter) (- 79 4 statuslength dplength timelength 4 3))
	(setf (timelength reporter) timelength)))))

(defmethod report-decl-proof-status
  ((reporter textual-proof-status-reporter) decl-id proof-status decision-procedure time)
  "The classic way to report the proof status of a declaration"
  (let ((stream (ostream reporter)))
    (format stream
	    "~%    ~v,1,0,'.a...~19a [~a](~a s)"
	    (idlength reporter)
	    decl-id
	    proof-status
	    decision-procedure
	    (if time
		(format nil "~v,2f" (timelength reporter) time)
	      (format nil "~v<n/a~>" (timelength reporter))))))

(defmethod finish-theory-proof-status-report
  ((reporter textual-proof-status-reporter) total-forms attempted-forms succeeded-forms total-time)
  (let ((stream (ostream reporter)))
    (format stream "~%    Theory totals: ~d formulas, ~d attempted, ~d succeeded ~
               (~,2f s)"
	    total-forms attempted-forms succeeded-forms total-time)))

;;
;; MD Proof-Status Reporter
;;

(defclass md-proof-status-reporter (proof-status-reporter)
  ((name :accessor name :initarg :name)
   (output-directory :accessor dir :initarg :dir)
   (output-filename :accessor filename :initarg :filename)
   (summary-content :accessor content :initform nil)
   (grand-table :accessor grand-table :initform nil)
   (theory-name :accessor processing-theory)
   (out-stream :accessor out-stream)
   (timestamp :accessor starting-time :initarg :starting-time)))

(defmacro add-content (reporter &rest new-content)
  `(setf (content ,reporter) (append (content ,reporter) (list ,@new-content))))

(defmethod initialize-collection-proof-status-report
    ((reporter md-proof-status-reporter) thfs))

(defun secs->ddhhmmss (time-in-secs)
  "Returns string representation of TIME-IN-SECS in format DD:HH:MM:SS.SSS"
  (multiple-value-bind (m secs) (floor time-in-secs 60)
    (multiple-value-bind (h mins) (floor m 60)
      (multiple-value-bind (d hours) (floor h 24)
	(let ((d     (and (< 0 d) d))
	      (hours (and (< 0 hours) hours))
	      (mins  (and (< 0 mins) mins)))
	  (format nil "~@[~d:~]~@[~d:~]~@[~d:~]~,3f" d hours mins secs))))))

(defmacro process-path (path)
  (if (git-available-p)
      `(format nil "~a ~@[(~a)~]" (get-clean-path ,path) (git-current-branch ,path))
      `(get-clean-path ,path)))

(defun get-clean-path (pathname)
  "To address security concerns, a pathname gets cleaned by replacing
   the home path by '$HOME' and the pvs path by '$PVS_DIR'."
  (let* ((repath (namestring (uiop:ensure-directory-pathname pathname)))
	 (pvspath (namestring *pvs-path*))
	 (usrpath (namestring (user-homedir-pathname)))
	 (newpath (replace-all (replace-all repath pvspath  "$PVS_DIR/") usrpath "$HOME/")))
    newpath))

(defmethod finish-collection-proof-status-report
    ((reporter md-proof-status-reporter) thfs tot proved unfin time)
  (with-open-file
   (stream (format nil "~a/~a" (dir reporter) (filename reporter)) :direction :output :if-exists :supersede)
   (format stream "~%# Summary for `~a`~%" (name reporter))
   (format stream "Run started at ~a.~%~%" (starting-time reporter))
   (format stream "_Note_: Time below is expressed in format DD:HH:MM:SS.SSS.~%")
   (format stream "~%## Grand Totals ~%")
   (let ((attempted (+ proved unfin))
	 (missing   (- tot proved)))
   (format stream "~%|            | Formulas | Attempted | Succeeded | Missing | Total Time |~%~
                     | ---:       | :---:    | :---:     | :---:     | :---:   | ---        |~%~
                     | **totals** | **~d**   | **~d**    | **~d**    | **~d**  | **~a s**   |~%"
	   tot attempted proved missing (secs->ddhhmmss time)))
   (loop for cont in (grand-table reporter) when cont do (format stream cont))
   (unless (= tot proved)
     (let((miss-count (- tot proved)))
       (format stream "~% **Note**: Missed ~a formula~:[~;s~].~%" miss-count (< 1 miss-count))))
   (format stream "~%## Detailed Summary ~%")
   (loop for cont in (content reporter) when cont do (format stream cont))
   ;;
   (format stream "~%## Platform information ~%")
   (format stream "~&|  |  |~%|---|---|~%" )
   (format stream "~&| Machine Info | ~a - ~a - ~a ~a |~%" (machine-type) (machine-version) (software-type) (software-version))
   (format stream "~&| PVS | ~a (~a) |~%"
           (get-pvs-version)
	   (let ((git-info (when (git-available-p) (git-current-branch))))
	     (or git-info  "no git info available")))
   (format stream "~&| Lisp| ~a ~a|~%" (lisp-implementation-type) (lisp-implementation-version))
   (format stream "~&| Patch Version| ~a|~%" (or (get-patch-version) "n/a"))
   (format stream "~&| Library Path| ~{`~a`~^<br/>~}|~%"
	   (mapcar (lambda (path) (process-path path)) *pvs-library-path*))
   (format stream "~&| Loaded Patches | ~{`~a`~^<br/>~}|~%"  (mapcar #'get-clean-path *pvs-patches-loaded*))))

(defmethod initialize-theory-proof-status-report
    ((reporter md-proof-status-reporter) thf)
  (let* ((theory (car thf))
	 (theory-id (id theory))
	 (decls (or (cdr thf) (provable-formulas theory)))
	 (plural (if (cddr thf) 0 1)))
    (setf (processing-theory reporter) theory-id)
    (add-content
     reporter
     (if (null (cdr thf))
	 (format nil "~%## `~a`~%" theory-id)
       (format nil "~%## Theory ~a~%Including only formula~p: ~{~a~^, ~}" theory-id plural (mapcar #'id (cdr thf))))
     (if decls
	 (format nil "~%| Formula | Proof Status | Decision Procedure | Time |~%~
                        | ---     | ---          | ---                | ---  |~%")
	 (format nil "No formula declaration found")))))

(defmethod report-decl-proof-status
  ((reporter md-proof-status-reporter) decl-id proof-status decision-procedure time)
  (add-content
   reporter
   (format nil
	   "~&|~a|~a ~a|~a|~a|~%"
	   decl-id
	   (cond ((string= proof-status "unfinished") "❌")
		 ((string= proof-status "untried") "✴")
		 ((prefix? "proved" proof-status) "✅"))
	   proof-status
	   decision-procedure
	   (if time
	       (secs->ddhhmmss time)
	     "n/a"))))

(defmethod finish-theory-proof-status-report
  ((reporter md-proof-status-reporter) total-forms attempted-forms succeeded-forms total-time)
  (setf
   (grand-table reporter)
   (append
    (grand-table reporter)
    (let ((unfinished-proofs (- total-forms succeeded-forms)))
      (list
       (format nil
	       "~&|[~A](#~:*~A) ~:[✅~;❌~]|~d|~d|~d|~d|~a|~%"
	       (processing-theory reporter)
	       (< 0 unfinished-proofs)
	       total-forms
	       attempted-forms
	       succeeded-forms
	       unfinished-proofs
	       (secs->ddhhmmss total-time)))))))

;;
;; CSV Proof-Status Reporter
;;

(defclass csv-proof-status-reporter (proof-status-reporter)
  ((name :accessor name :initarg :name)
   (output-directory :accessor dir :initarg :dir)
   (output-grand-totals-filename :accessor grand-totals-filename :initarg :grand-totals-filename)
   (output-detailed-filename :accessor detailed-filename :initarg :detailed-filename)
   (output-run-filename :accessor run-report-filename :initarg :run-report-filename)
   (summary-content :accessor content :initform nil)
   (grand-table :accessor grand-table :initform nil)
   (theory-name :accessor processing-theory)
   (out-stream :accessor out-stream)
   (timestamp :accessor starting-time :initarg :starting-time)))

(defmethod initialize-collection-proof-status-report
    ((reporter csv-proof-status-reporter) thfs))

(defmethod finish-collection-proof-status-report
    ((reporter csv-proof-status-reporter) thfs tot proved unfin time)
  (with-open-file
   (stream (format nil "~a/~a" (dir reporter) (run-report-filename reporter)) :direction :output :if-exists :supersede)
   (format stream "Library ~a~%" (name reporter))
   (format stream "Run started at ~a.~%~%" (starting-time reporter))
   (format stream "~& PVS Version ,  ~a  ~%" (get-pvs-version))
   (format stream "~& Lisp,  ~a ~a ~%" (lisp-implementation-type) (lisp-implementation-version))
   (format stream "~& Patch Version,  ~a ~%" (or (get-patch-version) "n/a"))
   (format stream "~& Library Path ~{, \"~a\"~^, ~%~} ~%"
	   (mapcar (lambda (path) (process-path path)) *pvs-library-path*))
   (format stream "~& Loaded Patches~{, \"~a\"~^, ~%~} ~%" (mapcar #'get-clean-path *pvs-patches-loaded*)))
  (with-open-file
   (stream (format nil "~a/~a" (dir reporter) (grand-totals-filename reporter)) :direction :output :if-exists :supersede)
   (let ((attempted (+ proved unfin))
	 (missing   (- tot proved)))
   (format stream "~& Totals, ~d  , ~d   , ~d   , ~d , ~a s  ~%~
                      Theory Name, Formulas, Attempted, Succeeded, Missing, Total Time~%"
	   tot attempted proved missing (secs->ddhhmmss time)))
   (loop for cont in (grand-table reporter) when cont do (format stream cont)))
  (with-open-file
   (stream (format nil "~a/~a" (dir reporter) (detailed-filename reporter)) :direction :output :if-exists :supersede)
   (loop for cont in (content reporter) when cont do (format stream cont))))

(defmethod initialize-theory-proof-status-report
    ((reporter csv-proof-status-reporter) thf)
  (let* ((theory (car thf))
	 (theory-id (id theory))
	 (decls (or (cdr thf) (provable-formulas theory)))
	 (plural (if (cddr thf) 0 1)))
    (setf (processing-theory reporter) theory-id)
    (add-content
     reporter
     (if (null (cdr thf))
	 (format nil "~%Theory ~a~%" theory-id)
	 (format nil "~%Theory ~a~%Including only formula~p: ~{~a~^, ~}" theory-id plural (mapcar #'id (cdr thf))))
     (if decls
	 (format nil "~%Formula, Proof Status, Decision Procedure, Time ~%")
	 (format nil "No formula declaration found")))))

(defmethod report-decl-proof-status
  ((reporter csv-proof-status-reporter) decl-id proof-status decision-procedure time)
  (add-content
   reporter
   (format nil
	   "~&~a, ~a, ~a, ~a~%"
	   decl-id
	   proof-status
	   decision-procedure
	   (if time
	       (secs->ddhhmmss time)
	     "n/a"))))

(defmethod finish-theory-proof-status-report
  ((reporter csv-proof-status-reporter) total-forms attempted-forms succeeded-forms total-time)
  (setf
   (grand-table reporter)
   (append
    (grand-table reporter)
    (list
     (format nil "~& ~a, ~d, ~d, ~d, ~d, ~a~%"
	     (processing-theory reporter)
	     total-forms
	     attempted-forms
	     succeeded-forms
	     (- total-forms succeeded-forms)
	     (secs->ddhhmmss total-time))))))

;;
;; TXT Proof-Status Reporter
;;

(defun proveit-message (ctl &rest args)
  (let ((str (format nil "~?" ctl args)))
    (pvs-message "[proveit] ~a" str)))

(defun summary-message (ctl &rest args)
  (let ((str (format nil "~?" ctl args)))
    (pvs-message "[summary] ~a" str)))

(defvar *proof-status-reporters* (list (make-instance 'textual-proof-status-reporter))
  "Proof-status reporters (by default, the classic mode is on)")

(defun proveit-proof-summary (thf)
  (dolist (reporter *proof-status-reporters*)
    (initialize-theory-proof-status-report reporter thf))
  (let* ((tot 0) (proved 0) (unfin 0) (untried 0) (time 0)
	 (theory (car thf))
	 (decls  (or (cdr thf) (provable-formulas theory))))
    (dolist (decl decls)
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
	(dolist (reporter *proof-status-reporters*)
	  (report-decl-proof-status reporter
				    (id decl)
				    (proof-status-string decl)
				    (if (justification decl)
					(decision-procedure-used decl)
					"Untried")
				    (when (run-proof-time decl) tm)))))
    (dolist (reporter *proof-status-reporters*)
      (finish-theory-proof-status-report
       reporter tot (+ proved unfin) proved time))
    (values tot proved unfin untried time)))

(defun proveit-proof-summaries (thfs)
  (let ((tot 0) (proved 0) (unfin 0) (untried 0) (time 0))
    (dolist (reporter *proof-status-reporters*)
      (initialize-collection-proof-status-report reporter thfs))
    (dolist (thf thfs)
      (multiple-value-bind (to pr uf ut tm)
	  (proveit-proof-summary thf)
	(incf tot to) (incf proved pr) (incf unfin uf) (incf untried ut)
	(incf time tm)))
    (dolist (reporter *proof-status-reporters*)
      (finish-collection-proof-status-report reporter thfs tot proved unfin time))
    (values tot proved unfin untried time)))

(defun proveit-status-proof-theories (thfs)
   (let ((return-value 0))
    (when thfs
      (pvs-buffer "PVS Status"
		  (with-output-to-string
		      (*standard-output*)
		    (multiple-value-bind
			  (tot proved unfin untried time)
			(proveit-proof-summaries thfs)
		      (declare (ignore time untried unfin))
		      (unless (= tot proved)
			(setq return-value 142))))
		  t))
    return-value))

;;
;;
;;

(defun proveit-theories (thfs retry? &optional txt-proofs? tex-proofs? use-default-dp? save-proofs?)
  (let ((*use-default-dp?* use-default-dp?))
    (read-strategies-files)
    (dolist (thf thfs)
      (let* ((theory (car thf))
	     (theory-id (id theory))
	     (decls  (or (cdr thf) (provable-formulas theory)))
	     (main-filename (format nil "~a.th" theory-id))
	     (plural (if (cddr thf) 0 1)))
	(with-context theory
	  (if (null (cdr thf))
	      (proveit-message "Proving theory ~a" theory-id)
	      (proveit-message "Proving formula~p ~{~a~^, ~} in theory ~a"
			       plural (mapcar #'id (cdr thf)) theory-id))
	  (when tex-proofs?
	      (let ((tex-filename (format nil "pvstex/~a.tex" main-filename)))
		(when (probe-file tex-filename)
		  (delete-file tex-filename))))
	  (let ((*justifications-changed?* nil))
	    (dolist (decl decls)
	      (setq *last-proof* (pvs-prove-decl decl retry?))
	      (when txt-proofs?
		(with-open-file
		    (*standard-output*
		     (ensure-directories-exist
		      (pathname (format nil "pvstxt/~a.txt" (id decl))))
		     :direction :output
		     :if-does-not-exist :create
		     :if-exists :supersede)
		  (report-proof *last-proof*)))
	      (when tex-proofs?
		(latex-proof (format nil "~a.tex" (id decl)) t nil main-filename nil)))
	    (when (and save-proofs? *justifications-changed?*)
	      (save-all-proofs (current-theory)))))))))

(defun now-today ()
  (multiple-value-bind (s mi h d mo y dow dst tz)
		       (get-decoded-time)
		       (declare (ignore tz dst dow))
		       (format nil "~a:~a:~a ~a/~a/~a" h mi s mo d y)))

(defun save-alt-summary-modes (proveitarg alt-summary-modes outdir outbase timestamp)
  (when (member "md" alt-summary-modes :test #'string=)
    (let ((md-reporter
	   (make-instance 'md-proof-status-reporter
			  :name proveitarg
			  :dir (merge-pathnames (or outdir "."))
			  :filename (format nil "~a.summary.md" outbase)
			  :starting-time timestamp)))
      (push md-reporter *proof-status-reporters*)))
  (when (member "csv" alt-summary-modes :test #'string=)
    (let ((md-reporter
	   (make-instance 'csv-proof-status-reporter
			  :name proveitarg
			  :dir (merge-pathnames (or outdir "."))
			  :grand-totals-filename (format nil "~a.grand-totals.csv" outbase)
			  :detailed-filename (format nil "~a.detailed.csv" outbase)
			  :run-report-filename (format nil "~a.run-info.csv" outbase)
			  :starting-time timestamp)))
      (push md-reporter *proof-status-reporters*))))

(defun check-unreachable-theories ()
  "Check unreachable theories in current context"
  (let* ((files-in-dir
	  (loop for f in (directory(pathname "*.pvs")) collect (pathname-name f)))
	 (reachable-files
	  (loop for th being the hash-values
		of (pvs-theories (current-workspace)) collect (filename th)))
	 (missing-files (set-difference files-in-dir reachable-files :test #'string=)))
    (when missing-files
      (let ((plural (if (cdr missing-files) 0 1)))
	(pvs-message "Warning: Unreachable file~p ~{~a~^, ~}" plural missing-files)))))

(defun pp-pvslib-path (path)
  "Get pp string of ws path using pvslib"
  (let* ((pathdir (pathname-directory (uiop:ensure-directory-pathname path)))
         (parentdir (butlast pathdir))
         (pathlib (make-pathname :directory parentdir))
         (lib-id  (extra-get-pvslib-id-from-dir pathlib))
         (basepath (if lib-id (extra-pvslib-keyval lib-id "basepath" t) (last parentdir)))
         (collection-id (car (last pathdir))))
    (format nil "~@[[~a]~]~{~a/~}~a" lib-id basepath collection-id)))

(defun save-dependencies (depfile tc-theos tci-theos pvsname)
  "Save file with theory dependencies. tc-theos is the specified list of typechecked-theories,
tci-theories includes all importings, and pvsname is the file of the PVS file (possibly empty)"
  (with-open-file
      (stream (ensure-directories-exist depfile)
	      :direction :output
	      :if-exists :supersede
	      :if-does-not-exist :create)
    (let ((pplocalpath (pp-pvslib-path (context-path (car tci-theos)))) ;; Local workspace
	  ;; key is external workspaces, value is list of theory dependencies in key workspace
	  (wsdeps (make-hash-table :test 'string=)))
      ;; Printing dependency file
      (format stream "# Local dependencies of theor~@p ~{~a~^, ~}~@[ (~a.pvs)~]~%"
	      (if (cdr tc-theos) 0 1) (mapcar #'id tc-theos) pvsname)
      (format stream "~a: ~{~a~^,~}~%" pplocalpath (mapcar #'id tci-theos))
      (format stream "# Dependencies of local theories~%")
      (loop for theory in tci-theos
	    do (format stream "~a:~{~a~^,~}~%"
		       (id theory)
		       (loop for th in (immediate-theories-in-theory theory)
			     for pppath = (pp-pvslib-path (context-path th))
			     collect (if (string= pppath pplocalpath)
					 (id th) ;; Theory is local
					 (let ((deps (gethash pppath wsdeps)))
					   (unless (member (id th) deps :test #'equal)
					     (setf (gethash pppath wsdeps) (cons (id th) deps)))
					   (format nil "~a@~a" pppath (id th)))))))
      (format stream "# External workspace dependencies~%")
      (loop for wsinfo being the hash-keys of wsdeps
	    using (hash-value deps)
	    do (format stream "~a:~{~a~^,~}~%" wsinfo deps)))))

(defmacro read-from-environment-variable (var-name)
  `(let ((envstr (environment-variable ,var-name)))
     (when envstr (read-from-string envstr))))

(defun check-formula-decls (fms theory-id all-decls)
  (when fms
    (let* ((fm (car fms))
	   (decl (car (member fm all-decls :test #'string= :key #'id))))
      (cond (decl
	     (cons decl (check-formula-decls (cdr fms) theory-id all-decls)))
	    (t (pvs-message  "Warning: Formua ~a not found in theory ~a" fm theory-id)
	       (check-formula-decls (cdr fms) theory-id all-decls))))))

;; Transforms a list (... ("th" "f1" .. "fm") ...) into a list
;; (... (<th> <f1> .. <fm>) ..) where every <th> is a type-checked theory
;; and every <fi> is a declaration object. Removing and reporting as warnings
;; non-existing theories and formulas
(defun typecheck-thfs (thfs)
  (when thfs
    (let* ((thf (car thfs))
	   (name (car thf))
	   (fms (cdr thf))
	   (theory (get-typechecked-theory name)))
      (cond ((generated-by theory)
	     (pvs-message  "Warning: Theory ~a is auto-generated by PVS" name)
	     (typecheck-thfs (cdr thfs)))
	    (theory
	     (let* ((all-decls (provable-formulas theory))
		    (decls (check-formula-decls fms (id theory) all-decls)))
	       (when (or (consp decls) (null fms))
		 (cons (cons theory decls) (typecheck-thfs (cdr thfs))))))
	    (t (pvs-message  "Warning: Theory ~a not found in workspace" name)
	       (typecheck-thfs (cdr thfs)))))))

(defun provable-theory? (th)
  (and (module? th)
       (not (generated-by th))))

;; Mege tc-thfs into theories, where
;; tc-thfs is a list of typechecked theories and formulas of interest
;; theories is a sorted list of theories
(defun merge-thfs-theories (tc-thfs theories)
  (loop for tci-theo in theories
	for tc-thf = (car (member tci-theo tc-thfs :key #'car))
	collect (let ((fs (cdr tc-thf)))
		  (if fs tc-thf (list tci-theo)))))

(defun make-top-file (topname timestamp)
  (let ((filename (format nil "~a.pvs" topname)))
    (unless (file-exists-p filename)
      (let ((top-theories (collect-top-theories)))
	(if top-theories
	    (if (gethash (intern topname) (current-pvs-theories))
		(proveit-message "Theory ~a already exists" topname)
		(handler-case
		    (with-open-file
			(output filename :direction :output :if-exists :error)
		      (format output "% Generated by proveit (~a)~%~a: THEORY~%BEGIN~%~%~{  IMPORTING ~a~%~}~%END ~a~%"
			      timestamp topname (mapcar #'id top-theories) topname))
		  (error (cnd) (pvs-message "Error: ~a" cnd))))
	    (summary-message "No PVS files found in the workspace")))
      (summary-message "File ~a was generated" filename))))

(defun proveit-on (context proveitarg pvsname import-chain? scripts? write-scripts?
		   traces? force? topname generate-top? typecheck-only? txt-proofs? tex-proofs? preludexts
		   disabled-oracles enabled-oracles auto-fix default-proof thfs
		   dependencies? alt-summary-modes outdir outbase purge?)
  (let* ((*print-readably* nil)
	 (*noninteractive* t)
	 (*pvs-verbose* (if traces? 3 2))
	 (*proof-for-unexpected-branches* default-proof)
	 (*auto-fix-on-rerun* (when (and (numberp auto-fix) (> auto-fix 0)) auto-fix))
	 (*disable-gc-printout* t)
	 (proveit-return-value 0)
	 (all-flags `((,dependencies? . "dependencies")
		      (,import-chain? . "import-chain")
		      (,scripts? . "scripts")
		      (,write-scripts? . "write-scripts")
		      (,traces? . "traces")
		      (,force? . "force")
		      (,generate-top? . "generate-top")
		      (,typecheck-only? . "typecheck-only")
		      (,txt-proofs? . "txt")
		      (,tex-proofs? . "tex")
		      (,purge? . "purge")))
	 (timestamp (now-today))
	 (depfile (format nil "~a/~a.dep" outdir outbase)))
    (handler-bind
	((error #'(lambda (cnd)
		    (format t "~&~a~%"
			    (remove-newline (format nil "Error: ~a" cnd)))
		    #+allegro
		    (when (or (< 2 *pvs-verbose*) *proveit-debug*)
		      (tpl::zoom-command :from-read-eval-print-loop nil :count t :top t :verbose t))
		    (bye 1))))
      (when *proveit-debug*
	(proveit-message "*proveit-debug* is set to T")
	#+sbcl (sb-debug:print-backtrace :count 1)
	#+allegro (tpl:do-command "args" :save t))
      ;; Delete dependency file if exists
      (when (and dependencies? (probe-file depfile))
	(delete-file depfile))
      ;; Save alternative summary modes
      (when proveitarg
	(save-alt-summary-modes proveitarg alt-summary-modes outdir outbase timestamp))
      (summary-message "Generated by ~a on ~a" *prooflite-version* timestamp)
      (let* ((flags (loop for flag in all-flags
			  when (car flag)
			  collect (cdr flag)))
	     (flag-msg (when flags (format nil "with flag~p ~{--~a~^ ~}" (length flags) flags))))
	(summary-message "Processing ~:[no arguments~;~:*~a~]~@[ ~a~]" proveitarg flag-msg))
      ;; auto-fix
      (when *auto-fix-on-rerun*
	(proveit-message "Auto-Fix enabled (siblinghood threshold ~a)" *auto-fix-on-rerun*))
      ;; default proof
      (when *proof-for-unexpected-branches*
	(proveit-message "Using default proof for open branches: ~a" *proof-for-unexpected-branches*))
      ;; disable/enable oracles
      (extra-disable-oracles disabled-oracles enabled-oracles)
      (let ((oracle-ids (mapcar #'car (extra-list-oracles))))
	(when oracle-ids
	  (summary-message "Trusted Oracles: ~{~a~^, ~}" oracle-ids)))
      (summary-message "")
      (change-workspace context t)
      ;; prelude extensions
      (load-prelude-libraries preludexts)
      ;; generate top if requested
      (when generate-top? (make-top-file topname timestamp))
      ;; typecheck
      (when pvsname (typecheck-file pvsname nil nil nil t))
      (save-context)
      ;; process theories and formulas
      (let* ((tc-thfs      (if pvsname (mapcar #'list (theories-in-file pvsname)) (typecheck-thfs thfs)))
	     (tc-theos     (sort-theories ;; Specifed typechecked theories
			    (remove-if-not #'provable-theory?
					   (mapcar #'car tc-thfs))))
	     (tci-theos    (when (or import-chain? dependencies?)
			     (sort-theories ;; Specified typechecked theories with importings
			      (remove-if-not #'provable-theory?
					     (imported-theories-in-theories tc-theos)))))
	     (all-theories (if import-chain? tci-theos tc-theos))
	     (all-thfs     (merge-thfs-theories tc-thfs all-theories)))
	(when tc-thfs
	  ;; check unreachable theories
	  (when (and import-chain?
		     (or (string= pvsname topname)
			 (let ((top-thf (car (member topname tc-thfs :test #'string=
						     :key (lambda (thf) (id (car thf)))))))
			   (and top-thf (null (cdr top-thf))))))
	    (check-unreachable-theories))
	  ;; save dependency file
	  (when (and dependencies? tc-theos)
	    (save-dependencies depfile tc-theos tci-theos pvsname))
	  ;; prove
	  (if typecheck-only?
	      (if pvsname
		  (summary-message "File ~a.pvs typechecked" pvsname)
		  (summary-message "Theor~@p ~{~a~^, ~} typechecked"
				   (if (cdr tc-theos) 0 1) (mapcar #'id tc-theos)))
	      (when all-theories
		(when scripts?
		  (dolist (theory all-theories)
		    (let* ((prl-filename (get-prooflite-file-name theory))
			   (prlfile (probe-file
				     (make-pathname :defaults *default-pathname-defaults*
						    :name prl-filename))))
		      (when prlfile
			(proveit-message "Installing proof scripts from ~a into theory ~a"
					 prl-filename (id theory))
			(install-prooflite-scripts-from-prl-file theory prlfile force?))
		      (install-prooflite-scripts (filename theory) (id theory) 0 force?))))
		(proveit-theories all-thfs force? txt-proofs? tex-proofs? nil auto-fix)
		(setq proveit-return-value
		      (proveit-status-proof-theories all-thfs))
		(when purge?
		  (dolist (theory all-theories)
		    (purge-proved-formulas-file (filename theory))))
		;; generate prooflite scripts
		(when write-scripts?
		  (dolist (theory all-theories)
		    (write-all-prooflite-scripts-to-file (format nil "~a" (id theory)))))))
	  (save-context))))
    (when *proveit-debug* (proveit-message "proveit-return-value: ~a" proveit-return-value))
    (bye proveit-return-value)))

(defun proveit ()
  (let* ((context (environment-variable "PROVEITPVSCONTEXT"))
	 (proveitarg (let ((name (environment-variable "PROVEITARG")))
		       (when (and name (string/= name "")) name)))
	 (pvsname (let ((name (environment-variable "PROVEITPVSNAME")))
		    (when (and name (string/= name "")) name)))
	 (outdir (let ((name (environment-variable "PROVEITOUTDIR")))
		   (when (and name (string/= name "")) name)))
	 (outbase (let ((name (environment-variable "PROVEITOUTBASE")))
		    (when (and name (string/= name "")) name)))
	 (topname (environment-variable "PROVEITTOPNAME"))
	 (dependencies? (read-from-environment-variable "PROVEITLISPDEPENDENCIES"))
	 (import-chain? (read-from-environment-variable "PROVEITLISPIMPORTCHAIN"))
	 (scripts? (read-from-environment-variable "PROVEITLISPSCRIPTS"))
	 (write-scripts? (read-from-environment-variable "PROVEITLISPWRITESCRIPTS"))
	 (traces? (read-from-environment-variable "PROVEITLISPTRACES"))
	 (force? (read-from-environment-variable "PROVEITLISPFORCE"))
	 (generate-top? (read-from-environment-variable "PROVEITLISPGENERATETOP"))
	 (typecheck-only? (read-from-environment-variable "PROVEITLISPTYPECHECKONLY"))
	 (txt-proofs? (read-from-environment-variable "PROVEITLISPTXTPROOFS"))
	 (tex-proofs? (read-from-environment-variable "PROVEITLISPTEXPROOFS"))
	 (preludexts (remove-duplicates
		      (read-from-environment-variable "PROVEITLISPPRELUDEXTS")
		      :test #'string=))
	 (disabled-oracles (remove-duplicates
			    (read-from-environment-variable "PROVEITLISPDISABLEDORACLES")
			    :test #'string=))
	 (enabled-oracles (remove-duplicates
			   (read-from-environment-variable "PROVEITLISPENABLEDORACLES")
			   :test #'string=))
	 (auto-fix (read-from-environment-variable "PROVEITLISPAUTOFIX"))
	 (default-proof (let ((envstr (environment-variable
				       "PROVEITLISPDEFAULTPROOFSTEP")))
			  (when envstr (read-from-string envstr))))
	 (thfs (thfs2list (read-from-environment-variable "PROVEITLISPTHFS")))
	 (alt-summary-modes (remove-duplicates
				    (read-from-environment-variable "PROVEITLISPALTMODES")
				    :test #'string=))
	 (purge? (read-from-environment-variable "PROVEITLISPPURGE"))
	 (*proveit-debug* (read-from-environment-variable "PROVEITLISPDEBUG")))
    (proveit-on context proveitarg pvsname import-chain? scripts? write-scripts?
		traces? force? topname generate-top? typecheck-only? txt-proofs? tex-proofs? preludexts
		disabled-oracles enabled-oracles auto-fix default-proof thfs
		dependencies? alt-summary-modes outdir outbase purge?)))

(defun collect-top-theories ()
  (let ((files-in-dir (mapcar #'pathname-name (directory (pathname "*.pvs"))))
	(*modules-visited* nil))
    (let ((theories-in-dir (loop for f in files-in-dir
				 for theories-in-file = (typecheck-file f nil nil nil t)
				 append (delete-if #'generated-by theories-in-file))))
      (sort-theories theories-in-dir))))

(defun remove-newline (strin)
  (with-output-to-string
    (strout)
    (loop for ch
	  across strin
	  do (case ch
	       (#\newline
		(write-char #\Space strout))
	       (t (write-char ch strout))))))
