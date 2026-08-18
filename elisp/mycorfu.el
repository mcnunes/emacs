;;; corfu.el --- Completion UI setup -*- lexical-binding: t; -*-

;;; Commentary:
;; Corfu + Orderless + Cape configuration

(use-package corfu
  :ensure t
  :init
  (global-corfu-mode)

  :custom
  (corfu-auto nil)                   ;; auto completion
  ;;(corfu-auto t)
  (corfu-auto-delay 0.2)
  (corfu-auto-prefix 2)
  (corfu-cycle t)                  ;; cycle candidates
  (corfu-quit-no-match 'separator)
  (corfu-preview-current nil))      ;; safer behavior

  ;; :config
  ;;(define-key corfu-map (kbd "TAB") #'corfu-complete)
  ;; (define-key corfu-map (kbd "<tab>") #'corfu-next)
  ;; (define-key corfu-map (kbd "S-TAB") #'corfu-previous)
  ;; (define-key corfu-map (kbd "<backtab>") #'corfu-previous))

(add-hook 'shell-mode-hook
          (lambda ()
            (corfu-mode -1)))

;;; Precient
(use-package prescient
  :ensure t
  :config
  (prescient-persist-mode 1)) ;; remember usage across sessions

(use-package corfu-prescient
  :ensure t
  :after (corfu prescient)
  :config
  (corfu-prescient-mode 1))

(setq prescient-save-file
      (expand-file-name "prescient-save.el" user-emacs-directory))

(setq prescient-filter-method '(literal regexp initialism))

;;; Orderles
(use-package orderless
  :ensure t
  :custom
  (completion-styles '(orderless basic))
  (completion-category-defaults nil)
  (completion-category-overrides
   '((file (styles partial-completion)))))

;;; Cape
(use-package cape
  :ensure t
  :config
  ;; Add to the END → keeps Eglot priority
  (add-to-list 'completion-at-point-functions #'cape-file t)
  (add-to-list 'completion-at-point-functions #'cape-dabbrev t))

;; Enable TAB completion globally
(setq tab-always-indent 'complete)
(setq completion-ignore-case t
      read-buffer-completion-ignore-case t
      read-file-name-completion-ignore-case t)

;;; doc popup
;; (use-package corfu-popupinfo
;;   :after corfu
;;   :config
;;  (corfu-popupinfo-mode))


;;; Vertico
;; (use-package vertico
;;   :ensure t
;;   :init
;;   (vertico-mode)

;;   :custom
;;(vertico-cycle t)) ;; cycle through candidates

(provide 'mycorfu)
;;; corfu.el ends here
