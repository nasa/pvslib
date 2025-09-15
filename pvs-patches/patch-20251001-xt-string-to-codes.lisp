;;
;; BEGIN parse.lisp
;;

(defun xt-string-to-codes (string pos len place codes)
  (if (>= pos len)
      (nreverse codes)
      (multiple-value-bind (code npos bkslash?)
	  (next-string-code string pos len place)
	(let* ((strow (starting-row place))
	       (stcol (starting-col place))
	       (nplace (vector strow (+ stcol pos) strow (+ stcol npos)))
	       (acodes (acons code nplace codes))
	       (ncodes (if bkslash? (acons code nplace acodes) acodes)))
	  (xt-string-to-codes string npos len place ncodes)))))

(defun next-string-code (string pos len place)
  "Returns the next char and new string position. If the char is a
backslash, interpret the usual \n, \', etc. as well as \x (hex), \0 (octal),
\# (decimal). If not followed by one of these, it's returned as a backslash."
  (let ((char (char string pos)))
    (cond ((or *tex-mode*
	       (char/= char #\\))
	   (values (char-code char) (1+ pos)))
	  ;; have a backslash below
	  ((>= (1+ pos) len)
	   (let ((cplace (vector (svref place 0) (+ (svref place 1) pos)
				 (svref place 0) (+ (svref place 1) pos))))
	     (parse-error cplace "String ends with a '\\'")))
	  (t (let ((echar (char string (1+ pos))))
	       (case echar
		 (#\a (values (char-code #-gcl #\Bell #+gcl #\^G) (+ pos 2)))
		 (#\b (values (char-code #\Backspace) (+ pos 2)))
		 (#\f (values (char-code #\Page) (+ pos 2)))
		 (#\n (values (char-code #\Newline) (+ pos 2)))
		 (#\r (values (char-code #\Return) (+ pos 2)))
		 (#\t (values (char-code #\Tab) (+ pos 2)))
		 (#\v (values (char-code #-gcl #\VT #+gcl #\^K) (+ pos 2)))
		 (#\' (values (char-code #\') (+ pos 2)))
		 (#\" (values (char-code #\") (+ pos 2)))
		 (#\? (values (char-code #\?) (+ pos 2)))
		 (#\\ (values (char-code #\\) (+ pos 2) t))
		 ((#\x #\X)
		  (if (digit-char-p (char string (+ pos 2)) 16)
		      (parse-integer string :radix 16 :start (+ pos 2)
				     :end (min (+ pos 4) len) :junk-allowed t)
		      (let ((cplace (vector (svref place 0)
					    (+ (svref place 1) pos 2)
					    (svref place 0)
					    (+ (svref place 1) pos 2))))
			(parse-error cplace
			  "Illegal character after '\\X': must be a hex digit"
			  ))))
		 (#\0
		  (if (digit-char-p (char string (+ pos 2)) 8)
		      (multiple-value-bind (chcode npos)
			  (parse-integer string :radix 8 :start (+ pos 2)
					 :end (min (+ pos 5) len)
					 :junk-allowed t)
			(if (< chcode 256)
			    (values chcode npos)
			    (let ((cplace (vector (svref place 0)
						  (+ (svref place 1) pos 2)
						  (svref place 0)
						  (+ (svref place 1) pos 2))))
			      (parse-error cplace
				"Octal code must be less than 0400"))))
		      (let ((cplace (vector (svref place 0)
					    (+ (svref place 1) pos 2)
					    (svref place 0)
					    (+ (svref place 1) pos 2))))
			(parse-error cplace
			  "Illegal character after '\\0': must be a octal digit"
			  ))))
		 ((digit-char-p echar)
		  (multiple-value-bind (chcode npos)
		      (parse-integer string :radix 10 :start (1+ pos)
				     :end (min (+ pos 4) len)
				     :junk-allowed t)
		    (if (< chcode 256)
			(values chcode npos)
			(let ((cplace (vector (svref place 0)
					      (+ (svref place 1) pos 1)
					      (svref place 0)
					      (+ (svref place 1) pos 1))))
			  (parse-error cplace
			    "Decimal code must be less than 256")))))
		 (t (values (char-code char) (1+ pos)))))))))

;;
;; END parse.lisp
;;