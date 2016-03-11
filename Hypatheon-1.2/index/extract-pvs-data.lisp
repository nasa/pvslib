
;; Copyright (c) 2012 United States Government as represented by
;; the National Aeronautics and Space Administration.  No copyright
;; is claimed in the United States under Title 17, U.S.Code. All Other
;; Rights Reserved.
;;
;; The software in this package has been released as open-source software
;; under the NASA Open Source Agreement.  See the accompanying file
;; NASA_Open_Source_Agreement.pdf for a full description of the terms.


;; Extract theory and declaration attributes from PVS data structures.

;; Output is 3-4 files per library used to build an SQL database.  
;; They have names <library>_<attrib>.py, where <attrib> is one of
;; {decls, refs, places, steps}.  Their contents are expressed in
;; Python syntax for list and tuple objects.
;; As attributes are collected from PVS data structures,
;; records are appended to the files (with indentation).
;; After all extraction actions are complete, a finalization step
;; writes closing symbols to the files.

;; The resultant data structures have these forms:
;;
;; Declarations:    (<libname>, [<theory data>,...,None])
;;   <theory data>: (<thyname>, <thytype>, <decl list>, <generated decls>)
;;   <decl list>:   [(<decltype>, <declname>, <sig ('' for formulas)>,
;;                    <body>, <place/location>),...,None]
;; (note) there should only be one library per file
;;
;; Proofs are inserted as declarations having these fields:
;;   (<type>, <declname>, <proof-id>, <run-date>, <run-time>,
;;    <status>, <description>, <script>)
;;
;; References: a list having entries based on category
;; of references (declarations, modules, modules_closure);
;;   [ [<ref-type>, <ref>, ..., <ref>], ... ]
;; each reference item has a list of pairs of tuples:
;;   <ref> = ( (<value>, ...), (<value>, ...) )
;; each tuple specifies one element in a relationship, the first
;; is the referrer and the second is the referent;

;; Places: this file collects location data for prelude or generated
;; theories, i.e., those that don't have their own separate files.
;; Entries are triples: <theory>, <file>, <place/location>

;; Steps: file has the form
;;   [ ("primitive_rule", <step list>), ("defined_rule", <step list>),
;;     ("strategy", <step list>) ] and each step list has the form
;;   [ (<name>, <doc string>), ...]

;; 8 Sep 2015: Added minor conversions of id slot to allow for numeric
;; eumeration types.  Currently, PVS treats constants in "U7: TYPE = {0,1}"
;; as fixnums.  Need to convert to strings explicitly in some places.


(defvar *data-dir* nil)         ;; For temporary files
(defvar *decl-file* nil)        ;; For output of declarations
(defvar *refs-file* nil)        ;; For output of references
(defvar *place-file* nil)       ;; For output of theory places
(defvar *gen-decl-file* nil)    ;; For output of generated declaration info
(defvar *progress-stream* nil)  ;; For output of progress messages
;(defvar *progress-prefix* "")
(defvar *log-file* nil)  ;; 
(defvar *lib-count* 0)
(defvar *thy-count* 0)
(defvar *virt-count* 0)
(defvar *total-thy-count* 0)
(defvar *total-virt-count* 0)
(defvar *cancel-signal-file* nil)   ;; Files with designated names are used
(defvar *pause-signal-file* nil)    ;; to signal cancel & pause commands.
(defvar *resume-signal-file* nil)
(defvar *extraction-errors* nil)
(defvar *trace-out* nil)

(defvar *output-file-vars*
  '(*decl-file* *refs-file* *place-file* *gen-decl-file*))
(defvar *file-name-tails* '("decls" "refs" "places" "gens"))


;; Emit progress updates (currently done through a file) to keep
;; client's interactive user informed of processing.

(defun update-progress (type increment? msg &rest args)
  (let* ((count (cond ((eq type 'lib)
		       (format nil "~A."
			       (if increment? (incf *lib-count*) *lib-count*)))
		      ((eq type 'thy)
		       (format nil "~A.~A" *lib-count*
			       (if increment? (incf *thy-count*) *thy-count*)))
		      ((memq type '(virt adt))
		       (format nil "~A.v~A" *lib-count*
			       (if increment? (incf *virt-count*) *virt-count*)))
		      )))
    (when (and (eq type 'lib) increment?) (setf *thy-count* 0 *virt-count* 0))
    (format *progress-stream* "~A ~A~%" count
	    (apply #'format nil msg args))
    (finish-output *progress-stream*)))

(defun update-current-counts (type)
  (if (eq type 'thy)
      (incf *total-thy-count*)
      (incf *total-virt-count*))  ;; 'virt or 'adt
  (format *progress-stream* "extract_counts ~A ~A ~A~%" *lib-count*
	  *total-thy-count* *total-virt-count*)
  (finish-output *progress-stream*))

(defun emit-progress (msg &rest args)  ;; msg should end in ~%
  (format *progress-stream* (apply #'format nil msg args))
  (finish-output *progress-stream*))

(defun format-time-of-day (tuple)
  (format nil "~2d:~2d:~2d ~2d-~2d-~4d"
	  (nth 2 tuple) (nth 1 tuple) (nth 0 tuple) 
	  (nth 3 tuple) (nth 4 tuple) (nth 5 tuple) ))


;; Need to periodically check if the client process wants to pause
;; or cancel the extraction process.  Signaling is done by creating
;; files in the temp directory with the command names.  This is crude,
;; but the probe-file function is fast enough, so overhead is low.

(defun accept-pause-cancel (&optional callback)
  (cond ((probe-file *cancel-signal-file*)
	 ; callback is used when cleanup is required by caller
         ; caller will initiate the termination later
	 (emit-progress
	  "~%Indexing canceled -- PVS extraction is terminating.~%")
	 (unless callback (throw 'exit-process '(1 "EXIT: Canceled")))
	 'cancel)
	((probe-file *pause-signal-file*)
	 (emit-progress "~%PVS extraction process is pausing...~%")
	 (loop until (probe-file *resume-signal-file*)
	       when (probe-file *cancel-signal-file*)
	         do (unless callback
		      (throw 'exit-process '(1 "EXIT: Canceled")))
	       do (sleep 1.0))
	 (emit-progress "...PVS extraction process is resuming.~%")
	 'resume)
	(t nil))
)


;; Build a list of all declarations of type decl-type in theory thy

(defun extract-declarations-from-theory (thy decl-type)
  (loop for declaration in (theory thy)
        when (typep declaration decl-type) collect declaration))

;; Build a list of all function declarations in theory thy.

(defun fun-decls (thy)
  (loop for decl in (extract-declarations-from-theory thy 'const-decl)
        when (typep (type decl) 'funtype) collect decl))

;; Build a list of all non-function constant declarations in theory thy.

(defun const-decls (thy)
  (loop for decl in (extract-declarations-from-theory thy 'const-decl)
        unless (typep (type decl) 'funtype) collect decl))

;; Build a list of all formula declarations in theory thy.

(defun form-decls (thy)
  (loop for decl in (extract-declarations-from-theory thy 'formula-decl)
        unless (kind decl) collect decl))   ;; filter out TCCs, others

;; Build a list of all type declarations in theory thy.

(defun type-decls (thy)
  (extract-declarations-from-theory thy 'type-decl))

;; Build a list of all judgement declarations in theory thy.
;; PVS generates judgements that duplicate those in imported theories.
;; These are identical to the others and need to be filtered out.

(defun judgement-decls (thy)
  (loop for decl in (extract-declarations-from-theory thy 'judgement)
	unless (generated-by decl) collect decl))

;; Build a list of all (co)datatype declarations in theory thy.

(defun datatype-decls (thy)
  (if (typep thy 'recursive-type)
      nil   ;; theory is a (co)datatype module => handled separately
      (extract-declarations-from-theory thy 'recursive-type)))

;; Collect TCCs (all kinds) from theory thy.

(defun tcc-decls (thy)
  (extract-declarations-from-theory thy 'tcc-decl))
;;;  (loop for decl in (extract-declarations-from-theory thy 'tcc-decl)
;;;        when (< 1 (num-proof-steps
;;;		   (editable-justification (script (default-proof decl)))))
;;;  	  collect decl))


;;  If the library name ends with "/", remove it.  Otherwise, return
;;  the library name.  This is like a chomp() in perl.

(defun trim-lib-file (name)
  (let ((len-1 (- (length name) 1)))
    (if (eq (elt name len-1) #\/)
	(subseq name 0 len-1)
        name)))

(defun ref-library-name (mod this-lib)
  (cond ((typep mod 'modname)
	 (cond ((library mod))
	       ((gethash (id mod) *prelude*) 'prelude)
	       (t this-lib)))
	((typep mod 'library-theory)
	 (trim-lib-file (lib-ref mod)))
	((not (filename mod)) 'prelude)
	((typep mod 'module) 
	 (or this-lib '<this-lib>))
	(t 'unknown)))


;; Proofs are assumed to be of the form (<label> step ... step).
;; Proof steps have the form (rule ...).  Branching steps have the
;; same form as a top level proof, so that recursion traverses the
;; tree and collects/counts them.

(defun num-proof-steps (e-proof)
  (loop for node in (cdr e-proof)
	if (not (consp node))         ;; allow for comment strings
	   sum 0
        else if (symbolp (car node))
           sum 1
        else 
           sum (reduce #'+ (mapcar #'num-proof-steps node))))

(defun all-proof-steps (e-proof)
  (loop for node in (cdr e-proof)
	if (not (consp node))           ;; allow for comment strings
	   do (listp nil)               ;; keep this; CL requires a compound form
        else if (symbolp (car node))    ;; step
           collect (car node)
        else                            ;; branches
           append (mapcan #'all-proof-steps node)))


(defun ignore-unbound (method object)
  (let ((value (handler-case (funcall method object) (error (c) nil))))
    (if (eq value 'unbound) nil value)))

  
;; Construct pairs (m,r) of attributes where module m imports (references)
;; module r.  Include library and theory names of both m and r.

(defun emit-module-referents (refs-file theory module-type this-lib is-closure)
  (format refs-file "[ '~A',~%"  ; start a list of module ref items
	  (if is-closure "modules_closure" "modules"))
  (let ((imports (if is-closure
		     (union (mapcar #'car (ignore-unbound #'all-usings theory))
			    (ignore-unbound #'all-imported-theories theory))
		     (ignore-unbound #'immediate-usings theory))))
    (loop for ref in imports
	  do (format refs-file "( ( ur'''~A''',~%" this-lib)  ; library
	     (format refs-file "ur'''~A''',~%" (id theory))   ; theory
	     (format refs-file "'~A',~%" module-type)        ; module type
	     (format refs-file "),~%")
	     (format refs-file "(ur'''~A''',~%"               ; ref library
		     (ref-library-name ref this-lib))
	     (format refs-file "ur'''~A''',~%" (id ref))      ; ref theory
	     (format refs-file "'~A',~%"                     ; ref module type
		     (if (typep ref 'recursive-type) "datatype" "theory"))
	     (format refs-file ") ),~%")))
  (format refs-file "],~%"))

;; Construct pairs (d,r) of attributes where declaration d references
;; declaration r.  Include library, theory, declaration name
;; of both d and r.  Include signature of declarations when available.
;; For proofs, emit an additional pair (d,s), where s is a list of
;; proof step references.

(defun emit-decl/prf-referents (refs-file item item-type theory this-lib
				&optional decl decl-type steps)
   (loop for ref in (refers-to item)
	 for ref-type = (decl-referent-type ref)
         when ref-type
	   do (format refs-file "( (ur'''~A''', " this-lib)   ; library
              (format refs-file "ur'''~A''',~%" (id theory))  ; theory
	      (if decl     ;; proof ref
		  (progn
		    (format refs-file "ur'''~A''', '~A',~%"   ; name proof_type
			    (id item) item-type)
		    (format refs-file
			    "ur'''~A''', '~A',~%"         ; decl_name, decl_type
			    (id decl) decl-type))
		  (format refs-file "ur'''~A''', '~A',~%"     ; name decl_type
			  (id item) item-type))
	      (format refs-file "ur'''~A'''~%),~%"            ; signature
		      (handler-case (type (or decl item)) (error (c) "nil")))

	      (let ((mod (module ref))) 
		(format refs-file "(ur'''~A''',"              ; ref_library
			(ref-library-name mod this-lib)))
	      (format refs-file "ur'''~A''',~%" (id (module ref)))  ; ref_theory
	      (format refs-file "ur'''~A''', '~A',~%"         ; ref_name, ref_type
		      (id ref) ref-type)
	      (format refs-file "ur'''~A'''~%"                ; signature
		      (handler-case (type ref) (error (c) "nil")))
	      (format refs-file ") ),~%"))

   (when steps
     (format refs-file "( (ur'''~A'''," this-lib)      ; library
     (format refs-file "ur'''~A''',~%" (id theory))    ; theory
     (format refs-file "ur'''~A''', '~A',~%"           ; name proof_type
	     (id item) item-type)
     (format refs-file "ur'''~A''', '~A',~%"           ; decl_name decl_type
	     (id decl) decl-type)
     (format refs-file "ur'''~A'''~%"                  ; signature
	     (handler-case (type (or decl item)) (error (c) "nil")))
     (format refs-file "),~%ur'''~A'''),~%" steps)))


(defun declaration-type (decl)
  (cond ((typep decl 'const-decl)
	 (if (typep (type decl) 'funtype) "function" "constant"))
	((and (typep decl 'type-decl) (not (typep decl 'formal-type-decl)))
	 "type")
	((typep decl 'formula-decl) "formula")
	((typep decl 'judgement) "judgement")
	(t "declaration")))

(defun decl-referent-type (ref)
  ;; return valid type string for useful referents, nil for others
  (or (and (typep ref 'const-decl)
	   (if (typep (type ref) 'funtype)
	       ;; filter out functions with names ending in "_pred";
	       ;; they appear as implicit type info in many places
	       ;;;; changed following from (string (id ref))
	       (and (let ((ref-name (format nil "~a" (id ref))))
		      (not (equal (subseq ref-name (- (length ref-name) 5))
				  "_pred")))
		    "function")
	       "constant"))
      (and (typep ref 'type-decl) (not (typep ref 'formal-type-decl))
	   "type")
      (and (typep ref 'formula-decl) (not (kind ref)) "formula")  ;; no TCCs
      (and (typep ref 'judgement) (not (generated-by ref)) "judgement")
      ))            ;; returns nil for other cases

;; Format the body for correct input into Hypatheon
(defun compose-formals (formals)
  (format nil "~{~A~}"
          (loop for arg-list in formals
                collect (if (null arg-list)
                            "()"
                            (format nil "(~A~{, ~A~})"
                                    (car arg-list) (cdr arg-list))))))

;; For each declaration d that has a list of declarations (g...) generated
;; from it, emit a tuple of values (d, d_thy, g, g_thy), and write it to
;; the open *gen-decl-file*.  We assume d and g are in the same library.

(defun emit-gen-decls (decl decl-name decl-theory decl-type)
  ;;; changed following from (string-downcase decl-name)))
  (let ((decl-name (string-downcase (format nil "~a" decl-name))))
    (loop for g in (generated decl)
	  unless (typep g 'conversion-decl)
	  do (format *gen-decl-file*
		     "(ur'''~A''', ur'''~A''', '~A',~%"
		     decl-name decl-theory decl-type)
	     ;;; changed following from (string-downcase (id g)))
	     (let ((gen-name (string-downcase (format nil "~a" (id g))))
		   (gen-type (cond ((typep g 'tcc-decl) "tcc")
				   (t "other"))))
	       (format *gen-decl-file*
		       "ur'''~A''', ur'''~A''', '~A'),~%"
		       gen-name (id (module g)) gen-type)))))


;; Emit table data for all declarations in a theory of a given type.

(defun emit-declaration-tables
       (decl-file refs-file decls decl-type theory library source
	include-referents proof-type)
;;  (extract-debug (format nil "======= ~a ~a ~a ========~%"
;;			 library theory decl-type));;;;;
  (format refs-file "[ 'declarations',~%")  ; start a list of decl ref items
  (let* ((name-count 0)
	 (name-template (format nil "unnamed_~A_~~A" decl-type))
	 (named-decls
	  (loop for decl in decls
		if (id decl) collect (cons (id decl) decl)
		else collect (progn (incf name-count)
				    (cons (format nil name-template name-count)
					  decl))))
	 (decl-proofs
	  ;; collect declarations having proofs, filtering those decls
	  ;; without a default proof
	  (cond ((or (equal decl-type "formula") (equal decl-type "tcc"))
		 (mapcan #'(lambda (d)
			     (let ((p (default-proof (cdr d))))
			       (and p (list (list (car d) (cdr d) p)))))
			 named-decls))
;; 		((equal decl-type "judgement") ...)
		(t nil))))

    (loop for named-decl in named-decls
	  for decl = (cdr named-decl)
	  do (format decl-file "('~A', ur'''~A''',~%"
		     decl-type (car named-decl)) ;; declaration type and name
  	     (format decl-file "ur'''~A''',~%"
		     (handler-case (type decl) (error (c) "nil"))) ;; Signature
	     (let ((d-str-place
		    (and (generated-by decl) (add-generated-decl decl))))
	       (if d-str-place
		   (progn (format decl-file "ur'''~A''',~%"
				  (car d-str-place))     ;; the decl body
			  (format decl-file "ur'''~A'''),~%"
				  (cadr d-str-place)))  ;; thy addendum place
		   (progn (format decl-file "ur'''~A''',~%"
				  (hypatheon-format decl source)) ;; decl body
			  (format decl-file "ur'''~A'''),~%" (place decl)))))
	  when (generated decl)
	     do (emit-gen-decls decl (car named-decl) (id theory) decl-type)
	  when include-referents
	     do (emit-decl/prf-referents
		 refs-file decl decl-type theory library))
    (format refs-file "],~%")
    (unless proof-type (return-from emit-declaration-tables))

    (format refs-file "[ 'proofs',~%")  ; start a list of proof ref items
    (loop for decl-prf in decl-proofs
	  for decl-name = (car decl-prf)
	  for decl = (cadr decl-prf)
	  for proof = (caddr decl-prf)
	  for date = (handler-case (run-date proof) (error (c) nil))
	  for date-string = (if date (date-string date) "Unknown date")
	  for e-proof = (editable-justification
			 (handler-case (script proof) (error (c) nil)))
	  for proof-steps = (all-proof-steps e-proof)
	  for adj-prf-type = (if (and (eq proof-type 't_proof)
				      (generated-by decl)
				      (typep (generated-by decl) 'judgement))
				 'j_proof
			         proof-type)
	  do (format decl-file "('~A', '~A', ur'''~A''', ur'''~A''',~%"
		     ;; proof type, decl type, proof name, decl name
		     adj-prf-type decl-type (id proof) decl-name)  ;; (id decl))
             (format decl-file "ur'''~A''',~%"
		     (handler-case (type decl) (error (c) "nil"))) ;; Signature
	     (format decl-file "ur'''~A''', ~A,~%"
		     date-string (or (run-time proof) "'----'"))
;		     (date-string (run-date proof)) (run-time proof))
	     (format decl-file "~A, " (if e-proof (num-proof-steps e-proof) 0))
	     (format decl-file "ur'~A',~%" (status proof))
	     (format decl-file "ur'''~A''',~%" (description proof))
	     (format decl-file "ur'''~%")     ;; proof script
	     (format decl-file "~A"
		     (write-to-string e-proof
		      :pretty t :escape t :level nil :length nil
		      :pprint-dispatch *proof-script-pprint-dispatch*))
	     (format decl-file "~%'''),~%")
	  do (emit-decl/prf-referents refs-file proof adj-prf-type
				      theory library
				      decl decl-type proof-steps))
;    (error (condition) (extract-debug (format nil "~a: " condition))));;;;;
;					      (list decl-name proof e-proof)))))
    )
  (format refs-file "],~%"))


;; Following is used to collect and format the generated declarations from
;; a given theory, which will be appended to the theory's source when
;; displayed.  Place-vectors are synthesized to match the declarations'
;; positions in the extended source listing.

(let ((next-line 0)
      (thy-gen-decls nil)
      (skip-thy-gen nil))

  (defun init-gen-decl-collection (offset thy-type)
    (setq next-line offset
	  thy-gen-decls nil
	  skip-thy-gen (eq thy-type 'adt)))

  (defun add-generated-decl (gen-decl)
    (if skip-thy-gen
	nil
        (let* ((*no-comments* nil)
	       (*unparse-expanded* t)
	       (*xt-periods-allowed* t)
	       ;; based in part on approach in prettyprint-expanded:
	       (decl-string (unparse gen-decl :string t
				     :char-width *default-char-width*))
	       (dlen (count #\Newline decl-string))
	       ;; col num of 999 => generated declaration
	       (place (vector next-line 0 (+ next-line dlen) 999)))
	  (incf next-line (+ dlen 2))
	  (push decl-string thy-gen-decls)
;;	  (extract-debug (format nil "~A~2%" decl-string))
	  (list decl-string place))))

  (defun form-thy-gen-decl-string ()
    (if thy-gen-decls
	(let ((last-decl (car thy-gen-decls))
	      (gen-decls (reverse (cdr thy-gen-decls))))
	  (format nil "~2%~A~2%~{~A~2%~}~A~%"    ;; 4 lines after end of thy
		  "%%% ================ Addendum: generated declarations ================"
		  gen-decls last-decl))
        ""))
)

(defun hypatheon-format (decl source)
  (let* ((place (place decl)))
    (if (or (null place) (null source))
	""
	(let ((lines (loop for i from (- (aref place 0) 1)
			   to (- (aref place 2) 1)
			   collect (aref source i))))
	  (format nil "~{~A~%~}~A" (butlast lines 1) (car (last lines)))))))

(defun source-lines (name dir-path)
  (let ((pvs-filename (merge-pathnames dir-path (format nil "~A.pvs" name))))
    (if (probe-file pvs-filename)
	(let* ((source (open pvs-filename))
	       (lines (do ((v t) (lines nil))
			  ((eq v nil) (reverse lines))
			(setq v (read-line source nil))
			(when v (push v lines)))))
	  (close source)
	  (make-array (length lines) :initial-contents lines))
        nil)))    ;; PVS file doesn't exist)))

;; Theory declarations are split into the various types and emitted
;; separately.

(defun emit-theory-tables (thy lib-name filename
			   &optional thy-type lib-dir-path source-array)
  ;; first check if we've been asked to pause or cancel
  (let ((theory-name (id thy))
	(module-type (if (typep thy 'recursive-type) "datatype" "theory")))
    (accept-pause-cancel nil)
    (update-progress thy-type t "Extracting theory ~A" theory-name)
    (format *decl-file* "### Theory: ~A~%" theory-name)
    (format *decl-file* "(ur'''~A''', '~A', [~%" theory-name module-type)
    (format *place-file* "(ur'''~A''',~% ur'''~A''',~% '~A'),~%"
	    (id thy) filename (place thy))

    (unless (equal lib-name "prelude")
      (emit-module-referents *refs-file* thy module-type lib-name nil)
      (emit-module-referents *refs-file* thy module-type lib-name t))
    (let* ((source (if lib-dir-path
		      (source-lines theory-name lib-dir-path)
		      source-array))
	   (addendum-start (if lib-dir-path
			   (+ 5 (length source))
			   (+ 4 (aref (place thy) 2) 1))))  ;; from thy end
      ;; For generated declaration addendum, use offset of 4 lines after end
      ;; of theory, then bump it by 1 for 1-based counting.
      (init-gen-decl-collection addendum-start thy-type)
      (handler-case
          (loop for decl-type in
		'("formula" "type" "judgement" "function"
		  "constant" "datatype" "tcc")
		for decl-list in
		(mapcar #'(lambda (f) (funcall f thy))
			(list #'form-decls #'type-decls #'judgement-decls
			      #'fun-decls #'const-decls
			      #'datatype-decls #'tcc-decls))
		for include-referents in '(t nil nil t t nil nil)
		for proof-type in '(f_proof nil j_proof nil nil nil t_proof)
		do (handler-case
		       (emit-declaration-tables
			*decl-file* *refs-file* decl-list decl-type
			thy lib-name source include-referents proof-type)
		     (error (condition)
			    (push (list "Emit theory decl-type error:"
					lib-name thy decl-type condition)
				  *extraction-errors*))))
	(error (condition)
	  (push (list "Emit theory error:" lib-name thy condition)
		*extraction-errors*)))
      (format *decl-file* "None],~%ur'''~A''' ),~%"
	      (form-thy-gen-decl-string)))
  (update-current-counts thy-type)))    ; 'thy or 'virt or 'adt


;; Extract proof step info.

(defun emit-steps-table (lib_name)
  (update-progress 'lib t "Extracting ~A proof rules/steps" lib_name)
  (let ((step-file
	 (open (make-pathname :directory *data-dir* :type "py"
			      :name (format nil "~A_~A" lib_name "steps"))
	       :direction :output :if-exists :supersede)))
     (format step-file "### Steps: ~%[ ")
     (loop for step-hashtable in (list *rulebase* *rules* *steps*)
	   for step-type in '("primitive_rule" "defined_rule" "strategy")
	   do (format step-file "('~A', ~%[ " step-type)
	      (maphash #'(lambda (key val)
			   (let* ((sname (string (name val)))
				  (ilast (- (length sname) 1)))
			     (unless (or (equal (elt sname ilast) #\$)
					 (typep val 'defhelper-entry))
			       (format step-file "(ur'''~A''', ur'''~A''')," 
				       (name val) (docstring val)))))
		       step-hashtable)
	      (format step-file "] ),~%"))
     (format step-file "] ~%")
     (close step-file)))


;; Build data values for current library.

(defun emit-library-tables (base-path lib-name)
  (emit-progress "~%")
  (update-progress 'lib t "Extracting library ~A" lib-name)
  (format *log-file* "Starting extraction for library: ~A~%" lib-name)
  (open-output-files lib-name (format nil "### Library: ~A~%" lib-name)
		     "[~%" "[~%" "[~%")
  (format *decl-file* "(ur'''~A''', [~%" lib-name)
  (let ( (library-path (make-pathname :directory 
				      (append (pathname-directory base-path)
					      (list lib-name)))) )
     ; library-path is the directory containing the pvs files
     (change-context library-path)
     (handler-case
          (progn 
	    (update-progress 'lib nil "Typechecking library ~A..." lib-name)
	    (emit-progress "tc_start ~A~%" lib-name)
            (typecheck-file "top" t nil nil)
	    (emit-progress "tc_done ~A~%" lib-name) )
	(error (condition)
	  ;; Some typecheck errors can be cleared by first removing .bin files
          ;; and .pvscontext.  Retry typechecking after deletion.
	  (ignore-errors
	    (delete-file (make-pathname
			  :directory (pathname-directory library-path)
			  :name ".pvscontext")))
	  (loop for p in (directory
			  (make-pathname
			   :directory (append (pathname-directory library-path)
					      (list "pvsbin"))
			   :name "*" :type "bin"))
		do (ignore-errors (delete-file p)))
	  (handler-case
	      (progn 
		(change-context library-path)   ;; reset context after deletion
		(update-progress 'lib nil
				 "Retrying after deleting bin files...")
		(typecheck-file "top" t nil nil)
		(emit-progress "tc_done ~A~%" lib-name) )
	    (error (condition)
	      ;; Second attempt failed.  Typecheck error is real.
	      (format *log-file* "~%TC ERROR: ~A~2%" condition)
	      (throw 'exit-process
		     (list 2 (format nil "TC-ERR: ~A" lib-name)))))))
     (save-context)   ;;;;; force saving of context and bin files
     (let* ((theories
	      (cons *current-theory*
		    (loop for thy in (ignore-unbound #'all-imported-theories
						     *current-theory*)
			  unless (or (not (filename thy))
				     (typep thy 'library-theory)
				     (typep thy 'library-recursive-type))
			  collect thy)))
	    (lib-adt-files nil))
       (loop for thy in theories
	     do (emit-theory-tables thy lib-name (filename thy)
				    'thy library-path))
       (loop for lib-thy in theories
	     when (typep lib-thy 'recursive-type)
	     do (let* ((adt-theories (adt-generated-theories lib-thy))
		       (adt-file (filename (car adt-theories)))
		       (adt-source (source-lines adt-file library-path)))
		  (push adt-file lib-adt-files)
		  (loop for thy in adt-theories
			do (format *place-file*
				   "(ur'''~A''',~% ur'''~A''',~% '~A'),~%"
				   (id thy) adt-file (place thy))
  		           (emit-theory-tables thy lib-name adt-file
					       'adt nil adt-source) )))
       (emit-progress "orphan_theories ~A ~{ ~A~}~%" lib-name
		      (find-orphan-theories theories))
       (emit-progress "extract_files ~A ~{ ~A~}~%" lib-name
		      (append (mapcar #'filename theories) lib-adt-files))))
  (close-output-files "None])~%" "None]~%" "]~%" "None]~%")
  (update-current-counts 'lib))

(defun find-orphan-theories (theories)
  (let* ((reachable (loop for thy in theories
			  collect (list (string (id thy)) (filename thy))))
	 (all-theories
	  (loop for thy-file in reachable
		for file = (cadr thy-file)
		append (loop for th-name in (theories-in-file file)
			     collect (list th-name file)))))
    (loop for thy-file in all-theories
	  unless (assoc (car thy-file) reachable)
	    collect (format nil "~A.pvs[~A]" (cadr thy-file) (car thy-file)))))
    

(defun start-data-extraction (notify data-dir log-dir)
  (setf *extraction-errors* nil
	*data-dir* data-dir)
  (setf *log-file* (open (make-pathname :directory log-dir
					:name "pvs_extraction_log")
			 :direction :output :if-exists :append
			 :if-does-not-exist :create ))
  (handler-case
      ;;; For now, reporting progress using a file instead of a pipe.
      (setf *progress-stream*
	    (if nil ;;; notify
		*standard-output*
  	        (open (make-pathname :directory data-dir :name "progress")
		      :direction :output :if-exists :supersede )))
;		      :if-does-not-exist :create )))
    (error (condition)
      (format *log-file* "No progress: ~a~%" condition)
      (setf *progress-stream* *log-file*)))
  (setf *cancel-signal-file*
	(make-pathname :directory data-dir :name "cancel")
	*pause-signal-file*
	(make-pathname :directory data-dir :name "pause")
	*resume-signal-file*
	(make-pathname :directory data-dir :name "resume"))
;  (when notify (setf *progress-prefix* "<<<progress>>>"))
  (format *log-file* "~%================================================~%")
  (format *log-file* "~%Starting PVS extraction for Hypatheon on ~A~2%"
	  (format-time-of-day (multiple-value-list (get-decoded-time))))
  (setf *lib-count* 0 *thy-count* 0 *virt-count* 0)

  ;; When PVS runs in raw mode, parsing or typecheck errors cause the PVS
  ;; process to be aborted.  Need to create a file for use as a flag so
  ;; indexing driver can tell that normal termination didn't occur.
  (setf *tc-file-flag*
	(open (make-pathname :directory data-dir :name "tc_in_progress")
	      :direction :output :if-exists :supersede
	      :if-does-not-exist :create)) )

(defun open-output-files (lib-name &rest first-lines)
  ;;Open extraction output files for writing
  (loop for file-var in *output-file-vars*
	for name-tail in *file-name-tails*
	for file-name = (format nil "~A_~A" lib-name name-tail)
	for first-line in first-lines
	do  (set file-var 
		 (open (make-pathname :directory *data-dir* :type "py"
				      :name file-name)
		       :direction :output :if-exists :supersede))
	    (format (symbol-value file-var) first-line)))

(defun close-output-files (&rest last-lines)
  (loop for fvar in *output-file-vars*
	for last-line in last-lines
	for f = (symbol-value fvar)
	do (format f last-line) (close f)))


(defun stop-data-extraction (notify status)
  (format *progress-stream* "~A~%" (cadr status))
  (close *progress-stream*)
  (if (equal (car status) 0)
      (format *log-file* "Data extraction completed.~%")
      (progn (format *log-file* "Data extraction terminated prematurely.~%")
	     (format *log-file* "~S~%" status)))
  (close *tc-file-flag*)
  (ignore-errors
    (delete-file (make-pathname :directory *data-dir* :name "tc_in_progress")))
  (close *log-file*))


;;; Prelude theories are treated as a special case.

(defun extract-prelude-theories (pvs-lib-path)
  (emit-steps-table "prelude")
  (update-progress 'lib nil "Extracting prelude theories")
  (open-output-files "prelude" "(ur'''prelude''', [~%" "[~%" "[~%" "[~%")
  (let* ((source (source-lines "prelude" pvs-lib-path))
	 (theories nil))
    (maphash #'(lambda (key thy)
		 (when (not (generated-by thy))
		   (push thy theories)))
	     *prelude*)
    (loop for thy in theories
	  do (format *place-file* "(ur'''~A''',~% 'prelude',~% '~A'),~%"
		     (id thy) (place thy))
	  do (handler-case
	         (emit-theory-tables thy "prelude" "prelude" 'virt nil source)
	       (error (condition)
		      (push (list "Extract prelude error" (id thy) condition)
			    *extraction-errors*))))
    (loop for prel-thy in theories
	  when (typep prel-thy 'recursive-type)
	  do (let* ((adt-theories (adt-generated-theories prel-thy))
		    (adt-file (filename (car adt-theories)))
		    (adt-source (source-lines adt-file pvs-lib-path)))
	       (loop for thy in adt-theories
		     do (handler-case
			   (emit-theory-tables thy "prelude" adt-file
					       'adt nil adt-source)
			 (error (condition)
				(push (list "Extract prelude error"
					    (id thy) condition)
				      *extraction-errors*))))))
    (format *log-file* "~2%>>>> Extraction errors: ~A~2%"
	    (reverse *extraction-errors*)))
  (close-output-files "None])~%" "None]~%" "]~%" "None]~%"))


;;;;;;;;;;;;;

;;; The following are called from Emacs Lisp to conduct indexing.

;; Top-level: given a manifest of library pathnames, emit data tables for
;; each one.  Manifest file format:  ((context_dir lib_1 lib_2 ...) ...)

(defun extract-all-libraries (notify data-dir log-dir manifest) ; &rest lib-dirs)
  (start-data-extraction notify data-dir log-dir)
;  (extract-debug "starting extraction")
  (let* (context-libs status)
    (setq *trace-out* (open (make-pathname :directory *data-dir*
					   :name "extract_lisp_debug")
			    :direction :output
			    :if-does-not-exist :create :if-exists :append))
    (with-open-file (mf manifest) (setf context-libs (read mf)))
    (setq status
	  (catch 'exit-process
	    (loop for lib-set in context-libs
		  for base-dir = (car lib-set)
		  for base-path = (make-pathname :directory base-dir)
		  if (equal (cadr lib-set) "prelude")
		    ;; assume prelude is submitted by itself and
		    ;; manifest entry is (base-path "prelude")
		    do (extract-prelude-theories
			(make-pathname :directory 
				       (format nil "~A/~A" *pvs-path* "lib")))
		  else do
		    (loop for lib in (cdr lib-set)
			  do (handler-case
			         (emit-library-tables base-path lib)
			       (error (condition)
				      (close-output-files "" "" "" "")
				      (push (list "Extract-all error"
						  lib condition)
					    *extraction-errors*)))))
	    ;; if an exception is thrown, status is caught and returned;
	    ;; otherwise, status is given by:
	    (if *extraction-errors*
		'(3 "ERROR: Extraction errors")
	        '(0 "DONE"))))   ;; success
    (format *log-file* "~2%>>>> Extraction errors: ~A~2%"
	    (reverse *extraction-errors*))
;;      (extract-debug (format nil "Exit: ~A" status))
    (stop-data-extraction notify status)
    (record-status-code (car status))
    (close *trace-out*)
    (car status))
;  (extract-debug "stopping extraction")
  )

;;; need a way to close output lists when an exception is caught

;;; Exit status (code string):
;;;     (0 "DONE")             normal
;;;     (1 "EXIT: ...")        user-initiated termination
;;;     (2 "TC-ERR: ...")      typecheck failure
;;;     (3 "ERROR: ...")       extraction errors/bugs

;;; Status code is written to a file to ensure it won't be absorbed
;;; by intervening PVS scripts.

(defun record-status-code (status-code)
  (with-open-file (code-file (make-pathname :directory *data-dir*
					    :name "extraction_status")
			     :direction :output :if-exists :supersede
			     :if-does-not-exist :create )
     (format code-file "~A~%" status-code)))

;;;;;;;;;;;;;

(defun extract-debug (msg)
  (format *trace-out* "~A~%" msg)
  (finish-output *trace-out*))

(defun extract-debug-orig (msg)
  (let ((log-file
	 (open (make-pathname :directory *data-dir* :name "extract_lisp_debug")
	       :direction :io :if-does-not-exist :create :if-exists :append)))
    (format log-file "~A~%" msg)
    (close log-file)))

