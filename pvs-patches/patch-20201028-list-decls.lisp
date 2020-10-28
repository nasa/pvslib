;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; -*- Mode: Lisp -*- ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; list-decls.lisp -- 
;; Author          : Sam Owre
;; Created On      : Sun Dec 19 16:12:09 1993
;; Last Modified By: Sam Owre
;; Last Modified On: Thu Oct 29 22:43:06 1998
;; Update Count    : 3
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

;;; ---------------------------------------------
;;; Support for the show-declaration, find-declaration,
;;; whereis-declaration-used, and list-declarations commands.  Note that
;;; all of these return a file name rather than the actual list; this is
;;; because the list could get large.


(in-package :pvs)

(export '(collect-pvs-file-decls-info show-expanded-form show-declaration
	  goto-declaration get-term-at find-declaration list-declarations
	  whereis-declaration-used names-info json-decl-list ptype-of))

(defvar *list-declarations* nil)

;;; Called by Emacs - show-expanded-form command

(defun show-expanded-form (oname origin pos1 &optional (pos2 pos1) all?)
  (if (or (equal origin "Declaration")
	  (typechecked-origin? oname origin))
      (multiple-value-bind (object ctheory)
	  (get-object-at oname origin pos1 pos2 t)
	(when object
	  (let* ((*disable-gc-printout* t)
		 (*pseudo-normalizing* t)
		 (*current-context* (context ctheory))
		 (expform (if (listp object)
			      (mapcar #'(lambda (x)
					  (full-name x nil (not all?)))
				object)
			      (full-name object nil (not all?)))))
	    (pvs-buffer "Expanded Form"
	      (unparse expform :string t)
	      t))
	  (place-list (place object))))
      (pvs-message "~a is not typechecked" oname)))

;;; Called by Emacs - show-declaration command

(defvar *containing-type* nil)
(defvar *show-declarations-alist* nil)

(defun show-declaration (oname origin pos &optional x?)
  (if (or (equal origin "declaration")
	  (typechecked-origin? oname origin))
      (multiple-value-bind (object *containing-type* theory)
	  (get-id-object-at oname origin pos t)
	(let ((decl (get-decl-associated-with object)))
	  (if decl
	      (let ((thname (format nil "~@[~a@~]~a"
			      (when (lib-datatype-or-theory? theory)
				(get-library-id (context-path theory)))
			      (id theory))))
		(multiple-value-bind (declstr place-hash)
		    (pp-string-with-view
		     decl
		     :precomments
		     (format nil "% From theory ~a:" thname)
		     :postcomments
		     (if *containing-type*
			 (let ((kind (typecase decl
				       (field-decl "field")
				       (dep-binding "declaration"))))
			   (when kind
			     (format nil "% (~a in ~a)" kind
				     *containing-type*)))
			 (unless (slot-exists-p decl 'id)
			   (format nil "% of type: ~a"
			     (typecase decl
			       (string-expr "string")
			       (t (type decl)))))))
		  (let ((dname (format nil "~a.~a"
				 thname
				 (if (slot-exists-p decl 'id) (id decl) decl))))
		    (setf *show-declarations-alist*
			  (acons dname (list decl place-hash)
				 (remove dname *show-declarations-alist*
					 :key #'car :test #'string=)))
		    (if x?
			(pvs-wish-source
			 (with-output-to-temp-file
			  (format t "show-declaration ~a ~a ~a {~a}~%"
			    (id object)
			    (min (length declstr) *default-char-width*)
			    (count #\Newline declstr)
			    declstr)))
			(pvs-buffer dname declstr 'popto t nil "Declaration"))))
	      ;;(pvs-message "Could not find associated declaration")
	      ))))
      (pvs-message "~a is not typechecked" oname)))

(defmethod decl-nt ((decl declaration))
  (let ((th (module decl)))
    (if th
	(cond ((memq decl (theory th)) 'theory-elt)
	      ((memq decl (assuming th)) 'assuming)
	      ((memq decl (formals th)) 'theory-formals)
	      (t (assert (binding? decl)) 'expr))
	'expr)))

(defmethod decl-nt ((decl simple-decl))
  'simplebind)

(defmethod decl-nt ((decl t))
  'expr)


;;; Called by Emacs - goto-declaration command

(defun goto-declaration (oname origin pos)
  (if (typechecked-origin? oname origin)
      (let* ((object (get-id-object-at oname origin pos t))
	     (decl (get-decl-associated-with object)))
	(when decl
	  (pvs-locate (module decl) decl)))
      (pvs-message "~a has not been typechecked" oname)))

(defun typechecked-origin? (name origin)
  "origin is one of the strings:
 prelude, pvsio_prelude, prelude-theory, pvs, proof-status, tccs, ppe, or declaration"
  (case (intern (#+allegro string-downcase #-allegro string-upcase origin)
		:pvs)
    ((prelude pvsio_prelude prelude-theory) t)
    (pvs (typechecked-file? name))
    (proof-status t)
    ((tccs ppe) (get-theory name))
    (declaration t)
    (t nil)))

(defmethod get-decl-associated-with ((obj datatype-or-module))
  (pvs-message "The cursor is at the declaration for this identifier")
  nil)

(defmethod get-decl-associated-with ((obj modname))
  (pvs-message "~a is a theory; to see it use C-c C-f ~a"
    (id obj) (filename (get-theory obj)))
  nil)

(defmethod get-decl-associated-with ((obj name))
  (cond ((resolution obj)
	 (declaration (resolution obj)))
	(t (pvs-message "~a has no resolution" (id obj))
	   nil)))

(defmethod get-decl-associated-with ((obj expname))
  (pvs-message "Show-declaration for EXPORTING names is not supported")
  nil)

(defmethod get-decl-associated-with ((obj declaration))
  (pvs-message "The cursor is at the declaration for this identifier")
  nil)

(defmethod get-decl-associated-with ((obj simple-decl))
  (pvs-message "The cursor is at the declaration for this identifier")
  nil)

(defmethod get-decl-associated-with ((obj simple-constructor))
  (pvs-message "The cursor is at the declaration for this identifier")
  nil)

(defmethod get-decl-associated-with ((obj field-application))
  (setq *containing-type* (find-supertype (type (argument obj))))
  (find (id obj) (fields *containing-type*) :key #'id))

(defmethod get-decl-associated-with ((obj field-assignment-arg))
  (if (and *containing-type*
	   (recordtype? *containing-type*))
      (find (id obj) (fields *containing-type*) :key #'id)
      obj))

(defmethod get-decl-associated-with ((obj projection-expr))
  obj)

(defmethod get-decl-associated-with ((obj injection-expr))
  obj)

(defmethod get-decl-associated-with ((obj injection?-expr))
  obj)

(defmethod get-decl-associated-with ((obj extraction-expr))
  obj)

(defmethod get-decl-associated-with ((obj projection-application))
  obj)

(defmethod get-decl-associated-with ((obj injection-application))
  obj)

(defmethod get-decl-associated-with ((obj injection?-application))
  obj)

(defmethod get-decl-associated-with ((obj extraction-application))
  obj)

(defmethod get-decl-associated-with ((obj string-expr))
  obj)

(defmethod get-decl-associated-with ((obj null))
  (pvs-message "Not at a valid id")
  nil)

(defun get-term-at (fileref pos1 &optional (pos2 pos1) typecheck?)
  "Given the fileref, a (row col) pos1, and optional pos2, finds the
corresponding PVS terms.  fileref is a PVS file or buffer (e.g. TCC buffer).
Returns a list of terms, from most specific to least."
  (with-pvs-file (name) fileref
    (multiple-value-bind (objects theories)
	(get-syntactic-objects-for name "pvs" typecheck?)
      (declare (ignore objects)) ;; for PVS files, it's just theories anyway
      (let ((theory (find-element-containing-pos theories pos1)))
	(unless theory
	  (pvs-error "Location error"
	    (format nil "~a is outside of any theory in file ~a:~
                         ~{~%  ~{~a: ~a~}~}"
	      pos1 fileref
	      (mapcar #'(lambda (th) (list (id th) (place-list (place th))))
		theories))))
	(when (or (equal pos1 pos2)
		  (within-place pos2 (place theory)))
	  (get-term-in-theory-at* theory pos1 pos2))))))

(defun get-term-in-theory-at* (theory pos1 pos2)
  "Given a theory which contains pos1 and pos2, if pos1 and pos2 both occur
in a single declaration of the theory, returns two values: the smallest term
containing pos1 and pos2, and a list of containing terms, leading to the
containing decl.  Otherwise it is a list of declarations."
  (let* ((decls (all-decls theory))
	 (decl (or (find-element-containing-pos decls pos1)
		   (find-decl-after-pos decls pos1))))
    (if (or (equal pos1 pos2)
	    (within-place pos2 (place decl)))
	(get-object-in-declaration-at decl pos1 pos2)
	;; Else return a list of decls containing pos1 and pos2
	(let ((decl2 (find-element-containing-pos decls pos2)))
	  (unless decl2
	    (setq decl2
		  (find-decl-before-pos decls pos2)))
	  (or (when (and decl decl2)
		(ldiff (memq decl decls) (cdr (memq decl2 decls))))
	      (when decl
		(list decl))
	      (when decl2
		(list decl2)))))))

(defun get-object-at (oname origin pos1 &optional (pos2 pos1) typecheck?)
  (multiple-value-bind (objects theories)
      (get-syntactic-objects-for oname origin typecheck?)
    (let ((theory (find-element-containing-pos theories pos1))
	  (npos2 (or pos2 pos1)))
      (if (or (equal pos1 npos2)
	      (within-place npos2 (place theory)))
	  (let ((object (get-object-in-theory-at objects theory pos1 npos2)))
	    (values object theory))
	  (pvs-message "Region may not cross theory boundaries")))))

(defun get-object-in-theory-at (objects theory pos1 pos2)
  (let* ((decls (all-decls theory))
	 (decl (find-element-containing-pos decls pos1)))
    (unless decl
      (setq decl (find-decl-after-pos decls pos1)))
    (if (or (equal pos1 pos2)
	    (within-place pos2 (place decl)))
	(or (get-object-in-declaration-at objects pos1 pos2)
	    decl)
	(let ((decl2 (find-element-containing-pos decls pos2)))
	  (unless decl2
	    (setq decl2
		  (find-decl-before-pos decls pos2)))
	  (or (when (and decl decl2)
		(ldiff (memq decl decls) (cdr (memq decl2 decls))))
	      (when decl
		(list decl))
	      (when decl2
		(list decl2)))))))

(defun find-decl-after-pos (decls pos)
  (when decls
    (if (and (place (car decls))
	     (or (< (car pos) (starting-row (place (car decls))))
		 (and (= (car pos) (starting-row (place (car decls))))
		      (<= (cadr pos) (starting-col (place (car decls)))))))
	(car decls)
	(find-decl-after-pos (cdr decls) pos))))

(defun find-decl-before-pos (decls pos &optional prev)
  (when decls
    (if (and (place (car decls))
	     (or (< (car pos) (starting-row (place (car decls))))
		 (and (= (car pos) (starting-row (place (car decls))))
		      (<= (cadr pos) (starting-col (place (car decls)))))))
	prev
	(find-decl-before-pos (cdr decls) pos (car decls)))))

(defun find-element-containing-pos (list pos)
  (when list
    (if (and (place (car list))
	     (or (precedes-place pos (place (car list)))
		 (within-place pos (place (car list)))))
	(car list)
	(find-element-containing-pos (cdr list) pos))))

(defun get-object-in-declaration-at (decl pos1 pos2)
  "Given a decl in which both pos1 and pos2 occur, returns the smallest term containing both, and the list of containing terms, up to the decl"
  (let ((objects nil)
	(*parsing-or-unparsing* t))
    (mapobject #'(lambda (ex)
		   (when (string-expr? ex)
		     (break "get-object-in-declaration-at"))
		   (or (and (declaration? ex) (generated-by ex)) ; no need to go down further
		       (and (typep ex '(or actual funtype type-name lambda-conversion))
			    (null (place ex)))
		       (and (typep ex '(and syntax
					(not (or exporting domain-tupletype arg-tuple-expr))))
			    (or (place ex)
				(typep ex '(or lambda-expr expr-as-type chained-branch))
				(break "Place not set"))
			    (place ex)
			    (within-place pos1 (place ex))
			    (or (equal pos1 pos2)
				(within-place pos2 (place ex)))
			    (unless (arg-tuple-expr? ex)
			      (push ex objects))
			    nil)
		       (when (and (place ex)
				  (typep ex '(and syntax
					      (not assignment)
					      (or funtype
					       tupletype
					       recordtype)))
				  (within-place pos1 (place ex))
				  (or (equal pos1 pos2)
				      (within-place pos2 (place ex))))
			 nil)))
	       decl)
    (let ((sobjects (sort objects #'occurs-in)))
      (values (car sobjects) (cdr sobjects)))))

(defun terminal? (obj)
  "PVS terms which have no subterms"
  (typep obj '(or name simple-decl rational-expr string-expr fieldex
	       field-application projection-application
	       injection-application injection?-application
	       extraction-application)))

(defun get-id-object-at (oname origin pos &optional typecheck?)
  (multiple-value-bind (objects theories)
      (get-syntactic-objects-for oname origin typecheck?)
    (let ((containing-type nil)
	  (object nil)
	  (theory (find-element-containing-pos theories pos))
	  (*parsing-or-unparsing* t))
      (mapobject #'(lambda (ex)
		     (or object
			 (and (syntax? ex)
			      (not (eq ex objects))
			      ;;(or (place ex) (break "Place not set"))
			      (place ex)
			      (or (terminal? ex)
				  (and (slot-exists-p ex 'id)
				       (within-place pos (id-place ex))))
			      (if (hash-table-p theories)
				  (let ((epos (gethash ex theories)))
				    (and epos
					 (within-place pos epos)))
				  (within-place pos (if (slot-exists-p ex 'id)
							(id-place ex)
							(place ex))))
			      (setq object ex)
			      t)
			 (when (and (typep ex '(and syntax
						   (not assignment)
						   (or funtype
						       tupletype
						       recordtype
						       string-expr)))
				    (if (hash-table-p theories)
					(let ((epos (gethash ex theories)))
					  (and epos
					       (within-place pos epos)))
					(and (place ex)
					     (within-place pos (place ex)))))
			   (typecase ex
			     (datatype-or-module (setq theory ex))
			     (expr (setq containing-type
					 (find-supertype (type ex))))
			     ((or funtype tupletype recordtype)
			      (setq containing-type ex)))
			   nil)
			 (when object t)))
		 objects)
      (values object containing-type theory))))

(defun get-syntactic-objects-for (name origin &optional typecheck?)
  "Given a name and an origin, returns two list values, depending
on the origin:
 ppe:  name is a theoryref, returns ppe-form and theory
 tccs: name is a theoryref, returns tcc-form and theory
 declaration: name is member of last M-x show-declarations result
"
  (case (intern #+allegro (string-downcase origin)
		#-allegro (string-upcase origin)
		:pvs)
    (ppe (let ((theory (get-theory name)))
	   (when theory
	     (values (ppe-form theory) (list theory)))))
    (tccs (let ((theory (get-theory name)))
	    (when theory
	      (values (tcc-form theory) (list theory)))))
    (declaration (let ((entry (assoc name *show-declarations-alist*
				     :test #'string=)))
		   (when entry
		     (values-list (cdr entry)))))
    (prelude (let ((theories (remove-if #'generated-by *prelude-theories*)))
	       (values theories theories)))
    (prelude-theory (let ((theory (get-theory name)))
		      (when theory
			(values theory (list theory)))))
    (t (let ((theories
	      (if typecheck?
		  (typecheck-file name nil nil nil t)
		  (parse-file name))))
	 (values theories theories)))))

;;; PVS objects may be referenced by names of the form
;;;   lib/filename.ext?place=(...)#theory/decl
;;; Ex1: In a PVS File, want the smallest term containing a (row col) point or
;;;      (row1 col1 row2 col2) region:
;;;    orders/lattices.pvs?place=(26, 30)

(defun pvs-object-at* (&key lib filename ext place force-parse?)
  (assert (and (listp place)
	       (member (length place) '(0 2 4) :test #'=)))
  (if (and filename ext)
      (let* ((libpath (get-library-reference lib))
	     (fpath (make-pathname :directory (namestring libpath) :name filename :type ext)))
	(if (file-exists-p fpath)
	    (cond ((string= ext "pvs")
		   (if place
		       (let* ((theories (get-theories-for-pvs-file filename lib force-parse?))
			      (pos1 (when place
				      (if (= (length place) 2)
					  place
					  (list (car place) (cadr place)))))
			      (pos2 (when pos1
				      (if (= (length place) 2)
					  pos1
					  (cddr place)))))
			 (if lib
			     (with-workspace libpath
			       (multiple-value-bind (obj containing-terms)
				   (get-object-in-declaration-at theories pos1 pos2)
				 (if obj
				     (description-for-json obj containing-terms force-parse?)
				     (error "No obj 1"))))
			     (multiple-value-bind (obj containing-terms)
				 (get-object-in-declaration-at theories pos1 pos2)
			       (if obj
				   (description-for-json obj containing-terms force-parse?)
				   (error "No obj")))))
		       (break "No place given.")))
		  (t (break "ext = ~a" ext)))
	    (break "filename and ext given, not found")))
      (break "Either filename or ext missing.")))

(defun get-theories-for-pvs-file (filename lib-ref &optional force-parse?)
  "We know the file exists; locally or under lib-ref."
  (if lib-ref
      (let ((lib-path (get-library-path lib-ref)))
	(if lib-path
	    (with-workspace lib-path
	      (let ((date&theories (gethash filename (current-pvs-files))))
		(cond (date&theories (cdr date&theories))
		      (force-parse?
		       (parse-file filename))
		      (t (pvs-warning "PVS file ~@[~a@~]~a exists, but is not parsed"
			   lib-ref filename)))))
	    (pvs-error "Missing library" "Couldn't find library ~a" lib-ref)))
      (let ((date&theories (gethash filename (current-pvs-files))))
	(cond (date&theories (cdr date&theories))
	      (force-parse? (parse-file filename))
	      (t (pvs-warning "PVS file ~a exists, but is not parsed"))))))

(defmethod description-for-json ((ex name) containing-terms &optional force-parse?)
  "for-json here means lists, alists, strings and symbols, and numbers.
In this case, returns a list of decl descriptions."
  (if (resolutions ex)
      ;; If there are resolutions, we know these are the only possibilities
      (mapcar #'(lambda (res)
		  (decl-for-json (declaration res) (module (declaration res))))
	(resolutions ex))
      (let ((theory (find-if #'module? containing-terms))
	    (thelt (find-if #'theory-element? containing-terms))
	    (pdecls nil))
	(assert theory)
	(assert thelt)
	;; First walk up the containing-terms, checking binding-exprs for
	;; matching ids
	(dolist (term containing-terms)
	  (when (binding-expr? term)
	    (let ((bd (find-if #'(lambda (bd) (eq (id ex) (id bd)))
			(bindings term))))
	      (when bd
		(push (decl-for-json bd theory) pdecls)))))
	;; Now through all the previous declarations, including importings
	(flet ((fun (te th)
		 (when (and (declaration? te)
			    (eq (id te) (id ex)))
		   (push (decl-for-json te th) pdecls))))
	  (walk-parse-tree #'fun theory thelt force-parse?)
	  pdecls))))


(defvar *already-searched*)

(defun walk-parse-tree (fun theory &optional decl force?)
  "Applies fun to each declaration visible to the given decl, walking down
importings, etc.  Fun is expected to take an argument of type theory-element
(declaration or importing-entity).  If an importing names a theory that has
not yet been parsed, it will be parsed if force? is set.  Otherwise warns
that the seach is incomplete."
  (let* ((alldecls (all-decls theory))
	 (remdecls (when decl (memq decl alldecls)))
	 (prev-decls (if remdecls
			 (ldiff alldecls
				(if (def-decl? decl)
				    (cdr remdecls)
				    remdecls))
			 alldecls))
	 (*already-searched* nil))
    (walk-parse-tree* fun prev-decls theory force?)))

(defun walk-parse-tree* (fun decls theory force?)
  (when decls
    (funcall fun (car decls) theory)
    (typecase (car decls)
      (importing-entity ; includes importings, theory-decls, theory-abbreviations
       (let* ((imp (car decls))
	      (thname (theory-name imp)))
	 (unless (memq (id thname) *already-searched*)
	   (let ((impth (get-theory thname)))
	     (if (or impth
		     (and force?
			  (setq impth (get-parsed-theory thname t))))
		 (let ((alldecls (all-decls impth)))
		   (push (id impth) *already-searched*)
		   (walk-parse-tree* fun alldecls impth force?))
		 (pvs-warning "~a found in importings, not parsed (force? is nil)"
		   thname)))))))
    (walk-parse-tree* fun (cdr decls) theory force?)))


(defun decl-for-json (decl theory)
  `((:id . ,(id decl))
    (:type . ,(when (declared-type decl) (str (declared-type decl))))
    (:theoryid . ,(id theory))
    (:filename . ,(filename theory))
    (:filedir . ,*default-pathname-defaults*)
    ,@(when (lib-datatype-or-theory? theory)
	`((:library . ,(get-library-id (context-path theory)))))
    (:decl-ppstring . ,(unparse-decl decl))
    (:place . ,(place decl))))


;;; Called by GUIs - find-declaration command

;; (defun find-declaration (declref &optional (kind :regexp) json?)
;;   "Given the declref, returns a list of possible declarations.  The declarations Include:
;;   - all top-level declarations that have a matching id
;;   - binding declarations:
;;     - bind-decls (e.g., definition arguments, forall-expr bindings)
;;     - field-decls
;;     - dep-bindings (from dependent tuples or functions)
;; This searches through all the theories of the current context, finding all
;; declarations that match the declref.
;; Valid declref arguments depend on the kind:
;;   - :regexp string or symbol treated as string
;;   - :file-loc file:location string, e.g.,
;;         foo:(14, 32) is the 14th row, 32nd col in file foo.pvs
;;   - :nameref - parsed as a name, but not typechecked.  Used to filter possibilities, but loosely.
;;     In general, it is a string of the form:
;;           libid@thid[acts]{{maps}}.id[dacts]
;;     Everything but the id is optional, and it must equal the decl id.
;;     If libid is given, an attempt is made to find theories of the corresponding library.
;;     thid only returns decls of that theory.
;;     acts/dacts - only the number of actuals matters, and if the name is of the form
;;     'id[dacts]', it will also match id from theories which match dacts.
;;     maps are allowed, but ignored."
;;   (let ((declarations nil))
;;     (case kind
;;       (:regexp
;;        (let* ((regin (typecase declref
;; 		       (string declref)
;; 		       (symbol (string declref))
;; 		       (t declref)))
;; 	      (regex (excl:compile-re declref)))
;; 	 (do-all-theories #'(lambda (th)
;; 			      (setq declarations 
;; 				    (append (get-find-declaration-info id th)
;; 					    declarations))))
;; 	 (let* ((json:*lisp-identifier-name-to-json* #'identity)
;; 		(fdecl-string (json:encode-json-alist-to-string declarations)))
;; 	   (break)
;; 	   (write-declaration-info declarations))))
;;       (t (error "Unrecognized kind: ~a" kind)))))

(defun find-declaration (string)
  "find-declaration takes a string, and searches for all declarations with
that identifier.  The search uses do-all-theories, which goes through the
parsed or typechecked theories of the current context, imported libraries,
and the prelude.  It returns a json string of the form, e.g.,
  [{\"declname\": \"product\",
    \"type\": \"[[finite_set[T], [T -> R]] -> R]\",
    \"theoryid\": \"finite_sets_product\",
    \"filename\": \"/home/owre/pvs/lib/finite_sets/finite_sets_product.pvs\",
    \"place\": [30,2,33,39],
    \"decl-ppstring\": \"product(S, f): RECURSIVE R =
    IF (empty?(S)) THEN one ELSE f(choose(S)) * product(rest(S), f) ENDIF
     MEASURE (LAMBDA S, f: card(S))\"
  }]

Note that the place may be missing, for example, with TCCs.

This only returns declarations with matching ids, and ignores var-decls.
Importings (but not theory-abbreviation-decls), judgements, conversions, and
auto-rewrites are ignored unless they are given an optional id.

dep-bindings, field-decls, let-bindings, and lambda etc., bindings are more
difficult."
  (let ((declarations nil)
	(id (intern string :pvs)))
    (do-all-theories #'(lambda (th)
			 (let ((decls (get-find-declaration-info id th)))
			   (setq declarations (append decls declarations)))))
    (let* ((json:*lisp-identifier-name-to-json* #'identity)
	   (fdecl-string (json:encode-json-to-string declarations)))
      fdecl-string)))

;; (defun get-declaration-at (fileref pos)
;;   "fileref is a reference, relative to the current-context, with extension
;; indicating the kind of file, e.g., .tccs, .ppe, .prf, etc.  These are files
;; that have meaningful locations inside."
;;   (let* ((object (get-id-object-at fileref origin pos libpath))
;; 	 (decl (get-decl-associated-with object)))
;;     (when decl
;;       (pvs-locate (module decl) decl)))
;;   (pvs-message "~a has not been typechecked" fileref))

;;; Called by Emacs - list-declarations command

(defun list-declarations (theoryref)
  (let ((theory (get-typechecked-theory theoryref))
	(*list-declarations* nil)
	(*modules-visited* nil))
    (list-declarations* theory)
    (setq *list-declarations*
	  (sort *list-declarations* #'string<
		:key #'(lambda (x)
			 (if (importing? (car x))
			     (id (theory-name (car x)))
			     (id (car x))))))
    (let* ((declarations (mapcar #'(lambda (idecl)
				     (json-decl-list (car idecl)
						       (ptype-of (car idecl))
						       (cdr idecl)))
			   (remove-if-not #'place *list-declarations*)))
	   (json:*lisp-identifier-name-to-json* #'identity)
	   (fdecl-string (json:encode-json-to-string declarations)))
      fdecl-string)))


;;; Called by Emacs - whereis-declaration-used command

(defun whereis-declaration-used (oname origin pos &optional x?)
  (declare (ignore x?))
  (if (or (equal origin "Declaration")
	  (typechecked-origin? oname origin))
      (let* ((object (get-object-at oname origin pos pos t))
	     (decl (if (typep object '(or declaration importing))
		       object
		       (get-decl-associated-with object))))
	(if decl
	    (let ((declarations nil))
	      (do-all-theories
	       #'(lambda (th)
		   (setq declarations
			 (nconc
			  (mapcan
			      #'(lambda (d)
				  (when (visibly-refers-to? d decl)
				    (list (json-decl-list d (ptype-of d) th))))
			    (all-decls th))
			  declarations))))
	      (let* ((json:*lisp-identifier-name-to-json* #'identity)
		     (fdecl-string (json:encode-json-to-string declarations)))
		fdecl-string))
	    (pvs-message "Could not find associated declaration")))
      (pvs-message "~a is not typechecked" oname)))

(defun visibly-refers-to? (obj decl)
  "Returns true if obj visibly refers to decl, i.e., the reference has a
place set."
  (and (memq decl
	     (if (typep obj 'declaration)
		 (unless (generated-by obj)
		   (refers-to obj))
		 (collect-references obj)))
       (let ((foundit nil))
	 (mapobject #'(lambda (ex)
			(or foundit
			    (not (place ex))
			    (and (name? ex)
				 (eq (declaration ex) decl)
				 (setq foundit ex))))
		    obj)
	 foundit)))

(defun whereis-identifier-used (string)
  (let ((declarations nil)
	(sym (intern string :pvs)))
    (do-all-theories #'(lambda (th)
			 (setq declarations
			       (append (get-whereis-info sym th)
				       declarations))))
    (let* ((json:*lisp-identifier-name-to-json* #'identity)
	   (fdecl-string (json:encode-json-to-string declarations)))
      fdecl-string)))

(defun get-find-declaration-info (id theory)
  (mapcar #'(lambda (d)
	      (json-decl-list d (ptype-of d) theory))
	  (remove-if-not #'(lambda (d)
			     (and (typep d '(and declaration
					     (not var-decl)
					     (not formal-decl)))
				  (eq id (id d))
				  (place d)))
			 (append (formals theory)
				 (assuming theory)
				 (if (module? theory)
				     (theory theory)
				     (constructors theory))))))


;;; Returns a list of declaration information; each entry is a list
;;; consisting of:
;;;    decl-string	- the string to be displayed
;;;    declname		- the name of the declaration
;;;    theoryname		- the name of the theory containing the declaration
;;;    filename		- the name of the file containing the theory
;;;    location		- (startline startcol endline endcol)

;; (defstruct decl-list-struct
;;   declname
;;   type
;;   theoryname
;;   filename
;;   place
;;   decl-string)

(defun json-decl-list (decl type theory)
  (let ((declname (if (typep decl '(or importing auto-rewrite-decl))
		      (unparse decl :string t :no-newlines? t)
		      (string (id decl))))
	(filename (cond ((from-prelude? theory)
			 (format nil "~alib/~a.pvs" *pvs-path*
				 (if (memq theory (pvsio-prelude-theories))
				     "pvsio_prelude"
				     "prelude")))
			((filename theory)
			 (format nil "~a.pvs" (pvs-filename theory)))
			((rectype-theory? theory)
			 (format nil "~a.pvs" (id theory)))
			(t (break "Couldn't find filename in json-decl-list ~
                                   - tell pvs-bugs@csl.sri.com")))))
    `(("declname" . ,declname)
      ("type" . ,type)
      ("theoryid" . ,(string (id theory)))
      ("filename" . ,filename)
      ("place" . ,(if (place decl)
		      (place-list (place decl))
		      nil))
      ("decl-ppstring" . ,(unparse-decl decl)))))

(defun format-decl-list (decl type theory)
  "Returns a list of the form
  (decl-display declid theoryid filename decl-place decl-string)"
  (declare (ignore type))
  (list (if (typep decl '(or importing auto-rewrite-decl))
	    (unparse decl :string t :no-newlines? t)
	    (string (id decl)))
	(string (id theory))
	(if (filename theory)
	    (pvs-filename theory)
	    (break "get-filename"))
	(if (place decl)
	    (place-list (place decl))
	    nil)
	(unparse-decl decl)))

(defmethod pvs-filename ((theory datatype-or-module))
  (namestring
   (if (lib-datatype-or-theory? theory)
       (format nil "~a~a" (context-path theory) (filename theory))
       (filename theory))))

(defun ptype-of (decl)
  (let ((*default-char-width* 1000000))
    (if (and (slot-exists-p decl 'declared-type)
	     (declared-type decl))
	(if (and (slot-exists-p decl 'formals)
		 (formals decl))
	    (unparse (type decl) :string t)
	    (unparse (declared-type decl) :string t))
	(typecase decl
	  ((or const-decl def-decl)
	   (if (funtype? (declared-type decl))
	       "function" "const"))
	  (module "theory")
	  (formula-decl (format nil "~(~a~)" (spelling decl)))
	  (type-decl "type")
	  (mod-decl "theory declaration")
	  (theory-abbreviation-decl "theory abbr")
	  (formal-const-decl "formal-const")
	  (formal-type-decl "formal-type")
	  (importing "IMPORTING")
	  (conversion-decl "CONVERSION")
	  (datatype "DATATYPE")
	  (adt-constructor "CONSTRUCTOR")
	  (auto-rewrite-decl "AUTO_REWRITE")
	  (t (error "decl ~a not recognized" decl))))))
  

(defun list-declarations* (theory)
  (unless (member theory *modules-visited*)
    (if (typechecked? theory)
	(setq *list-declarations*
	      (append
	       (mapcar #'(lambda (d) (cons d theory))
		 (remove-if #'(lambda (x)
				(or (typep x '(or var-decl
						  field-decl))
				    (generated-by x)))
		   (all-decls theory)))
	       *list-declarations*))
	(setq *list-declarations*
	      (append (mapcar #'(lambda (d) (cons d theory))
			      (remove-if #'(lambda (x)
					     (or (not (typep x 'declaration))
						 (typep x '(or var-decl
							    field-decl))))
					 (append (assuming theory) (theory theory))))
		      *list-declarations*)))
    (push theory *modules-visited*)
    (mapc #'(lambda (entry) (list-declarations* (car entry)))
	  (all-usings theory))))
      

(defun write-declaration-info (declarations)
  declarations)


(defun get-whereis-info (sym theory)
  (mapcar #'(lambda (d)
	      (json-decl-list d (ptype-of d) theory))
	  (when (parsed? theory)
	    (remove-if-not #'(lambda (d) (and (place d)
					      (whereis sym d)))
			   (append (formals theory)
				   (assuming theory)
				   (if (module? theory)
				       (theory theory)
				       (constructors theory)))))))

;;; Recurse down the declarations, looking for the symbol.  Quit when
;;; the symbol is found.

(defmethod whereis (sym (l list))
  (some #'(lambda (e) (whereis sym e)) l))

(defmethod whereis (sym (u importing))
  (whereis sym (theory-name u)))

(defmethod whereis (sym (adt datatype))
  (whereis sym (constructors adt)))

(defmethod whereis (sym (d simple-constructor))
  (or (eq sym (id d))
      (whereis sym (arguments d))
      (eq sym (recognizer d))))

(defmethod whereis (sym (d declaration))
  (eq sym (id d)))

(defmethod whereis (sym (d mod-decl))
  (or (eq sym (id d))
      (whereis sym (modname d))))

(defmethod whereis (sym (d type-decl))
  (eq sym (id d)))

(defmethod whereis (sym (d type-def-decl))
  (or (eq sym (id d))
      (whereis sym (type-expr d))))

(defmethod whereis (sym (te type-application))
  (or (whereis sym (type te))
      (whereis sym (parameters te))))

(defmethod whereis (sym (te subtype))
  (or (whereis sym (supertype te))
      (whereis sym (predicate te))))

(defmethod whereis (sym (te funtype))
  (or (whereis sym (domain te))
      (whereis sym (range te))))

(defmethod whereis (sym (te tupletype))
  (whereis sym (types te)))

(defmethod whereis (sym (te cotupletype))
  (whereis sym (types te)))

(defmethod whereis (sym (te recordtype))
  (whereis sym (fields te)))

(defmethod whereis (sym (d field-decl))
  (or (eq sym (id d))
      (whereis sym (declared-type d))))

(defmethod whereis (sym (d var-decl))
  (or (eq sym (id d))
      (whereis sym (declared-type d))))

(defmethod whereis (sym (d const-decl))
  (or (eq sym (id d))
      (whereis sym (declared-type d))
      (when (and (slot-boundp d 'definition)
		 (definition d))  
	(whereis sym (definition d)))))

(defmethod whereis (sym (d def-decl))
  (or (eq sym (id d))
      (whereis sym (declared-type d))
      (whereis sym (definition d))
      (whereis sym (measure d))))

(defmethod whereis (sym (d formula-decl))
  (or (eq sym (id d))
      (whereis sym (definition d))))

(defmethod whereis (sym (d dep-binding))
  (or (eq sym (id d))
      (whereis sym (type d))))

(defmethod whereis (sym (e number-expr))
  (equal sym (number e)))

(defmethod whereis (sym (e record-expr))
  (whereis sym (assignments e)))

(defmethod whereis (sym (e tuple-expr))
  (whereis sym (exprs e)))

;(defmethod whereis (sym (e intype))
;  (or (whereis sym (declared-type e))
;      (whereis sym (expression e))))

;(defmethod whereis (sym (e coercion))
;  (or (whereis sym (declared-type e))
;      (whereis sym (expression e))))

(defmethod whereis (sym (e cases-expr))
  (or (whereis sym (expression e))
      (whereis sym (selections e))
      (whereis sym (else-part e))))

(defmethod whereis (sym (e selection))
  (or (whereis sym (constructor e))
      (whereis sym (args e))
      (whereis sym (expression e))))

(defmethod whereis (sym (e projection-expr))
  (eq sym (id e)))

(defmethod whereis (sym (e injection-expr))
  (eq sym (id e)))

(defmethod whereis (sym (e injection?-expr))
  (eq sym (id e)))

(defmethod whereis (sym (e extraction-expr))
  (eq sym (id e)))

(defmethod whereis (sym (e projection-application))
  (or (eq sym (id e))
      (whereis sym (argument e))))

(defmethod whereis (sym (e injection-application))
  (or (eq sym (id e))
      (whereis sym (argument e))))

(defmethod whereis (sym (e injection?-application))
  (or (eq sym (id e))
      (whereis sym (argument e))))

(defmethod whereis (sym (e extraction-application))
  (or (eq sym (id e))
      (whereis sym (argument e))))

(defmethod whereis (sym (e field-application))
  (or (eq sym (id e))
      (whereis sym (argument e))))

(defmethod whereis (sym (e application))
  (or (whereis sym (operator e))
      (whereis sym (argument e))))

(defmethod whereis (sym (e binding-expr))
  (or (whereis sym (bindings e))
      (whereis sym (expression e))))

(defmethod whereis (sym (e update-expr))
  (or (whereis sym (expression e))
      (whereis sym (assignments e))) )

(defmethod whereis (sym (a assignment))
  (or (whereis sym (expression a))
      (whereis sym (arguments a))))

(defmethod whereis (sym (d simple-decl))
  (or (eq sym (id d))
      (whereis sym (declared-type d))))

(defmethod whereis (sym (n name))
  (or (eq sym (mod-id n))
      (whereis sym (actuals n))
      (eq sym (id n))))

(defmethod whereis (sym (a actual))
  (whereis sym (expr a)))

(defmethod struncate ((str string) len)
  (if (> (length str) len)
      (concatenate 'string (subseq str 0 (1- len)) "$")
      str))

(defmethod struncate ((sym symbol) len)
  (struncate (string sym) len))

(defmethod struncate (obj len)
  (struncate (format nil "~a" obj) len))

(defun squote (str)
  (format nil "\"~a\"" str))


;;; Change-declaration-name

;(defun change-declaration-name (from-name to-id root-theory)
;  (let* ((from (pc-parse from-name 'name))
;	 (res (when from (resolve from nil nil nil))))
;    (cond ((cdr res)
;	   (pvs-message "~a is ambiguous" from-name))
;	  ((null res)
;	   (pvs-message "No resolution for ~a" from-name))
;	  (t

(defvar *max-row* nil)

;;; names-info returns the tooltip information for a pvs-file in JSON form
;;; For each declaration, and each identifier in the body of the declaration,
;;; it returns JSON of the form '{"id": id, "place": [sr, sc, er, ec], "decl": decl,
;;;                               "decl-file": file, "decl-place": [sr, sc, er, ec]}'

;;; The JSON string can get quite large, if there's an error in Emacs reading the result,
;;; it can be difficult debug.  The following breaks it up into individual declarations,
;;; making debugging much easier.  First 'rm /tmp/pvs-*', then in *pvs* run something like

;; (dolist (decl (theory (get-theory "itranslation")))
;;   (let* ((info (collect-visible-decl-info decl))
;; 	(json:*lisp-identifier-name-to-json* #'identity)
;;     (jstr (json:encode-json-to-string info)))
;;     (write-to-temp-file jstr t)))

;;; which creates a /tmp file for each declaration.  In *ielm* (Emacs), run the following,
;;; and look in *Messages* to see the last file read if it hits an error.

;; (dolist (file (directory-files "/tmp" t "pvs-.*"))
;;   (message "checking %s" file)
;;   (let* ((buf (find-file-noselect file))
;; 	 (raw-value (read buf))
;; 	 (value (unless (member raw-value '(nil NIL)) raw-value)))
;;     (when value
;;       (json-read-from-string value))))

(defun names-info (fileref)
  (with-pvs-file (pvs-file) fileref
    (let ((info (collect-pvs-file-decls-info pvs-file))
	  (json:*lisp-identifier-name-to-json* #'identity))
      (json:encode-json-to-string info))))

(defun collect-pvs-file-decls-info (pvs-file)
  (if (member pvs-file '("prelude" "pvsio_prelude") :test #'string=)
      (collect-visible-decl-info *prelude-theories*)
      (let* ((file (make-specpath pvs-file))
	     (theories (get-theories pvs-file))
	     (*max-row* (when theories (svref (place (car (last theories))) 2))))
	(cond ((not (file-exists-p file))
	       (pvs-message "PVS file ~a is not in the current context" pvs-file))
	      ((null theories)
	       (pvs-message "PVS file ~a is not typechecked" pvs-file))
	      (t (collect-visible-decl-info theories))))))

;; This doesn't work
;; (defun collect-name-to-decl-alist (obj)
;;   (let ((alist nil))
;;     (mapobject #'(lambda (x)
;; 		   (when (and (name? x) (resolution x) (place x))
;; 		     ;;(format t "~%~a: ~a - ~a" x (declaration x) (place x))
;; 		     (push (list (place-list x)
;; 				 (str (declaration x))
;; 				 (theory-filename (module (declaration x)))
;; 				 (place-list (declaration x)))
;; 			    alist))
;; 		   (null (place x)))
;; 	       obj)
;;     (json:encode-json-to-string alist)))

(defmethod theory-filename ((obj datatype-or-module))
  (if (context-path obj)
      (format nil "~a~a.pvs" (context-path obj) (filename obj))
      (format nil "~a.pvs" (filename obj))))

(defvar *visible-decl-info*)

(defstruct decl-info
  id
  place
  decl
  decl-file
  decl-place)

(defmethod json:encode-json ((dinfo decl-info) &optional (stream json:*json-output*))
  (json:with-object (stream)
    (json:as-object-member ("id" stream)
      (json:encode-json (decl-info-id dinfo) stream))
    (json:as-object-member ("place" stream)
      (json:encode-json (decl-info-place dinfo) stream))
    (json:as-object-member ("decl" stream)
      (json:encode-json (decl-info-decl dinfo) stream))
    (json:as-object-member ("decl-file" stream)
      (json:encode-json (decl-info-decl-file dinfo) stream))
    (json:as-object-member ("decl-place" stream)
      (json:encode-json (decl-info-decl-place dinfo) stream))))

(defun collect-visible-decl-info (obj)
  (let ((*visible-decl-info* nil)
	(*print-escape* nil)
	(*print-readably* nil)
	(*print-pretty* t))
    (collect-visible-decl-info* obj)
    *visible-decl-info*))

(defmethod collect-visible-decl-info* ((list list))
  (when list
    (collect-visible-decl-info* (car list))
    (collect-visible-decl-info* (cdr list))))

(defmethod collect-visible-decl-info* :around ((obj datatype-or-module))
  (let ((*current-context* (context obj)))
    (collect-visible-decl-info* (formals obj))
    (collect-visible-decl-info* (assuming obj))
    (call-next-method)))

(defmethod collect-visible-decl-info* ((obj module))
  (collect-visible-decl-info* (theory obj)))

(defmethod collect-visible-decl-info* ((obj recursive-type))
  (collect-visible-decl-info* (importings obj))
  (collect-visible-decl-info* (constructors obj)))

(defmethod collect-visible-decl-info* ((obj simple-constructor))
  (collect-visible-decl-info* (arguments obj)))

(defmethod collect-visible-decl-info* ((obj exporting))
  (collect-visible-decl-info* (names obj)))

(defmethod collect-visible-decl-info* ((obj importing))
  (collect-visible-decl-info* (theory-name obj)))

(defmethod collect-visible-decl-info* ((obj declaration))
  (when (and (place obj)
	     (not (generated-by obj)))
    (collect-visible-decl-info* (formals obj))))

(defmethod collect-visible-decl-info* :around ((obj typed-declaration))
  (when (and (place obj)
	     (not (generated-by obj)))
    (collect-visible-decl-info* (declared-type obj))
    (call-next-method)))

(defmethod collect-visible-decl-info* :around ((obj type-decl))
  (when (and (place obj)
	     (not (generated-by obj)))
    (collect-visible-decl-info* (type-value obj))
    (call-next-method)))

(defmethod collect-visible-decl-info* :around ((obj type-def-decl))
  (when (and (place obj)
	     (not (generated-by obj)))
    (collect-visible-decl-info* (type-expr obj))
    (collect-visible-decl-info* (contains obj))
    (call-next-method)))

(defmethod collect-visible-decl-info* :around ((obj formal-theory-decl))
  (when (and (place obj)
	     (not (generated-by obj)))
    (collect-visible-decl-info* (theory-name obj))
    (call-next-method)))

(defmethod collect-visible-decl-info* ((obj mod-decl))
  (when (and (place obj)
	     (not (generated-by obj)))
    (collect-visible-decl-info* (modname obj))))

(defmethod collect-visible-decl-info* ((obj theory-abbreviation-decl))
  (when (and (place obj)
	     (not (generated-by obj)))
    (collect-visible-decl-info* (theory-name obj))))

(defmethod collect-visible-decl-info* :around ((obj const-decl))
  (when (and (place obj)
	     (not (generated-by obj)))
    (collect-visible-decl-info* (definition obj))
    (call-next-method)))

(defmethod collect-visible-decl-info* :around ((obj def-decl))
  (when (and (place obj)
	     (not (generated-by obj)))
    (collect-visible-decl-info* (declared-measure obj))
    (collect-visible-decl-info* (ordering obj))
    (call-next-method)))

(defmethod collect-visible-decl-info* :around ((obj adt-def-decl))
  nil)

(defmethod collect-visible-decl-info* :around ((obj formula-decl))
  (when (and (place obj)
	     (not (generated-by obj)))
    (collect-visible-decl-info* (definition obj))
    (call-next-method)))

(defmethod collect-visible-decl-info* ((obj subtype-judgement))
  (collect-visible-decl-info* (declared-subtype obj)))

(defmethod collect-visible-decl-info* ((obj number-judgement))
  (collect-visible-decl-info* (number-expr obj)))

(defmethod collect-visible-decl-info* ((obj name-judgement))
  (collect-visible-decl-info* (name obj)))

(defmethod collect-visible-decl-info* ((obj application-judgement))
  (collect-visible-decl-info* (name obj))
  (collect-visible-decl-info* (formals obj))
  (collect-visible-decl-info* (judgement-type obj)))

(defmethod collect-visible-decl-info* ((obj expr-judgement))
  (collect-visible-decl-info* (expr obj))
  (collect-visible-decl-info* (formals obj))
  (collect-visible-decl-info* (judgement-type obj)))

(defmethod collect-visible-decl-info* ((obj conversion-decl))
  (unless (generated-by obj)
    (collect-visible-decl-info* (expr obj))))

(defmethod collect-visible-decl-info* ((obj auto-rewrite-decl))
  (collect-visible-decl-info* (rewrite-names obj)))

(defmethod collect-visible-decl-info* ((obj constant-rewrite-name))
  (collect-visible-decl-info* (declared-type obj)))

(defmethod collect-visible-decl-info* :around ((obj type-expr))
  (cond ((print-type obj)
	 (collect-visible-decl-info* (print-type obj)))
	((or (place obj)
	     (typep obj 'domain-tupletype))
	 (call-next-method))))

(defmethod collect-visible-decl-info* ((obj type-application))
  (collect-visible-decl-info* (type obj))
  (collect-visible-decl-info* (parameters obj)))

(defmethod collect-visible-decl-info* ((obj subtype))
  (unless (typep (predicate obj) 'binding-expr)
    (collect-visible-decl-info* (supertype obj)))
  (collect-visible-decl-info* (predicate obj)))

(defmethod collect-visible-decl-info* ((obj setsubtype))
  (collect-visible-decl-info* (formals obj))
  (collect-visible-decl-info* (formula obj)))

(defmethod collect-visible-decl-info* ((obj expr-as-type))
  (collect-visible-decl-info* (expr obj)))

(defmethod collect-visible-decl-info* ((obj funtype))
  (collect-visible-decl-info* (domain obj))
  (collect-visible-decl-info* (range obj)))

(defmethod collect-visible-decl-info* ((obj tuple-or-struct-subtype))
  (collect-visible-decl-info* (types obj)))

(defmethod collect-visible-decl-info* ((obj cotupletype))
  (collect-visible-decl-info* (types obj)))

(defmethod collect-visible-decl-info* ((obj dep-domain-tupletype))
  (collect-visible-decl-info* (var-bindings obj))
  (collect-visible-decl-info* (types obj)))

(defmethod collect-visible-decl-info* ((obj record-or-struct-subtype))
  (collect-visible-decl-info* (fields obj)))

(defmethod collect-visible-decl-info* :around ((obj struct-sub-recordtype))
  (collect-visible-decl-info* (type obj))
  (call-next-method))

(defmethod collect-visible-decl-info* ((obj type-extension))
  (collect-visible-decl-info* (type obj))
  (collect-visible-decl-info* (extension obj)))

(defmethod collect-visible-decl-info* ((obj binding-type))
  (collect-visible-decl-info* (bindings obj))
  (collect-visible-decl-info* (type obj)))

(defmethod collect-visible-decl-info* :around ((obj typed-name-expr))
  (collect-visible-decl-info* (declared-type obj))
  (call-next-method))

(defmethod collect-visible-decl-info* ((obj fieldex))
  (collect-visible-decl-info* (actuals obj))
  (collect-visible-decl-info* (dactuals obj)))

(defmethod collect-visible-decl-info* ((obj field-application))
  (collect-visible-decl-info* (actuals obj))
  (collect-visible-decl-info* (dactuals obj))
  (collect-visible-decl-info* (argument obj)))

(defmethod collect-visible-decl-info* ((obj projection-application))
  (collect-visible-decl-info* (actuals obj))
  (collect-visible-decl-info* (dactuals obj))
  (collect-visible-decl-info* (argument obj)))

(defmethod collect-visible-decl-info* ((obj injection-application))
  (collect-visible-decl-info* (actuals obj))
  (collect-visible-decl-info* (dactuals obj))
  (collect-visible-decl-info* (argument obj)))

(defmethod collect-visible-decl-info* ((obj injection?-application))
  (collect-visible-decl-info* (actuals obj))
  (collect-visible-decl-info* (dactuals obj))
  (collect-visible-decl-info* (argument obj)))

(defmethod collect-visible-decl-info* ((obj extraction-application))
  (collect-visible-decl-info* (actuals obj))
  (collect-visible-decl-info* (dactuals obj))
  (collect-visible-decl-info* (argument obj)))

(defmethod collect-visible-decl-info* ((obj tuple-expr))
  (collect-visible-decl-info* (exprs obj)))

(defmethod collect-visible-decl-info* ((obj record-expr))
  (collect-visible-decl-info* (assignments obj)))

(defmethod collect-visible-decl-info* ((obj cases-expr))
  (collect-visible-decl-info* (expression obj))
  (collect-visible-decl-info* (selections obj))
  (collect-visible-decl-info* (else-part obj)))

(defmethod collect-visible-decl-info* ((obj selection))
  (collect-visible-decl-info* (constructor obj))
  (collect-visible-decl-info* (args obj))
  (collect-visible-decl-info* (expression obj)))

(defmethod collect-visible-decl-info* ((obj application))
  (collect-visible-decl-info* (operator obj))
  (collect-visible-decl-info* (argument obj)))

(defmethod collect-visible-decl-info* ((obj implicit-conversion))
  (collect-visible-decl-info* (argument obj)))

;;; Tables should go here

(defmethod collect-visible-decl-info* ((obj binding-expr))
  (collect-visible-decl-info* (bindings obj))
  (collect-visible-decl-info* (expression obj)))

(defmethod collect-visible-decl-info* ((obj set-list-expr))
  (collect-visible-decl-info* (exprs obj)))

(defmethod collect-visible-decl-info* :around ((obj fieldex-lambda-expr))
  (collect-visible-decl-info* (actuals obj))
  (collect-visible-decl-info* (dactuals obj))
  (call-next-method))

(defmethod collect-visible-decl-info* ((obj update-expr))
  (collect-visible-decl-info* (expression obj))
  (collect-visible-decl-info* (assignments obj)))

(defmethod collect-visible-decl-info* ((obj assignment))
  (collect-visible-decl-info* (arguments obj))
  (collect-visible-decl-info* (expression obj)))

(defmethod collect-visible-decl-info* ((obj simple-decl))
  (unless (untyped-bind-decl? obj)
    (collect-visible-decl-info* (declared-type obj)))
  (call-next-method))

(defmethod collect-visible-decl-info* ((obj actual))
  (collect-visible-decl-info* (expr obj)))

(defmethod collect-visible-decl-info* ((obj mapping))
  (collect-visible-decl-info* (lhs obj))
  (collect-visible-decl-info* (rhs obj))
  (collect-visible-decl-info* (declared-type obj)))

(defmethod collect-visible-decl-info* :around ((obj mapping-with-formals))
  (collect-visible-decl-info* (formals obj))
  (call-next-method))

(defmethod collect-visible-decl-info* :around ((obj mapping-lhs))
  (collect-visible-decl-info* (decl-formals obj))
  (call-next-method))

(defmethod collect-visible-decl-info* ((obj rational-expr))
  )

(defmethod collect-visible-decl-info* (obj)
  (break "Should define method for ~a" obj))

(defmethod collect-visible-decl-info* ((obj name))
  (collect-visible-decl-info* (actuals obj))
  (collect-visible-decl-info* (dactuals obj))
  (collect-visible-decl-info* (mappings obj))
  (collect-visible-decl-info* (target obj))
  (name-visible-decl-info obj (place obj)))

(defun field-appl-id-visible-decl-info (fappl place)
  (when place
    (push (make-decl-info
	   :id (id fappl)
	   :place (id-place-list fappl place)
	   :decl (format nil "FieldAccess: ~a: ~a" (id fappl) (type fappl)))
	  *visible-decl-info*)))

(defvar *tooltip-char-width* *default-char-width*)

(defun name-visible-decl-info (obj place)
  (when (and place
	     (or (resolution obj)
		 (simple-decl? obj)))
    (when (and *max-row* (> (svref place 2) *max-row*))
      (break "Something's wrong"))
    ;;(format t "~%~a: ~a - ~a" x (declaration x) (place x))
    (push (make-decl-info
	   :id (id obj)
	   :place (id-place-list obj place)
	   :decl (let ((*default-char-width* *tooltip-char-width*))
		   (if (resolution obj)
		       (if (and (simple-decl? (declaration obj))
				(null (declared-type (declaration obj))))
			   (format nil "~a: ~a"
			     (id (declaration obj))
			     (type (declaration obj)))
			   (if (datatype-or-module? (declaration obj))
			       (format nil "~a~a: theory"
				 (id (declaration obj))
				 (with-output-to-string (*standard-output*)
				   (pp-theory-formals (formals (declaration obj)))))
			       (if (skolem-constant? obj)
				   (format nil "Skolem Constant: ~a" (type obj))
				   (str (declaration obj)
					:char-width *tooltip-char-width*))))
		       (if (and (declared-type obj)
				(not (untyped-bind-decl? obj)))
			   (str obj :char-width *tooltip-char-width*)
			   (format nil "~a: ~a" (id obj) (type obj)))))
	   :decl-file (unless (skolem-constant? obj)
			(let* ((decl (declaration obj))
			       (th (if (and (recursive-type? decl)
					    (not (inline-recursive-type? decl)))
				       decl (module decl))))
			  ;;(unless th (break "No module?"))
			  (when th (theory-filename th))))
	   :decl-place (unless (skolem-constant? obj)
			 (place-list (declaration obj))))
	  *visible-decl-info*)))


(defun names-info-proof-formula (s-form &optional json?)
  (let* ((info (collect-visible-decl-info (cadr (view s-form)))))
    (if json?
	(let ((json:*lisp-identifier-name-to-json* #'identity))
	  (json:encode-json-to-string info))
	info)))

(defmethod collect-visible-decl-info* ((obj view-node))
  (let ((term (vnode-term obj)))
    (typecase term
      (name
       (name-visible-decl-info term (vnode-place obj)))
      (field-application
       (field-appl-id-visible-decl-info term (vnode-place obj))))
    (collect-visible-decl-info* (vnode-children obj))))

(defmethod collect-visible-decl-info* ((obj proofstate))
  (collect-visible-decl-info* (current-goal obj)))

(defmethod collect-visible-decl-info* ((obj sequent))
  (collect-visible-decl-info* (s-forms obj)))

(defmethod collect-visible-decl-info* ((obj s-formula))
  (let ((form (if (negation? (formula obj))
		  (argument (formula obj))
		  (formula obj))))
    (collect-visible-decl-info* form)))

;;;

(defun get-subterms-at-place (pvs-file row col &optional json?)
  (if (string= pvs-file "prelude")
      (get-subterms-at *prelude-theories* (list row col))
      (let* ((file (make-specpath pvs-file))
	     (theories (get-theories pvs-file))
	     (*max-row* (when theories (svref (place (car (last theories))) 2))))
	(cond ((not (file-exists-p file))
	       (pvs-message "PVS file ~a is not in the current context" pvs-file))
	      ((null theories)
	       (pvs-message "PVS file ~a is not typechecked" pvs-file))
	      (t (let* ((subterms (get-subterms-at theories (list row col))))
		   (if json?
		       (let ((json:*lisp-identifier-name-to-json* #'identity))
			 (json:encode-json-to-string subterms))
		       subterms)))))))

(defun get-subterms-at (theories pos)
  (let ((*subterms-at-pos* pos)
	(*subterms-at* nil))
    (declare (special *subterms-at-pos* *subterms-at*))
    (get-subterms-at* theories)
    *subterms-at*))

(defmethod get-subterms-at* ((list list))
  (when list
    (get-subterms-at* (car list))
    (get-subterms-at* (cdr list))))

(defmethod get-subterms-at* ((obj datatype-or-module))
  (get-subterms-at* (formals obj))
  (get-subterms-at* (assuming obj))
  (call-next-method))

(defmethod get-subterms-at* ((obj module))
  (get-subterms-at* (theory obj)))

(defmethod get-subterms-at* ((obj recursive-type))
  (get-subterms-at* (importings obj))
  (get-subterms-at* (constructors obj)))

(defmethod get-subterms-at* ((obj simple-constructor))
  (get-subterms-at* (arguments obj)))

(defmethod get-subterms-at* ((obj exporting))
  (get-subterms-at* (names obj)))

(defmethod get-subterms-at* ((obj importing))
  (get-subterms-at* (theory-name obj)))

(defmethod get-subterms-at* ((obj declaration))
  (when (place obj)
    (get-subterms-at* (formals obj))))

(defmethod get-subterms-at* ((obj typed-declaration))
  (when (place obj)
    (get-subterms-at* (declared-type obj))
    (call-next-method)))

(defmethod get-subterms-at* ((obj type-decl))
  (get-subterms-at* (type-value obj))
  (call-next-method))

(defmethod get-subterms-at* ((obj type-def-decl))
  (get-subterms-at* (type-expr obj))
  (get-subterms-at* (contains obj))
  (call-next-method))

(defmethod get-subterms-at* ((obj formal-theory-decl))
  (get-subterms-at* (theory-name obj))
  (call-next-method))

(defmethod get-subterms-at* ((obj mod-decl))
  (get-subterms-at* (modname obj)))

(defmethod get-subterms-at* ((obj theory-abbreviation-decl))
  (get-subterms-at* (theory-name obj)))

(defmethod get-subterms-at* ((obj const-decl))
  (get-subterms-at* (definition obj))
  (call-next-method))

(defmethod get-subterms-at* ((obj def-decl))
  (get-subterms-at* (declared-measure obj))
  (get-subterms-at* (ordering obj))
  (call-next-method))

(defmethod get-subterms-at* ((obj formula-decl))
  (when (place obj)
    (get-subterms-at* (definition obj))
    (call-next-method)))

(defmethod get-subterms-at* ((obj subtype-judgement))
  (get-subterms-at* (declared-subtype obj)))

(defmethod get-subterms-at* ((obj number-judgement))
  (get-subterms-at* (number-expr obj)))

(defmethod get-subterms-at* ((obj name-judgement))
  (get-subterms-at* (name obj)))

(defmethod get-subterms-at* ((obj application-judgement))
  (get-subterms-at* (name obj))
  (get-subterms-at* (formals obj))
  (get-subterms-at* (judgement-type obj)))

(defmethod get-subterms-at* ((obj expr-judgement))
  (get-subterms-at* (expr obj))
  (get-subterms-at* (formals obj))
  (get-subterms-at* (judgement-type obj)))

(defmethod get-subterms-at* ((obj conversion-decl))
  (unless (generated-by obj)
    (get-subterms-at* (expr obj))))

(defmethod get-subterms-at* ((obj auto-rewrite-decl))
  (get-subterms-at* (rewrite-names obj)))

(defmethod get-subterms-at* ((obj constant-rewrite-name))
  (get-subterms-at* (declared-type obj)))

;;; Type expr subterms
(defmethod get-subterms-at* :around ((obj type-expr))
  (declare (special *subterms-at-pos* *subterms-at*))
  (cond ((print-type obj)
	 (get-subterms-at* (print-type obj)))
	((place obj)
	 (when (within-place *subterms-at-pos* (place obj))
	   (push obj *subterms-at*)
	   (call-next-method)))
	((typep obj 'domain-tupletype)
	 (call-next-method))))

(defmethod get-subterms-at* ((obj type-application))
  (get-subterms-at* (type obj))
  (get-subterms-at* (parameters obj)))

(defmethod get-subterms-at* ((obj subtype))
  (get-subterms-at* (supertype obj))
  (get-subterms-at* (predicate obj)))

(defmethod get-subterms-at* ((obj setsubtype))
  (get-subterms-at* (formals obj))
  (get-subterms-at* (formula obj)))

(defmethod get-subterms-at* ((obj expr-as-type))
  (get-subterms-at* (expr obj)))

(defmethod get-subterms-at* ((obj funtype))
  (get-subterms-at* (domain obj))
  (get-subterms-at* (range obj)))

(defmethod get-subterms-at* ((obj tuple-or-struct-subtype))
  (get-subterms-at* (types obj)))

(defmethod get-subterms-at* ((obj cotupletype))
  (get-subterms-at* (types obj)))

(defmethod get-subterms-at* ((obj dep-domain-tupletype))
  (get-subterms-at* (var-bindings obj))
  (get-subterms-at* (types obj)))

(defmethod get-subterms-at* ((obj record-or-struct-subtype))
  (get-subterms-at* (fields obj)))

(defmethod get-subterms-at* ((obj struct-sub-recordtype))
  (get-subterms-at* (type obj))
  (call-next-method))

(defmethod get-subterms-at* ((obj type-extension))
  (get-subterms-at* (type obj))
  (get-subterms-at* (extension obj)))

(defmethod get-subterms-at* ((obj binding-type))
  (get-subterms-at* (bindings obj))
  (get-subterms-at* (type obj)))

(defmethod get-subterms-at* :around ((obj expr))
  (declare (special *subterms-at-pos* *subterms-at*))
  (when (place obj)
    (when (within-place *subterms-at-pos* (place obj))
      (unless (typep obj 'arg-tuple-expr)
	;;(when (string= (str obj) "sq(a)") (break "check"))
	(push obj *subterms-at*))
      (call-next-method))))

(defmethod get-subterms-at* ((obj typed-name-expr))
  (get-subterms-at* (declared-type obj))
  (call-next-method))

(defmethod get-subterms-at* ((obj fieldex))
  (get-subterms-at* (actuals obj))
  (get-subterms-at* (dactuals obj)))

(defmethod get-subterms-at* ((obj field-application))
  (get-subterms-at* (actuals obj))
  (get-subterms-at* (dactuals obj))
  (get-subterms-at* (argument obj)))

(defmethod get-subterms-at* ((obj projection-application))
  (get-subterms-at* (actuals obj))
  (get-subterms-at* (dactuals obj))
  (get-subterms-at* (argument obj)))

(defmethod get-subterms-at* ((obj injection-application))
  (get-subterms-at* (actuals obj))
  (get-subterms-at* (dactuals obj))
  (get-subterms-at* (argument obj)))

(defmethod get-subterms-at* ((obj injection?-application))
  (get-subterms-at* (actuals obj))
  (get-subterms-at* (dactuals obj))
  (get-subterms-at* (argument obj)))

(defmethod get-subterms-at* ((obj extraction-application))
  (get-subterms-at* (actuals obj))
  (get-subterms-at* (dactuals obj))
  (get-subterms-at* (argument obj)))

(defmethod get-subterms-at* ((obj tuple-expr))
  (get-subterms-at* (exprs obj)))

(defmethod get-subterms-at* ((obj record-expr))
  (get-subterms-at* (assignments obj)))

(defmethod get-subterms-at* ((obj cases-expr))
  (get-subterms-at* (expression obj))
  (get-subterms-at* (selections obj))
  (get-subterms-at* (else-part obj)))

(defmethod get-subterms-at* ((obj selection))
  (get-subterms-at* (constructor obj))
  (get-subterms-at* (args obj))
  (get-subterms-at* (expression obj)))

(defmethod get-subterms-at* ((obj application))
  (get-subterms-at* (operator obj))
  (get-subterms-at* (argument obj)))

(defmethod get-subterms-at* ((obj implicit-conversion))
  (get-subterms-at* (argument obj)))

;;; Tables should go here

(defmethod get-subterms-at* ((obj binding-expr))
  (get-subterms-at* (bindings obj))
  (get-subterms-at* (expression obj)))

(defmethod get-subterms-at* ((obj set-list-expr))
  (get-subterms-at* (exprs obj)))

(defmethod get-subterms-at* ((obj fieldex-lambda-expr))
  (get-subterms-at* (actuals obj))
  (get-subterms-at* (dactuals obj))
  (call-next-method))

(defmethod get-subterms-at* ((obj update-expr))
  (get-subterms-at* (expression obj))
  (get-subterms-at* (assignments obj)))

(defmethod get-subterms-at* ((obj assignment))
  (get-subterms-at* (arguments obj))
  (get-subterms-at* (expression obj)))

(defmethod get-subterms-at* ((obj simple-decl))
  (unless (untyped-bind-decl? obj)
    (get-subterms-at* (declared-type obj)))
  (call-next-method))

(defmethod get-subterms-at* ((obj actual))
  (get-subterms-at* (expr obj)))

(defmethod get-subterms-at* ((obj mapping))
  (get-subterms-at* (lhs obj))
  (get-subterms-at* (rhs obj))
  (get-subterms-at* (declared-type obj)))

(defmethod get-subterms-at* ((obj mapping-with-formals))
  (get-subterms-at* (formals obj))
  (call-next-method))

(defmethod get-subterms-at* ((obj mapping-lhs))
  (get-subterms-at* (decl-formals obj))
  (call-next-method))

(defmethod get-subterms-at* ((obj rational-expr))
  )

(defmethod get-subterms-at* (obj)
  (break "Should define method for ~a" obj))

(defmethod get-subterms-at* ((obj name))
  nil)

;;; Collect-visible-defs finds the definitions that are visible
;;; in the given obj - for now, types are ignored

(defvar *visible-defs*)

(defun collect-visible-defs (obj)
  (let ((*visible-defs* nil))
    (collect-visible-defs* obj)
    *visible-defs*))

(defmethod collect-visible-defs* ((list list))
  (when list
    (collect-visible-defs* (car list))
    (collect-visible-defs* (cdr list))))

(defmethod collect-visible-defs* :around ((obj datatype-or-module))
  ;;(collect-visible-defs* (formals obj))
  (collect-visible-defs* (assuming obj))
  (call-next-method))

(defmethod collect-visible-defs* ((obj module))
  (collect-visible-defs* (theory obj)))

(defmethod collect-visible-defs* ((obj recursive-type))
  nil)

(defmethod collect-visible-defs* ((obj simple-constructor))
  nil)

(defmethod collect-visible-defs* ((obj exporting))
  nil)

(defmethod collect-visible-defs* ((obj importing))
  (collect-visible-defs* (theory-name obj)))

(defmethod collect-visible-defs* ((obj declaration))
  nil)

;; (defmethod collect-visible-defs* :around ((obj typed-declaration))
;;   (when (and nil (place obj)
;; 	     (not (generated-by obj)))
;;     (collect-visible-defs* (declared-type obj))
;;     (call-next-method)))

;; (defmethod collect-visible-defs* :around ((obj type-decl))
;;   ;(collect-visible-defs* (type-value obj))
;;   (call-next-method))

;; (defmethod collect-visible-defs* :around ((obj type-def-decl))
;;   (collect-visible-defs* (type-expr obj))
;;   (collect-visible-defs* (contains obj))
;;   (call-next-method))

;; (defmethod collect-visible-defs* :around ((obj formal-theory-decl))
;;   (collect-visible-defs* (theory-name obj))
;;   (call-next-method))

(defmethod collect-visible-defs* ((obj mod-decl))
  (collect-visible-defs* (modname obj)))

(defmethod collect-visible-defs* ((obj theory-abbreviation-decl))
  (collect-visible-defs* (theory-name obj)))

(defmethod collect-visible-defs* :around ((obj const-decl))
  (collect-visible-defs* (definition obj))
  (call-next-method))

(defmethod collect-visible-defs* :around ((obj def-decl))
  (collect-visible-defs* (declared-measure obj))
  (collect-visible-defs* (ordering obj))
  (call-next-method))

(defmethod collect-visible-defs* :around ((obj adt-def-decl))
  nil)

(defmethod collect-visible-defs* :around ((obj formula-decl))
  (collect-visible-defs* (definition obj))
  (call-next-method))

(defmethod collect-visible-defs* ((obj subtype-judgement))
  (collect-visible-defs* (declared-subtype obj)))

(defmethod collect-visible-defs* ((obj number-judgement))
  (collect-visible-defs* (number-expr obj)))

(defmethod collect-visible-defs* ((obj name-judgement))
  (collect-visible-defs* (name obj)))

(defmethod collect-visible-defs* ((obj application-judgement))
  (collect-visible-defs* (name obj))
  (collect-visible-defs* (formals obj))
  (collect-visible-defs* (judgement-type obj)))

(defmethod collect-visible-defs* ((obj expr-judgement))
  (collect-visible-defs* (expr obj))
  (collect-visible-defs* (formals obj))
  (collect-visible-defs* (judgement-type obj)))

(defmethod collect-visible-defs* ((obj conversion-decl))
  (unless (generated-by obj)
    (collect-visible-defs* (expr obj))))

(defmethod collect-visible-defs* ((obj auto-rewrite-decl))
  (collect-visible-defs* (rewrite-names obj)))

(defmethod collect-visible-defs* ((obj constant-rewrite-name))
  (collect-visible-defs* (declared-type obj)))

(defmethod collect-visible-defs* :around ((obj type-expr))
  (cond ((print-type obj)
	 (collect-visible-defs* (print-type obj)))
	((or (place obj)
	     (typep obj 'domain-tupletype))
	 (call-next-method))))

(defmethod collect-visible-defs* ((obj type-application))
  (collect-visible-defs* (type obj))
  (collect-visible-defs* (parameters obj)))

(defmethod collect-visible-defs* ((obj subtype))
  (unless (typep (predicate obj) 'binding-expr)
    (collect-visible-defs* (supertype obj)))
  (collect-visible-defs* (predicate obj)))

(defmethod collect-visible-defs* ((obj setsubtype))
  (collect-visible-defs* (formals obj))
  (collect-visible-defs* (formula obj)))

(defmethod collect-visible-defs* ((obj expr-as-type))
  (collect-visible-defs* (expr obj)))

(defmethod collect-visible-defs* ((obj funtype))
  (collect-visible-defs* (domain obj))
  (collect-visible-defs* (range obj)))

(defmethod collect-visible-defs* ((obj tuple-or-struct-subtype))
  (collect-visible-defs* (types obj)))

(defmethod collect-visible-defs* ((obj cotupletype))
  (collect-visible-defs* (types obj)))

(defmethod collect-visible-defs* ((obj dep-domain-tupletype))
  (collect-visible-defs* (var-bindings obj))
  (collect-visible-defs* (types obj)))

(defmethod collect-visible-defs* ((obj record-or-struct-subtype))
  (collect-visible-defs* (fields obj)))

(defmethod collect-visible-defs* :around ((obj struct-sub-recordtype))
  (collect-visible-defs* (type obj))
  (call-next-method))

(defmethod collect-visible-defs* ((obj type-extension))
  (collect-visible-defs* (type obj))
  (collect-visible-defs* (extension obj)))

(defmethod collect-visible-defs* ((obj binding-type))
  (collect-visible-defs* (bindings obj))
  (collect-visible-defs* (type obj)))

(defmethod collect-visible-defs* :around ((obj typed-name-expr))
  (collect-visible-defs* (declared-type obj))
  (call-next-method))

(defmethod collect-visible-defs* ((obj fieldex))
  (collect-visible-defs* (actuals obj))
  (collect-visible-defs* (dactuals obj)))

(defmethod collect-visible-defs* ((obj field-application))
  (collect-visible-defs* (actuals obj))
  (collect-visible-defs* (dactuals obj))
  (collect-visible-defs* (argument obj)))

(defmethod collect-visible-defs* ((obj projection-application))
  (collect-visible-defs* (actuals obj))
  (collect-visible-defs* (dactuals obj))
  (collect-visible-defs* (argument obj)))

(defmethod collect-visible-defs* ((obj injection-application))
  (collect-visible-defs* (actuals obj))
  (collect-visible-defs* (dactuals obj))
  (collect-visible-defs* (argument obj)))

(defmethod collect-visible-defs* ((obj injection?-application))
  (collect-visible-defs* (actuals obj))
  (collect-visible-defs* (dactuals obj))
  (collect-visible-defs* (argument obj)))

(defmethod collect-visible-defs* ((obj extraction-application))
  (collect-visible-defs* (actuals obj))
  (collect-visible-defs* (dactuals obj))
  (collect-visible-defs* (argument obj)))

(defmethod collect-visible-defs* ((obj tuple-expr))
  (collect-visible-defs* (exprs obj)))

(defmethod collect-visible-defs* ((obj record-expr))
  (collect-visible-defs* (assignments obj)))

(defmethod collect-visible-defs* ((obj cases-expr))
  (collect-visible-defs* (expression obj))
  (collect-visible-defs* (selections obj))
  (collect-visible-defs* (else-part obj)))

(defmethod collect-visible-defs* ((obj selection))
  (collect-visible-defs* (constructor obj))
  (collect-visible-defs* (args obj))
  (collect-visible-defs* (expression obj)))

(defmethod collect-visible-defs* ((obj application))
  (collect-visible-defs* (operator obj))
  (collect-visible-defs* (argument obj)))

;;; Tables should go here

(defmethod collect-visible-defs* ((obj binding-expr))
  (collect-visible-defs* (bindings obj))
  (collect-visible-defs* (expression obj)))

(defmethod collect-visible-defs* ((obj set-list-expr))
  (collect-visible-defs* (exprs obj)))

(defmethod collect-visible-defs* :around ((obj fieldex-lambda-expr))
  (collect-visible-defs* (actuals obj))
  (collect-visible-defs* (dactuals obj))
  (call-next-method))

(defmethod collect-visible-defs* ((obj update-expr))
  (collect-visible-defs* (expression obj))
  (collect-visible-defs* (assignments obj)))

(defmethod collect-visible-defs* ((obj assignment))
  (collect-visible-defs* (arguments obj))
  (collect-visible-defs* (expression obj)))

(defmethod collect-visible-defs* ((obj simple-decl))
  (unless (untyped-bind-decl? obj)
    (collect-visible-defs* (declared-type obj)))
  (call-next-method))

(defmethod collect-visible-defs* ((obj actual))
  (collect-visible-defs* (expr obj)))

(defmethod collect-visible-defs* ((obj mapping))
  (collect-visible-defs* (lhs obj))
  (collect-visible-defs* (rhs obj))
  (collect-visible-defs* (declared-type obj)))

(defmethod collect-visible-defs* :around ((obj mapping-with-formals))
  (collect-visible-defs* (formals obj))
  (call-next-method))

(defmethod collect-visible-defs* :around ((obj mapping-lhs))
  (collect-visible-defs* (decl-formals obj))
  (call-next-method))

(defmethod collect-visible-defs* ((obj rational-expr))
  )

(defmethod collect-visible-defs* (obj)
  (break "Should define method for ~a" obj))

(defmethod collect-visible-defs* ((obj name))
  (collect-visible-defs* (actuals obj))
  (collect-visible-defs* (dactuals obj))
  (collect-visible-defs* (mappings obj))
  (collect-visible-defs* (target obj))
  (when (and (declaration obj)
	     (const-decl? (declaration obj))
	     (definition (declaration obj)))
    (pushnew (declaration obj) *visible-defs*)))

;;; Collect names

(defvar *collected-names* nil)

(defun create-distinct-names (obj)
  (let* ((dnames (distinct-names-with-same-id obj))
	 (names-alist (create-distinct-names-alist dnames)))
    (gensubst obj
      #'(lambda (x) (cdr (assoc x names-alist :test #'tc-eq)))
      #'(lambda (x) (assoc x names-alist :test #'tc-eq)))))

(defun create-distinct-names-alist (dnames &optional names-alist)
  (if (null dnames)
      names-alist
      (create-distinct-names-alist
       (cdr dnames)
       (create-distinct-names-alist* (cdar dnames) names-alist))))

(defun create-distinct-names-alist* (names names-alist)
  (let ((name-strings (mapcar #'str names)))
    (if (duplicates? name-strings :test #'string=)
	;; At least two names print the same - need to make them all unique
	;; This means finding the differences in the module instances to
	;; pull up to the name.  The relevant slots are the mod-id library
	;; actuals dactuals mappings and target
	(let* ((mi (module-instance (car names)))
	       (thid? (or (some #'mod-id names)
			  (some #'(lambda (nm)
				    (not (eq (mod-id (module-instance nm))
					     (mod-id mi))))
				(cdr names))))
	       (lib? (or (some #'library names)
			 (some #'(lambda (nm)
				   (not (eq (library (module-instance nm))
					    (library mi))))
			       (cdr names))))
	       (acts? (or (some #'actuals names)
			  (some #'(lambda (nm)
				    (not (tc-eq (actuals (module-instance nm))
						(actuals mi))))
				(cdr names))))
	       (dacts? (or (some #'dactuals names)
			   (some #'(lambda (nm)
				     (not (tc-eq (dactuals (module-instance nm))
						 (dactuals mi))))
				 (cdr names))))
	       (mappings? (or (some #'mappings names)
			      (some #'(lambda (nm)
					(not (tc-eq (mappings (module-instance nm))
						    (mappings mi))))
				    (cdr names)))))
	  (dolist (nm names)
	    (unless (and (or (null thid?) (mod-id nm))
			 (or (null lib?) (library nm))
			 (or (null acts?) (actuals nm))
			 (or (null dacts?) (dactuals nm))
			 (or (null mappings?) (mappings nm)))
	      (let ((nmi (module-instance nm)))
		(push (cons nm
			    (copy nm
			      :mod-id (or (mod-id nm)
					  (and thid? (mod-id nmi)))
			      :library (or (library nm)
					   (and lib? (library nmi)))
			      :actuals (or (actuals nm)
					   (and acts? (actuals nmi)))
			      :dactuals (or (dactuals nm)
					    (and dacts? (dactuals nmi)))
			      :mappings (or (mappings nm)
					    (and mappings? (mappings nmi)))))
		      names-alist))))
	  names-alist)
	names-alist)))

(defun distinct-names-with-same-id (obj)
  (let ((names nil)
	(*parsing-or-unparsing* t))
    (mapobject #'(lambda (x)
		   (when (and (name? x)
			      (resolution x)
			      (not (eq (declaration x) (equality-decl)))
			      (not (eq (declaration x) (disequality-decl))))
		     (let ((same-id-names (assq (id x) names)))
		       (if same-id-names
			   (unless (some #'(lambda (nm) (tc-eq x nm))
					 (cdr same-id-names))
			     (push x (cdr same-id-names)))
			   (push (list (id x) x) names)))))
	       obj)
    (remove-if #'(lambda (entry) (= (length entry) 2)) names)))

(defun collect-names (obj)
  (let ((*collected-names* nil))
    (mapobject #'(lambda (x)
		   (when (and (name? x)
			      (resolution x)
			      (not (member x *collected-names*
					   :test #'tc-eq)))
		     (push x *collected-names*)
		     nil))
	       obj)
    *collected-names*))

(defmethod all-formulas ((th module))
  (remove-if-not #'formula-decl? (all-decls th)))

(defmethod formulas-referencing ((ref string))
  (formulas-referencing (intern ref :pvs)))

(defmethod formulas-referencing ((ref symbol))
  (let ((ref-forms nil))
    (do-all-theories
	#'(lambda (th)
	    (dolist (decl (all-decls th))
	      (when (and (formula-decl? decl)
			 (id-occurs-in ref (definition decl)))
		(push decl ref-forms)))))
    ref-forms))
