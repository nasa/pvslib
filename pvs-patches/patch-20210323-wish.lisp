;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; -*- Mode: Lisp -*- ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; wish.lisp -- Interface between PVS Lisp and Tcl/Tk
;; Author          : Carl Witty, modified by Sam Owre
;; Created On      : Wed Apr 26 15:12:47 1995
;; Last Modified By: Sam Owre
;; Last Modified On: Fri May  5 21:55:09 1995
;; Update Count    : 10
;; Status          : Stable
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

(export '(wish-current-rule))

;;; The functions of pvs-support.tcl that are called from here:
;;;  setup-proof
;;;  display-proof-from
;;;  display-current
;;;  proof-num-children
;;;  proof-rule
;;;  proof-done
;;;  proof-show
;;;  layout-proof
;;;  proof-current
;;;  delete-proof-subtree
;;;  proof-current
;;;  show-sequent
;;;  module-hierarchy

;;; prove-decl, undo-proof, proofstepper, success-step, and rule-apply
;;; call various functions defined here.

;; emacs: x-show-proof
;;   pvs:   call-x-show-proof-at
;;     tcl:   setup-proof fmid thid dir ctr 0
;;     pvs: write-justification-status (recursive)
;;       tcl: proof-num-children - - - -
;;            proof-rule - - - {-}
;;            proof-done - - - 0
;;            proof-show - - - 0
;;     tcl: layout-proof - - 0

;; emacs: x-show-current-proof
;;   pvs: call-x-show-proof
;;     tcl: setup-proof fmid thid dir ctr 1
;;     pvs: display-proof-from
;;       tcl: delete-proof-subtree - - -
;;       pvs: write-proof-status (recursive)
;;         tcl: proof-num-children - - - -
;;              proof-rule - - - {-}
;;              proof-sequent - - - {-} {-}
;;              proof-done - - - 1
;;              proof-tcc -
;;              proof-show - - - 1
;;       tcl: layout-proof - - 1
;;     pvs: display-current
;;       tcl: proof-current - - -
;;            proof-current - - {}

;; pvs: proofstepper
;;   pvs: display-proofstate
;;     pvs: display-proof-from
;;       (see above)
;;     pvs: display-current
;;       (see above)

;; pvs: proofstepper
;;   tcl: proof-done - - - 1

(defun wish-top-proofstate (&optional (from (or *top-proofstate* *last-proof*)))
  (if (wish-current-rule from)
      from
      (let ((current (current-subgoal from))
	    (subs (append (done-subgoals from)
			  (pending-subgoals from)
			  (remaining-subgoals from))))

	(when (and current (not (eq (status-flag from) '*)))
	  (pushnew current subs))
	(if (null subs);;NSH(9.8.94): added this clause.
	    from
;	(assert (= (length subs) 1))
	    (wish-top-proofstate (car subs))))))

(defun wish-current-rule (ps)
  (and (or (children ps)
	   (eq (status-flag ps) '!))
       (or (current-rule ps)
	   (unless
	       ;; This can happen with checkpoints
	       (and (consp (current-input ps))
		    (eq (car (current-input ps)) 'lisp))
	     (current-input ps)))))

(defmethod children ((ps proofstate))
  (append (when (current-subgoal ps)
	    (list (current-subgoal ps)))
	  (done-subgoals ps)
	  (pending-subgoals ps)
	  (remaining-subgoals ps)))

(defun x-subgoals (ps &optional cur)
  (if (eq ps cur)
      (list cur)
      (let ((current (current-subgoal ps))
	    (subs (append (done-subgoals ps)
			  (pending-subgoals ps)
			  (remaining-subgoals ps))))
	(when (and current (not (eq (status-flag ps) '*)))
	  (let ((subsubs (x-subgoals current cur)))
	    (if (and subsubs (null (wish-current-rule current)));;(strat-proofstate? current)
		(setq subs (append subsubs subs))
		(pushnew current subs))))
	(when (> (length subs) 1)
	  (setf subs (sort (copy-list subs) #'<
			   :key #'(lambda (x)
				    (parse-integer
				     (label-suffix (label x)))))))
	(if (and (= (length subs) 1)(null (wish-current-rule (car subs))))
	    (let ((subsubs (x-subgoals (car subs) cur)))
	      (or subsubs subs))
	    subs))))

(defun path-to-proofstate (ps path)
  (if (null path)
      ps
      (path-to-proofstate (nth (car path) (x-subgoals ps)) (cdr path))))

;;; Only called from call-x-show-proof, i.e., on interactive proof
(defun display-proof-from (ps)
  (let* ((top-ps (or *top-proofstate* *last-proof*))
	 (path (path-to-subgoal (wish-top-proofstate) ps))
	 (tcl-path (path-to-tcl-path path))
	 (fdecl (declaration top-ps))
	 (fid (id fdecl))
	 (thid (id (module fdecl))))
    (unless  (member nil path)  ;;NSH(8.17.95)
      (pvs-wish-source
       (with-output-to-temp-file
	(format t "delete-proof-subtree ~a ~a ~a~%" fid thid tcl-path)
	(write-proof-status ps path)
	(format t "layout-proof ~a ~a 1~%" fid thid))))))

(defun display-current (ps)
  (pvs-long-wish
   (let* ((fdecl (declaration (or *top-proofstate* *last-proof*)))
	  (fid (id fdecl))
	  (thid (id (module fdecl))))
     (if ps
	 (format nil "proof-current ~a ~a ~a"
	   fid thid
	   (path-to-tcl-path
	    (path-to-subgoal (wish-top-proofstate) ps)))
	 (format nil "proof-current ~a ~a {}" fid thid))))
  (setf *current-displayed* ps))

;;; Called from proofstepper
(defun display-proofstate (proofstate)
  (when (and (not *in-apply*) *displaying-proof*)
    (let ((changed (and *current-displayed*
			(not (eq *current-displayed* proofstate)))))
      (when changed
	(if *flush-displayed*
	    (progn
	      (display-proof-from *flush-displayed*)
	      (setf *flush-displayed* nil))
	    (display-proof-from *current-displayed*))
	(display-current proofstate)))))

(defvar *displaying-proof-counter* 0)

(defun stop-displaying-proof (n)
  (setf *displaying-proof* (remove-if #'(lambda (x) (<= x n))
			     *displaying-proof*)))

;;; No longer used
;; (defun request-sequent (path)
;;   (if *top-proofstate*
;;       (let* ((tcl-path (path-to-tcl-path path))
;; 	     (top-ps *top-proofstate*)
;; 	     (sequent (path-subgoal (wish-top-proofstate) path))
;; 	     (fdecl (declaration top-ps))
;; 	     (fid (id fdecl))
;; 	     (thid (id (module fdecl))))
;; 	(with-output-to-temp-file
;; 	 (format t "show-sequent ~a ~a ~a {~a} {~a}"
;; 	   fid thid tcl-path (label sequent) sequent)))
;;       (with-output-to-temp-file
;;        (format t ""))))

;;; Called from Emacs x-show-current-proof, or before-prove
;;; i.e., on interactive proof
(defun call-x-show-proof ()
  (if (and *in-checker* *ps*)
      (progn
	(incf *displaying-proof-counter*)
	(push *displaying-proof-counter* *displaying-proof*)
	(setf *current-displayed* nil)
	(setf *flush-displayed* nil)
	(pvs-long-wish
	 (format nil "setup-proof ~a ~a ~a ~a 1"
	   (label *top-proofstate*)
	   (id (module (declaration *top-proofstate*)))
	   (protect-spaces (shortname (working-directory)))
	   *displaying-proof-counter*))
	(display-proof-from (wish-top-proofstate))
	(display-current *ps*))
      (pvs-message "No proof is currently in progress")))

(defun protect-spaces (string &optional (pos 0) result)
  ;; Adds \ in front of spaces in pathnames
  (if (< pos (length string))
      (protect-spaces
       string
       (1+ pos)
       (case (char string pos)
	 (#\space (append '(#\space #\\) result))
	 (t   (cons (char string pos) result))))
      (coerce (nreverse result) 'string)))

(defun call-x-show-proof-at (filename declname line origin)
  (let ((fdecl (formula-decl-to-prove filename declname line origin)))
    (cond ((null fdecl)
	   (pvs-message "Not at a formula declaration"))
	  ((justification fdecl)
	   (let* ((fid (id fdecl))
		  (thid (id (module fdecl)))
		  ;;(subwin (format nil "~a-~a" thid fid))
		  )
	     (incf *displaying-proof-counter*)
	     (pvs-long-wish
	      (format nil "setup-proof ~a ~a ~a ~a 0"
		fid thid (protect-spaces (shortname (working-directory)))
		*displaying-proof-counter*))
	     (pvs-long-wish
	      (format nil "~a~%layout-proof ~a ~a 0~%"
		(let ((*disable-gc-printout* t))
		  (with-output-to-string (*standard-output*)
		    (write-justification-status
		     (justification fdecl) nil fid thid)))
		fid thid))))
	  (t (pvs-message "Formula has no associated proof")))))

(defun proof-window-name (fdecl)
  (format nil ".proof-~a-~a" (id (module fdecl)) (id fdecl)))


(defun x-prover-commands ()
  (let ((commands (collect-strategy-names)))
    (pvs-wish-source
     (with-output-to-temp-file
      (format t "show-proof-commands {~{~a ~}}" commands)))))

(defun x-module-hierarchy (theoryref &optional include-libraries?)
  (with-pvs-file (fname theoryname) theoryref
    (let* ((ctheory (get-typechecked-theory (or theoryname fname)))
	   (*current-context* (context ctheory))
	   (*modules-visited* nil))
      (pvs-wish-source
       (with-output-to-temp-file
	   (format t "module-hierarchy ~a ~a ~a {~%"
	     (id (current-theory))
	     (filename (current-theory))
	     (protect-spaces (shortname (working-directory))))
	 (module-hierarchy* (current-theory) include-libraries?)
      (format t "}"))))))

(defun module-hierarchy* (theory include-libraries?)
  (unless *modules-visited*
    (setq *modules-visited* (make-hash-table)))
  (unless (gethash theory *modules-visited*)
    (let* ((imps (get-immediate-usings theory))
	   (deps (delete-if #'(lambda (dep)
				(or (null dep)
				    (and (not include-libraries?)
					 (or (lib-datatype-or-theory? dep)
					     (from-prelude? dep)))))
		   (mapcar #'(lambda (tname)
			       (let ((th (get-theory tname)))
				 (when th
				   (if (generated-by th)
				       (get-theory (generated-by th))
				       th))))
		     (if include-libraries?
			 imps
			 (remove-if #'library imps))))))
      (format t "{~a {~{~a ~}}}~%" (id theory) (mapcar #'id deps))
      (setf (gethash theory *modules-visited*) deps)
      (mapc #'(lambda (dep) (module-hierarchy* dep include-libraries?))
	    deps))))

;;; called only on interactive proof
(defun write-proof-status (ps path)
  (let* ((tcl-path (path-to-tcl-path path))
	 (subs (x-subgoals ps))
	 (rule (sexp-unparse (wish-current-rule ps)))
	 (sequent (path-subgoal (wish-top-proofstate) path))
	 (fdecl (declaration (or *top-proofstate* *last-proof*)))
	 (fid (id fdecl))
	 (thid (id (module fdecl))))
    (cond ((and (null rule) (eql (length subs) 1)) ;;NSH(8.19.95):
	                             ;;see comment in display-proof-from above
	   (write-proof-status (car subs) path))
	  (t (format t "proof-num-children ~a ~a ~a ~a 1~%"
	       fid thid tcl-path (length subs))
	     (when rule
	       (format t "proof-rule ~a ~a ~a {~a} 1~%" fid thid tcl-path
		       (let ((*print-case* :downcase))
			 (format nil "~@[+~*~]~s" (null (current-rule ps))
				 rule))))
	     (when sequent
	       (format t "proof-sequent ~a ~a ~a {~a} {~a}~%"
		 fid thid tcl-path (label sequent) sequent))
	     (when (eq (status-flag ps) '!)
	       (format t "proof-done ~a ~a ~a 1~%" fid thid tcl-path))
	     (when (typep ps 'tcc-proofstate)
	       (format t "proof-tcc ~a~%" tcl-path))
	     (format t "proof-show ~a ~a ~a 1~%" fid thid tcl-path)
	     (dotimes (i (length subs))
	       (write-proof-status (nth i subs) (append path (list i))))))))

(defun wish-parent-proofstate (ps)
  (let ((pp (parent-proofstate ps)))
    (if (null pp) nil
	(if (and (not (eq pp *current-displayed*))
		 (null (wish-current-rule pp)))
	    (wish-parent-proofstate pp)
	    pp))))

;;; Only called from x-show-proof, i.e., on non-interactive proof
(defun write-justification-status (just path fid thid)
  (let ((tcl-path (path-to-tcl-path path))
	(subs (subgoals just)))
    (format t "proof-num-children ~a ~a ~a ~a 0~%"
      fid thid tcl-path (length subs))
    (when (rule just)
      (format t "proof-rule ~a ~a ~a {~a} 0~%"
	fid thid tcl-path
	(let ((*print-case* :downcase))
	  (format nil "~s" (rule just)))))
    (format t "proof-done ~a ~a ~a 0~%" fid thid tcl-path)
    (format t "proof-show ~a ~a ~a 0~%" fid thid tcl-path)
    (dotimes (i (length subs))
      (write-justification-status
       (nth i subs) (append path (list i)) fid thid))))
  
;;; Called by proofstepper and success-step (hence interactive)
(defun wish-done-proof (proofstate)
  (unless *in-apply*
    (when *displaying-proof*
      (let* ((path (path-to-subgoal (wish-top-proofstate)
				    proofstate))
	     (fdecl (declaration (or *top-proofstate* *last-proof*)))
	     (fid (id fdecl))
	     (thid (id (module fdecl))))
	(unless (eq path :none)
	  (pvs-long-wish
	   (format nil "proof-done ~a ~a ~a 1"
	     fid thid (path-to-tcl-path path))))))))

(defun path-subgoal (cur path)
  (if (null path)
      cur
      (path-subgoal (nth (car path) (x-subgoals cur)) (cdr path))))


;;; Returns a list of numbers representing the branch from the top
;;; proofstate to the cur proofstate.  The numbers are zero-based, so that
;;; (0 0 0 0) represents the left-most branch.

(defun path-to-subgoal (top cur &optional path)
  (if (eq top cur)
      path
      (let ((pp ;(nonstrat-parent-proofstate)
	     (wish-parent-proofstate cur)))
	(if (null pp)
	    nil
	    (path-to-subgoal top pp
			     (cons (position cur (x-subgoals pp cur))
				       path))))))

;; M3: simplified version of path-to-subgoal [Sept 2020]
(defun path-from-top (cur &optional path)
  (let ((pp (wish-parent-proofstate cur)))
    (if (null pp)
	path
      (path-from-top pp
		     (cons (position cur (x-subgoals pp cur))
			   path)))))


;;; A path is of the form, e.g., (0 1 0 2)
;;; This generates the string "top.0.1.0.2"

(defun path-to-tcl-path (path)
  (format nil "top~{.~a~}" path))

(defun tcl-justification (just)
  (let ((*disable-gc-printout* t))
    (with-output-to-string (*standard-output*)
      (let ((*print-case* :downcase))
	(tcl-just just)))))

(defun tcl-just (just)
  (format t "{{~a} {~s} {" (label just) (rule just))
  (mapc #'tcl-just (subgoals just))
  (format t "}} "))


;; Don't use this for anything over 250 characters long...use
;; pvs-long-wish instead.

(defun pvs-wish (cmd)
  (let ((*output-to-emacs*
	 (format nil ":pvs-wish ~a :end-pvs-wish" cmd)))
    (to-emacs)))

;(defun pvs-wish-source (file)
;  (pvs-wish (format nil "source ~a" file)))

(defun pvs-wish-source (file)
;;   (format t "~%sending wish cmd:")
;;   (with-open-file (str file)
;;     (loop for line = (read-line str nil 'eof)
;; 	  until (eq line 'eof)
;; 	  do (format t "~% ~a" line)))
  (pvs-wish (format nil "catch {source ~a}; exec rm -f ~a" file file)))

(defun pvs-long-wish (cmd)
  (pvs-wish-source (write-to-temp-file cmd)))
