
(require 'package)

(defun in-user-emacs-directory (&rest paths)
  (apply #'concat user-emacs-directory paths))

(add-to-list 'package-archives '("melpa"     . "http://melpa.org/packages/" ) t)
(add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/") t)
(add-to-list 'package-archives '("melpa-stble" . "https://stable.melpa.org/packages/") t)

(package-initialize)

(dolist (archive '("gnu" "melpa" "marmalade"))
  (unless (file-exists-p (in-user-emacs-directory "elpa/archives/" archive))
    (package-refresh-contents)))

(defun require-package (package &optional no-refresh)
  (cond ((package-installed-p package) t)
        ((or (assoc package package-archive-contents) no-refresh) (package-install package))
        (t (package-refresh-contents)
           (require-package package t))))

(defun add-load-path (&rest paths)
  (add-to-list 'load-path (apply #'in-user-emacs-directory paths)))

(defun add-config-load-path (&rest paths)
  (apply #'add-load-path "config/" paths))

(add-config-load-path)

(require-package 'neotree)

(require 'init-visual)
(require 'init-base)
(require 'init-code)
(require 'init-network)
(require 'init-common-lisp)
(require 'init-elisp)
(require 'init-clojure)
(require 'init-javascript)
(require 'init-coffeescript)
(require 'init-scala)
(require 'init-ruby)
(require 'init-erlang)
(require 'init-elixir)
(require 'init-web)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(safe-local-variable-values (quote ((encoding . utf-8)))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
