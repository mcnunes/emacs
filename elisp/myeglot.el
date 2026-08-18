;;; eglot.el --- LSP setup -*- lexical-binding: t; -*-

(use-package eglot
  :ensure t
  :hook
  ((python-mode . eglot-ensure)
   (sh-mode . eglot-ensure)
   (perl-mode . eglot-ensure)
   (c-mode . eglot-ensure)
   (c++-mode . eglot-ensure)
   (html-mode . eglot-ensure)
   (php-mode . eglot-ensure))

  :config
  ;; Optional performance tweaks
  (setq eglot-autoshutdown t)
  (setq eglot-sync-connect nil)
  (setq eglot-events-buffer-size 0))

(provide 'myeglot)

