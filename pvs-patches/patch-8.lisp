(defmethod pvs-sxhash* ((e1 rational-expr) bindings)
   (declare (ignore bindings))
   (with-slots ((n1 number)) e1
     (sxhash n1)))

(defmethod translate-to-prove :around ((obj name-expr))
   (if (and (free-variables obj)(or *bound-variables* *bindings*))
       (call-next-method)
       (let ((hashed-value (gethash obj *translate-to-prove-hash*)))
     (or hashed-value
         (let ((result (call-next-method)))
           (setf (gethash obj *translate-to-prove-hash*)
             result)
           result)))))

(defmethod translate-to-prove :around ((obj binding-expr))
   (if (and (free-variables obj)(or *bound-variables* *bindings*))
       (call-next-method)
       (let ((hashed-value
          (gethash obj *translate-to-prove-hash*)))
     (or hashed-value
         (let ((result (call-next-method)))
           (setf (gethash obj *translate-to-prove-hash*)
             result)
           result)))))

