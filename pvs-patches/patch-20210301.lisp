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
