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
