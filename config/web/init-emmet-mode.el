
(require-package 'emmet-mode)

(add-hook 'sgml-mode-hook 'emmet-mode)

(eval-after-load "emmet-mode"
  `(progn
     (define-key emmet-mode-keymap (kbd "C-j") #'newline-and-indent)
     (define-key emmet-mode-keymap (kbd "C-c C-m") #'emmet-expand-line)

     (setq emmet-indentation 2)))

(provide 'init-emmet-mode)
