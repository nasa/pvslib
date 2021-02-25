;; from groundeval/cl2pvs.lisp
(defmethod cl2pvs* (sexpr (type recordtype) context)
  (cond
   ((string-type? type)
    (cl2pvs*-string sexpr))
   ((finseq-type? type)
    (let ((len (elt sexpr 0))
	  (fn (elt sexpr 1))) ;; (format t "~%cl2pvs*(recordtype)")
      (mk-application (mk-name-expr '|list2finseq|)
		      (cl2pvs*-list
		       (loop for x from 0 to (- len 1) collect (pvs-funcall fn x))
		       (finseq-type? type)
		       context))))
   (t ;;(format t "~%wrong branch")
    (mk-record-expr
     (loop for fld in (sorted-fields type)
	   as i from 0
	   collect
	   (mk-assignment 'uni
			  (list (list (mk-name-expr (id fld))))
			  (cl2pvs* (svref sexpr i) (type fld) context)))))))
