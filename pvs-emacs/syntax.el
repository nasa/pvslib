;Hi Ben,
;There was something wrong in the way the syntax table was generated.  It's
;in emacs/emacs-src/pvs-mode.el.  I just now modified it and pushed the new
;version.  You can quickly get it working by adding the following to your
;~/.pvsemacs (create it if it doesn't exist):

(setq pvs-mode-syntax-table
  (let ((st (make-syntax-table)))
    (modify-syntax-entry ?_ "w" st)
    (modify-syntax-entry ?\? "w" st)
    (modify-syntax-entry ?: "." st)
    (modify-syntax-entry ?% "<" st)
    (modify-syntax-entry ?\f ">" st)
    (modify-syntax-entry ?\n ">" st)
    (modify-syntax-entry ?\r ">" st)
    st))
