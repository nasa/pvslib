;;-*-Lisp-*-

(defhelper simplify-nth1__ (nth-expr fnums)
  (let ((pvs-list   (args1 nth-expr))
	(index      (number (args2 nth-expr)))
	(sindex     (1+ index))
	(pplist     (pvslist2list pvs-list))
	(pvs-elem   (nth index (car pplist)))
	(case-str   (format nil "NOT (~a = ~a)" nth-expr pvs-elem))
	(length-str (format nil "NOT (~a < length(~a))"
			    index  pvs-list)))
    (when pvs-elem
      (branch (case length-str)
	      ((then (hide-all-but 1)
		     (for@ sindex (expand "length"))
		     (assert))
	       (branch (case case-str)
		       ((then (hide-all-but 1)
			      (for@ sindex (expand "nth")))
			(then (hide -2)(replaces -1 fnums))))))))
  "Internal strategy"
  "")

(defstep simplify-nth (&optional (fnums *) (onums 1))
  (if-match
   "nth(%a,%b{number})"
   (mapstep (lambda (x)`(simplify-nth1__$ ,x ,fnums)) ($*j)) 
   :fnums fnums
   :onums onums)
  "[structures] Simplifies expressions of the form nth((:a0,...,an:),k) to ak when k <=n, in FNUMS.
If nth appears several times in FNUMS, ONUMS specifies the  occurrences to be simplfied. 
By default, ONUMS is 1 (first occurrence). To simplify all occurrences, ONUMS could be set to *"
  "Simplifying nth")
