
(require-package 'solarized-theme)

(add-to-list 'custom-safe-themes 'solarized-dark)

(load-theme 'solarized-dark t)

(set-face-attribute 'mode-line nil :box '(:line-width 1 :color "#93a1a1"))

(copy-face 'mode-line 'mode-line-inactive)

(add-hook 'after-make-frame-functions
         #'(lambda (ignore)
            (copy-face 'mode-line 'mode-line-inactive)))

(provide 'init-solarized-emacs)
