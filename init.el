
(defun in-user-emacs-directory (path)
  (concat user-emacs-directory path))

(defun add-load-path (&optional path)
  (add-to-list 'load-path (in-user-emacs-directory path)))

(defun add-config-load-path (&optional path)
  (add-load-path (concat "config/" path)))

(add-config-load-path)

(require 'init-package)
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
(require 'init-gap)
(require 'init-web)
