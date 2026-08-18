;; style
(tooltip-mode 0)
(scroll-bar-mode 0)
(tool-bar-mode 0)
(menu-bar-mode 0)
(blink-cursor-mode 1)
(column-number-mode 1)
(tab-bar-mode 0)
(global-display-line-numbers-mode 1)
(electric-pair-mode 1)

(setq tab-line-separator "")
(setq tab-line-new-button-show nil)
(add-to-list 'default-frame-alist '(foreground-color . "#FCFCFC"))
(add-to-list 'default-frame-alist '(background-color . "#202020"))

;; vertical line
(setq-default fill-column 80)
(set-face-foreground 'fill-column-indicator "gray30")

;;; vterm
(add-hook 'vterm-mode-hook
	  (lambda()
	    (display-fill-column-indicator-mode -1)))

;;;; hl-line
(require 'hl-line)
(set-face-background 'hl-line "grey16")

;;; modeline clock, battery
;;(setq display-time-default-load-average 0)
;;(setq battery-mode-line-format " (Bat: %p%%) ")
(display-battery-mode 0)
(setq display-time-24hr-format t)
(display-time-mode 1)

;;(add-to-list 'load-path "~/.emacs.d/elisp")
;;(add-to-list 'custom-theme-load-path "~/.emacs.d/themes")


;; Remove the close button on tabs
(setq tab-bar-close-button-show nil)
(setq tab-bar-new-button-show nil)
(setq tab-bar-separator "|")

(custom-set-faces
 '(tab-bar-separator
   ((t (:foreground "black" :weight light))))
 
 '(tab-bar ((t (:inherit mode-line))))
 '(tab-bar-tab ((t (:inherit mode-line :box nil :bold t))))
 '(tab-bar-tab-inactive ((t (:inherit mode-line-inactive :box nil)))))

(provide 'style)
