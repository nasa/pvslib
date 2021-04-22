;;
;; prooflite.el
;; Release: ProofLite-7.0 (06/30/19)
;;
;; Contact: Cesar Munoz (cesar.a.munoz@nasa.gov)
;; NASA Langley Research Center
;; http://shemesh.larc.nasa.gov/people/cam/ProofLite
;;
;; Copyright (c) 2011-2012 United States Government as represented by
;; the National Aeronautics and Space Administration.  No copyright
;; is claimed in the United States under Title 17, U.S.Code. All Other
;; Rights Reserved.
;;

(defpvs write-prooflite-scripts-to-file edit-proof ()
  "Write prooflite scripts for all the proof obligations in the current theory."
  (interactive)
  (confirm-not-in-checker)
  (pvs-bury-output)
  (save-some-pvs-buffers)
  (let* ((theory (second (split-string (current-theory) "#")))
	 (file   (current-pvs-file))
	 (pvs-error nil))
    (pvs-send-and-wait (format "(typecheck-file \"%s\" nil nil nil t)"
			   file)
		       nil 'tc 'dont-care)
    (unless pvs-error
      (pvs-send-and-wait
       (format "(write-all-prooflite-scripts-to-file \"%s\")" theory)))
    (unless pvs-error
      (pvs-message "Finished writing scripts to prl file."))))

(defpvs install-prooflite-scripts-theory edit-proof ()
  "Install ProofLite scripts of non-proved formulas in theory

Installs ProofLite scripts in the current theory as default proofs except
for formulas that are already proved."
  (interactive)
  (confirm-not-in-checker)
  (pvs-bury-output)
  (save-some-pvs-buffers)
  (let* ((theory (second (split-string (current-theory) "#")))
	 (file   (current-pvs-file))
	 (pvs-error nil))
    (pvs-send-and-wait (format "(typecheck-file \"%s\" nil nil nil t)"
			   file)
		       nil 'tc 'dont-care)
    (unless pvs-error
      (let((prl-filename (format "%s.prl" theory)))
	(when (file-exists-p prl-filename)
	  (pvs-send-and-wait
	   (format "(install-prooflite-scripts-from-prl-file \"%s\" \"%s\" nil)" theory prl-filename)))))
    (unless pvs-error
      (pvs-send-and-wait
       (format "(install-prooflite-scripts \"%s\" \"%s\" 0 nil)" theory file theory)))
    (unless pvs-error
      (pvs-message "Finished scripts installation."))))

(defpvs install-prooflite-script edit-proof ()
  "Install ProofLite script at the cursor position of non-proved formula

Installs the ProofLite script at the current cursor position unless 
the formula is already proved."
  (interactive)
  (confirm-not-in-checker)
  (pvs-bury-output)
  (save-some-pvs-buffers)
  (let* ((theory (current-theory))
	 (file (current-pvs-file))
	 (line (current-line-number))
	 (pvs-error nil))
    (pvs-send-and-wait (format "(typecheck-file \"%s\" nil nil nil t)"
			   file)
		       nil 'tc 'dont-care)
    (unless pvs-error
      (pvs-send-and-wait 
       (format "(install-prooflite-scripts \"%s\" \"%s\" %s nil)"
	   file theory line)))))

(defpvs install-prooflite-scripts-theory! edit-proof ()
  "Install ProofLite scripts of formulas in theory

Installs ProofLite scripts of all formulas in the current theory as 
default proofs even if formulas are already proved."
  (interactive)
  (confirm-not-in-checker)
  (pvs-bury-output)
  (save-some-pvs-buffers)
  (let* ((theory (when (current-theory) (second (split-string (current-theory) "#"))))
	 (file   (current-pvs-file))
 	 (pvs-error nil))
    (pvs-send-and-wait (format "(typecheck-file \"%s\" nil nil nil t)"
			       file)
		       nil 'tc 'dont-care)
    (unless pvs-error
      (let((prl-filename (format "%s.prl" theory)))
	(when (file-exists-p prl-filename)
	  (pvs-send-and-wait
	   (format "(install-prooflite-scripts-from-prl-file \"%s\" \"%s\" t)" theory prl-filename)))))
    (unless pvs-error
      (pvs-send-and-wait
       (format "(install-prooflite-scripts \"%s\" \"%s\" 0 t)" theory file theory)))
    (unless pvs-error
      (pvs-message "Finished scripts installation."))))

(defpvs install-prooflite-script! edit-proof ()
  "Install ProofLite script at the cursor position 

Installs the ProofLite script at the current cursor position even if
the formula is already proved."
  (interactive)
  (confirm-not-in-checker)
  (pvs-bury-output)
  (save-some-pvs-buffers)
  (let* ((theory (current-theory))
	 (file (current-pvs-file))
	 (line (current-line-number))
 	 (pvs-error nil))
    (pvs-send-and-wait (format "(typecheck-file \"%s\" nil nil nil t)"
			   file)
		       nil 'tc 'dont-care)
    (unless pvs-error
      (pvs-send-and-wait 
       (format "(install-prooflite-scripts \"%s\" \"%s\" %s t)"
	   file theory line)))))
  
(defun prooflite-buffer (&optional mssg)
  (let ((buffer (get-buffer "ProofLite")))
    (with-current-buffer buffer
      (goto-char (point-min))
      (when mssg 
	(insert mssg)
	(newline 2))
      (while (< (point) (point-max))
	(insert "%|- ")
	(forward-line)))))

(defpvs insert-prooflite-script edit-proof ()
  "Insert ProofLite script into the current theory

Inserts the ProofLite script of the default proof of the formula closest
to (moving forward) the current cursor position into the working theory."
  (interactive)
  (confirm-not-in-checker)
  (pvs-bury-output)
  (let* ((fref (pvs-formula-origin))
	 (kind (pvs-fref-kind fref))
	 (file (pvs-fref-file fref))
	 (line (pvs-fref-line fref))
	 (pvs-error nil))
    (when (eq kind 'pvs)
      (save-some-pvs-buffers)
      (pvs-send-and-wait (format "(typecheck-file \"%s\" nil nil nil t)"
			     file)
			 nil 'tc 'dont-care)
      (unless pvs-error
	(when (get-buffer "ProofLite")
	  (kill-buffer "ProofLite"))
	(set-proof-script-font-lock-keywords)
	(let ((line (pvs-send-and-wait 
		     (format 
			 "(proof-to-prooflite-script \"%s\" %d)" file line)
		     nil nil 'list)))
	  (when line
	    (prooflite-buffer)
	    (goto-char (point-min))
	    (forward-line (car line))
	    (newline)
	    (insert-buffer-substring "ProofLite")))))))

(defun complete-formula-name ()
  (let* ((formulas (pvs-send-and-wait 
		    (format "(all-decl-names \"%s\")" (current-theory))
				      nil nil 'list))
	 (formula  (completing-read "Formula: " 
				    (mapcar 'list formulas) nil t)))
    (if (equal formula "")
	(error "Must provide a formula name")
      (list formula))))

(defpvs display-prooflite-script edit-proof (formula)
  "Display ProofLite script of the default proof of formula 

Displays the ProofLite script of the default proof of formula
in the \"ProofLite\" buffer."
  (interactive (complete-formula-name))
  (confirm-not-in-checker)
  (pvs-bury-output)
  (save-some-pvs-buffers)
  (let* ((file (current-pvs-file))
	 (theory (current-theory))
	 (pvs-error nil))
    (pvs-send-and-wait (format "(typecheck-file \"%s\" nil nil nil t)"
			       file)
		       nil 'tc 'dont-care)
    (unless pvs-error
      (when (get-buffer "ProofLite")
	(kill-buffer "ProofLite"))
      (set-proof-script-font-lock-keywords)
      (pvs-send-and-wait 
       (format "(display-prooflite-script \"%s\" \"%s\")" theory formula)
       nil nil 'dont-care)
      (prooflite-buffer 
       (format "%%%%%% To install this ProofLite script copy it to the theory %s %%%%%%"
	       theory))
      (display-buffer "ProofLite"))))
    
(define-key pvs-mode-map "\C-cit" 'install-prooflite-scripts-theory)
(define-key pvs-mode-map "\C-cip" 'install-prooflite-script)
(define-key pvs-mode-map "\C-c!t" 'install-prooflite-scripts-theory!)
(define-key pvs-mode-map "\C-c!p" 'install-prooflite-script!)
(define-key pvs-mode-map "\C-c2p" 'insert-prooflite-script)
(define-key pvs-mode-map "\C-cdp" 'display-prooflite-script)

;; Support for enable/disable oracles

(defun complete-oracle-name (msg enabled)
  (let* ((oracles (pvs-send-and-wait  
		   (format "(extra-list-oracle-names %s)" enabled)
		   nil nil 'list))
	 (oracle  (completing-read msg
				   (mapcar 'list oracles) nil t)))
    (if (equal oracle "")
	(error "Must provide a oracle name")
      (list oracle))))

(defpvs disable-oracle prove (oracle)
  "Disable oracle. 

Disable external oracle."
  (interactive (complete-oracle-name "Disable external oracle: " t))
  (confirm-not-in-checker)
  (pvs-bury-output)
  (save-some-pvs-buffers)
  (pvs-send-and-wait (format "(extra-disable-oracle '%s)" oracle)
		     nil nil 'dont-care))

(defpvs enable-oracle prove (oracle)
  "Enable oracle. 

Enable external oracle."
  (interactive (complete-oracle-name "Enable external oracle: " nil))
  (confirm-not-in-checker)
  (pvs-bury-output)
  (save-some-pvs-buffers)
  (pvs-send-and-wait (format "(extra-enable-oracle '%s)" oracle)
		     nil nil 'dont-care))

(defpvs disable-all-oracles prove ()
  "Disable all oracles. 

Disable all external oracles."
  (interactive)
  (confirm-not-in-checker)
  (pvs-bury-output)
  (save-some-pvs-buffers)
  (pvs-send-and-wait "(extra-disable-all-oracles)"
		     nil nil 'dont-care))

(defpvs list-enabled-oracles prove ()
  "List enabled oracles. 

List enabled oracles."
  (interactive)
  (confirm-not-in-checker)
  (pvs-bury-output)
  (save-some-pvs-buffers)
  (let ((oracles (pvs-send-and-wait  
		  "(extra-list-oracle-names t)"
		  nil nil 'list)))
    (pvs-message "Enabled oracles: %s" oracles)))

(defpvs list-disabled-oracles prove ()
  "List disabled oracles. 

List disabled oracles."
  (interactive)
  (confirm-not-in-checker)
  (pvs-bury-output)
  (save-some-pvs-buffers)
  (let ((oracles (pvs-send-and-wait  
		  "(extra-list-oracle-names nil)"
		  nil nil 'list)))
    (pvs-message "Disabled oracles: %s" oracles)))

