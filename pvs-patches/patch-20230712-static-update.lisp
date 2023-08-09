(defmethod contains-possible-closure? ((texpr recordtype))
  ;; CM - Strings are internally represented as records, but they are updatable
  (and (not (tc-eq texpr *string-type*))
       (contains-possible-closure? (mapcar #'type (fields texpr)))))
