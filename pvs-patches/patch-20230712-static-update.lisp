;; Strings are internally represented as records, but they are updatable

(defmethod contains-possible-closure? ((texpr recordtype))
  (let ((prtype (print-type texpr)))
    (if (and (type-name? prtype) (equal (id prtype) 'string))
	(contains-possible-closure? prtype)
      (contains-possible-closure? (mapcar #'type (fields texpr))))))
