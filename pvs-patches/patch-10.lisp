(in-package :pvs)

(defun split-rewrite* (form vars dir)
  (cond ((or (equation? form)(iff? form))
	 ;;checks if rhs freevars are in given + lhs freevars.
	 (let ((lhs (if (string-equal dir 'rl)(args2 form)(args1 form)))
	       (rhs (if (string-equal dir 'rl)(args1 form)(args2 form))))
	   (if
	     (subsetp (freevars rhs)
		      (append vars
			      (freevars lhs))
		      :test #'same-declaration);;NSH(11.2.94)
	     (values lhs rhs nil)
	     (values form *true* nil))))
	((implication? form)
	 (multiple-value-bind (lhs rhs hyp)
	     (split-rewrite* (args2 form) vars dir)
	   (values lhs rhs
		   (if (null hyp) (args1 form)
		       (make-conjunction (list (args1 form) hyp))))))
	((negation? form)
	 (values (args1 form) *false* nil))
	(t (values form *true* nil))))
