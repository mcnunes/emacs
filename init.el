;;;;; my

;; The default is 800 kilobytes.  Measured in bytes.
(setq gc-cons-threshold (* 50 1000 1000))

;; emacs default's custom file
(setq custom-file "~/.emacs.d/emacs-custom.el")
(load custom-file)

;;; splash screen
(setq inhibit-splash-screen t
      initial-scratch-message "              \n\t\t\t\t\tHappy Hacking!\n\n")

;;; personal info
(setq user-full-name "Marlon Nunes"
      user-mail-address "mcnunes@gmail.com")

;;; melpa pkgs
(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t) 

;;; load customs
(add-to-list 'load-path "~/.emacs.d/elisp")

(require 'mydb)
(require 'myido)
(require 'keybinds)
(require 'backups)
(require 'behavior)
(require 'style)
(require 'prog)
(require 'mycorfu)
(require 'myeglot)
(require 'myerc)
(require 'ia)


;; org-mode
(setq org-startup-folded t)

;; Make gc pauses faster by decreasing the threshold.
(setq gc-cons-threshold (* 2 1000 1000))
