;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; -*- Mode: Lisp -*- ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; tcc-gen.lisp -- Generates the TCCs
;; Author          : Sam Owre
;; Created On      : Wed Nov  3 00:32:38 1993
;; Last Modified By: Sam Owre
;; Last Modified On: Thu Nov  5 15:16:57 1998
;; Update Count    : 45
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

;; The main tcc generation functions are:
;;  make-subtype-tcc-decl
;;  make-recursive-tcc-decl
;;  make-well-founded-tcc-decl
;;  make-existence-tcc-decl
;;  make-assuming-tcc-decl
;;  make-mapped-axiom-tcc-decl
;;  make-actuals-tcc-decl

(in-package :pvs)

(export '(generate-subtype-tcc generate-recursive-tcc
			       generate-existence-tcc
			       generate-assuming-tccs generate-actuals-tcc))

(defvar *tccdecls* nil)

(defvar *old-tcc-name* nil)


(defstruct tccinfo
  formula
  reason
  origin
  kind
  expr
  type)

(defun tccinfo-eq (tcc1 tcc2)
  (tc-eq (tccinfo-formula tcc1) (tccinfo-formula tcc2)))

(defun generate-subtype-tcc (expr expected incs)
  (unless (and (not *in-checker*)
	       (tcc-evaluates-to-true* incs))
    ;; We do this in the checker, because the heuristic for choosing
    ;; the "best" instantiation for inst? is based on the length of
    ;; the tccs generated.  See the "use" in bugs/600
    (let ((exp (dep-binding-type expected)))
      (if (every #'(lambda (i) (member i *tcc-conditions* :test #'tc-eq))
		 incs)
	  (add-tcc-comment 'subtype expr exp 'in-context)
	  (let* ((*old-tcc-name* nil)
		 (*use-rationals* *in-checker*)
		 (ndecl (make-subtype-tcc-decl expr incs)))
	    (if ndecl
		(if (termination-tcc? ndecl)
		    (insert-tcc-decl 'termination-subtype
				     expr
				     (recursive-signature (current-declaration))
				     ndecl)
		    (insert-tcc-decl 'subtype expr exp ndecl))
		(add-tcc-comment 'subtype expr exp 'trivial)))))))

(defvar *simplify-tccs* nil)

(defun make-subtype-tcc-decl (expr incs)
  (assert (every #'type incs))
  (multiple-value-bind (dfmls dacts thinst)
      (unless (or *in-checker* *in-evaluator*)
	(new-decl-formals (current-declaration)))
    (declare (ignore dacts))
    (let* ((*generate-tccs* 'none)
	   (cdecl (current-declaration))
	   (cth (module cdecl))
	   (id (if (equal (cdr (assq expr *compatible-pred-reason*))
				  "judgement")
		   (or (id (current-declaration)) (make-tcc-name))
		   (make-tcc-name)))
	   (tccdecl (cond ((and *recursive-subtype-term*
				(occurs-in-eq *recursive-subtype-term* incs))
			   (mk-termination-tcc id nil dfmls))
			  ((equal (cdr (assq expr *compatible-pred-reason*))
				  "judgement")
			   (mk-judgement-tcc id nil dfmls))
			  ((rec-application-judgement? cdecl)
			   ;; The below doesn't work
			   ;; (equal (cdr (assq expr *compatible-pred-reason*))
			   ;;        "recursive-judgement")
			   (mk-recursive-judgement-tcc id nil dfmls))
			  (t (mk-subtype-tcc id nil dfmls))))
	   (conc (make!-conjunction* incs))
	   (*no-expected* nil)
	   (*bound-variables* (if *in-checker*
				  *keep-unbound*
				  *bound-variables*))
	   (true-conc? (tcc-evaluates-to-true conc))
	   (tform (unless true-conc?
		    ;; Note that add-tcc-conditions does not change *tcc-conditions*,
		    ;; so this form may be called repeatedly during debugging.
		    (add-tcc-conditions conc)))
	   (sform (unless true-conc?
		    (if thinst
			(with-current-decl tccdecl
			  (subst-mod-params tform thinst cth cdecl))
			tform)))
	   (uform (cond ((or true-conc? (tcc-evaluates-to-true sform))
			 *true*)
			(*simplify-tccs*
			 (pseudo-normalize sform))
			(t sform))))
      ;; (assert (every #'(lambda (fp)
      ;; 			 (or (memq fp (formals-sans-usings (current-theory)))
      ;; 			     (memq fp dfmls)
      ;; 			     (when *in-checker*
      ;; 			       (memq fp (decl-formals (current-declaration))))))
      ;; 		     (free-params uform)))
      (when (and (forall-expr? uform)
		 (duplicates? (bindings uform) :key #'id))
	(break "repeated bindings in make-subtype-tcc-decl"))
      (when (some #'(lambda (fv) (not (memq (declaration fv) *keep-unbound*)))
		  (freevars uform))
	(break "make-subtype-tcc-decl freevars"))
      (assert (tc-eq (find-supertype (type uform)) *boolean*))
      (unless (tc-eq uform *true*)
	(when (and *false-tcc-error-flag*
		   (tc-eq uform *false*))
	  (type-error expr "Subtype TCC for ~a simplifies to FALSE~@[:~2%  ~a~]"
		      expr (unless (tc-eq uform *false*) uform)))
	(setf (definition tccdecl) uform)
	(typecheck* tccdecl nil nil nil)))))

;; (defun existing-tcc-subsumes (tcc)
;;   (some-tcc-subsumes tcc (visible-tccs)))

;; (defun some-tcc-subsumes (tcc tccs)
;;   (and tccs
;;        (or (tcc-subsumes tcc (car tccs))
;; 	   (some-tcc-subsumes tcc (cdr tccs)))))

;; (defun tcc-subsumes (tcc1 tcc2)
;;   (or (tcc-equal tcc1 tcc2)
;;       (tcc-subsumes* (tcc-clauses tcc1) (tcc-clauses tcc2) nil)))

;; (defun tcc-clauses (tcc)
;;   (if (eq 

;; (defun tcc-subsumes* (tcc1-clauses tcc2-clauses bindings
;; 				   last-tcc1-lit last-tcc2-clause)
;;   (or (null tcc2-clauses)		; Success
;;       (and tcc1-clauses
;; 	   (multiple-value-bind (mbindings tcc1-lit tcc2-clause)
;; 	       (find-subsume-match
;; 		(car tcc1-clauses) tcc2-clauses
;; 		bindings last-tcc1-lit last-ttc2-clause)
;; 	     (and (not (eq mbindings 'fail))
;; 		  (or (tcc-subsumes* (cdr tcc1-clauses)
;; 				     (remove-subsumed-clauses
;; 				      tcc1-clause tcc2-clauses
;; 				      mbindings)
;; 				     mbindings tcc2-clause)
;; 		      (tcc-subsumes* tcc1-clauses tcc2-clauses
;; 				     bindings tcc2-clauses)))))))

;; (defun find-subsume-match (clause clauses bindings
;; 				  &optional (last (car clauses)))
;;   (if (null clause)
;;       bindings ; success
;;       (multiple-value-bind (nbindings lit next)
;; 	  (next-matching-tcc-lit (car clause) last)
;; 	(if (eq nbindings 'fail)
;; 	    'fail
;; 	    (let ((rem-clauses
;; 		   (remove-if-subsumed (car clause) clauses nbindings)))
;; 	      (or (find-subsume-match (cdr clause) rem-clauses nbindings nil)
;; 		  (find-subsume-match clause clauses bindings next)))))))

;; (defun remove-if-subsumed (clause clauses bindings &optional kept)
;;   (if (null clauses)
;;       (nreverse kept)
;;       (remove-if-subsumed
;;        clause
;;        (cdr clauses)
;;        (if (clause-subsumes clause (car clauses) bindings)
;; 	   kept
;; 	   (cons clause kept)))))

;; (defun clause-subsumes (clause1 clause2 bindings)
;;   (subsetp clause1 clause2
;; 	   :test #'(lambda (x y) (tc-eq-with-bindings x y bindings))))

;; (defun next-matching-tcc-lit (lit clause bindings
;; 				  &optional (cdr-clause clause))
;;   (if (null cdr-clause)
;;       'fail
;;       (let ((nbindings (simple-match* lit (car cdr-clause) bindings nil)))
;; 	(if (eq nbindings 'fail)
;; 	    (next-matching-tcc-lit lit clause bindings (cdr cdr-clause))
;; 	    (values (car cdr-clause) nbindings (cdr cdr-clause))))))


;; (defun cnf (expr)
;;   (mapcar #'(lambda (x) (or+ (list x)))
;;     (and+ expr)))
       

(defvar *substitute-let-bindings* nil)

;;(defvar *tcc-make-let-exprs* nil)

(defun add-tcc-conditions (expr)
  (multiple-value-bind (conditions srec-expr vdecl ch?)
      (subst-var-for-recs (remove-duplicates *tcc-conditions* :test #'tc-eq)
			  expr)
    (when (and vdecl *rec-judgement-extra-conditions*)
      (break "Need to add extra conditions"))
    (let ((tform (add-tcc-conditions*
		  (raise-actuals srec-expr)
		  (if (and vdecl ch?)
		      (insert-var-into-conditions vdecl conditions)
		      conditions)
		  nil nil)))
      (when (and (forall-expr? tform)
		 (duplicates? (bindings tform) :key #'id))
	(break "repeated bindings in add-tcc-conditions"))
      (universal-closure tform))))

(defun insert-var-into-conditions (vdecl conditions)
  "Inserts the vdecl into the conditions list, just before the first
bind-decl in conditions that is free in the type of vdecl, or at the end if
there is no such bind-decl."
  (let* ((fvars (freevars vdecl))
	 (elt (find-if #'(lambda (bd)
			   (and (binding? bd)
				(member bd fvars :key #'declaration)))
		conditions)))
    (if elt
	(let ((post (memq elt conditions)))
	  (append (ldiff conditions post) (list vdecl) post))
	(append conditions (list vdecl)))))
    

(defun add-tcc-conditions* (expr conditions substs antes)
  "Walks down the conditions, wrapping them around the expr.
Conditions are conses, bind-decls, or boolean terms."
  (cond ((null conditions)
	 (let* ((ex (if antes
			(make!-implication (make!-conjunction* (reverse antes)) expr)
			expr))
		(form (substit ex substs)))
	   (assert (type form))
	   form))
	((bind-decl? (car conditions))
	 (multiple-value-bind (cbindings rem-conditions)
	     (get-tcc-condition-bindings conditions)
	   ;; Binding from a binding-expr
	   (multiple-value-bind (nexpr nsubsts)
	       (add-tcc-bindings expr cbindings rem-conditions substs antes)
	     (add-tcc-conditions* nexpr rem-conditions nsubsts nil))))
	((consp (car conditions))
	 (break "Shouldn't happen")
	 ;; bindings from a lambda-expr application (e.g., let-expr).  A
	 ;; let-binding is a cons eventually followed by its bind-decl.
	 (assert (and (bind-decl? (caar conditions))
		      (memq (caar conditions) (cdr conditions))))
	 (cond (*substitute-let-bindings*
		;; Just add to the substs
		(add-tcc-conditions* expr (cdr conditions) (cons (car conditions) substs) antes))
	       (t (multiple-value-bind (eqns rem-conditions)
		      (collect-let-equations conditions)
		    (add-tcc-conditions* expr rem-conditions substs (append eqns antes))))))
	((equation? (car conditions))
	 (multiple-value-bind (eqns rem-conditions)
	     (collect-let-equations conditions)
	   (add-tcc-conditions* expr rem-conditions substs (append eqns antes))))
	(t ;; We collect antes so we can form (A & B) => C rather than
	 ;; A => (B => C)
	 (add-tcc-conditions* expr (cdr conditions) substs (cons (car conditions) antes)))))

(defun get-tcc-condition-bindings (conditions &optional bindings)
  (if (bind-decl? (car conditions))
      (get-tcc-condition-bindings (cdr conditions) (cons (car conditions) bindings))
      (values bindings conditions)))

(defun collect-let-equations (conditions &optional eqns bind-decls)
  (typecase (car conditions)
    (equation (collect-let-equations (cdr conditions) (cons (car conditions) eqns) bind-decls))
    (cons (assert (memq (caar conditions) (cdr conditions)))
	  (let ((eqn (make!-equation
		      (mk-name-expr (caar conditions))
		      (cdar conditions))))
	    (break "shouldn't get here")
	    (collect-let-equations (cdr conditions) (cons eqn eqns) bind-decls)))
    (bind-decl (collect-let-equations (cdr conditions) eqns (cons (car conditions) bind-decls)))
    (t (values eqns (append (nreverse bind-decls) conditions)))))

(defun add-tcc-bindings (expr cbindings rem-conditions substs antes &optional bindings)
  "Walks down conditions as long as there are bind-decls, those that had to
be changed are in substs.  Sometimes variables need to be named apart, by
looking in bindings and substs."
  (if (null cbindings)
      (let* ((nbody (substit (if antes
				 (make!-implication (make!-conjunction* antes) expr)
				 expr)
		      substs))
	     ;; note that make!-implication may not return an implication if
	     ;; antes or expr reduce to TRUE or FALSE.
	     (all-bindings (mapcar #'(lambda (bd) (or (cdr (assq bd substs)) bd)) (reverse bindings)))
	     (nbindings (get-tcc-closure-bindings all-bindings nbody))
	     (nexpr (if nbindings
			(make!-forall-expr nbindings nbody)
			nbody)))
	(when (duplicates? nbindings :key #'id)
	  (break "add-tcc-bindings duplicates"))
	;; (unless (eq sexpr expr)
	;;   (push (list sexpr expr :substit) *set-type-generated-terms*))
	(values nexpr substs))
      (let* ((bd (car cbindings))
	     (nsubsts (add-tcc-binding bd bindings rem-conditions substs))
	     (nbindings (cons bd bindings)))
	(add-tcc-bindings expr (cdr cbindings) rem-conditions nsubsts antes nbindings))))

(defun add-tcc-binding (bd bindings rem-conditions substs)
  (let* ((typed-bd (if (untyped-bind-decl? bd)
		       (let ((dtype (or (declared-type bd)
					(and (type bd) (print-type (type bd)))
					(type bd))))
			 (change-class (copy bd 'declared-type dtype) 'bind-decl))
		       bd))
	 (dtype (raise-actuals (declared-type typed-bd)))
	 (prtype (when (print-type (type typed-bd))
		   (if (tc-eq (print-type (type typed-bd))
			      (declared-type typed-bd))
		       dtype
		       (raise-actuals (print-type (type typed-bd))))))
	 (ptype (when prtype (or (print-type prtype) prtype)))
	 (ptyped-bd (cond ((and (eq dtype (declared-type typed-bd))
				(or (null ptype)
				    (eq ptype dtype)
				    (eq ptype (print-type (type typed-bd)))))
			   typed-bd)
			  ((eq typed-bd bd)
			   (copy bd
			     'declared-type dtype
			     'type (copy (type typed-bd) 'print-type ptype)))
			  (t (setf (declared-type typed-bd) dtype
				   (type typed-bd) (copy (type typed-bd) 'print-type ptype))
			     typed-bd)))
	 (dep-bd (if (some #'(lambda (fv) (assq (declaration fv) substs)) (freevars bd))
		     (substit ptyped-bd substs)
		     ptyped-bd))
	 (duped-bd (if (or (member (id bd) rem-conditions
				   :key #'(lambda (c) (and (bind-decl? c) (id c))))
			   (member (id bd) bindings :key #'id)
			   (some #'(lambda (subst) (eq (id bd) (id (cdr subst)))) substs))
		       (let ((nid (make-new-variable (id dep-bd) (append bindings substs) 1)))
			 (copy dep-bd 'id nid))
		       dep-bd))
	 (nsubsts (if (eq duped-bd bd)
		      substs
		      (acons bd duped-bd substs)
		      ;;(subst-into-bindings bd duped-bd substs)
		      )))
    (assert (or (eq duped-bd bd)
		(every #'(lambda (x y) (eq (car x) (car y))) substs (cdr nsubsts))))
    nsubsts))

(defun subst-into-bindings (bd nbd substs &optional nsubsts)
  (if (null substs)
      (acons bd nbd (reverse nsubsts))
      (let* ((ncdr (substit (cdar substs) `((,bd . ,nbd))))
	     (ssubsts (if (eq ncdr (cdar substs))
			  (cdr substs)
			  (let* ((ncdrs (mapcar #'cdr (cdr substs)))
				 (scdrs (substit ncdrs `((,(cdar substs) . ,ncdr) (,bd . ,nbd)))))
			    (if (equal scdrs ncdrs)
				(cdr substs)
				(mapcar #'cons (mapcar #'car (cdr substs)) scdrs))))))
	(subst-into-bindings bd nbd ssubsts (acons (caar substs) ncdr nsubsts)))))

(defun binding-id-is-bound (id expr)
  "Checks if symbol id occurs in expr as a bind-decl, excluding types."
  (let ((found nil))
    (mapobject #'(lambda (ex)
		   (or found
		       ;; Skip things bound in type exprs; unlikely to
		       ;; cause confusion
		       (typep ex 'type-expr)
		       (and (typep ex 'binding)
			    (eq id (id ex))
			    (setq found ex))))
	       expr)
    found))


;;; Puts the dependent bindings after the non-dependent ones

(defun get-tcc-closure-bindings (bindings body)
  (when bindings
    (let ((fvars (union (freevars body)
			(reduce #'(lambda (x y) (union x y :test #'tc-eq))
				(mapcar #'freevars bindings))
			:test #'tc-eq)))
      (remove-if (complement
		  #'(lambda (bd)
		      (or (member bd fvars :key #'declaration)
			  (possibly-empty-type? (type bd)))))
	bindings))))


(defun insert-tcc-decl (kind expr type ndecl)
  (let ((origin (make-instance 'tcc-origin
		 :root (tcc-root-name expr)
		 :kind kind
		 :expr (if (eq kind 'existence)
			   ""
			   (str (raise-actuals expr t :all) :char-width nil))
		 :type (str (raise-actuals type t :all) :char-width nil))))
    (if (or *in-checker* *in-evaluator* *collecting-tccs*)
	(add-tcc-info kind expr type ndecl origin)
	(insert-tcc-decl1 kind expr type ndecl origin))))

(defun add-tcc-info (kind expr type ndecl origin)
  (pushnew (make-tccinfo
	    :formula (definition ndecl)
	    :reason (cdr (assq expr *compatible-pred-reason*))
	    :origin origin
	    :kind kind
	    :expr expr
	    :type type)
	   *tccforms*
	   :test #'tc-eq :key #'tccinfo-formula))

(defun insert-tcc-decl1 (kind expr type ndecl origin)
  (let ((*generate-tccs* 'none))
    (when *typechecking-module*
      (setf (origin ndecl) origin))
    (setf (tcc-disjuncts ndecl) (get-tcc-disjuncts ndecl))
    (let ((match (car (member ndecl *tccdecls* :test #'tcc-subsumed-by)))
	  (decl (current-declaration)))
      (cond
       ((and match
	     (not (and (declaration? decl)
		       (id decl)
		       (assq expr *compatible-pred-reason*))))
	#+pvsdebug
	(when (and (not (tc-eq (definition ndecl) (definition match)))
		   (not (tc-eq (simplify-expression
				(make!-implication (definition match)
						   (definition ndecl))
				:strategy '(lazy-grind))
			       *true*)))
	  ;; lazy-grind doesn't always work, but neither does anything else.
	  ;; To make certain that subsumption is correct, run
	  ;; simplify-expression with :interactive? t
	  (break "Something may be wrong with subsumes"))
	(add-tcc-comment kind expr type (list 'subsumed match) match))
       (t (when match
	    (pvs-warning "The judgement TCC generated for and named ~a ~
                          is subsumed by ~a,~%  ~
                          but generated anyway since it was given a name"
	      (id decl) (id match)))
	  (insert-tcc-decl* kind expr type decl ndecl))))))

(defvar *simplify-disjunct-quantifiers* nil)
(defvar *simplify-disjunct-bindings* nil)

(defun get-tcc-disjuncts (tcc-decl)
  (let* ((*simplify-disjunct-bindings* nil)
	 (*simplify-disjunct-quantifiers* t)
	 (disjuncts (simplify-disjunct (definition tcc-decl) nil)))
    (cons *simplify-disjunct-bindings* disjuncts)))

(defmethod simplify-disjunct ((formula forall-expr) depth)
  (cond ((and *simplify-disjunct-quantifiers*
	      (or (not (integerp depth))
		  (not (zerop depth))))
	 (setq *simplify-disjunct-bindings*
	       (append *simplify-disjunct-bindings* (bindings formula)))
	 (simplify-disjunct (expression formula) (when depth (1- depth))))
	(t (call-next-method))))

(defmethod simplify-disjunct* ((formula forall-expr) depth)
  (cond (*simplify-disjunct-quantifiers*
	 (setq *simplify-disjunct-bindings*
	       (append *simplify-disjunct-bindings* (bindings formula)))
	 (simplify-disjunct (expression formula) (when depth (1- depth))))
	(t (list formula))))

(defun insert-tcc-decl* (kind expr type decl ndecl)
  ;; Depends on
  ;;     *current-context* *typechecking-module*
  ;;     *typecheck-using* *set-type-formal*
  ;;     *set-type-actuals-name* *compatible-pred-reason*
  ;;     *old-tcc-name*
  ;; *compatible-pred-reason* is of the form ((expr . "judgement"))
  (let ((submsg (case kind
		  (actuals nil)
		  (assuming (format nil "generated from assumption ~a.~a"
			      (id (module type)) (id type)))
		  (cases
		   (format nil
		       "for missing ELSE of CASES expression over datatype ~a"
		     (id type)))
		  (coverage nil)
		  (disjointness nil)
		  (existence nil)
		  ((subtype termination-subtype)
		   (format nil "expected type ~a"
		     (unpindent type 19 :string t :comment? t)))
		  (termination nil)
		  (well-founded (format nil "for ~a" (id decl))))))
    (when (and *typecheck-using*
	       (typep (current-declaration) 'importing))
      (setf (importing-instance ndecl)
	    (list *typecheck-using* *set-type-formal*)))
    (push (definition ndecl) *tccs*)
    (push ndecl *tccdecls*)
    (when *typechecking-module*
      (let* ((preason (or (cdr (assq expr *compatible-pred-reason*))
			  (when (rec-application-judgement? (current-declaration))
			    "Recursive judgement")))
	     (place (or (place *set-type-actuals-name*)
			(place* expr) (place type)
			(place *set-type-expr*)
			(place *set-type-subtype*)
			))
	     (plstr (when place
		      (format nil "(at line ~d, column ~d) "
			(starting-row place) (starting-col place))))
	     (termstr (unpindent (or *set-type-actuals-name* expr type)
				 4 :string t :comment? t))
	     (gen-by (when (> (length place) 4)
		       (remove #\Newline (elt place 4))))
	     (too-long (or (> (length place) 4)
			   (> (+ (length preason) (length (string kind)) (length plstr)
				 (length termstr) 25)
			      *default-char-width*)))
	     (cmt-str (format nil "~@(~@[~a ~]~a~) TCC generated ~@[~a~]for~
                                   ~:[ ~;~%    %~]~a~
                                   ~@[~%    %   (generated by ~a)~]~
                                   ~@[~%    % ~a~]"
			preason kind plstr too-long termstr gen-by submsg)))
	;;(setf (tcc-term-place ndecl) place)
	(assert place)
	;;(when (> (length place) 4) (break "place with explanation"))
	(add-comment ndecl cmt-str)
	(when *set-type-actuals-name*
	  (let ((pex (unpindent expr 4 :string t :comment? t))
		(astr (unpindent (raise-actuals *set-type-actuals-name* 1)
				 4 :string t :comment? t)))
	    (add-comment ndecl
	      "at parameter ~a in its theory instance~%    %~a"
	      pex astr)))
	(when (and (eq kind 'existence)
		   (formal-decl-occurrence type))
	  (add-comment ndecl
	    "May need to add an assuming clause to prove this.")))
      (when (eq (spelling ndecl) 'OBLIGATION)
	(setf (kind ndecl) 'tcc))
      (pushnew ndecl (refers-to decl) :test #'eq)
      (when *old-tcc-name*
	(push (cons (id ndecl) *old-tcc-name*) *old-tcc-names*))
;      (pvs-output "~2%~a~%"
;		  (let ((*no-comments* t)
;			(*unparse-expanded* t))
;		    (string-trim '(#\Space #\Tab #\Newline)
;				 (unparse ndecl :string t))))
      (add-decl ndecl))))

(defun tcc-submsg-string (kind expr type decl)
  (case kind
    (subtype (format nil "coercing ~a to ~a"
	       (unparse expr :string t) type))
    (termination (format nil "for ~a" (id decl)))
    (existence (format nil "for type ~a" type))
    (assuming (format nil "for assumption ~a on instance ~a"
		(id type) (unparse expr :string t)))
    (cases (format nil "for missing ELSE of datatype ~a"
	     (id type)))
    (well-founded (format nil "for ~a" (id decl)))
    (monotonicity (format nil "for ~a" (id decl)))))

(defun formal-decl-occurrence (expr)
  (let ((foundit nil))
    (mapobject #'(lambda (ex)
		   (or foundit
		       (when (and (name? ex)
				  (formal-decl? (declaration ex)))
			 (setq foundit t))))
	       expr)
    foundit))
		       
(defun tcc-subsumed-by (tcc2 tcc1)
  (and (or (not (assuming-tcc? tcc2)) (assuming-tcc? tcc1))
       (<= (length (tcc-disjuncts tcc1)) (length (tcc-disjuncts tcc2)))
       (if (same-binding-op tcc2 tcc1)
	   (multiple-value-bind (bindings leftovers)
	       (subsumes-bindings (car (tcc-disjuncts tcc1))
				  (car (tcc-disjuncts tcc2)))
	     (if (and leftovers
		      (or (and (typep (definition tcc2) 'forall-expr)
			       (some #'(lambda (b)
					 (not (assq b bindings)))
				     (car (tcc-disjuncts tcc1))))
			  (and (typep (definition tcc2) 'exists-expr)
			       (some #'(lambda (b)
					 (not (assq b bindings)))
				     (car (tcc-disjuncts tcc2))))))
		 (tc-eq tcc2 tcc1)
		 (subsetp (cdr (tcc-disjuncts tcc1)) (cdr (tcc-disjuncts tcc2))
			  :test #'(lambda (x y)
				    (tc-eq-with-bindings x y bindings)))))
	   (member (definition tcc1) (cdr (tcc-disjuncts tcc2))
		    :test #'(lambda (x y) (tc-eq x y))))))

(defun same-binding-op (tcc1 tcc2)
  (let ((f1 (definition tcc1))
	(f2 (definition tcc2)))
    (or (not (quant-expr? f1))
        (not (quant-expr? f2))
	(typecase f1
	  (forall-expr (typep f2 'forall-expr))
	  (t (typep f2 'exists-expr))))))

;(defmethod subsumes ((tcc1 binding-expr) (tcc2 binding-expr))
;  (let ((bindings (subsumes-bindings (bindings tcc1) (bindings tcc2))))
;    (subsetp (or+ (list (expression tcc1))) (or+ (list (expression tcc2)))
;	     :test #'(lambda (x y) (tc-eq* x y bindings)))))

(defun subsumes-bindings (bind1 bind2 &optional binds leftovers)
  (if (null bind1)
      (values (nreverse binds) (nconc leftovers bind2))
      (let* ((b1 (car bind1))
	     (b2 (or (find-if #'(lambda (b)
				  (and (same-id b1 b)
				       (supertype-with-bindings
					(type b1) (type b) binds)))
			      bind2)
		     (find-if #'(lambda (b)
				  (tc-eq-with-bindings (type b1) (type b)
						       binds))
			      bind2))))
	(subsumes-bindings (cdr bind1) (remove b2 bind2)
			   (if b2 (cons (cons b1 b2) binds) binds)
			   (if b2 leftovers (cons b1 leftovers))))))

(defmethod supertype-with-bindings :around (t1 t2 binds)
  (or (tc-eq-with-bindings t1 t2 binds)
      (call-next-method)))

(defmethod supertype-with-bindings ((t1 subtype) (t2 subtype) binds)
  (or (supertype-with-bindings t1 (supertype t2) binds)
      ;; Check that predicates subsume under bindings
      (multiple-value-bind (pred-subsumes? nbinds)
	  (pred-subsumes (predicate t1) (predicate t2) binds)
	(and pred-subsumes?
	     (supertype-with-bindings (supertype t1) (supertype t2) nbinds)))))

;; For now, we simply check if some disjunct of p1 appears among the
;; conjuncts of p2, as this is the most common (and easiest) case.
(defmethod pred-subsumes ((p1 lambda-expr) (p2 lambda-expr) binds)
  (when (= (length (bindings p1)) (length (bindings p2)))
    (let ((nbinds (pairlis (bindings p1) (bindings p2) binds))
	  (p2-conjuncts (collect-conjuncts (expression p2))))
      (values (some #'(lambda (dj)
			(member dj p2-conjuncts
				:test #'(lambda (x y)
					  (tc-eq-with-bindings x y nbinds))))
		    (collect-disjuncts (expression p1)))
	      nbinds))))

(defmethod pred-subsumes ((p1 lambda-expr) p2 binds)
  (let ((p2-conjuncts (collect-conjuncts p2)))
    (values (some #'(lambda (dj)
		      (member dj p2-conjuncts
			      :test #'(lambda (x y)
					(tc-eq-with-bindings x y binds))))
		  (collect-disjuncts (expression p1)))
	    binds)))

(defmethod pred-subsumes (p1 (p2 lambda-expr) binds)
  (let ((p2-conjuncts (collect-conjuncts (expression p2))))
    (values (some #'(lambda (dj)
		      (member dj p2-conjuncts
			      :test #'(lambda (x y)
					(tc-eq-with-bindings x y binds))))
		  (collect-disjuncts p1))
	    binds)))

(defmethod pred-subsumes (p1 p2 binds)
  (let ((p2-conjuncts (collect-conjuncts p2)))
    (values (some #'(lambda (dj)
		      (member dj p2-conjuncts
			      :test #'(lambda (x y)
					(tc-eq-with-bindings x y binds))))
		  (collect-disjuncts p1))
	    binds)))

(defmethod supertype-with-bindings (t1 (t2 subtype) binds)
  (supertype-with-bindings t1 (supertype t2) binds))

(defmethod supertype-with-bindings (t1 t2 binds)
  (declare (ignore t1 t2 binds))
  nil)

(defun generate-recursive-tcc (name arguments ex)
  (let* ((*old-tcc-name* nil)
	 (ndecl (make-recursive-tcc-decl name arguments)))
    (if ndecl
	(insert-tcc-decl 'termination ex nil ndecl)
	(add-tcc-comment 'termination ex nil))))

(defun make-recursive-tcc-decl (name arguments)
  (when (null arguments)
    (type-error name
      "Recursive definition occurrence ~a must have arguments" name))
  (multiple-value-bind (dfmls dacts thinst)
      (new-decl-formals (current-declaration))
    (declare (ignore dacts))
    (let* ((*generate-tccs* 'none)
	   (cdecl (current-declaration))
	   (cth (module cdecl))
	   (id (make-tcc-name))
	   (tccdecl (mk-termination-tcc id nil dfmls))
	   (meas (measure cdecl))
	   (ordering
	    (or (when (ordering cdecl)
		  (copy (ordering cdecl)))
		'<))
	   (appl1 (make!-recursive-application meas (outer-arguments cdecl)))
	   (appl2 (make!-recursive-application meas arguments))
	   (relterm (beta-reduce
		     (typecheck* (mk-application ordering appl2 appl1)
				 *boolean* nil nil)))
	   (true-conc? (or (member relterm
				   (let ((*assert-typepreds* nil))
				     (collect-subexpr-typepreds relterm)
				     *assert-typepreds*)
				   :test #'tc-eq)
			   (tcc-evaluates-to-true relterm)))
	   (form (unless true-conc?
		   (add-tcc-conditions relterm)))
	   (uform (cond ((or true-conc? (tcc-evaluates-to-true form))
			 *true*)
			((and *simplify-tccs*
			      (not (or *in-checker* *in-evaluator*)))
			 (pseudo-normalize form))
			(t (beta-reduce form))))
	   (suform (if thinst
		       (with-current-decl tccdecl
			 (subst-mod-params uform thinst cth cdecl))
		       uform)))
      (unless (tc-eq uform *true*)
	(when (and *false-tcc-error-flag*
		   (tc-eq suform *false*))
	  (type-error name
	    "Termination TCC for this expression simplifies to false:~2%  ~a"
	    form))
	(setf (definition tccdecl) suform)
	(typecheck* tccdecl nil nil nil)))))

(defun mk-recursive-application (op args)
  (if (null args)
      op
      (mk-recursive-application (mk-application* op (car args)) (cdr args))))

(defun make!-recursive-application (op args)
  (if (null args)
      op
      (make!-recursive-application (make!-application* op (car args))
				   (cdr args))))

(defun outer-arguments (decl)
  (outer-arguments* (append (formals decl)
			    (bindings* (definition decl)))
		    (measure-depth decl)
		    (type (measure decl))))

(defun outer-arguments* (bindings depth mtype &optional args)
  (let ((nargs (mapcar #'make-variable-expr
		 (or (typecheck* (car bindings) nil nil nil)
		     (make-new-bind-decls
		       (domain-types (find-supertype mtype)))))))
    (if (zerop depth)
	(nreverse (cons nargs args))
	(outer-arguments* (cdr bindings) (1- depth)
			  (range (find-supertype mtype))
			  (cons nargs args)))))

(defun generate-well-founded-tcc (decl mtype)
  (let* ((*old-tcc-name* nil)
	 (ndecl (make-well-founded-tcc-decl decl mtype)))
    (if ndecl
	(insert-tcc-decl 'well-founded (ordering decl) nil ndecl))))

(defun make-well-founded-tcc-decl (decl mtype)
  (unless (well-founded-type? (type (ordering decl)))
    (multiple-value-bind (dfmls dacts thinst)
	(new-decl-formals (current-declaration))
      (declare (ignore dacts))
      (let* ((id (make-tcc-name))
	     (tccdecl (mk-well-founded-tcc id nil dfmls))
	     (cdecl (current-declaration))
	     (cth (module cdecl))
	     (ordering (let ((ord (subst-mod-params (ordering decl)
				      (or thinst (current-theory-name))
				    cth cdecl)))
			 (unless (eq ord (ordering decl))
			   (set-extended-place ord (ordering decl)
					"creating substitution ~a for ordering ~a"
					ord (ordering decl)))
			 ord))
	     (var1 (make-new-variable '|x| ordering))
	     (var2 (make-new-variable '|y| ordering))
	     (pmtype (parse-unparse mtype 'type-expr))
	     (nm1 (let ((nm (mk-name-expr var1)))
		    (set-extended-place nm ordering
					"creating var ~a for ordering ~a"
					nm ordering)
		    nm))
	     (nm2 (let ((nm (mk-name-expr var2)))
		    (set-extended-place nm ordering
					"creating var ~a for ordering ~a"
					nm ordering)
		    nm))
	     (bd1 (let ((bd (mk-bind-decl var1 pmtype)))
		    (set-extended-place bd ordering
					"creating bind var ~a for ordering ~a"
					bd ordering)
		    bd))
	     (bd2 (let ((bd (mk-bind-decl var2 pmtype)))
		    (set-extended-place bd ordering
					"creating bind var ~a for ordering ~a"
					bd ordering)
		    bd))
	     (appl (let ((app (mk-application ordering nm1 nm2)))
		     (set-extended-place app ordering
					 "creating appl ~a for ordering ~a"
					 app ordering)
		     app))
	     (wfform (let ((lex (mk-lambda-expr (list bd1 bd2) appl)))
		       (set-extended-place lex ordering
					   "creating lambda expr ~a for ordering ~a"
					   lex ordering)
		       lex))
	     (form (with-current-decl tccdecl
		     (typecheck* (mk-application '|well_founded?| wfform)
				 *boolean* nil nil)))
	     (xform (cond ((tcc-evaluates-to-true form)
			   *true*)
			  ((and *simplify-tccs*
				(not (or *in-checker* *in-evaluator*)))
			   (pseudo-normalize form))
			  (t (beta-reduce form))))
	     (uform (expose-binding-types (universal-closure xform))))
	(unless (tc-eq uform *true*)
	  (when (and *false-tcc-error-flag*
		     (tc-eq uform *false*))
	    (type-error ordering
	      "TCC for this expression simplifies to false:~2%  ~a"
	      form))
	  (setf (definition tccdecl) uform)
	  (typecheck* tccdecl nil nil nil))))))

(defmethod well-founded-type? ((otype subtype))
  (or (and (name-expr? (predicate otype))
	   (eq (id (module-instance (predicate otype))) '|orders|)
	   (eq (id (declaration (predicate otype))) '|strict_well_founded?|))
      (well-founded-type? (supertype otype))))

(defmethod well-founded-type? ((otype type-expr))
  nil)

(defun decls-upto (&rest keys &key (decl (current-declaration)) (theory (current-theory))
				(pred #'identity) &allow-other-keys)
  (remove-if-not pred (apply #'list-upto (all-decls theory) decl
			     :allow-other-keys t keys)))

(defun check-nonempty-type (te expr)
  (let ((type (if (dep-binding? te) (type te) te)))
    (unless (nonempty? type)
      (cond ((member type (decls-upto :pred #'existence-tcc?)
		     :test #'tc-eq :key #'type)
	     (setf (nonempty? type) t)
	     (when (print-type type)
	       (setf (nonempty? (print-type type)) t))
	     nil)
	    (t (unless (or (typep (current-declaration) 'adt-accessor-decl)
			   (assoc type (nonempty-types (current-theory)) :test #'tc-eq))
		 (when (possibly-empty-type? type)
		   (let ((etcc (generate-existence-tcc type expr)))
		     (unless (or (or *in-checker* *in-evaluator*)
				 *tcc-conditions*)
		       (set-nonempty-type type etcc))))))))))

(defmethod possibly-empty-type? :around ((te type-expr))
  (unless (nonempty? te)
    (call-next-method)))

(defmethod possibly-empty-type? ((te type-name))
  (let ((tdecl (declaration (resolution te))))
    (cond ((nonempty? te) nil)
	  ((typep tdecl 'nonempty-type-decl) nil)
	  ((typep tdecl 'formal-type-decl) t)
	  (t t))))

(defmethod possibly-empty-type? ((te subtype))
  (if (and (recognizer-name-expr? (predicate te))
	   (or (null *adt*)
	       (let ((rtype (adt (constructor (predicate te)))))
		 (and (recursive-type? rtype)
		      (not (eq (adt rtype) *adt*))))))
      (let ((accs (accessors (constructor (predicate te)))))
	(some #'possibly-empty-type? (mapcar #'type accs)))
      t))

(defmethod possibly-empty-type? ((te datatype-subtype))
  (possibly-empty-type? (declared-type te)))

(defun uninterpreted-predicate? (expr)
  (and (name-expr? expr)
       (or (typep (declaration expr) 'field-decl)
	   (and (typep (declaration expr) '(or const-decl def-decl))
		(null (definition (declaration expr)))))
       ;;(recognizer? expr)
       ))

(defmethod possibly-empty-type? ((te tupletype))
  (possibly-empty-type? (types te)))

(defmethod possibly-empty-type? ((te cotupletype))
  (every #'possibly-empty-type? (types te)))

(defmethod possibly-empty-type? ((te funtype))
  (possibly-empty-type? (range te)))

(defmethod possibly-empty-type? ((te recordtype))
  (possibly-empty-type? (mapcar #'type (fields te))))

(defmethod possibly-empty-type? ((te struct-sub-recordtype))
  (or (possibly-empty-type? (type te))
      (possibly-empty-type? (mapcar #'type (fields te)))))

(defmethod possibly-empty-type? ((te struct-sub-tupletype))
  (or (possibly-empty-type? (type te))
      (possibly-empty-type? (types te))))

(defmethod possibly-empty-type? ((te dep-binding))
  (possibly-empty-type? (type te)))

(defmethod possibly-empty-type? ((list list))
  (when list
    (or (possibly-empty-type? (car list))
	(possibly-empty-type? (cdr list)))))

;;;;;;;;;;
;(defmethod check-nonempty-type ((te type-name) expr)
;  (let ((tdecl (declaration (resolution te))))
;    (when (and (formal-type-decl? tdecl)
;	       (not (nonempty? tdecl)))
;      (make-nonempty-assumption te dtypes)
;;      (format t "~%Added nonempty assertion for ~a to ~a"
;;	te (id (current-theory)))
;      (setf (nonempty? tdecl) t)))
;  nil)

(defun make-nonempty-assumption (type)
  (let* ((var (make-new-variable '|x| type))
	 (form (mk-exists-expr (list (mk-bind-decl var type)) *true*))
	 (tform (typecheck* form *boolean* nil nil))
	 (id (make-tcc-name))
	 (decl (typecheck* (mk-existence-tcc id tform nil type) nil nil nil))
	 (origin (make-instance 'tcc-origin
		   :root (tcc-root-name type)
		   :kind 'existence
		   :expr ""
		   :type (str (raise-actuals type t :all) :char-width nil))))
    (setf (origin decl) origin)
    (setf (spelling decl) 'ASSUMPTION)
    (unless (member decl (assuming (current-theory))
		    :test #'(lambda (d1 d2)
			      (and (formula-decl? d2)
				   (eq (spelling d2) 'ASSUMPTION)
				   (tc-eq (definition d1) (definition d2)))))
      (setf (assuming (current-theory))
	    (append (assuming (current-theory)) (list decl))))
    (add-decl decl nil)
    decl))
    

;(defmethod check-nonempty-type ((te subtype) expr &optional dtypes)
;  (unless (nonempty? te)
;    (if (uninterpreted-predicate? (predicate te))
;	(generate-existence-tcc te expr dtypes 'AXIOM)
;	(generate-existence-tcc te expr dtypes))
;    (setf (nonempty? te) t)))

;(defmethod check-nonempty-type ((te tupletype) expr &optional dtypes)
;  (check-nonempty-type (types te) expr dtypes))

;(defmethod check-nonempty-type ((te funtype) expr &optional dtypes)
;  ;;(or (empty? (domain te))
;      (check-nonempty-type
;       (range te) expr
;       (append dtypes (domain te))))
;  ;;)

;(defmethod check-nonempty-type ((te recordtype) expr &optional dtypes)
;  (check-nonempty-type (mapcar #'type (fields te)) expr dtypes))

;(defmethod check-nonempty-type ((te dep-binding) expr &optional dtypes)
;  (check-nonempty-type (type te) expr dtypes))

;(defmethod check-nonempty-type ((list list) expr &optional dtypes)
;  (when list
;    (check-nonempty-type (car list) expr dtypes)
;    (check-nonempty-type (cdr list) expr dtypes)))

(defmethod set-nonempty-type :around ((te type-expr) decl)
  (unless (nonempty? te)
    (unless (decl-formal? decl)
      (push (cons te decl) (nonempty-types (current-theory))))
    (setf (nonempty? te) t)
    (when (print-type te)
      (setf (nonempty? (print-type te)) t))
    (call-next-method)))

(defmethod set-nonempty-type ((te type-name) decl)
  (declare (ignore decl))
  nil)

(defmethod set-nonempty-type ((te type-application) decl)
  (declare (ignore decl))
  nil)

(defmethod set-nonempty-type ((te subtype) decl)
  (set-nonempty-type (supertype te) decl))

(defmethod set-nonempty-type ((te tupletype) decl)
  (set-nonempty-type (types te) decl))

(defmethod set-nonempty-type ((te cotupletype) decl)
  ;; Can't propagate, as [S + T] nonempty implies S or T nonempty
  (declare (ignore decl))
  nil)

(defmethod set-nonempty-type ((te funtype) decl)
  (declare (ignore decl))
  nil)

(defmethod set-nonempty-type ((te recordtype) decl)
  (set-nonempty-type (mapcar #'type (fields te)) decl))

(defmethod set-nonempty-type ((te struct-sub-recordtype) decl)
  (set-nonempty-type (type te) decl)
  (set-nonempty-type (mapcar #'type (fields te)) decl))

(defmethod set-nonempty-type ((te struct-sub-tupletype) decl)
  (set-nonempty-type (type te) decl)
  (set-nonempty-type (types te) decl))

(defmethod set-nonempty-type ((te dep-binding) decl)
  (set-nonempty-type (type te) decl))

(defmethod set-nonempty-type ((list list) decl)
  (when list
    (set-nonempty-type (car list) decl)
    (set-nonempty-type (cdr list) decl)))

(defun generate-existence-tcc (type expr &optional (fclass 'OBLIGATION))
  (unless (eq *generate-tccs* 'none)
    (let* ((*old-tcc-name* nil)
	   (ndecl (make-existence-tcc-decl type fclass)))
      (insert-tcc-decl 'existence expr type ndecl)
      ndecl)))

(defun make-existence-tcc-decl (type fclass)
  (multiple-value-bind (dfmls dacts thinst)
      (unless (or *in-checker* *in-evaluator*)
	(new-decl-formals (current-declaration)))
    (declare (ignore dacts))
    (let* ((*generate-tccs* 'none)
	   (cdecl (current-declaration))
	   (cth (module cdecl))
	   (stype (raise-actuals type nil))
	   (var (make-new-variable '|x| type))
	   (id (make-tcc-name))
	   (edecl (if (eq fclass 'OBLIGATION)
		      (mk-existence-tcc id nil dfmls type)
		      (mk-formula-decl id nil fclass nil dfmls)))
	   (form (with-current-decl edecl
		   (make!-exists-expr (list (mk-bind-decl var stype stype))
				      *true*)))
	   (tform (with-current-decl edecl
		    (add-tcc-conditions form)))
	   (uform (if thinst
		      (with-current-decl edecl
			(subst-mod-params tform thinst cth cdecl))
		      tform)))
      (setf (definition edecl) uform)
      (typecheck* edecl nil nil nil))))

(defun make-domain-tcc-bindings (types type &optional bindings)
  (if (null types)
      (nreverse bindings)
      (let ((nbind (unless (and (typep (car types) 'dep-binding)
				(or (occurs-in (car types) type)
				    (occurs-in (car types) (cdr types))))
		     (let ((id (if (typep (car types) 'dep-binding)
				   (id (car types))
				   (make-new-variable '|x| (cons type types)))))
		       (typecheck* (mk-bind-decl id (car types) (car types))
				   nil nil nil)))))
	(make-domain-tcc-bindings (cdr types) type
				  (if nbind
				      (cons nbind bindings)
				      bindings)))))


;;; Assuming and mapped axiom TCC generation.  

(defun generate-assuming-tccs (modinst expr &optional theory)
  (let ((mod (or theory (get-theory modinst))))
    (unless (or (eq mod (current-theory))
		(null (assuming mod))
		(and (formals-sans-usings mod) (null (actuals modinst)))
		(already-generated-assuming? modinst))
      (let ((cdecl (or (and (or *in-checker* *in-evaluator*)
			    *top-proofstate*
			    (declaration *top-proofstate*))
		       (current-declaration))))
	(unless (and (not *in-checker*)
		     (existence-tcc? cdecl))
	  (let ((assumptions (remove-if-not #'assumption? (assuming mod))))
	    ;; Don't want to save this module instance unless it does not
	    ;; depend on any conditions, including implicit ones in the
	    ;; prover
	    (dolist (ass assumptions)
	      (if (or (eq (kind ass) 'existence)
		      (nonempty-formula-type ass))
		  (let ((atype (subst-mod-params (existence-tcc-type ass)
				   modinst
				 mod)))
		    (if (typep cdecl 'existence-tcc)
			(let ((dtype (existence-tcc-type cdecl)))
			  (if (tc-eq atype dtype)
			      (generate-existence-tcc atype expr)
			      (check-nonempty-type atype expr)))
			(check-nonempty-type atype expr)))
		  (let ((*old-tcc-name* nil))
		    (multiple-value-bind (ndecl subsumed-by)
			(make-assuming-tcc-decl ass modinst)
		      (cond (ndecl
			     (insert-tcc-decl 'assuming modinst ass ndecl))
			    (subsumed-by
			     (add-tcc-comment 'assuming modinst ass
					      (list 'subsumed subsumed-by)
					      subsumed-by))
			    (t (add-tcc-comment 'assuming modinst ass)))))))
	    (unless (or (or *in-checker* *in-evaluator*)
			(mappings modinst)
			(some #'(lambda (tcc-cond)
				  (not (typep tcc-cond '(or bind-decl list))))
			      *tcc-conditions*))
	      (assert (or (null (resolutions modinst))
			  (module? (declaration modinst))))
	      (add-to-assuming-instances modinst expr))))))))

(defun add-to-assuming-instances (modinst expr)
  (unless (let ((*allow-var-decl-comparison* t))
	    (assoc modinst (assuming-instances (current-theory))
		   :test #'tc-eq))
    (let ((th (or (declaration modinst) (get-theory modinst))))
      (assert (theory-element? (current-declaration)))
      (dolist (ainst (assuming-instances th))
	(let ((amodinst (subst-mod-params (car ainst) modinst th)))
	  (unless (let ((*allow-var-decl-comparison* t))
		    (assoc amodinst (assuming-instances (current-theory))
			   :test #'tc-eq))
	    (if (theory-element? (caddr ainst))
		(push (list amodinst (cadr ainst) (caddr ainst))
		      (assuming-instances (current-theory)))
		(push (list amodinst) (assuming-instances (current-theory)))))))
      (push (list modinst expr (current-declaration))
	    (assuming-instances (current-theory))))))

(defun already-generated-assuming? (modinst)
  "Checks if modinst is in the assuming-instances of the current theory,
which is the transitive closure of the immediate assuming instances."
  (assert (fully-instantiated? modinst))
  (let ((*allow-var-decl-comparison* t))
    (assoc modinst (assuming-instances (current-theory))
	   :test #'tc-eq)))


(defmethod existence-tcc-type ((decl existence-tcc))
  (existence-tcc-type (definition decl)))

(defmethod existence-tcc-type ((decl formula-decl))
  (existence-tcc-type (definition decl)))

(defmethod existence-tcc-type ((ex application))
  (existence-tcc-type (args2 ex)))

(defmethod existence-tcc-type ((ex quant-expr))
  (type (car (bindings ex))))

(defun make-assuming-tcc-decl (ass modinst)
  (multiple-value-bind (dfmls dacts thinst)
      (unless (or *in-checker* *in-evaluator*)
	(new-decl-formals (current-declaration)))
    (declare (ignore dacts))
    (unless (closed-definition ass)
      (let* ((*in-checker* nil)
	     (*current-context* (context ass)))
	(setf (closed-definition ass)
	      (universal-closure (definition ass)))))
    (assert (closed-definition ass))
    (let* ((*generate-tccs* 'none)
	   (cdecl (current-declaration))
	   (cth (module cdecl))
	   (id (make-tcc-name))
	   (tccdecl (mk-assuming-tcc id nil modinst ass dfmls))
	   (expr (subst-mod-params (closed-definition ass) modinst (module ass)))
	   (true-conc? (tcc-evaluates-to-true expr))
	   (tform (unless true-conc? (add-tcc-conditions expr)))
	   (sform (unless true-conc?
		    (if thinst
			(with-current-decl tccdecl
			  (subst-mod-params tform thinst cth cdecl))
			tform)))
	   (uform (cond ((or true-conc? (tcc-evaluates-to-true sform))
			 *true*)
			(*simplify-tccs*
			 (pseudo-normalize sform))
			(t (beta-reduce sform)))))
      (assert (every #'(lambda (fv) (memq (declaration fv) *keep-unbound*))
		     (freevars uform)))
      (unless (tc-eq uform *true*)
	(when (and *false-tcc-error-flag*
		   (tc-eq uform *false*))
	  (type-error ass
	    "Assuming TCC for this expression simplifies to false:~2%  ~a"
	    tform))
	(setf (definition tccdecl) uform)
	(typecheck* tccdecl nil nil nil)))))


(defun generate-mapped-eq-def-tcc (lhs rhs mapthinst)
  (multiple-value-bind (dfmls dacts thinst)
      (unless (or *in-checker* *in-evaluator*)
	(new-decl-formals (current-declaration)))
    (declare (ignore dacts))
    (let* ((*generate-tccs* 'none)
	   (cdecl (current-declaration))
	   (cth (module cdecl))
	   (id (make-tcc-name))
	   (tccdecl (mk-mapped-eq-def-tcc id nil mapthinst dfmls))
	   (expr (make-def-tcc-equation lhs rhs))
	   (true-conc? (tcc-evaluates-to-true expr))
	   (tform (unless true-conc? (add-tcc-conditions expr)))
	   (sform (unless true-conc?
		    (if thinst
			(with-current-decl tccdecl
			  (subst-mod-params tform thinst cth cdecl))
			tform)))
	   (uform (cond ((or true-conc? (tcc-evaluates-to-true sform))
			 *true*)
			(*simplify-tccs*
			 (pseudo-normalize sform))
			(t (beta-reduce sform)))))
      (assert (null (freevars uform)))
      (unless (tc-eq uform *true*)
	(when (and *false-tcc-error-flag*
		   (tc-eq uform *false*))
	  (type-error expr
	    "Definition equality TCC for this expression simplifies to false:~2%  ~a"
	    expr))
	(setf (definition tccdecl) uform)
	(typecheck* tccdecl nil nil nil)
	(insert-tcc-decl 'mapped-definition-equality mapthinst lhs tccdecl)))))

;; Generally, lhs is a function name, rhs a lambda-expr.
;; This generates the more useful FORALL appl = body form
(defun make-def-tcc-equation (lhs rhs)
  (make-def-tcc-equation* rhs lhs nil))

(defmethod make-def-tcc-equation* ((rhs lambda-expr) lhs dbindings)
  (with-slots (bindings expression) rhs
    (let ((app (make!-application* lhs (mapcar #'mk-name-expr bindings))))
      (make-def-tcc-equation* expression app (append dbindings bindings)))))

(defmethod make-def-tcc-equation* (rhs lhs dbindings)
  (let ((eqn (make-equation lhs rhs)))
    (make!-forall-expr dbindings eqn)))

(defun generate-mapped-axiom-tccs (modinst)
  (let ((mod (if (resolution modinst)
		 (declaration modinst)
		 (get-theory modinst))))
    (unless (and (not *collecting-tccs*)
		 (eq mod (current-theory)))
      (let ((prev (find modinst (assuming-instances (current-theory))
			:test #'(lambda (x y)
				  (not (eq (simple-match (car y) x) 'fail))))))
	(if prev
	    (let ((aprev (or (cadr prev) (car prev))))
	      (pvs-info "Mapped axiom TCCs not generated for~%  ~w~%~
                         as they are subsumed by the TCCs generated for~%  ~w"
		modinst (place-string aprev) aprev))
	    (let* ((*old-tcc-name* nil))
	      ;; Don't want to save this module instance unless it does not
	      ;; depend on any conditions, including implicit ones in the
	      ;; prover
	      (unless (or *in-checker* *in-evaluator* *collecting-tccs*
			  (some #'(lambda (tcc-cond)
				    (not (typep tcc-cond '(or bind-decl list))))
				*tcc-conditions*))
		(assert (or (null (resolutions modinst))
			    (module? (declaration modinst))
			    (theory-reference? (declaration modinst))))
		(push (list modinst nil (current-declaration))
		      (assuming-instances (current-theory))))
	      (dolist (axpair (collect-mapping-axioms modinst mod))
		(let ((axiom (car axpair))
		      (defn (cdr axpair)))
		  (assert (axiom? axiom))
		  (multiple-value-bind (ndecl mappings-alist)
		      (make-mapped-axiom-tcc-decl axiom defn modinst mod)
		    ;; ndecl is nil if mapped axion simplifies to *true*
		    (let ((netype (when ndecl (nonempty-formula-type ndecl))))
		      (if (and ndecl
			       (or (null netype)
				   (possibly-empty-type? netype)))
			  (let ((needs-interp (find-needs-interpretation
					       (definition ndecl)
					       modinst mod mappings-alist)))
			    (if needs-interp
				(unless *collecting-tccs*
				  (pvs-warning
				      "Axiom ~a is not mapped to a TCC because~%  ~?~% ~
                                     ~:[is~;are~] not interpreted."
				    (id axiom) *andusingctl* needs-interp (cdr needs-interp)))
				(insert-tcc-decl 'mapped-axiom modinst axiom ndecl)))
			  ;;(insert-tcc-decl 'mapped-axiom modinst axiom ndecl)
			  (if ndecl
			      (add-tcc-comment
			       'mapped-axiom nil modinst
			       (cons 'map-to-nonempty 
				     (format nil
					 "%~a~%  % was not generated because ~a is non-empty"
				       (unpindent ndecl 2 :string t :comment? t)
				       (unpindent netype 2 :string t :comment? t))))
			      (add-tcc-comment
			       'mapped-axiom nil modinst)))))))))))))

;; (defun generate-mapped-axiom (modinst axiom-decl mapped-axiom-defn)
;;   (unless (some #'(lambda (decl)
;; 		    (and (formula-decl? decl)
;; 			 (eq (id decl) (id axiom-decl))))
;; 		(all-decls (current-theory)))
;;     (multiple-value-bind (dfmls dacts thinst)
;; 	(new-decl-formals axiom-decl)
;;       (declare (ignore dacts))
;;       (let* ((id (id axiom-decl))
;; 	     (mdecl (mk-formula-decl id nil 'AXIOM nil dfmls)))
	
;; 	(setf (definition mdecl) tform)
;;       (typecheck* edecl nil nil nil)
;;       (pvs-info "Added existence AXIOM for ~a:~%~a"
;; 	(id decl) (unparse edecl :string t))
;;       (add-decl edecl))))

;; Returns ((ax . def) ...) pairs.  The defs are the fully-instantiated form
;; of the closed-definitions of the axioms
(defmethod collect-mapping-axioms (thinst theory)
  (assert theory)
  (append (collect-mapping-axioms* (mappings thinst) thinst theory)
	  (mapcan #'(lambda (d)
		      (when (axiom? d)
			(ensure-closed-definition d)
			(list (cons d (closed-definition d)))))
	    (all-decls theory))))

(defmethod collect-mapping-axioms (thinst (decl mod-decl))
  (assert (fully-instantiated? thinst))
  (append (collect-mapping-axioms* (sort-mappings (mappings thinst)) thinst decl)
	  ;;(remove-if-not #'axiom? (generated decl))
	  ))

(defmethod collect-mapping-axioms (thinst (decl theory-reference))
  (assert (fully-instantiated? thinst))
  (error "Need to fix this - please send your PVS specs to pvs-bugs@csl.sri.com"))

;;; collect-mapping-axioms* walks down mappings, looking for theory
;;; references.  Then collects axioms from the RHS, and tries to instantiate
;;; them.  If successful they are returned.

(defun collect-mapping-axioms* (mappings thinst theory &optional axpairs)
  (if (null mappings)
      (nreverse axpairs)
      (let ((map-axpairs (collect-map-axioms (car mappings) thinst theory axpairs)))
	(collect-mapping-axioms* (cdr mappings) thinst theory
				 (append map-axpairs axpairs)))))

(defun collect-map-axioms (map thinst theory axpairs)
  (let ((ldecl (declaration (lhs map))))
    (when (typep ldecl '(or module theory-reference))
      (let ((lhs-axioms (collect-lhs-map-axioms (lhs map) thinst theory))
	    (rdecl (declaration (expr (rhs map)))))
	(typecase rdecl
	  (theory-reference
	   (nconc (mapcan #'(lambda (ax)
			      (unless (some #'(lambda (gtcc)
						(and (mapped-axiom-tcc? gtcc)
						     (eq ax (generating-axiom gtcc))))
					    (generated rdecl))
				(ensure-closed-definition ax)
				(list (cons ax (subst-mod-params
						   (closed-definition ax) thinst theory)))))
		    lhs-axioms)
		  axpairs))
	  (module
	   (nconc (mapcan #'(lambda (ax)
			      (unless (some #'(lambda (gtcc)
						(and (mapped-axiom-tcc? gtcc)
						     (eq ax (generating-axiom gtcc))))
					    (all-decls rdecl))
				(ensure-closed-definition ax)
				(list (cons ax (subst-mod-params
						   (closed-definition ax) thinst theory)))))
		    lhs-axioms)
		  axpairs)))))))

(defmethod collect-lhs-map-axioms ((lhs name) thinst theory)
  (collect-lhs-map-axioms (declaration lhs) thinst theory))

(defmethod collect-lhs-map-axioms ((lhs theory-reference) thinst theory)
  (collect-lhs-map-axioms (theory-name lhs) thinst theory))

(defmethod collect-lhs-map-axioms ((lhs module) thinst theory)
  (declare (ignore  thinst theory))
  (remove-if-not #'axiom? (all-decls lhs)))

;; (defmethod collect-mapping-axioms* ((map mapping) thinst theory)
;;   (let ((ldecl (declaration (lhs map))))
;;     (when (typep ldecl '(or module theory-reference))
;;       (let ((
;;   (collect-mapping-axioms* (lhs map) thinst theory))

;; (defmethod collect-mapping-axioms* ((n mapping-lhs) thinst theory)
;;   (when (typep (declaration n) '(or module theory-reference))
;;     (break "collect-mapping-axioms* mapping-lhs formals")
;;     (collect-mapping-axioms* (declaration n) thinst theory)))

;; ;; lhs without formals is just a name
;; (defmethod collect-mapping-axioms* ((n name) thinst theory)
;;   (let ((decl (declaration n))
;; 	(dthinst (module-instance n)))
;;     (when (fully-instantiated? dthinst)
;;       (collect-mapping-axioms* decl dthinst (module decl)))))

;; (defmethod collect-mapping-axioms* ((th module) thinst theory)
;;   (let ((axioms (remove-if-not #'axiom? (all-decls th))))
;;     (mapcar #'(lambda (ax)
;; 		(ensure-closed-definition ax)
;; 		(let ((cdef (subst-mod-params (closed-definition ax)
;; 				thinst theory ax)))
;; 		  (assert (fully-instantiated? cdef))
;; 		  (cons ax cdef)))
;;       axioms)))

(defun ensure-closed-definition (decl)
  (assert (formula-decl? decl))
  (unless (or (closed-definition decl)
	      (null (definition decl)))
    (let* ((*in-checker* nil)
	   (*current-context* (context decl)))
      (setf (closed-definition decl)
	    (universal-closure (definition decl))))))
  
;; (defmethod collect-mapping-axioms* ((thref theory-reference) thinst theory)
;;   (let* ((thname (theory-name thref))
;; 	 (decl (declaration thname)))
;;     (break "collect-mapping-axioms* theory-reference")
;;     (remove-if-not #'axiom? (all-decls theory))))

;; (defmethod collect-mapping-axioms* ((decl declaration) thinst theory)
;;   nil)


;;; Types which are treated as having interpretations
;;; See mapping-interpreted-types
(defvar *prelude-interpreted-types* nil)

(defun prelude-interpreted-type (name)
  (unless *prelude-interpreted-types*
    (setq *prelude-interpreted-types*
	  (list *boolean* *number* *number_field* *real* *rational*
		*integer* *naturalnumber* *posint* *negint*
		*even_int* *odd_int* *ordinal* *character*)))
  (member name *prelude-interpreted-types*
	  :test #'tc-eq))

(defun find-needs-interpretation (expr thinst theory mappings-alist)
  (declare (ignore thinst theory))
  (let ((needs-interp nil))
    (mapobject #'(lambda (ex)
		   (or (member ex needs-interp :test #'tc-eq)
		       (prelude-interpreted-type ex)
		       (and (name-expr? ex)
			    (resolution ex)
			    (module (declaration ex))
			    (memq (id (module (declaration ex)))
				  '(|booleans| |equalities| |if_def|
				    |number_fields| |reals|
				    |character_adt|)))
		       (adt-name-expr? ex)
		       (adt-type-name? ex)
		       (let ((decl (when (name? ex) (declaration ex))))
			 (when (and (declaration? decl)
				    (not (assq decl mappings-alist))
				    (not (eq (module decl) (current-theory)))
				    ;;(eq (module decl) theory)
				    (interpretable? decl))
			   (push ex needs-interp)))))
	       expr)
    needs-interp))

(defmethod nonempty-formula-type ((decl formula-decl))
  (nonempty-formula-type (definition decl)))

(defmethod nonempty-formula-type ((ex exists-expr))
  (when (and (tc-eq (expression ex) *true*)
	     (singleton? (bindings ex)))
    (type (car (bindings ex)))))

(defmethod nonempty-formula-type ((ex expr))
  nil)

(defun make-mapped-axiom-tcc-decl (axiom defn modinst mod)
  (multiple-value-bind (dfmls dacts thinst)
      (unless (or *in-checker* *in-evaluator*)
	(new-decl-formals axiom))
    (let* ((*generate-tccs* 'none)
	   (*generating-mapped-axiom-tcc* t)
	   (cdecl (current-declaration))
	   (cth (module cdecl))
	   (id (make-tcc-name nil (id axiom)))
	   (tccdecl (mk-mapped-axiom-tcc id nil modinst axiom dfmls)))
      (multiple-value-bind (expr mappings-alist)
	  (subst-mod-params defn
	      (lcopy modinst :dactuals dacts)
	    mod axiom)
	(if (every #'(lambda (fp)
		       (or (memq fp dfmls)
			   (memq fp (formals-sans-usings cth))))
		   (free-params expr))
	    (let* ((tform expr)		;(add-tcc-conditions expr)
		   (xform (if *simplify-tccs*
			      (pseudo-normalize tform)
			      (beta-reduce tform)))
		   (sform (raise-actuals (expose-binding-types
					  (universal-closure xform))
					 t))
		   (uform (if thinst
			      (subst-mod-params sform thinst cth axiom) ;cdecl
			      sform)))
	      (setf (definition tccdecl) uform)
	      (unless (tc-eq uform *true*)
		(when (and *false-tcc-error-flag*
			   (tc-eq uform *false*))
		  (type-error axiom
		    "Mapped axiom TCC for this expression simplifies to false:~2%  ~a"
		    tform))
		(values (typecheck* tccdecl nil nil nil) mappings-alist)))
	    (pvs-warning
		"Axiom ~a is not mapped to a TCC because it is not fully instantiated."
	      (id axiom))
	    )))))

(defun generate-selections-tccs (expr constructors adt)
  (when (and constructors
	     (not (eq *generate-tccs* 'none)))
    (let ((unselected
	   (remove-if #'(lambda (c)
			  (member (id c) (selections expr)
				  :test #'(lambda (x y)
					    (id-suffix (id (constructor y))
						       x))))
	     constructors)))
      (when unselected
	(generate-selections-tcc unselected expr adt)))))

(defun generate-selections-tcc (constructors expr adt)
  (multiple-value-bind (dfmls)
      (new-decl-formals (current-declaration))
    (let* ((*generate-tccs* 'none)
	   (id (make-tcc-name))
	   (ndecl (mk-cases-tcc id nil dfmls))
	   (form (with-current-decl ndecl
		   (typecheck* (mk-application 'NOT
				 (mk-disjunction
				  (mapcar #'(lambda (c)
					      (mk-application (recognizer c)
						(expression expr)))
				    constructors)))
			       *boolean* nil nil)))
	   (tform (add-tcc-conditions form))
	   (uform (beta-reduce tform))
	   (*bound-variables* nil)
	   (*old-tcc-name* nil))
      (setf (definition ndecl) uform)
      ;;(assert (tc-eq (type uform) *boolean*))
      (insert-tcc-decl 'cases (expression expr) adt ndecl))))

(defun generate-coselections-tccs (expr)
  (unless (eq *generate-tccs* 'none)
    (let* ((all-ins (dotimes (i (length (types (type (expression expr)))))
		      (makesym "in_~d" (1+ i))))
	   (unselected
	    (remove-if-not
		#'(lambda (in)
		    (member in (selections expr)
			    :key #'(lambda (s) (id (constructor s)))))
	      all-ins)))
      (when unselected
	(break "generate-coselections-tccs")))))

;;; The tcc-root-name is used to collect all TCCs associated with a given declaration
;;; and stored in the reason for tcc-decls and tcc-proof-info
(defun tcc-root-name (expr)
  (tcc-root-name* (current-declaration) expr))

(defmethod tcc-root-name* ((decl declaration) expr)
  (declare (ignore expr))
  (op-to-id
   (or (if (declaration? (generated-by decl))
	   (generated-by decl)
	   decl))))

(defmethod tcc-root-name* ((decl mapping-lhs) expr)
  (declare (ignore expr))
  (op-to-id decl))

(defmethod tcc-root-name* ((decl judgement) expr)
  ;; The 
  (or (when (equal (cdr (assq expr *compatible-pred-reason*)) "judgement")
	(id decl))
      ;; name the TCCs apart from the judgement TCC
      (let ((jid (call-next-method)))
	(intern (format nil "~a_" jid) :pvs))))

(defmethod tcc-root-name* ((imp importing) expr)
  (declare (ignore expr))
  (make-tcc-importing-id))
  
(defun make-tcc-name (&optional expr extra-id)
  (assert *current-context*)
  (if (or *in-checker* *in-evaluator*)
      (gensym)
      (make-tcc-name* (current-declaration) expr extra-id)))

(defmethod make-tcc-name* ((decl declaration) expr extra-id)
  (declare (ignore expr))
  (let ((decl-id (op-to-id
		  (or (if (declaration? (generated-by (current-declaration)))
			  (generated-by (current-declaration))
			  (current-declaration))))))
    (make-tcc-name** decl-id
		     (remove-if-not #'declaration?
		       (all-decls (current-theory)))
		     extra-id
		     1)))

(defmethod make-tcc-name* ((decl mapping-lhs) expr extra-id)
  (declare (ignore expr))
  (let ((decl-id (op-to-id (current-declaration))))
    (make-tcc-name** decl-id
		     (remove-if-not #'declaration?
		       (all-decls (current-theory)))
		     extra-id
		     1)))

(defmethod make-tcc-name* ((decl judgement) expr extra-id)
  (declare (ignore extra-id))
  (or (when (equal (cdr (assq expr *compatible-pred-reason*)) "judgement")
	(id decl))
      (call-next-method)))

(defmethod make-tcc-name* ((imp importing) expr extra-id)
  (declare (ignore expr))
  (let ((old-id (make-tcc-using-id))
	(new-id (make-tcc-importing-id)))
    (setq *old-tcc-name* (make-tcc-name** old-id nil nil 1))
    (make-tcc-name** new-id
		     (remove-if-not #'declaration?
		       (all-decls (current-theory)))
		     extra-id
		     1)))

(defun make-tcc-name** (id decls extra-id num)
  (let ((tcc-name (makesym "~a_~@[~a_~]TCC~d" id extra-id num)))
    (if (or (member tcc-name decls :key #'id)
	    (assq tcc-name *old-tcc-names*))
	(make-tcc-name** id decls extra-id (1+ num))
	tcc-name)))

(defmethod generating-judgement-tcc? ((decl number-judgement) expr)
  (declare (ignore expr))
  (id decl))

(defmethod generating-judgement-tcc? ((decl subtype-judgement) expr)
  (declare (ignore expr))
  (id decl))

(defmethod generating-judgement-tcc? ((decl name-judgement) expr)
  (and (id decl)
       (eq expr (name decl))))

(defmethod generating-judgement-tcc? ((decl name-judgement) (expr application))
  (and (id decl)
       (eq (operator* expr) (name decl))))

(defmethod generating-judgement-tcc? (decl expr)
  (declare (ignore decl expr))
  nil)


(defun make-tcc-using-id ()
  (let* ((theory (current-theory))
	 (imp (current-declaration))
	 (tdecls (all-decls theory))
	 (decls (memq imp tdecls))
	 (dimp (find-if
		   #'(lambda (d)
		       (and (typep d '(or importing
					  theory-abbreviation-decl))
			    (not (chain? d))))
		 decls))
	 (remimps (remove-if-not
		      #'(lambda (d)
			  (and (typep d '(or importing
					     theory-abbreviation-decl))
			       (not (chain? d))))
		    tdecls)))
    (makesym "IMPORTING~d" (1+ (position dimp remimps)))))

(defun make-tcc-importing-id ()
  (let ((imp (current-declaration)))
    (makesym "IMP_~a" (id (theory-name imp)))))

(defun subst-var-for-recs (conditions expr &optional vdecl)
  (let ((recdecl (current-declaration)))
    (if (and (def-decl? recdecl)
	     (recursive-signature recdecl))
	(let* ((vid (if vdecl (id vdecl) (make-new-variable '|v|
					   (cons expr conditions))))
	       (vbd (or vdecl
			(make!-bind-decl vid (recursive-signature recdecl))))
	       (vname (make-variable-expr vbd))
	       (prelist (append (reverse conditions) (list expr))))
	  (multiple-value-bind (slist bindings)
	      (subst-var-for-recs* prelist recdecl vname)
	    (let* ((sexpr (car (last slist)))
		   (svbd (substit vbd bindings))
		   (nexpr (if (and (not (eq sexpr expr))
				   (forall-expr? sexpr))
			      (copy sexpr
				'bindings (append (bindings sexpr)
						  (list svbd)))
			      sexpr))
		   (sconds (reverse (butlast slist))))
	      (values sconds nexpr svbd
		      (or (not (tc-eq sconds conditions))
			  (and (not (tc-eq nexpr expr))
			       (member svbd (freevars nexpr)
				       :test #'same-declaration)))))))
	(values conditions expr))))

(defun subst-var-for-recs* (conds recdecl vname &optional nconds bindings)
  (if (null conds)
      (values (nreverse nconds) bindings)
      (typecase (car conds)
	(bind-decl (let* ((ncond (substit (car conds) bindings))
			  (nbind (subst-var-for-recs** ncond recdecl vname)))
		     (subst-var-for-recs* (cdr conds) recdecl vname
					  (cons nbind nconds)
					  (if (eq nbind (car conds))
					      bindings
					      (acons (car conds) nbind bindings)))))
	(cons (let* ((bnd (or (cdr (assq (caar conds) bindings))
			      (caar conds)))
		     (sexp (substit (cdar conds) bindings))
		     (ex (subst-var-for-recs** sexp recdecl vname)))
		(subst-var-for-recs* (cdr conds) recdecl vname
				     (cons (cons bnd ex) nconds)
				     bindings)))
	(t (let* ((sexp (substit (car conds) bindings))
		  (ex (subst-var-for-recs** sexp recdecl vname)))
	     (subst-var-for-recs* (cdr conds) recdecl vname
				  (cons ex nconds)
				  bindings))))))

(defun subst-var-for-recs** (conditions recdecl vname)
  (gensubst conditions
    #'(lambda (x) (declare (ignore x)) (copy vname))
    #'(lambda (x) (and (name-expr? x)
		       (eq (declaration x) recdecl)))))

(defun make-new-variable (base expr &optional num &key exceptions)
  "Create a new id starting from the 'base' symbol and adding numbers till
an id is found that isn't in expr.  exceptions is a list of decls, the idea
is that we are building, e.g., dep-bindings from bind-decls, and we can use
the same id for the substitution."
  (let ((vid (if num (makesym "~a~d" base num) base)))
    (if (or (some #'(lambda (bv)
		      (and (eq vid (id bv))
			   (not (memq bv exceptions))))
		  *bound-variables*)
	    (id-occurs-in vid expr :exceptions exceptions))
	(make-new-variable base expr (if num (1+ num) 1))
	vid)))


;;; check-actuals-equality takes two names (with actuals) and generates
;;; the TCCs that give the equality of the two names.

(defun check-actuals-equality (name1 name2)
  (mapcar #'generate-actuals-tcc (actuals name1) (actuals name2)))

(defun generate-actuals-tcc (act mact)
  (let* ((*old-tcc-name* nil)
	 (ndecl (make-actuals-tcc-decl act mact)))
    (if ndecl
	(insert-tcc-decl 'actuals act nil ndecl)
	(add-tcc-comment 'actuals act nil))))

(defun make-actuals-tcc-decl (act mact)
  (multiple-value-bind (dfmls dacts thinst)
      (new-decl-formals (current-declaration))
    (declare (ignore dacts))
    (let* ((*generate-tccs* 'none)
	   (*generating-mapped-axiom-tcc* t)
	   (cdecl (current-declaration))
	   (cth (module cdecl))
	   (id (make-tcc-name))
	   (tccdecl (mk-same-name-tcc id nil dfmls))
	   (conc (with-current-decl tccdecl
		   (typecheck* (make-actuals-equality act mact)
			       *boolean* nil nil)))
	   (true-conc? (tcc-evaluates-to-true conc))
	   (form (unless true-conc? (add-tcc-conditions conc)))
	   (tform (cond ((or true-conc? (tcc-evaluates-to-true form))
			 *true*)
			(*simplify-tccs*
			 (pseudo-normalize (expose-binding-types
					    (universal-closure form))))
			(t (beta-reduce (expose-binding-types
					 (universal-closure form))))))
	   (uform (if thinst
		      (with-current-decl tccdecl
			(subst-mod-params tform thinst cth cdecl))
		      tform)))
      (unless (tc-eq uform *true*)
	(when (and *false-tcc-error-flag*
		   (tc-eq uform *false*))
	  (type-error act
	    "Actuals TCC for this expression simplifies to false:~2%  ~a"
	    form))
	(setf (definition tccdecl) uform)
	(typecheck* tccdecl nil nil nil)))))
  
(defun make-actuals-equality (act mact)
  (if (type-value act)
      (cond ((tc-eq (type-value act) (type-value mact))
	     *true*)
	    ((not (compatible? (type-value act) (type-value mact)))
	     (type-error act "Types are not compatible"))
	    (t (equality-predicates (type-value act) (type-value mact))))
      (mk-application '= (expr act) (expr mact))))

(defun equality-predicates (t1 t2 &optional precond)
  (equality-predicates* t1 t2 nil nil precond nil))

(defmethod equality-predicates* :around (t1 t2 p1 p2 precond bindings)
  (if (tc-eq-with-bindings t1 t2 bindings)
      (make-equality-between-predicates t1 p1 p2 precond)
      (call-next-method)))

(defun make-equality-between-predicates (t1 p1 p2 precond)
  (when (or p1 p2)
    (let* ((vid (make-new-variable '|x| (append p1 p2)))
	   (type (or t1
		     (reduce #'compatible-type (or p1 p2)
			     :key #'(lambda (p)
				      (domain (find-supertype (type p)))))))
	   (bd (make-bind-decl vid type))
	   (var (make-variable-expr bd))
	   (iff (make!-iff
		 (make!-conjunction*
		  (mapcar #'(lambda (p)
			      (make!-reduced-application p var))
		    p1))
		 (make!-conjunction*
		  (mapcar #'(lambda (p)
			      (make!-reduced-application p var))
		    p2))))
	   (ex (if precond
		   (make!-implication (make!-application precond var) iff)
		   iff)))
      (make!-forall-expr (list bd) ex))))

(defmethod equality-predicates* ((t1 dep-binding) t2 p1 p2 precond bindings)
  (equality-predicates* (type t1) t2 p1 p2 precond bindings))

(defmethod equality-predicates* (t1 (t2 dep-binding) p1 p2 precond bindings)
  (equality-predicates* t1 (type t2) p1 p2 precond bindings))

(defmethod equality-predicates* ((t1 type-name) (t2 type-name) p1 p2 precond
				 bindings)
  (assert (eq (declaration t1) (declaration t2)))
  (let ((npred (make-equality-between-predicates t1 p1 p2 precond)))
    (equality-predicates-list (actuals (module-instance t1))
			      (actuals (module-instance t2))
			      bindings npred)))

;; Normally just adds (predicate t2) to p2 and continues, but this can
;; mishandle  [x: t1, {y: t2 | p(x, y)]  {z: [t1, t2] | p(z)}
;; 
;; (defmethod equality-predicates* ((t1 tupletype) (t2 subtype) p1 p2 precond bindings)
;;   (let ((stype (find-supertype t2)))
;;     (assert (tupletype? stype))

;; (defmethod equality-predicates* ((t1 subtype) (t2 tupletype)

(defmethod equality-predicates* ((t1 subtype) (t2 type-expr) p1 p2 precond
				 bindings)
  (equality-predicates*
   (supertype t1) t2 (cons (predicate t1) p1) p2 precond bindings))

(defmethod equality-predicates* ((t1 type-expr) (t2 subtype) p1 p2 precond
				 bindings)
  (equality-predicates*
   t1 (supertype t2) p1 (cons (predicate t2) p2) precond bindings))

(defmethod equality-predicates* ((t1 subtype) (t2 subtype) p1 p2 precond
				 bindings)
  (cond ((subtype-of? t1 t2)
	 (equality-predicates* (supertype t1) t2
			       (cons (predicate t1) p1) p2 precond
			       bindings))
	((subtype-of? t2 t1)
	 (equality-predicates* t1 (supertype t2)
			       p1 (cons (predicate t2) p2) precond
			       bindings))
	(t
	 (equality-predicates* (supertype t1) (supertype t2)
			       (cons (predicate t1) p1)
			       (cons (predicate t2) p2)
			       precond
			       bindings))))

(defmethod equality-predicates* ((t1 funtype) (t2 funtype) p1 p2 precond
				 bindings)
  (let ((npred (make-equality-between-predicates t1 p1 p2 precond)))
    (equality-predicates-list (list (domain t1) (range t1))
			      (list (domain t2) (range t2))
			      bindings
			      (when npred (list npred)))))

(defmethod equality-predicates* ((t1 tupletype) (t2 tupletype) p1 p2 precond
				 bindings)
  (let ((npred (make-equality-between-predicates t1 p1 p2 precond)))
    (equality-predicates-list (types t1) (types t2) bindings
			      (when npred (list npred)))))

(defmethod equality-predicates* ((t1 cotupletype) (t2 cotupletype) p1 p2
				 precond bindings)
  (let ((npred (make-equality-between-predicates t1 p1 p2 precond)))
    (equality-predicates-list (types t1) (types t2) bindings
			      (when npred (list npred)))))

(defmethod equality-predicates* ((t1 recordtype) (t2 recordtype) p1 p2
				 precond bindings)
  (let ((npred (make-equality-between-predicates t1 p1 p2 precond)))
    (equality-predicates-list (fields t1) (fields t2) bindings
			      (when npred (list npred)))))

(defmethod equality-predicates* ((f1 field-decl) (f2 field-decl) p1 p2
				 precond binding)
  (assert (and (null p1) (null p2)))
  (equality-predicates* (type f1) (type f2) nil nil precond binding))

(defun equality-predicates-list (l1 l2 bindings preds)
  (if (null l1)
      (when preds
	(make!-conjunction* (nreverse preds)))
      (let* ((npred (equality-predicates* (car l1) (car l2) nil nil nil
					  bindings))
	     (newpreds (if npred (cons npred preds) preds))
	     (carl1 (car l1))
	     (carl2 (car l2))
	     (dep-bindings? (and (dep-binding? carl1)
				 (dep-binding? carl2))))
	(cond (dep-bindings?
	       (let* ((bd (make-bind-decl (id carl1) carl1))
		      (bdvar (make-variable-expr bd))
		      (new-cdrl1 (subst-var-into-deptypes
				  bdvar carl1 (cdr l1)))
		      (new-cdrl2 (subst-var-into-deptypes
				  bdvar carl2 (cdr l2)))
		      (*bound-variables* (cons bd *bound-variables*))
		      (epred (equality-predicates-list
			      new-cdrl1 new-cdrl2 bindings newpreds)))
		 (when epred
		   (make!-forall-expr (list bd) epred))))
	      ((dep-binding? carl1)
	       (let* ((bd (make-unique-binding carl1 l2))
		      (bdvar (make-variable-expr bd))
		      (new-cdrl1 (subst-var-into-deptypes
				  bdvar carl1 (cdr l1)))
		      (*bound-variables* (cons bd *bound-variables*))
		      (epred (equality-predicates-list
			      new-cdrl1 (cdr l2) bindings newpreds)))
		 (when epred
		   (make!-forall-expr (list bd) epred))))
	      ((dep-binding? carl2)
	       (let* ((bd (make-unique-binding carl2 l1))
		      (bdvar (make-variable-expr bd))
		      (new-cdrl2 (subst-var-into-deptypes
				  bdvar carl2 (cdr l2)))
		      (*bound-variables* (cons bd *bound-variables*))
		      (epred (equality-predicates-list
			      (cdr l1) new-cdrl2 bindings newpreds)))
		 (when epred
		   (make!-forall-expr (list bd) epred))))
	      (t
	       (equality-predicates-list (cdr l1) (cdr l2) bindings newpreds))))))

(defmethod equality-predicates* ((a1 actual) (a2 actual) p1 p2 precond
				 bindings)
  (if (type-value a1)
      (equality-predicates* (type-value a1) (type-value a2) p1 p2 precond
			    bindings)
      (let ((npred (make-equality-between-predicates nil p1 p2 precond)))
	(if npred
	    (make!-conjunction npred (make-equation (expr a1) (expr a2)))
	    (make-equation (expr a1) (expr a2))))))


;; make-new-var makes a unique binding from the given binding
(defun make-unique-binding (binding expr)
  (if (unique-binding? binding expr)
      (make-bind-decl (id binding) (type binding))
      (let ((vid (make-new-variable (id binding) expr 1)))
	(make-bind-decl vid (type binding)))))

(defun unique-binding? (binding expr)
  (let ((unique? t))
    (mapobject #'(lambda (ex)
		   (or (not unique?)
		       (when (and (name? ex)
				  (declaration ex)
				  (not (eq (declaration ex) binding))
				  (eq (id ex) (id binding)))
			 (setq unique? nil)
			 t)))
	       expr)
    unique?))

(defun generate-cond-disjoint-tcc (expr conditions values)
  (let* ((*old-tcc-name* nil)
	 (ndecl (make-cond-disjoint-tcc expr conditions values)))
    (if ndecl
	(insert-tcc-decl 'disjointness expr nil ndecl)
	(add-tcc-comment 'disjointness expr nil))))

(defun make-cond-disjoint-tcc (expr conditions values)
  (when (decl-formals (current-declaration)) (break "make-cond-disjoint-tcc"))
  (let* ((*generate-tccs* 'none)
	 (conc (make-disjoint-cond-property conditions values)))
    (when conc
      (let* ((*no-expected* nil)
	     (*bound-variables* *keep-unbound*)
	     (true-conc? (tcc-evaluates-to-true conc))
	     (tform (unless true-conc? (add-tcc-conditions conc)))
	     (uform (cond ((or true-conc? (tcc-evaluates-to-true tform))
			   *true*)
			  (*simplify-tccs*
			   (pseudo-normalize tform))
			  (t tform)))
	     (id (make-tcc-name)))
	(assert (tc-eq (find-supertype (type uform)) *boolean*))
	(unless (tc-eq conc *true*)
	  (when (and *false-tcc-error-flag*
		     (tc-eq uform *false*))
	    (type-error expr
	      "Disjointness TCC for this expression simplifies to false:~2%  ~a"
	      tform))
	  (typecheck* (mk-cond-disjoint-tcc id uform) nil nil nil))))))

(defun make-disjoint-cond-property (conditions values)
  (let ((pairs (make-disjoint-cond-pairs conditions
					 (pseudo-normalize values))))
    (make-disjoint-cond-property* (nreverse pairs) nil)))

(defun make-disjoint-cond-property* (pairs prop)
  (cond ((null pairs)
	 prop)
	((null prop)
	 (make-disjoint-cond-property* (cdr pairs) (car pairs)))
	(t (make-disjoint-cond-property*
	    (cdr pairs)
	    (make!-conjunction (car pairs) prop)))))

(defun make-disjoint-cond-pairs (conditions values &optional result)
  (if (null (cdr conditions))
      result
      (make-disjoint-cond-pairs
       (cdr conditions)
       (cdr values)
       (append result
	       (mapcan #'(lambda (c v)
			   (unless (tc-eq v (car values))
			     (list
			      (make-negated-conjunction (car conditions) c))))
		       (cdr conditions)
		       (cdr values))))))

(defun generate-cond-coverage-tcc (expr conditions)
  (let* ((*old-tcc-name* nil)
	 (ndecl (make-cond-coverage-tcc expr conditions)))
    (if ndecl
	(insert-tcc-decl 'coverage expr nil ndecl)
	(add-tcc-comment 'coverage expr nil))))

(defun make-cond-coverage-tcc (expr conditions)
  (when (decl-formals (current-declaration)) (break "make-cond-coverage-tcc"))
  (let* ((*generate-tccs* 'none)
	 (conc (make!-disjunction* conditions))
	 (true-conc? (tcc-evaluates-to-true conc))
	 (tform (unless true-conc? (add-tcc-conditions conc)))
	 (uform (cond ((or true-conc? (tcc-evaluates-to-true tform))
		       *true*)
		      (*simplify-tccs*
		       (pseudo-normalize tform))
		      (t (beta-reduce tform))))
	 (*no-expected* nil)
	 (*bound-variables* *keep-unbound*)
	 (id (make-tcc-name)))
    (assert (tc-eq (find-supertype (type uform)) *boolean*))
    (unless (tc-eq uform *true*)
      (when (and *false-tcc-error-flag*
		 (tc-eq uform *false*))
	(type-error expr
	  "Coverage TCC for this expression simplifies to false:~2%  ~a"
	  tform))
      (typecheck* (mk-cond-coverage-tcc id uform) nil nil nil))))

(defvar *evaluate-tccs* t)

(defun tcc-evaluates-to-true (&rest exprs)
  (when *evaluate-tccs*
    (tcc-evaluates-to-true* exprs)))

(defun tcc-evaluates-to-true* (exprs)
  (and exprs
       (or (and (ground-arithmetic-term? (car exprs))
		(get-arithmetic-value (car exprs)))
	   (tcc-evaluates-to-true* (cdr exprs)))))

(defun add-tcc-comment (kind expr type &optional reason subsumed-by)
  (unless (or *in-checker* *in-evaluator* *collecting-tccs*)
    (let* ((decl (current-declaration))
	   (theory (current-theory))
	   ;;(genby (cdr (assq expr *set-type-generated-terms*)))
	   (place (or (place *set-type-actuals-name*)
		      (place expr) (place type)
		      (place *set-type-subtype*)
		      (place *set-type-expr*)
		      ))
	   (preason (cdr (assq expr *compatible-pred-reason*)))
	   (aname (or *set-type-actuals-name* expr))
	   (tcc-comment (list kind aname type reason place preason ;;genby
			      ))
	   (decl-tcc-comments (assq decl (tcc-comments theory))))
      ;; (assert (or (place expr)
      ;; 		  (let ((genby (assq expr *set-type-generated-terms*)))
      ;; 		    (and genby (place (cadr genby))))))
      (unless place (break "add-tcc-comment: no place?"))
      (unless (member tcc-comment (cdr decl-tcc-comments) :test #'equal)
	(if decl-tcc-comments
	    (nconc decl-tcc-comments (list tcc-comment))
	    (push (list decl tcc-comment) (tcc-comments theory)))
	(when subsumed-by
	  (push subsumed-by (refers-to (current-declaration))))))))

(defun numbers-of-tccs (theory)
  (let ((total 0) (proved 0) (unproved 0) (subsumed 0) (simplified 0))
    (dolist (elt (all-decls theory))
      (when (tcc? elt)
	(incf total)
	(if (proved? elt)
	    (incf proved)
	    (incf unproved))))
    (dolist (decl-tcc-comments (tcc-comments theory))
      ;; decl tcc-comment alist
      (dolist (tcc-comment (cdr decl-tcc-comments))
	(incf total)
	(if (and (consp (fourth tcc-comment))
		 (eq (car (fourth tcc-comment)) 'subsumed))
	    (incf subsumed)
	    (incf simplified))))
    (values total proved unproved subsumed simplified)))

(defun print-tcc-comment (decl kind expr type reason place preason ;;&optional genby
								     )
  "This is applied by show-tccs to an element of tcc-comments, which is a
list of kind, etc."
  (let* ((submsg (case kind
		   (actuals nil)
		   (assuming (format nil "generated from assumption ~a.~a"
			       (id (module type)) (id type)))
		   (cases
		    (format nil
			"for missing ELSE of CASES expression over datatype ~a"
		      (id type)))
		   (coverage nil)
		   (disjointness nil)
		   (existence nil)
		   (mapped-axiom
		    (unpindent type 4 :string t :comment? t))
		   ((subtype termination-subtype)
		    (format nil "expected type ~a"
		      (unpindent type 19 :string t :comment? t)))
		   (termination nil)
		   (well-founded (format nil "for ~a" (id decl)))))
	 (plstr (when place
		  (format nil "(at line ~d, column ~d)"
		    (starting-row place) (starting-col place)))))
    (format nil
	"% The ~@[~a ~]~a TCC ~@[~a~] in decl ~a for~@[~% % term generated from ~a~]~
                        ~:[ ~;~%    % ~]~@[~a~]~@[~%    % ~a~]~%  ~a"
      preason kind plstr ;(car genby)
      (if (importing? decl) "IMPORTING" (id decl))
      nil
      (> (+ (length preason)
	    (length (string kind))
	    (length plstr)
	    (if expr
		(length (unpindent expr 4 :string t :comment? t))
		0)
	    25)
	 *default-char-width*)
      (when expr
	(unpindent expr 4 :string t :comment? t))
      submsg
      (tcc-reason-string reason))))

(defun print-tccinfo (tccinfo simplified?)
  "This is applied by show-tccs to an element of tcc-comments, which is a
list of kind, etc."
  ;; (decl kind expr type reason place preason)
  (let* ((decl (current-declaration))
	 (kind (tccinfo-kind tccinfo))
	 (expr (tccinfo-expr tccinfo))
	 (type (tccinfo-type tccinfo))
	 (reason (tccinfo-reason tccinfo))
	 (submsg (case kind
		   (actuals nil)
		   (assuming (format nil "generated from assumption ~a.~a"
			       (id (module type)) (id type)))
		   (cases
		    (format nil
			"for missing ELSE of CASES expression over datatype ~a"
		      (id type)))
		   (coverage nil)
		   (disjointness nil)
		   (existence nil)
		   (mapped-axiom
		    (unpindent type 4 :string t :comment? t))
		   ((subtype termination-subtype)
		    (format nil "expected type ~a"
		      (unpindent type 19 :string t :comment? t)))
		   (termination nil)
		   (well-founded (format nil "for ~a" (id decl))))))
    (format t
	"~% The ~a TCC for ~:[ ~;~%   ~]~@[~a~]~@[~%    ~a~]~%  ~a"
      kind
      (> (+ (length (string kind))
	    (if expr
		(length (unpindent expr 4 :string t :comment? t))
		0)
	    25)
	 *default-char-width*)
      (when expr
	(unpindent expr 4 :string t :comment? t))
      submsg
      (if simplified?
	  "    simplified to TRUE"
	  (format nil "    simplified to ~%    ~a"
	    (tccinfo-formula tccinfo))))))

(defun tcc-reason-string (reason)
  (cond ((eq reason 'in-context)
	 "% TCC is in the logical context")
	((and (consp reason) (eq (car reason) 'subsumed))
	 (format nil "% is subsumed by ~a" (id (cadr reason))))
	((and (consp reason) (eq (car reason) 'map-to-nonempty))
	 (cdr reason))
	((null reason)
	 "% was not generated because it simplifies to TRUE.")
	(t (break "problem"))))
