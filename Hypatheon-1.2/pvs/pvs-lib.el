
;; Copyright (c) 2012 United States Government as represented by
;; the National Aeronautics and Space Administration.  No copyright
;; is claimed in the United States under Title 17, U.S.Code. All Other
;; Rights Reserved.
;;
;; The software in this package has been released as open-source software
;; under the NASA Open Source Agreement.  See the accompanying file
;; NASA_Open_Source_Agreement.pdf for a full description of the terms.


;; Second-stage bootstrap file to load PVS client for Hypatheon

;; This file is loaded from .hypatheon-emacs, which normally is
;; placed in the user's home directory.

(defun load-hypatheon ()
  (let ((pvs-message-delay-save pvs-message-delay))
    (setq pvs-message-delay 10)    ;; temporarily reduce delay during loading

    ;; load Common Lisp support code and Hypatheon strategies.
    (pvs-send-and-wait
     (format "(load %S)" (concat hypatheon-dir "/pvs/pvs-lib.lisp")))
    (defconst short-pvs-version (pvs-send-and-wait "*pvs-version*"))

    ;; Load Emacs Lisp support code and start up the client.
    ;; Byte-compile first if needed.
    (let* ((elisp-sup-file (concat hypatheon-dir "/pvs/hyp-support.el"))
	   (bin-sup-file (concat elisp-sup-file "c")))
      (unless (file-newer-than-file-p bin-sup-file elisp-sup-file)
	(byte-compile-file elisp-sup-file))
      (load-file bin-sup-file))

    (pvs-msg "Lisp support for Hypatheon has been loaded.")
    (setq pvs-message-delay pvs-message-delay-save)  ;; restore message delay
    ))

;; The following function can be called from the .pvsemacs file to start
;; Hypatheon automatically.  Otherwise, it can be invoked interactively
;; within PVS using M-x start-hypatheon-client.  PVS must be in interactive
;; mode and environment variable NOHYP must be absent.

(defun start-hypatheon-client ()
  "Start the Hypatheon client and establish a connection to this PVS instance."
  (interactive)
  (cond ((or (getenv "PVSNONINTERACTIVE")
	     (getenv "NOHYP")
	     (null hypatheon-dir))
	 (message hyp-load-msg))        ;; loading suppressed in first stage
	((and (boundp 'hypatheon-client-process)
	      hypatheon-client-process)
	 (message
	  "Hypatheon is or had been running; use M-x restart-hypatheon-client."))
	(t (load-hypatheon))            ;; load and launch the client
      ))




