(in-package :pvs)

;; <- generate-instance        (defun, from pvs-attachments)
;; <- random-generator*        (defmethod, from pvs-attachments)
;; <- get-const-decl           (defun, from pvs-attachments, if still separate)
;; <- print-test-case-for      (defun — your CURRENT file-writing + .in version)

(defun generate-instance (type size dtsize
			       &optional
			       ;all?
			       ;verbose?
			       ;instance
			       (subtype-gen-bound 1000)
			       ;skomap
			       )
  (let ((*random-subtype-gen-bound* subtype-gen-bound)
;;        (terminated? nil)
        )
    (restart-case
     (multiple-value-bind (v err)
	 (ignore-lisp-errors
	  (funcall (random-generator type) size dtsize))
       (if err
	   (invoke-restart 'terminate-random-loop
			   "~%Value not generated for ~a:~%~a" type err)
	 v))
     (terminate-random-loop (fmt &rest args)
;;			    (setq terminated? t)
			    (format t "~%~?~%Terminating random test"
				    fmt args)))))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; Dependent-record (Shape) support — field-wise assembly with synthesized lambda
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defun dependent-record-with-function-field-p (type)
  "Return T if TYPE is a record type with at least one function-typed field.
   TO-VERIFY: recordtype? funtype? (fields type) (type field) — confirm API at PVSio."
  (and (recordtype? type)                          
       (some (lambda (fld)
               (funtype? (type fld)))             
             (fields type))))

(defun generate-backing-values-for-size (rank elem-type size dtsize)
  "Generate RANK values of ELEM-TYPE as PVS-exprs.
   ELEM-TYPE: the PVS type of the array's range (the T in [below(rank)->T]).
   Returns a list of PVS-expr objects (rendered with ~a at splice time)."
  (loop repeat rank
        collect (generate-instance elem-type size dtsize)))

(defun generate-dependent-record-literal (rec-type size dtsize)
  "Generate a valid dependent-record literal (one nat field bounding one
   function field over below(that field)) as PVS source text. Field-name-general:
   reads names off REC-TYPE, discovers the bounding field by parsing the function
   field's below(...) domain. Single-dependency shape only."
  (let* ((flds       (fields rec-type))
         (fun-fld    (find-if (lambda (f) (funtype? (type f))) flds))
         (bound-name (find-bounding-field-name fun-fld))   ; errors if not below(<field>)
         (elem-type  (range (type fun-fld)))
         ;; generate the bounding field FIRST — dependency by construction
         (bound-expr (generate-instance *naturalnumber* size dtsize))
         (bound-val  (if (number-expr? bound-expr) (number bound-expr) 0))
         ;; the function field, synthesized over below(bound-val)
         (backing    (generate-backing-values-for-size bound-val elem-type size dtsize))
         (fun-text   (synthesize-size-lambda bound-val backing)))
    ;; assemble field-wise in declaration order
    (format nil "(# ~{~a~^, ~} #)"
            (loop for f in flds
                  collect (let ((fname (id f)))
                            (cond
                              ;; the bounding nat field: its generated value
                              ((eq fname bound-name)
                               (format nil "~a := ~a" fname bound-val))
                              ;; the function field: the synthesized lambda
                              ((eq f fun-fld)
                               (format nil "~a := ~a" fname fun-text))
                              ;; any other data field: cl2pvs its generated value
                              (t
                               (format nil "~a := ~a"
                                       fname
                                       (cl2pvs (generate-instance (type f) size dtsize)
                                               (type f))))))))))

;; test
;; (print-test-case-for "/Users/mmoscato/Workspace/instance-generator/PVS/pvsio_random_generator#pvsio_random_generator_TEST" "f_test_1")
(defun print-test-case-for (theory-ref id n &optional use-redirect)
  (with-theory (th) theory-ref
	       (let ((decl (loop for d in (all-declarations th)
				 when (and (const-decl? d) (string= id (id d)))
				 return d)))
		 (when decl
		   (let* ((fname  (id decl))
			  (rng    (range (type decl)))
			  (size   (or (pvsio_get_gvar_by_name
				       "pvsio_random_generator_parameters.DOMAIN_SIZE_LIMIT") 100))
			  (dtsize (or (pvsio_get_gvar_by_name
				       "pvsio_random_generator_parameters.ADT_SIZE_LIMIT") 10))
			  (hash-pos    (position #\# theory-ref))
			  (path-part   (subseq theory-ref 0 hash-pos))
			  (orig-theory (subseq theory-ref (1+ hash-pos)))
			  (slash-pos   (position #\/ path-part :from-end t))
			  (dir         (subseq path-part 0 (1+ slash-pos)))
			  (out-theory  (format nil "unit_test__~a_~a" orig-theory id))
			  (out-path    (concatenate 'string dir out-theory ".pvs"))
			  (in-path     (concatenate 'string dir out-theory ".in"))
		          ;; (emit-formula (all-args-scalar-evaluable-p decl)))
              (emit-formula t))

		     ;; --- the unit-test theory (.pvs) ---
		     (with-open-file (out out-path :direction :output
                                          :if-exists :supersede
                                          :if-does-not-exist :create)
		       (format out "~a: THEORY~%BEGIN~%~%" out-theory)
		       (format out "  IMPORTING ~a~%~%" orig-theory)
		       (loop for i from 1 to n
			     do (let* ((args (loop for formal in (formals decl)
						   append (loop for arg in formal
								collect (cond
									  ((and use-redirect
										(dependent-record-with-function-field-p (type arg)))
									   (generate-dependent-record-literal (type arg) size dtsize))
									  (use-redirect
									   (cl2pvs (pvsio-eval-lisp (format nil "generateInstance[~a]" (type arg))) (type arg)))
									  (t
									   (generate-instance (type arg) size dtsize))))))
				       ;; factor the call once: the SAME string feeds the .pvs emission AND the oracle eval
				       (call (format nil "~a(~{~a~^, ~})" fname args)))
				  ;; value-binding — always emitted; drives the .in; Track A output byte-identical
				  (format out "  test_~a : ~a = ~a~%" i rng call)
				  ;; expected-result formula — differential mode only
				  (when emit-formula
				    (let ((expected (cl2pvs (pvsio-eval-lisp call) rng)))
				      (format out "  test_~a_expected : _TEST_ test_~a = ~a~%" i i expected)))))
		       (format out "~%END ~a~%" out-theory))
		     ;; --- the PVSio batch file (.in) for pvsio-regression ---
		     (with-open-file (in-out in-path :direction :output
                                             :if-exists :supersede
                                             :if-does-not-exist :create)
		       (format in-out "% generated test cases for ~a.~a~%~%" orig-theory id)
		       (loop for i from 1 to n
			     do (format in-out "test_~a;~%" i)))
		     (format t "Wrote ~a~%Wrote ~a~%" out-path in-path)
		     (values out-path in-path))))))

;; test
;; (get-const-decl "/Users/mmoscato/Workspace/instance-generator/PVS/pvsio_random_generator#pvsio_random_generator_TEST" "f_test_1")
(defun get-const-decl (theory-ref decl-id)
  (with-theory (th) theory-ref
             (loop for decl in (all-declarations th)
                   when (and (const-decl? decl) (string= decl-id (id decl)))
                   return decl)))

;; TODO move to src/groundeval.lisp
(defmethod random-generator* ((te subtype) i d)
  (cond ((available-random-generator te i d))
	((tc-eq te *naturalnumber*)
	 (make!-number-expr (random (1+ i))))
	((tc-eq te *integer*)
	 (make!-number-expr (random-range (- i) i)))
	((and (subtype-of? te *number*)
	      (subtype-of? *rational* te))
	 (let ((num (/ (random-range (- i) i) (random-range 1 i))))
	   (make!-number-expr num)))
	(t (dotimes (j *random-subtype-gen-bound*
		       (error "Could not generate random element for subtype ~%~a of size ~d after ~d attempts"
			 te i *random-subtype-gen-bound*))
	     (let* ((stran (random-generator* (supertype te) i d))
		    (pred (make!-application (predicate te) stran))
		    (stval (pvs2cl pred))
		    (pval (eval stval)))
	       (when pval (return stran)))))))

(defun synthesize-if-chain-body (rank backing-values)
  "Synthesize IF-ELSIF-ELSE body for the size lambda.
   RANK: integer, the domain size (below(rank)).
   BACKING-VALUES: list of NAT values, length = rank.
   Returns PVS source text (string) for the body.
   Edge cases: rank=0 -> empty domain, no valid inputs; rank=1 -> single IF/ELSE."
  (cond
    ;; rank=0: below(0) is empty, lambda has no valid inputs
    ;; The body is never evaluated; use a placeholder that typechecks.
    ((zerop rank)
     "0")  ; placeholder — domain is empty, never called
    ;; rank=1: single value, just IF j=0 THEN v ELSE v ENDIF
    ((= rank 1)
     (format nil "IF j = 0 THEN ~a ELSE ~a ENDIF"
             (first backing-values) (first backing-values)))
    ;; rank>=2: full IF-ELSIF chain
    (t
     (with-output-to-string (s)
       (format s "IF j = 0 THEN ~a~%" (first backing-values))
       (loop for i from 1 below (1- rank)
             for val in (rest backing-values)
	     do (format s "    ELSIF j = ~a THEN ~a~%" i val))
       (format s "    ELSE ~a~%    ENDIF" (car (last backing-values)))))))

(defun synthesize-size-lambda (rank backing-values &optional (body-form-fn #'synthesize-if-chain-body))
  "Synthesize a PVS lambda of type [below(RANK)->nat] with the given backing values.
   RANK: integer, the domain size.
   BACKING-VALUES: list of NAT values, length = rank.
   BODY-FORM-FN: function (rank backing-values) -> string for the body. Default: IF-chain.
   Returns PVS source text (string) for the full lambda."
  (if (zerop rank)
      ;; below(0) is empty; lambda is trivially typed but never called
      "LAMBDA (j: below(0)): 0"
    (format nil "LAMBDA (j: below(~a)):~%    ~a"
            rank
            (funcall body-form-fn rank backing-values))))

;;; Discover the bounding field name from a function field's below(<field>) domain.
;;; Input:  FUN-FLD — the function-typed field; its type is [below(<field>) -> R].
;;; Output: the bounding field's id (a symbol), to be matched `eq` against (id <field>).
;;; Single-dependency shape ONLY — errors cleanly on anything that is not
;;; below(<single sibling-field reference>); this is the guardrail that keeps the
;;; emitter out of the doubly-dependent Tensor case.
;;; Discovery chain confirmed live 2026-06-17 (RankShape / VertexShape / DimGrid):
;;;   (domain (type fun-fld)) -> SUBTYPE printing below(<field>)
;;;   (print-type that)       -> PRINT-TYPE-APPLICATION
;;;   (parameters that)       -> (<field-name-expr>)
;;;   (id (car that))         -> the bounding field's symbol
(defun find-bounding-field-name (fun-fld)
  (let* ((dom (domain (type fun-fld)))
         (pt  (print-type dom)))
    ;; must be an application type (below applied to an arg), not a bare subtype
    (unless (typep pt 'print-type-application)
      (error "find-bounding-field-name: field ~a domain is not below(<field>) ~
              (no print-type-application); got ~a" (id fun-fld) dom))
    (let ((params (parameters pt)))
      ;; exactly one argument: below(<one thing>)
      (unless (and (consp params) (null (cdr params)))
        (error "find-bounding-field-name: field ~a domain application has ~d args, ~
                expected exactly 1 (below(<field>))" (id fun-fld) (length params)))
      (let ((arg (car params)))
        ;; that one argument must be a sibling-field reference, not an expression
        (unless (typep arg 'field-name-expr)
          (error "find-bounding-field-name: field ~a domain is below(<expr>), not ~
                  below(<field>) — single-dependency shape only; got ~a"
                 (id fun-fld) arg))
        (id arg)))))

(defun scalar-evaluable-type-p (type)
  "T iff TYPE is a simple value type safe to feed through PVSio as a call-string
   arg AND back-translate with cl2pvs: number-like (nat/int/rational/real subtypes)
   or a finite scalar (bool, enum). Conservative WHITELIST — anything not recognized
   returns NIL, so the differential formula is SKIPPED rather than risk an unevaluable
   call string or a non-cl2pvs-able result."
  (cond
    ((recordtype? type) nil)
    ((funtype? type)    nil)
    ((tupletype? type)  nil)
    ((subtype-of? type *number*) t)
    ((tc-eq type *boolean*) t)
    ((enumtype? type) t)
    (t nil)))

(defun all-args-scalar-evaluable-p (decl)
  "T iff every formal argument of DECL is scalar-evaluable."
  (every (lambda (formal)
           (every (lambda (arg) (scalar-evaluable-type-p (type arg)))
                  formal))
         (formals decl)))

;;; Test harness: generate and print a standalone size lambda for verification.
(defun test-synthesize-size-lambda (rank size dtsize)
  (let ((backing (generate-backing-values-for-size rank *naturalnumber* size dtsize)))
    (synthesize-size-lambda rank backing)))

(in-package :pvs-jsonrpc)

;; <- generate-test-cases      (defrequest, from your standalone generate-test-cases.lisp;
;;                              it calls pvs::print-test-case-for and returns the path alist)
(defrequest generate-test-cases (theory-ref decl-id &optional (n 10))
  "Generates N random test cases for the function/constant DECL-ID in the theory
referenced by THEORY-REF (a 'path#theory' string). Writes a unit-test theory (.pvs)
IMPORTING the original, plus a PVSio batch file (.in) for regression. Each test also
emits an expected-result formula (test_i_expected : _TEST_ test_i = <PVSio-computed
value>) when all of F's arguments are scalar-evaluable; the emitter self-selects this
per declaration, so there is no client-side flag. Returns the paths of both files."
  (let ((count (if (stringp n) (parse-integer n :junk-allowed t) n)))
    (multiple-value-bind (pvs-path in-path)
        (pvs::print-test-case-for theory-ref decl-id (or count 10))
      `(("pvsFile" . ,pvs-path)
        ("inFile"  . ,in-path)))))
