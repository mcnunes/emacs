;;; progamming

;; default c style
(add-hook 'c-mode-hook
      (lambda ()
        (setq c-default-style "k&r")
        (setq c-basic-offset 4)
        (c-set-offset 'case-label '+)
        (display-line-numbers-mode 1)
        (hl-line-mode 1)
        (electric-pair-local-mode 1)
        ))

;;; sh-mode
(add-hook 'sh-mode-hook
      (lambda ()
        (display-line-numbers-mode 1)
        (hl-line-mode 1)
        (electric-pair-local-mode 1)
        ))

;;; cperl-mode
(fset 'perl-mode 'cperl-mode)
(add-hook 'cperl-mode-hook
	  (lambda ()
	    ;;(display-fill-column-indicator-mode 1)
	    (display-line-numbers-mode 1)
	    (hl-line-mode 1)
	    (electric-pair-local-mode 1)
	    (setq cperl-indent-level 4)
	    (setq cperl-close-paren-offset -4)
	    (setq cperl-continued-statement-offset 4)
	    (setq cperl-indent-parens-as-block t)
	    ))


;;; php-mode
;;(add-to-list 'auto-mode-alist '("\\.php\\'" . php-mode))
(add-hook 'php-mode-hook
	  (lambda ()
	    (setq-local indent-tabs-mode nil)
            ;;(display-line-numbers-mode 1)
            (hl-line-mode 1)
            ;;(electric-pair-local-mode 1)
	    (subword-mode 1)
	    (setq c-basic-offset 2)
	    (setq php-mode-coding-style 'psr2)
	    ))


;;; mhtml-mode
;;(add-to-list 'auto-mode-alist '("\\.html?\\'" . mhtml-mode))
(add-hook 'mhtml-mode-hook
	  (lambda ()
	    (setq sgml-basic-offset 2)
            ;;(display-line-numbers-mode 1)
            (hl-line-mode 1)
            ;; (electric-pair-local-mode 1)
	    (visual-line-mode 1)
	    ))

;;; python-mode
;;(add-to-list 'auto-mode-alist '("\\.py\\'" . python-mode))
(add-hook 'python-mode-hook
	  (lambda ()
	    ;;(display-line-numbers-mode 1)
            (hl-line-mode 1)
            ;;(electric-pair-local-mode 1)
	    (setq python-indent-offset 4)
	    ))

;; (add-hook 'inferior-python-mode-hook
;;           (lambda ()
;;             (setq-local completion-at-point-functions nill)))

(provide 'prog)
