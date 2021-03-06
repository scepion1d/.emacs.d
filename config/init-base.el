
(add-config-load-path "base")

(setq scroll-step 1
      make-pointer-invisible t
      frame-title-format "%b@Emacs"
      enable-local-eval t)

(setq-default make-backup-files nil
	      auto-save-defaults  t
	      indent-tabs-mode  nil)

(global-subword-mode 1)

(require 'init-startup)
(require 'init-smex)
(require 'init-org)
(require 'init-ido)
(require 'init-uniquify)
(require 'init-saveplace)
(require 'init-git)
(require 'init-dired)
(require 'init-libraries)
(require 'init-multiple-cursors)
(require 'init-phi-search)
(require 'init-ace-jump-mode)
(require 'init-quick-repl-history-search)
(require 'init-dictem)
(require 'init-minibuffer)
(require 'init-windmove)
(require 'init-markdown-mode)
(require 'init-unicode)
(require 'init-kill-ring)
(require 'init-editorconfig)
(require 'init-fancy-narrow)
(require 'init-diminish)
(require 'init-discover)
(require 'init-projectile)
(require 'init-exec-path-from-shell)

(provide 'init-base)
