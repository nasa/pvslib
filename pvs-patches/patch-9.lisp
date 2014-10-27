(in-package :pvs)

(defun merge-subgoals (subgoals)
  (make!-conjunction*
   (mapcar #'(lambda (subgoal)
	       (let ((antes (mapcar #'(lambda (x)
					(negate (formula x)))
			      (neg-s-forms subgoal)))
		     (succs (mapcar #'formula (pos-s-forms subgoal))))
		 (if (null antes)
		     (make!-disjunction* succs)
		     (if (null succs)
			 (negate (make!-conjunction* antes))
			 (make!-implication
			  (make!-conjunction* antes)
			  (make!-disjunction* succs))))))
     (reverse subgoals))))
