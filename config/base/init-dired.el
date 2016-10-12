
(require 'dired)

(setq dired-listing-switches "-alh"
      dired-recursive-copies 'always
      dired-recursive-deletes 'top
      dired-dwim-target t)

; (put 'dired-find-alternate-file 'disabled nil)

(global-set-key (kbd "C-x C-j") 'dired-jump)

;; Auto-refresh dired on file change
(add-hook 'dired-mode-hook 'auto-revert-mode)

(defun mydired-sort ()
  "Sort dired listings with directories first."
  (save-excursion
    (let (buffer-read-only)
      (forward-line 2) ;; beyond dir. header 
      (sort-regexp-fields t "^.*$" "[ ]*." (point) (point-max)))
    (set-buffer-modified-p nil)))

(defadvice dired-readin
  (after dired-after-updating-hook first () activate)
  "Sort dired listings with directories first before adding marks."
  (mydired-sort))

(provide 'init-dired)
