
(require-package 'scss-mode)
(require-package 'less-css-mode)

(setq css-indent-offset 2)

(add-to-list 'auto-mode-alist '("\\.scss\\'" . scss-mode))

(provide 'init-css)
