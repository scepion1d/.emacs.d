
(require-package 'magit)
(require-package 'git-commit-mode)
(require-package 'git-rebase-mode)

(require-package 'git-gutter)

(global-git-gutter-mode 1)

(setq git-gutter:window-width 2
      git-gutter:lighter ""
      git-gutter:added-sign "✎"
      git-gutter:deleted-sign "☠"
      git-gutter:modified-sign "⚒")

(set-face-foreground 'git-gutter:deleted "red")
(set-face-foreground 'git-gutter:modified "yellow")

(require-package 'git-timemachine)

(provide 'init-git)