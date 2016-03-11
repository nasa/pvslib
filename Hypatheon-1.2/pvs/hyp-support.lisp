
;; Copyright (c) 2012 United States Government as represented by
;; the National Aeronautics and Space Administration.  No copyright
;; is claimed in the United States under Title 17, U.S.Code. All Other
;; Rights Reserved.
;;
;; The software in this package has been released as open-source software
;; under the NASA Open Source Agreement.  See the accompanying file
;; NASA_Open_Source_Agreement.pdf for a full description of the terms.


;;;;;;;;;;;;;;;;;;;;;;;;;;; -*- Mode: Lisp -*- ;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;; hyp-support.lisp -- Hypatheon support strategies for PVS prover 
;; Author          : Ben Di Vito <b.divito@nasa.gov>
;; Created On      : 8 Oct 2002
;; Last Modified By: 
;; Last Modified On: Ben Di Vito
;; Last Modified On: 27 Nov 2012
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;

;; A prover "strategy" to initiate Hypatheon database searches is defined here.
;; The strategy does not change the proof state (it's equivalent to (skip))
;; and thus will never be stored as part of the proof.  We don't want a
;; search to be initiated when a proof is replayed so this property needs
;; to be maintained.  The strategy can be called in three ways.  If supplied
;; string arguments (detected by the first being a string), they are
;; passed along in the search request.  If supplied formula numbers/symbols,
;; the formulas will be probed to find all the function names, which then
;; are submitted for the search.  If supplied Manip extended expressions,
;; the stipulated subexpressions will be scanned for function names.
;; The search request is handled by the Hypatheon client process.
;; Requires the Manip package.

(defstep query-append (fn1 &rest fns)
  (let ((fnames (if (stringp fn1)
		    (cons fn1 fns)
		    (mapcar #'(lambda (obj) (format nil "~A" obj))
			    (mapappend #'(lambda (ee)
					   (mapcar #'ee-obj-or-string
						   (eval-ext-expr
						    `(! ,ee *- 0))))
				       (cons fn1 fns)))))
	(distinct (remove-duplicates fnames :test #'equal :from-end t))
	(fn-msg (format nil "Hypatheon searching for functions: ~{~A ~}"
			distinct))
	(dummy (apply #'client-eval "enter_next_fnames" distinct)))
;;;	(dummy (apply #'client-eval "search_for_function_names" distinct)))
    (skip-msg fn-msg t) )
  "Collects function names and appends them to Hypatheon Client's current
query string.  The strategy can be called in three ways.
If supplied string arguments, they are used directly in the search request.
If supplied formula numbers/symbols, the formulas will be probed to find
all the function names, which then are submitted for search.
If supplied Manip extended expressions, the specified subexpressions
will be scanned for function names."
  "~%Appending function names to Hypatheon Client's query")


;; =========== Interface to client process and Emacs support ============

;; Evaluate string in client process.  Send to client subprocess by way of
;; Emacs.  Keep arguments simple for now (strings and numbers).

(defun client-eval (cmd &rest args)
  (pvs-emacs-eval (format nil "(client-eval ~S~{ ~S~})" cmd args)))

;; Check whether theories are on import chain.  Return list of 0/1 values.

(defun theories-on-import-chain (thy-list)
  (mapcar #'(lambda (th) (or (and (get-theory th) 1) 0)) thy-list))

; Same function, but read names from temp data file.

(defun import-chain-theories (path-name)
  (let* ((tmp-file (open path-name))
	 (thy-list (read tmp-file))
	 (result (mapcar #'(lambda (th) (or (and (get-theory th) 1) 0))
			 thy-list)))
    (close tmp-file)
    (let* ((return-file (open path-name :direction :output
					:if-exists :supersede)))
      (format return-file "~A" result)
      (close return-file)))
  nil)


;; The prover functions before-prove* and after-prove* set and reset
;; the Elisp variable pvs-in-checker. We redefine (wrap) those
;; functions here so they will notify the client of proving status
;; changes.  This code should be evaluated only once, when Hypatheon
;; is first loaded.

(unless (boundp '*hyp-lisp-support-loaded*)
  (let ((before-fn #'before-prove*)
	(after-fn  #'after-prove*))
    (defun before-prove* ()
      (funcall before-fn)
      (client-eval "pvs_in_checker_status" "1"))
    (defun after-prove* ()
      (funcall after-fn)
      (client-eval "pvs_in_checker_status" "0"))
    (defvar *hyp-lisp-support-loaded* t)
    ))

