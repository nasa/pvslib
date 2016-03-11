
;; Copyright (c) 2012 United States Government as represented by
;; the National Aeronautics and Space Administration.  No copyright
;; is claimed in the United States under Title 17, U.S.Code. All Other
;; Rights Reserved.
;;
;; The software in this package has been released as open-source software
;; under the NASA Open Source Agreement.  See the accompanying file
;; NASA_Open_Source_Agreement.pdf for a full description of the terms.

;
; hyp-support.el -- Hypatheon support functions for prover-client interaction
; Author          : Ben Di Vito
; Created On      : 2 Oct 2002
; Last Modified By: Ben Di Vito
; Last Modified On: 27 Nov 2012


;;-----------------------------------------------

;; Emacs operations that result in commands sent to client.

;; Evaluate a command string (Python function call) in the client process.
;; It is formatted and forwarded to the client via the subprocess pipe
;; created by Emacs.  Two kinds of expressions are used.  Those calling the
;; function 'accept_pvs_result' will be evaluated first in the listener thread,
;; so no actions requiring the main thread can be involved.  The value will
;; then be queued for reevaluation in the main thread.  The other kind will
;; be queued and evaluated directly in the main thread.
;; Don't send if process has stopped -- no error is thrown for now.

(defun client-eval (cmd &rest args)
  (when (eq (process-status "hyp-client") 'run)
    (let* ((py-args
	    (apply #'concat
		   (if args (format "%S" (car args)) "")
		   (mapcar #'(lambda (a) (format ", %S" a)) (cdr args))))
	   (client-expr (format "%s(%s)\n" cmd py-args)))
      (process-send-string "*hypatheon-client*" client-expr))))


;; Fetch an identifier from the prover buffer (*pvs*) and send it to
;; the client window to fill the text entries.  The text is scanned for
;; valid PVS identifier characters.

(defun pvs-prover-db-enter-fname ()
  "Enters function name from current proof buffer into database search query panel."
  (interactive)
  (unwind-protect
      (let* ((dummy1 (skip-chars-backward "a-zA-Z_0-9?"))
	     (start (point))
	     (dummy2 (skip-chars-forward "a-zA-Z_0-9?"))
	     (fname (buffer-substring-no-properties start (point))))
	(client-eval "enter_next_fnames" (format "%s" fname))
	(goto-char (point-max)))
    nil))  ;; no recovery actions right now


;; TAB-key binding (TAB-@) for grabbing function name from prover buffer
;; and pasting in entries of query panel.

(define-key pvs-prover-helps-map "@"     'pvs-prover-db-enter-fname)


;; Following initiates Hypatheon searches on any identifier in any Emacs buffer.

(defun pvs-db-find-identifier ()
  "Searches (using Hypatheon) for identifier found under cursor in current buffer."
  (interactive)
  (unwind-protect
      (let* ((cursor (point))
	     (dummy1 (skip-chars-backward "a-zA-Z_0-9?@"))
	     (left (point))
	     (posn (- cursor left))
	     (dummy2 (skip-chars-forward "a-zA-Z_0-9?@"))
	     (ident (buffer-substring-no-properties left (point))))
	(client-eval "search_for_pvs_identifier" (format "%s" ident) posn)
	(message (format "[HYP] Find PVS identifier: %s" ident)))
    nil))

;; This key assignment seems to be generally available.  If clashes appear
;; later, might need to find another or make it a parameter.

(define-key global-map "\C-cf" 'pvs-db-find-identifier)


;;-----------------------------------------------

;; Functions (API) provided for invocation by client process.
;; Could be invoked from Allegro process also.

;; Insert command string in prover buffer *pvs* and submit it.

(defun insert-prover-cmd (cmd &rest args)
  (if pvs-in-checker
      (progn (goto-pvs-proof-buffer)
	     (insert
	      (let ((cmd-string (replace-regexp-in-string "&quot;" "\"" cmd))
		    (args-string
		     (apply #'concat
			    (mapcar #'(lambda (a) (format " %S" a)) args))))
		(if (equal (elt cmd-string 0) 40)
		    cmd-string    ;; leading left paren => full command string
		    (format "(%s%s)" cmd-string args-string))))
	     (return-ilisp))
      (message
       "Hypatheon: no proof in progress; cannot insert prover command."))
  "3")

;; Insert a sequence of strings at the end of the prover buffer without
;; submitting it as a command.  Assumes a proof is in progress.

(defun insert-prover-strings (&rest strings)
  (unless (equal (buffer-name) ilisp-buffer)
    (pop-to-buffer ilisp-buffer))
  (goto-char (point-max))
  (dolist (str strings)
    (insert (format " %S" str)))
  "3")

;; Checks whether a theory is on the import chain for the current theory.
;; Normally called while a proof is active.  Default is to return boolean
;; result usable by Python, i.e., 0 or 1.  Returns result by invoking a
;; client procedure.  Alternatively, by supplying t for optional argument
;; will get a Lisp-style boolean result via a normal function return.

(defun theory-on-import-chain (name &optional lisp-result)
  (let ((result (pvs-send-and-wait
		 (format "(not (null (get-theory \"%s\")))" name))))
    (if lisp-result
	result
        (if result "1" "0"))))
 
(defun are-theories-on-import-chain (names)
  (let ((result (mapcar #'(lambda (b) (if b 1 0))
			(pvs-send-and-wait
			 (format "(are-theories-on-import-chain '%S)"
				 names)))))
    (if result (format "%s" result) "0")))

(defun theories-on-import-chain (names)
  (let ((result (pvs-send-and-wait
		 (format "(theories-on-import-chain '%S)" names))))
    (if result (format "%s" result) "()")))

(defun import-chain-theories (path-name)
  (let ((result (pvs-send-and-wait
		 (format "(import-chain-theories %S)" path-name))))
    (if result (format "%s" result) "()")))
 
(defun is-checker-running ()
   (if pvs-in-checker "1" "0"))

; Get place information for prelude theories.

(defun prelude-theory-place (theory)
  (pvs-send-and-wait (format "(prelude-theory-place '%s)" theory)))

; Get version info in string format ("4.2").
    
(defun get-pvs-version ()
  short-pvs-version)

(defun get-long-pvs-version()
  ; Use <n> to encode newlines so result can be sent as a single string.
  (apply #'concat
	 (apply #'append
		(mapcar #'(lambda (v) (when v (list (format "%s<n>" v))))
			*pvs-version-information*))))

;;-----------------------------------------------

;; Insert a proof script at the end of the editing buffer ("Proof"),
;; if it exists.  Return 0 if buffer missing.

(defun insert-proof-script (decl_name script-file overwrite)
  (let ((edit-buffer (get-buffer "Proof")))
    (if edit-buffer
	(progn
	  (pop-to-buffer edit-buffer)
	  (if overwrite
	      (delete-region (point-min) (point-max))
	      (goto-char (point-max)))
;	      (end-of-buffer))
	  (insert (format "%s" "\n\n"))
	  (insert (format ";;; Proof cloned from formula %s:\n" decl_name))
	  (insert-file-contents script-file)
	  "1")
        "0")))


;;; =================== Client Process ====================

; Client is a Python process started asynchronously.  Standard input
; and output are used for Emacs-to-Client communication.
; Error messages are redirected to a log file.

(defvar hypatheon-client-process nil)

(defun start-hyp-client-process ()
  (let ((client-process
;;	 (start-process-shell-command
	 (start-process
	  "hyp-client" "*hypatheon-client*"
	  (if (eq system-type 'darwin) "pythonw" "python") "-u"
	  (expand-file-name (concat hypatheon-dir "/client/hypatheon.py"))
	  "1" hypatheon-dir
;;; Redirection using "2>" doesn't work under all shells
	  "2>" (expand-file-name (concat hypatheon-dir "/log/pvs_error_log"))
	 )))
    (setq hypatheon-client-process client-process)
    (set-process-filter client-process 'process-hyp-client-request)
    (set-process-query-on-exit-flag client-process nil)
;    (process-kill-without-query client-process)
    (pvs-log-message "HYP" (format "Starting Hypatheon client process %s."
				   (process-id client-process))))
  )

; The client's output to Emacs is a stream of requests formatted as calls
; to Emacs Lisp functions.  The filter function just needs to evaluate
; the expression and return the result to the client.  Currently treats
; all exchanges as single-line messages.
; Incorporated and adapted a simplified form of the more general filter
; structure found in the PVS Emacs file pvs/emacs/emacs-src/pvs-tcl.el.

(defvar *hyp-client-partial-line* ""
  "The part of the pvs line that has been received so far.")

(defvar *hyp-client-recursive-process-filter* nil
  "True if currently inside a call to pvs-process-filter.")

(defvar *hyp-client-process-output* ""
  "Pending output from the pvs hyp-client process.")

;;; If anything called by pvs-process-filter does
;;; sit-for, sleep-for, or accept-process-output, then pvs-process-filter
;;; can get called recursively.  If it does, then it can't actually
;;; process the output that it gets; that would allow things to happen
;;; out of order.  Instead, it appends the output to the string
;;; that is currently being processed by the top-level pvs-process-filter.
;;; This process filter is based on a similar one in PVS.

(defun process-hyp-client-request (process output)
  (let ((cur-buf (current-buffer)))
    (set-buffer (process-buffer process))
    (insert output)
    (set-buffer cur-buf))
;;; above for debug only
  (if *hyp-client-recursive-process-filter*
      (setq *hyp-client-process-output*
	    (concat *hyp-client-process-output* output))
      (let ((*hyp-client-recursive-process-filter* t))   ;;;;
	(setq output (concat *hyp-client-partial-line* output))
	(let ((*hyp-client-process-output* output)
	      line-end)
	  (while (string-match "\n" *hyp-client-process-output*)
	    (setq line-end (match-end 0))
	    ;; Note that *hyp-client-process-output* can get longer
	    ;; during this next call.
	    (let* ((expr (substring *hyp-client-process-output* 0 line-end))
;; 		   (dummy (pvs-log-message
;; 			   "HYP"
;; 			   (format "Received client request:\n %S" expr)))
		   (value (condition-case nil
			      (eval (car (read-from-string expr)))
			    (error ;;; check if s-expr with parens
				   ;;; if so, return error code
				   ;;; else just log and ignore
				   (let ((match (string-match "^ *(.+) *$" expr)))
				     (pvs-log-message "HYP"
				       (if match
					   (format "Evaluation error: %S" expr)
					   "Spurious input ignored"))
				     (if match "EVAL--ERROR" 'no-reply))))))
	      (unless (eq value 'no-reply)
;; 		(pvs-log-message "HYP"
;; 				 (format "Returning to client:\n %S" value))
		(client-eval "accept_pvs_result" value)))
	    (setq *hyp-client-process-output*
		  (substring *hyp-client-process-output* line-end)))
	  (setq *hyp-client-partial-line* *hyp-client-process-output*)))))

(start-hyp-client-process)

; Add process id to window/frame title bar so it matches client's title.

(setq frame-title-format (format "PVS with Hypatheon (%s)" (emacs-pid)))

; Following is available at the user interface to (re)start the client if
; it should be necessary.  Can be invoked even if the client had been
; closed earlier in the session by the user.

(defun restart-hypatheon-client (&optional from-client exit-only)
  "Restart the Hypatheon client process, killing the current one first."
  (interactive)
  (let ((log-message (if exit-only
			 "Hypatheon Client is exiting."
		         "Hypatheon Client is restarting.")))
    (pvs-log-message "MSG" log-message))
  (when (and hypatheon-client-process
	     (eq (process-status hypatheon-client-process) 'run))
    (unless from-client
      (when (get-buffer "*hypatheon-client*")
	(process-send-string "*hypatheon-client*" "<<<CLOSING>>>\n"))
      (message "Hypatheon client is closing...")
      (sit-for 1)
      (signal-process hypatheon-client-process 1)     ; send a SIGHUP signal
      (sit-for 1))
    (delete-process hypatheon-client-process)
    (message "Hypatheon client has been terminated.")
    (sleep-for 1))
;  (setq hypatheon-client-process nil)
  (unless exit-only
    (start-hyp-client-process)
    (message "A new instance of the Hypatheon client has been started."))
  'no-reply)

(defun close-hypatheon-client ()
  "Signal the Hypatheon client process to exit, wait a second, then forcibly terminate it for good measure."
  (interactive)
  (restart-hypatheon-client nil t))


(pvs-log-message "MSG" "Emacs support for Hypatheon has been loaded.")

(pvs-log-message "MSG" "Hypatheon Client has been launched.")

;;;;;;;;;;;;;;;

(provide 'hyp-support)
