(in-package :pvs)

(defun determine-decision-procedure (decl)
  (or (if (or *force-dp*
	      *recursive-prove-decl-call*
	      (string-equal *default-decision-procedure* (decision-procedure-used decl))
	      (and *proving-tcc* *use-default-dp?*)
	      (and (not *proving-tcc*)
		   (pvs-yes-or-no-p
		    "~%This proof was originally done with the ~a ~
                   decision procedure,~%which is not the default.~%~
                   Do you want to use the default ~a instead? "
		    (decision-procedure-used decl)
		    *default-decision-procedure*)))
	  (car (member *default-decision-procedure* *decision-procedures*
		       :test #'string-equal))
	  (car (member (decision-procedure-used decl) *decision-procedures*
		       :test #'string-equal)))
      (progn (format t
		 "Can't find the ~a decision procedure, using shostak instead"
	       (decision-procedure-used decl))
	     'shostak)))
