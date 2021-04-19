(setq gitfile-cmd "gitfile")
(setq gitfile-commit-cmd "gitfile-commit")

(defun gitfile-init ()
  (interactive)
  (if (= (shell-command (concat gitfile-cmd " " (buffer-file-name))) 0)
      (message (concat "Made " (buffer-file-name) " into a gitfile."))))

(defun gitfile-commit ()
  (interactive)
  (if (= (shell-command (concat gitfile-commit-cmd " " (buffer-file-name))) 0)
      (message (concat "Committed gitfile " (buffer-file-name) "."))))

(defun gitfile-save-and-commit ()
  (interactive)
  (save-buffer)
  (gitfile-commit))

(global-set-key (kbd "C-c g") 'gitfile-init)
(global-set-key (kbd "C-c C-s") 'gitfile-save-and-commit)

(provide 'gitfile)
