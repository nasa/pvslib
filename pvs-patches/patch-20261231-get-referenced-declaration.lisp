;; Patch for PVS 8.1 (dev, src/context.lisp)
;;
;; get-referenced-declaration* calls BREAK when a .prf file refers to a judgement that
;; no longer exists. In a batch run (proveit, provethem, prove-all), nothing answers the
;; debugger, so the run waits forever. This patch returns nil instead: the callers drop
;; missing references, and a rerun of the proof recomputes them.
;; See PVS bug-reports/missing-judgement-break.
;;
;; The date 20261231 is after the build date of the current dev, so the patch is loaded.
;; When dev contains this fix, rename the patch with a date before the PVS build date.
(in-package :pvs)
(defun get-referenced-declaration* (id class &optional type theory-id lib-ref)
  (unless (find-class class nil)
    (setq class (read-from-string (string class))))
  (if (eq class 'module)
      (let ((th (get-theory id)))
	;;(assert th)
	th)
      (if (and (memq id '(+ - * /))
	       (eq theory-id 'reals))
	  ;; Needed for backward compatibility after introduction of
	  ;; number_field
	  (let* ((theory (get-theory (mk-modname '|number_fields|)))
		 (decls (remove-if-not
			    #'(lambda (d)
				(and (typep d 'declaration)
				     (eq (id d) id)
				     (eq (type-of d) class)))
			  (all-decls theory))))
	    (assert decls)
	    (if (singleton? decls)
		(car decls)
		;; must be minus, check for type = "[real -> real]"
		(if (string= type "[real -> real]")
		    (cadr decls)
		    (car decls))))
	  (multiple-value-bind (lib-path lib-id)
	      (if (consp lib-ref)
		  (values (cdr lib-ref) (car lib-ref))
		  (get-library-reference lib-ref))
	    (let ((theory
		   (or (and lib-path
			    (member lib-path (current-prelude-libraries)
				    :test #'file-equal)
			    (let ((ws (get-workspace-session lib-path)))
			      (gethash theory-id (pvs-theories ws))))
		       (get-theory* theory-id lib-id)
		       (and (null lib-id)
			    ;; Old proofs may not have library
			    ;; set, so we look for a unique one
			    (let ((theories (get-imported-theories theory-id)))
			      (if (cdr theories)
				  (let* ((imps (current-sorted-importings))
					 (th (min-theory-wrt-imps theories imps)))
				    th)
				  (car theories)))))))
	      ;;(assert theory)
	      (when (and theory
			 (not (string-equal class 'skolem-const-decl)))
		(let ((decls (remove-if-not
				 #'(lambda (d)
				     (and (typep d 'declaration)
					  (eq (id d) id)
					  (eq (type-of d) class)))
			       (all-decls theory))))
		  (cond ((singleton? decls)
			 (car decls))
			((and (cdr decls) type)
			 (let ((ndecls (or (remove-if-not
					       #'(lambda (d) (string= (str (type d)) type))
					     decls)
					   (remove-if-not
					       #'(lambda (d)
						   (string= (str (declared-type d)) type))
					     decls))))
			   (cond ((singleton? ndecls)
				  (car ndecls))
				 ((null (cddr ndecls))
				  (cadr ndecls))
				 (t ;; (break "get-referenced-declaration* - multiple decls")
				  (car (last ndecls))))))
			(t (if (memq class '(subtype-judgement name-judgement
					     application-judgement expr-judgement
					     rec-application-judgement))
			       ;; These are copies of judgements created by judgements.lisp
			       ;; for instances of generic judgements - it should have kept
			       ;; the generic jugment instead of the instance, but we'll
			       ;; try and recover it anyway.
			       (let ((jdecls (remove-if-not #'judgement?
					       (get-declarations id))))
				 (if (singleton? jdecls)
				     (car jdecls)
				     ;; The judgement no longer exists (for example, it was removed
				     ;; from its theory). Return nil: the callers drop missing
				     ;; references, and a rerun of the proof recomputes them.
				     nil))))))))))))
				
				

