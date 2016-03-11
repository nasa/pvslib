
;; Copyright (c) 2012 United States Government as represented by
;; the National Aeronautics and Space Administration.  No copyright
;; is claimed in the United States under Title 17, U.S.Code. All Other
;; Rights Reserved.
;;
;; The software in this package has been released as open-source software
;; under the NASA Open Source Agreement.  See the accompanying file
;; NASA_Open_Source_Agreement.pdf for a full description of the terms.


;; Installation script for Hypatheon

;; This file should be loaded (M-x load-file) from within a working PVS
;; process.  It finds the Hypatheon directory (using pvs-library-path),
;; then runs the installation shell script.  This script will check for
;; necessary software libraries and create the required files.

(let ((hypath-dir nil))
  (catch 'not-found
    (block find-hyp
      (dolist (d (append pvs-library-path
			 (list (concat pvs-path "/lib"))))
	(let ((hyp-path (concat d "/Hypatheon")))
	  (when (file-exists-p hyp-path)
	    (setq hypath-dir hyp-path)
	    (return-from find-hyp))))
      (message
       "Hypatheon was not found in expected places. Cannot install it.")
      (throw 'not-found nil))

    (shell "*hyp-install*")
    (switch-to-buffer "*hyp-install*")
    (sit-for 0.5)    ;; allow shell prefix to be written
    (goto-char (point-max))
    (insert (format "cd %S; build/quick_install" hypath-dir))
    (comint-send-input)    ;; initiates quick_install execution
    (insert "exit")
    (comint-send-input)    ;; terminate shell process

    ;; Following lines might run before quick_install is finished,
    ;; so need to load files from source rather than destination.
    ;; Enable M-x start-hypatheon-client for this PVS instance:
    (load-file (concat hypath-dir "/pvs/DOThypatheon-emacs"))
    ))
