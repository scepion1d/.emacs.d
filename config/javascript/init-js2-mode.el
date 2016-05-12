
(require-package 'js2-mode)

(add-to-list 'auto-mode-alist '("\\.js$" . js2-mode))
(add-to-list 'auto-mode-alist '("\\.jsx$" . js2-mode))

(setq-default js2-basic-offset 2
              js2-bounce-indent-p t
              js2-strict-missing-semi-warning nil
              js2-strict-trailing-comma-warning nil
              js2-strict-inconsistent-return-warning nil)

(add-hook 'js2-mode-hook '(lambda ()
                              (local-set-key (kbd "RET") 'newline-and-indent)))
(provide 'init-js2-mode)
