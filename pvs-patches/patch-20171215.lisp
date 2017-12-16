(defmethod make-subst-mod-params-pred-binding (modinst (formal formal-subtype-decl)
						       actual bindings)
  (let* ((subtype (type-value actual))
	 (sformal (when (typep (type-expr formal) 'type-name)
		    (cdr (assoc (declaration (type-expr formal)) bindings)))))
    (if sformal
	(let ((spred (subtype-pred subtype (type-value sformal))))
	  (when spred
	    (cons (find-if #'(lambda (c) (typep c 'const-decl))
		    (generated formal))
		  (make-instance 'actual
		    :expr spred))))
	(let* ((fstype (subst-mod-params*
			(supertype (type-value formal))
			modinst bindings))
	       (spred (when (compatible? subtype fstype)
			(subtype-pred subtype fstype))))
	  (when spred
	    (cons (find-if #'(lambda (c) (typep c 'const-decl))
		    (generated formal))
		  (make-instance 'actual
		    :expr spred)))))))
