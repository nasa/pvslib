(defun is-prime (n)
  (declare (fixnum n))
  (cond ((< n 4) (or (= n 2) (= n 3)))
	((or (zerop (mod n 2)) (zerop (mod n 3))) nil)
	(t (loop for a of-type fixnum  from 5 to (floor (sqrt n)) by 6
		 never (or (zerop (mod n a)) (zerop (mod n (+ a 2))))))))

(defun prime-factorization (n)
  (declare (fixnum n))
  (if (or (is-prime n) (= n 1)) (list n)
    (loop for a from 2 to (floor n 2)
	  when (zerop (mod n a)) do
	  (return (append (prime-factorization a) (prime-factorization (/ n a)))))))

;; Generate n tests for PVSioChecker
(defun generate-prime-factorization-tests (n)
  (with-open-file
   (file "prime-factorization-tests.txt" :direction :output :if-exists :supersede)
   (format file "% File to be checked by PVSioChecker using primes.lisp vs. primes.pvs
% Every record has the form:
% * Input line in PVS syntax, e.g., natural number
% * Output line in PVS syntax, e.g., list
% PVS comments and empty lines are ignored
")
   (dotimes (i n)
     (let* ((r (1+ (random 100000)))
	    (l (prime-factorization r)))
       (format file "% Record ~a~%~a~%(: ~{~a~^, ~} :)~%" i r l)))))
