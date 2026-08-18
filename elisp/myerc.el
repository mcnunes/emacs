;; Set nickname & real-name as constant variables
(setq erc-nick "miojo"                 ; Our IRC nick
      erc-user-full-name "miojo-fu")   ; Our /whois name


;; --------------------------------------------------------------------------
(require 'erc-desktop-notifications) ; gives us `erc-notifications-notify'
(defun my-erc-notify-everything (_proc parsed)
  "Show a desktop popup for every incoming channel message and every
private message -- not just messages that mention our nick."
  (let* ((nick   (car (erc-parse-user (erc-response.sender parsed))))
         (target (car (erc-response.command-args parsed)))
         (msg    (erc-response.contents parsed))
         (privp  (erc-current-nick-p target))) ; t if it's a PM to us
    (unless (string= nick (erc-current-nick)) ; don't notify on our own msgs
      (erc-notifications-notify
       (if privp nick (format "%s (%s)" nick target))
       msg privp)))
  nil) ; returning nil lets ERC keep processing the message as usual
(add-hook 'erc-server-PRIVMSG-functions #'my-erc-notify-everything)
;; Optional: use a custom icon in the popup instead of the default one
;; (setq erc-notifications-icon "/path/to/icon.png")
;; --------------------------------------------------------------------------

(provide 'myerc)
;;; myerc.el ends here
