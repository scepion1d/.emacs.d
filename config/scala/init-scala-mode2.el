
(require-package 'scala-mode2)

(add-to-list 'auto-mode-alist '("\\.scala$" . scala-mode))

(eval-after-load 'scala-mode2
  `(setq scala-indent:default-run-on-strategy scala-indent:eager-strategy
         scala-indent:align-parameters t))

(provide 'init-scala-mode2)
