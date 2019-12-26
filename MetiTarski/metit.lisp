;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; -*- Mode: Lisp -*- ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; metit.lisp -- 
;; Author          : W. Denman
;; Created On      : Mar. 27, 2010
;; Last Modified By: C. Munoz
;; Last Modified On: Jun. 1, 2013
;; Update Count    : 
;; Status          : Beta stable
;; Thanks to Viorel Preoteasaa <viorel.preoteasa@abo.fi> for comments and bug fixes.
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; --------------------------------------------------------------------
;; PVS
;; Copyright (C) 2006, SRI International.  All Rights Reserved.

;; This program is free software; you can redistribute it and/or
;; modify it under the terms of the GNU General Public License
;; as published by the Free Software Foundation; either version 2
;; of the License, or (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program; if not, write to the Free Software
;; Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.
;; --------------------------------------------------------------------

(in-package :pvs)

(defparameter *z3-bin* nil)      ;; z3's executable
(defparameter *metit-bin* nil)   ;; MetiTarski's executable
(defparameter *metit-lib* nil)   ;; MetiTarski's library
(defparameter *metit-tptp* nil)  ;; MetiTarksi's tptp directory
(defparameter *pvs-metit* nil)   ;; PVS' MetiTarski directory
(defparameter *metit-archs* nil) ;; List of supported architectures
(defparameter *metit-arch* nil)  ;; Host architecture
(defparameter *metit-gsubs* nil) ;; Global variable substitutions. Assoc list of (pvs_id.metit_id)

(defvar *metit-id-counter*)  

(newcounter *metit-id-counter*)

(defparameter *metit-interpreted-names* 
  '((IMPLIES (|booleans| . =>))
    (=> (|booleans| . =>))
    (AND (|booleans| . &))
    (& (|booleans| . &))
    (OR (|booleans| . \|)) 
    (NOT (|booleans| . ~))
    (IFF (|booleans| . <=>))
    (<=> (|booleans| . <=>))
    (= (|equalities| . =))
    (/= (|notequal| . /=))
    (< (|reals| . <))
    (<= (|reals| . <=))
    (> (|reals| . >))
    (>= (|reals| . >=))
    (+  (|number_fields| . +))
    (- (|number_fields| . -))
    (* (|number_fields| .  *))
    (/ (|number_fields| . /))
    (^ (|exponentiation| . ^))
    (sin (|sincos_def| . sin))
    (cos (|sincos_def| . cos))
    (tan (|trig_basic| . tan) (|sincos_def| . tan))
    (pi (|pi_def| . pi) (|atan| . pi))
    (asin (|asin| . arcsin))
    (acos (|acos| . arccos))
    (atan (|atan| . arctan))
    (sqrt (|sqrt| . sqrt))
    (sq (|sq| . sq))
    (e  (|ln_exp| . "exp(1)"))
    (ln (|ln_exp| . ln))
    (exp (|ln_exp| . exp))
    (sinh (|hyperbolic| . sinh))
    (cosh (|hyperbolic| . cosh))
    (tanh (|hyperbolic| . tanh))
    (abs (|real_defs| . abs))
    (\#\# (|interval| . \#\#))))

(defun init-metit (prebins arch)
  (let* ((metit-lib)
	 (which-metit (extra-system-call "which metit"))
	 (which-z3    (extra-system-call "which z3"))
	 (metit-arch  (or arch *metit-arch*))
	 (z3-bin      (or (and prebins *pvs-metit* metit-arch 
			       (format nil "~a/dist/bin/~a/z3" *pvs-metit* metit-arch))
			  (and (zerop (car which-z3)) (cdr which-z3))
			  (environment-variable "Z3_NONLIN")))
	 (metit-bin   (or (and prebins *pvs-metit* metit-arch 
			       (setq metit-lib (format 
						nil "~:[~;DY~]LD_LIBRARY_PATH=~a/dist/lib/~a" 
						(string= metit-arch "Darwin" :end1 
							 (min (length metit-arch) 6)) 
						*pvs-metit* metit-arch))
			       (format nil "~a/dist/bin/~a/metit" *pvs-metit* metit-arch))
			  (and (zerop (car which-metit)) (cdr which-metit))))
	 (metit-tptp (or (and (not arch) (environment-variable "TPTP"))
			 (format nil "~a/dist/tptp" *pvs-metit*))))
    (cond ((or (null metit-bin) (not (probe-file metit-bin)))
	   (format t "metit's executable file not found.~%"))
	  ((or (null z3-bin) (not (probe-file z3-bin)))
	   (format t "z3's executable file not found. Set environment variable Z3_NONLIN~%"))	  
	  ((not (directory-p metit-tptp))
	   (format t "metit's tptp directory not found. Set environment variable TPTP~%"))
	  (t 
	   (setq *z3-bin* z3-bin)
	   (setq *metit-lib* metit-lib)
	   (setq *metit-bin* metit-bin)
	   (setq *metit-tptp* metit-tptp)
	   (setq *metit-gsubs* nil)
	   (newcounter *metit-id-counter*)))))

(defun metit-archs ()
  (let ((pvs-metit (format nil "~aMetiTarski" (extra-pvs-nasalib))))
    (when (directory-p pvs-metit)
      (setq *pvs-metit* pvs-metit)
      (setq *metit-archs* (mapcar #'pathname-name 
				  (directory (format nil "~a/dist/bin/*-*" pvs-metit))))
      (let ((uname (extra-system-call "uname -s"))
	    (arch  (extra-system-call "arch")))
	(when (and (zerop (car uname)) (zerop (car arch)))
	  (setq *metit-arch* (car (member (format nil "~a-~a" (cdr uname) (cdr arch))
					  *metit-archs* :test #'string=))))))))

(metit-archs)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;; Input is a name-expr and a list of bindings of the form 
;; (("Y" . Y2) ("X" . X1)). The bindings are set in translate-metit-bindings
;; Since the metit-named bounded variables travel in the bindings list, when we get
;; the named variable in an expression return the cdr that 
;; holds the variable name. Otherwise we have a constant symbol (such as pi) and call 
;; metit-interpretation.
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defun merge-assoc (al)
  (when al
    (cons (caar al) (cons (cdar al) (merge-assoc (cdr al))))))

(defun translate-to-metitarski-global-variable (expr)
  (or
   (cdr (assoc expr *metit-gsubs* :test #'tc-eq))
   (let ((yname (metit-id-name "V")))
     (setq *metit-gsubs* (cons (cons expr yname) *metit-gsubs*))
     yname)))

(defmethod translate-to-metitarski* ((expr name-expr) bindings)
  (if (is-const-decl-expr expr '("pi" "e"))
      (metit-interpretation expr)
    (or (cdr (assoc (id expr) bindings))
	(translate-to-metitarski-global-variable expr))))

(defmethod translate-to-metitarski* ((expr fieldappl) bindings)
  (translate-to-metitarski-global-variable expr))

(defmethod translate-to-metitarski* ((expr projappl) bindings)
  (translate-to-metitarski-global-variable expr))

(defmethod translate-to-metitarski* ((expr decimal) bindings)
  (format nil "(~a / ~a)" (args1 expr) (args2 expr)))

(defmethod translate-to-metitarski* ((expr rational-expr) bindings)
  (if (number-expr? expr)
      (number expr)
    (let ((rat (number expr)))
      (format nil "(~a / ~a)" (numerator rat) (denominator rat)))))

(defmethod translate-to-metitarski* ((expr string-expr) bindings)
  (error "string ~a cannot be handled" expr))

;;
;; The PVS variables are converted into a MetiTarski representation (uppercase) and are
;; made distinct by appending *metit-id-counter*. This is required because a user
;; might use both cases in a specification and we need to differentiate between x and X.
;; In this case they would be converted to X1 and X2.
;;

(defun metit-id-name (id)
  (intern (format nil "~a~a" (string-upcase id) (funcall *metit-id-counter*))))

;;
;; (argument expr) return a tuple of the arguments of expr
;; (args1 expr) (args2 expr) returns the first and second parts of the expr tuple
;;

(defmethod translate-to-metitarski* ((expr application) bindings)
  (with-slots (operator argument) expr
    (if (name-expr? operator)	      
       (let* ((op-id (metit-interpretation operator)))
	 (case op-id
	   (~ (format nil "(~~ ~a)" (translate-to-metitarski* (argument expr) bindings)))
	   ((<=>)
	    (let ((arg1 (translate-to-metitarski* (args1 expr) bindings))
		  (arg2 (translate-to-metitarski* (args2 expr) bindings)))
	      (format nil "((~a => ~a) & (~a => ~a))" arg1 arg2 arg2 arg1)))
	   (^
	    (format nil "~a~a~a" (translate-to-metitarski* (args1 expr) bindings) 
		    op-id (translate-to-metitarski* (args2 expr) bindings)))
	   ((sq)
	    (format nil "~a^2" (translate-to-metitarski* (argument expr) bindings)))
	   ((sin cos tan sqrt tanh cosh sinh ln exp abs arctan)
	    (format nil "~a(~a)" op-id (translate-to-metitarski* (argument expr) bindings)))
	   (-
	    (if (unary-application? expr)
		(format nil "-~a" (translate-to-metitarski* (argument expr) bindings))
	      (format nil "(~a ~a ~a)"
		      (translate-to-metitarski* (args1 expr) bindings)
		      op-id
		      (translate-to-metitarski* (args2 expr) bindings))))
	   ((/=)
	    (format nil "(~a < ~a | ~a > ~a)"
		    (translate-to-metitarski* (args1 expr) bindings)
		    (translate-to-metitarski* (args2 expr) bindings)
		    (translate-to-metitarski* (args1 expr) bindings)
		    (translate-to-metitarski* (args2 expr) bindings)))
	   ((= < <= > >= + * / => & \|)
	    (format nil "(~a ~a ~a)"
		    (translate-to-metitarski* (args1 expr) bindings)
		    op-id
		    (translate-to-metitarski* (args2 expr) bindings)))
	   ((\#\#)
	    (format nil "(~a <= ~a & ~a <= ~a)"
		    (translate-to-metitarski* (args1 (args2 expr)) bindings)
		    (translate-to-metitarski* (args1 expr) bindings)
		    (translate-to-metitarski* (args1 expr) bindings)
		    (translate-to-metitarski* (args2 (args2 expr)) bindings)))
	   (t   (translate-to-metitarski-global-variable expr))))
      (translate-to-metitarski-global-variable expr))))

;;
;; translate-metit-bindings : Go through a list of bind declarations and create a
;; bind list with their new metit names. tc-eq ensures we only have real variables.
;;

(defun translate-metit-bindings (bind-decls bindings accum)
  (cond ((consp bind-decls)
	 (if (tc-eq (type (car bind-decls)) *real*)
	     (let ((yname (metit-id-name (id (car bind-decls)))))
	       (translate-metit-bindings (cdr bind-decls) ;;making bindings here
					 (cons (cons (id (car bind-decls))
						     yname)
					       bindings)
					 (cons yname accum)))
	   (error "type of ~a must be real." (id (car bind-decls)))))
	(t (values bindings (nreverse accum)))))

;;
;; metit-interpretation : Translate pvs symbol to the MetiTarski representation. Ensures
;; that the resolution (the real meaning of the symbol) is what we want. This is due
;; to the massive overloading in PVS (anything can be overloaded). 
;; Answers the question: is + actually the + for the reals?
;;

(defun metit-interpretation (name-expr)
  (assert (name-expr? name-expr))
  (let* ((id-assoc (cdr (assoc (id name-expr) *metit-interpreted-names*)))
	 (mod-assoc (cdr (assoc (id (module-instance
				     (resolution name-expr)))
				id-assoc))))
    mod-assoc))
 
(defmethod translate-to-metitarski* ((expr binding-expr) bindings)
  (error "expression ~a cannot be handled." expr))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;; lift-predicates-in-quantifier takes the constraints on the variables (p1 : posreal)
;; and converts it into the proper logical form p1 > 0 & p1 >= 0 and returns
;; a new expression with these propositional atoms in the antecedent
;;
;; Then, we recursively call translate-metit-bindings to build a cons list of bindvars
;; ((p1 : real. P11))
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defmethod translate-to-metitarski* ((expr quant-expr) bindings)
  (let ((new-expr (lift-predicates-in-quantifier expr (list *real*))))
    (with-slots
     ((expr-bindings bindings) expression) new-expr
     (multiple-value-bind (newbindings bindvars)
	 (translate-metit-bindings expr-bindings bindings nil)
       (let ((yexpression (translate-to-metitarski* expression newbindings)))
	 (cond ((forall-expr? expr)
		(format nil "(![~{~a~^, ~}]: ~a)" bindvars yexpression))
	       ((exists-expr? expr)
		(format nil "(?[~{~a~^, ~}]: ~a)" bindvars yexpression)))))))) ;;no else case

(defmethod translate-to-metitarski* ((expr if-expr) bindings)
  (if (tc-eq (type expr) *boolean*)
      (let ((condexpr (translate-to-metitarski* (nth 0 (arguments expr)) bindings)))
	(format nil "((~a => ~a) & ((~~ ~a) => ~a))"
		condexpr
		(translate-to-metitarski* (nth 1 (arguments expr)) bindings)
		condexpr
		(translate-to-metitarski* (nth 2 (arguments expr)) bindings)))
    (error "conditional expression ~a cannot be handled" expr)))

(defun translate-to-metitarski (expr &optional bindings)
  (translate-to-metitarski* expr bindings))

(defun metit-about ()
  (let* ((metit-version (extra-system-call (format nil "bash -c \"~a ~a -v\"" *metit-lib* *metit-bin*)))
	 (z3-version    (extra-system-call (format nil "~a -version" *z3-bin*))))
    (format t "MetiTarski -- NASA PVS Library ~a~%" *nasalib-version*)
    (when (car metit-version)
      (format t "About MetiTarski~%")
      (format t "  Version: ~a~%" (cdr metit-version))
      (format t "  Executable: ~a~%" *metit-bin*)
      (when *metit-lib*
	(format t "  Dynamic Library: ~a~%" *metit-lib*))
      (format t "  Tptp directory: ~a~%" *metit-tptp*)
      (when *pvs-metit*
	(format t "  License file: ~a/dist/METITARSKI-LICENSE.txt~%" *pvs-metit*)))
    (when (car z3-version)
      (format t "About z3~%")
      (format t "  Version: ~a~%" (cdr z3-version))
      (format t "  Executable: ~a~%" *z3-bin*)
      (when *pvs-metit*
	(format t "  License file: ~a/dist/Z3-LICENSE.txt~%" *pvs-metit*)))
    (when *metit-archs*
      (format t "~%Pre-installed architectures: ~{~a~^, ~}~%" *metit-archs*))
    (when *metit-arch*
      (format t "Host architecture: ~a~%" *metit-arch*))))

(defun metit (s-forms timeout verbose options prebins arch about)
  (cond ((not (init-metit prebins arch)) nil)
	(about (metit-about) nil)
	(t (let* ((expr  (typecheck (mk-disjunction (mapcar #'formula s-forms))))
		  (metit-forms
		   (handler-case
		       (let ((fmla  (translate-to-metitarski expr))
			     (names (mapcar #'cdr *metit-gsubs*)))
			 (list (format nil "fof(pvs2metit,conjecture,~@[![~{~a~^, ~}]: ~]~a)."
				       names fmla)))
		     (error (condition) 
			    (format t "Error: ~a~%" condition))))
		  (file (when metit-forms
			  (pathname (format nil "~a/pvsbin/~a.tptp"
					    (working-directory)
					    (label *ps*))))))
	     (when metit-forms
	       (when verbose
		 (format t "PVS Expression:~%~a~%" expr)
		 (when *metit-gsubs* (format t "Global Substitutions:~%~{~a -> ~a~^, ~}~%" 
					     (merge-assoc *metit-gsubs*)))
		 (format t "MetiTarski Input:~%~{~a~%~}"
			 metit-forms))
	       (with-open-file (stream (ensure-directories-exist file) 
				       :direction :output
				       :if-exists :supersede)
			       (format stream "~{~a ~%~}" metit-forms))
	       ;; --time is the timeout in seconds
	       ;; --autoInclude will try to pick the correct axiom files
	       (let* ((metit-call 
		       (format nil "bash -c \"Z3_NONLIN=~a ~@[~a~] ~a --autoInclude --tptp ~a --time ~a~@[ ~a~] ~a\"" 
			       *z3-bin* *metit-lib* *metit-bin* *metit-tptp* timeout options 
			       (namestring file)))
		      (result (extra-system-call metit-call)))
		 (when verbose
		   (format t "MetiTarski Call:~%~a~%" metit-call)) 
		 (cond ((zerop (car result))
			(when verbose
			  (format t "~a~%" (cdr result)))
			(cond ((search "Theorem"  (cdr result) :from-end t)
			       (format t "~%MetiTarski succesfully proved.~%") t)
			      (t (format t "~%Unable to prove with MetiTarski.~%"))))
		       (t (format t
				  "~%Error running MetiTarski. The error message is:~% ~a~%"
				  (cdr result))))))))))

(deforacle metit (&optional (fnums 1) (timeout 60) verbose? options (pre-bins? t) arch about?)
  (let ((s-forms (extra-get-seqfs fnums)))
    (if s-forms
	(let ((result (metit s-forms timeout verbose? options pre-bins? arch about?)))
	  (when result (trust! metit)))
      (printf "Formula(s) ~a not found" fnums)))
  "
Calls MetiTarski on first order formulas FNUMS. TIMEOUT is a processor
time limit (in seconds). Output information generated by MetiTarski is
printed when verbose? is set to t. Additional options to MetiTarski
can be provided through OPTIONS.  Executables of MetiTarski and z3 are
pre-intstalled in the NASA PVS Library.* These binaries are always
tried when PRE-BINS? is set to t (default value).  If PRE-BINS?  is
set to nil, the strategy tries to use the versions of MetiTarski and
z3 installed in the system. The option ARCH forces the strategy to use
the pre-installed version for a given architecture. If ABOUT? is set
to t, the strategy prints information about MetiTarski, z3, and their
pre-installed versions.

MetiTarski requires an external algebraic decision method (EADM). The
default EADM is z3. However, other EADM are also supported, e.g., QEP
and Mathematica. See MetiTarski's documentation for information about
using a different EADM.

* The files METIT-LICENSE.txt and Z3-LICENSE.txt in
  nasalib/MetiTarski/dist contains MetiTarski's and z3's license of
  use, respectively."
  "~%Proving formula(s) ~a with MetiTarski")
      
