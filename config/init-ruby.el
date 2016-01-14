
(add-config-load-path "ruby")
(add-config-load-path "code")

(require 'init-rvm)
(require 'init-rubocop)
(require 'init-inf-ruby)
(require 'init-rhtml)
(require 'init-robe)
(require 'init-smart-forward)

; Enable and configure auto complete
(require-package 'auto-complete)
(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories "~/.emacs.d/elpa/auto-complete-20160107.8/dict")
(ac-config-default)
(setq ac-ignore-case nil)
(add-to-list 'ac-modes 'ruby-mode)

; Enable and configure line numbers
(add-hook 'ruby-mode-hook 'linum-mode)
(setq linum-format " %d")

; Highlight current line number
(require-package 'hlinum)
(hlinum-activate)

; Enable indentations highlighting
(require-package 'highlight-indentation)
(require 'highlight-indentation)
(set-face-background 'highlight-indentation-face "#3E4B54")
(set-face-background 'highlight-indentation-current-column-face "#c3b3b3")
(add-hook 'ruby-mode-hook 'highlight-indentation-mode)

(provide 'init-ruby)
