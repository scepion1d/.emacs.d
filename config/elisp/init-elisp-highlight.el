
(defmacro define-emacs-lisp-symbols-highlighter (name args selector)
 `(defun ,name (limit)
    (loop

     (unless (re-search-forward "[^() \"\t\n',@]+" limit t)
       (return nil))

     (when ((lambda ,args ,selector)
            (intern-soft (buffer-substring (match-beginning 0) (match-end 0))))
       (return t)))))

(define-emacs-lisp-symbols-highlighter highlight-emacs-lisp-macro (symbol)
  (eq 'macro (car-safe (symbol-function symbol))))

(define-emacs-lisp-symbols-highlighter highlight-emacs-lisp-function (symbol)
  (eq 'lambda (car-safe (symbol-function symbol))))

(define-emacs-lisp-symbols-highlighter highlight-emacs-lisp-compiled-or-primitive-function (symbol)
  (or (subrp (symbol-function symbol))
      (eq 'compiled-function (type-of (symbol-function symbol)))))

(define-emacs-lisp-symbols-highlighter highlight-emacs-lisp-global-variable (symbol)
  (and (boundp symbol)
       (not (or (eq symbol t)
                (eq symbol nil)))))

(dolist (mode '(emacs-lisp-mode inferior-emacs-lisp-mode))
  (font-lock-add-keywords mode
    '((highlight-emacs-lisp-macro . 'font-lock-keyword-face)
      (highlight-emacs-lisp-function . 'font-lock-function-name-face)
      (highlight-emacs-lisp-compiled-or-primitive-function . 'font-lock-builtin-face)
      (highlight-emacs-lisp-global-variable . 'font-lock-variable-name-face))
    t))

(provide 'init-elisp-highlight)
