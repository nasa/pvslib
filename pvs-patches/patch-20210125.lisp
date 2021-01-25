;; There was a off-by-one error in the nondestructive update macro.  The
;; first expression uses the destructive version of one_rule, whereas the
;; second one was using the nondestructive one.  Add the following to
;; your patch, and it should fix the problem. [NS]

(defmacro nd-rec-tup-update (rec fieldnum newval)
  `(let ((val ,newval)
    (newrec  (copy-seq ,rec)))
    (setf (svref newrec (1- ,fieldnum)) val)
    newrec))
