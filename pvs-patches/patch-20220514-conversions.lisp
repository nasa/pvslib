(in-package :pvs)

;; Patch for conversions that have multiple instances

(defmethod typecheck* ((decl conversion-decl) expected kind arguments)
  (declare (ignore expected kind arguments))
  (unless (typechecked? decl)
    (typecheck* (expr decl) nil nil nil)
    (resolve-conversion-expr (expr decl)))
  ;;(set-type (expr decl) (type (expr decl)))
  (check-conversion-applicability decl)
  (setf (k-combinator? decl) (k-combinator? (expr decl)))
  (push decl (conversions *current-context*))
  decl)

(defmethod resolve-conversion-expr ((ex name-expr))
  ;; ex has been typechecked, but may have ambiguities
  (let* ((reses (resolutions ex))
	 (valid-reses (remove-if #'has-type-vars? reses :key #'type)))
    (unless valid-reses
      (type-error ex
	"Cannot determine the type associated with ~a:~%  Please provide more ~
           information, i.e., actual parameters or a coercion." ex))
    (if (singleton? valid-reses)
	(setf (resolutions ex) valid-reses
	      (type ex) (type (car valid-reses)))
	(let ((gres (find-if-not #'fully-instantiated? valid-reses)))
	  ;; No need to keep any but the generic form
	  (when gres
	    (setf (resolutions ex) (list gres)
		  (type ex) (type gres)))))))

(defmethod resolve-conversion-expr ((ex expr))
  ;; ex has been typechecked, but may have ambiguities
  (when (and (expr? ex)
	     (not (type ex)))
    (let ((valid-types (remove-if #'has-type-vars? (ptypes ex))))
      (unless valid-types
	(type-error (expr decl)
	  "Cannot determine the type associated with ~a:~%  Please provide more ~
           information, i.e., actual parameters or a coercion." (expr decl)))
      (if (singleton? valid-types)
	  (setf (type ex) (car valid-types))
	  (let ((gtype (find-if-not #'fully-instantiated? valid-types)))
	    (when gtype
	      (setf (type ex) gtype)))))))

(defmethod typecheck* ((decl conversionminus-decl) expected kind arguments)
  (declare (ignore expected kind arguments))
  (unless (typechecked? decl)
    (typecheck* (expr decl) nil nil nil)
    (resolve-conversion-expr (expr decl)))
  (disable-conversion decl)
  decl)

(defmethod generate-xref ((d conversion-decl))
  (when (type (expr d))
    (generate-xref (expr d))))

