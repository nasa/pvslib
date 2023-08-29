;; There was a off-by-one error in the nondestructive update macro.

(defmacro nd-rec-tup-update (rec fieldnum newval)
  `(let ((val ,newval)
    (newrec  (copy-seq ,rec)))
    (setf (svref newrec ,fieldnum) val);;no need to gentemp val and rec
    newrec))                           ;;since fieldnum is a fixed number

(defmethod pvs2cl-update-nd-type* ((type recordtype) expr arg1 restargs
                   assign-expr bindings livevars)
  (let* ((id (id (car arg1)))
     (fields  (sort-fields (fields type)))
     (field-num (position  id fields :test #'(lambda (x y) (eq x (id y)))))
     (cl-expr-var (gentemp "E"))     
     (new-expr `(svref ,cl-expr-var ,field-num))     
     (field-type (type (find id fields :key #'id) ))
      (dep-fields (sort-fields (fields type) t));;dependent sort     
     (new-bindings (pvs2cl-add-dep-field-bindings  dep-fields fields id
                          cl-expr-var bindings))
     (newval (pvs2cl-update-nd-type field-type new-expr
                    restargs assign-expr new-bindings
                    livevars)))
    `(let ((,cl-expr-var ,expr))
       (nd-rec-tup-update ,expr ,field-num ,newval))))

(defmethod pvs2cl-update-nd-type* ((type tupletype)  expr arg1 restargs
                   assign-expr bindings livevars)
  (let* ((num (number (if (consp arg1) (car arg1) arg1)))
     (new-expr `(svref ,expr ,(1- num)))
     (pos (1- num))
     (tupsel-type (nth pos (types type)))
     (newval (pvs2cl-update-nd-type tupsel-type new-expr
                    restargs assign-expr bindings
                    livevars)))
    `(nd-rec-tup-update ,expr ,pos ,newval)))

;; Return module when expr is a PVSio global variable, i.e., of type stdprog.Global or stdglobal.Global
(defun pvsio-global-variable (expr)
  (let* ((decl       (declaration expr))
	 (decltype   (when decl (declared-type decl))))
    (and (type-name? decltype)
	 (eq '|Global| (id decltype))
	 (let* ((resolution (when decltype (car (resolutions decltype))))
		(mod        (when resolution (module-instance resolution))))
	   (when (and mod (member (id mod) '(|stdprog| |stdglobal|)))
	     mod)))))

(defun undefined (expr &optional message)
  "Creates and compiles a new function, returning the name.  If the expr is
a const-decl, of type 'Global', creates an attachment instance (part of
PVSio).  Otherwise creates an 'undefined' function, which invokes an error
if called."
  (let* ((th       (string (if (declaration? expr)
			       (id (module expr))
			     (id (current-theory)))))
	 (nm       (when (const-decl? expr) (string (id expr))))
	 (nargs    (when nm (arity expr)))
	 (mod      (and nm (= nargs 0) (pvsio-global-variable expr))))
    (if mod
	(let* ((fname (gentemp "global"))
	       (act   (actuals mod))
	       (doc (format nil "Global mutable variable ~a of type ~a" 
			    nm (car act)))
	       (arg (if (eq '|stdprog| (id mod))
			`(pvsio_new_gvar ,nm)
		      `(pvsio_ref_gvar ,(pvs2cl (expr (cadr act))) ,nm)))
	       (fbody `(progn 
			 (defparameter ,fname ,arg)
			 (defattach-th-nm ,th ,(id expr) () ,doc ,fname))))
	  (eval fbody)
	  (makesym "pvsio_~a_~a_~a" th nm nargs))
      (let* ((fname (gentemp "undefined"))
	     (msg-fmt
	      (or message
		  "Hit uninterpreted term ~a during evaluation (undefined)"))
	     (fbody (if (and nargs (> nargs 0))
			`(defun ,fname (&rest x)
			   (declare (ignore x))
			   (uninterpreted-fun ,expr ,msg-fmt))
		      `(defun ,fname (&rest x)
			 (declare (ignore x))
			 (uninterpreted ,expr ,msg-fmt)))))
	(eval fbody)
	(compile fname)
	fname))))
