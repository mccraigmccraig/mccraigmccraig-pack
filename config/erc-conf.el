(setq freenode-pass nil) ;; place a copy of this line in ~/.ercpass with correct password
(setq irccloud-pass nil)
(setq grove-pass nil)
(setq codeface-pass nil)
(load "~/.ercpass")

(require 'erc-services)
(erc-services-mode 1)
(setq erc-prompt-for-nickserv-password nil)

;;IRC
(require 'erc-join)
(erc-autojoin-mode 1)
(setq erc-autojoin-channels-alist
      '(("freenode.net" "#selectedgeeks")
        ("irc.irccloud.com" "#tramp0")
        ("codeface.irc.grove.io" "#codeface-team")
        ("irc.codeface.com" "#codeface-team")))


(defun erc-connect/freenode ()
  (interactive)
  (add-to-list 'erc-nickserv-passwords `(freenode (("mccraeg" . ,freenode-pass))))
  (erc :server "irc.freenode.net" :full-name "mccraigmccraig" :port 6667 :nick "mccraeg"))

(defun erc-connect/irccloud ()
  (interactive)
  (add-to-list 'erc-nickserv-passwords `(irccloud (("mccraeg" . ,irccloud-pass))))
  (add-to-list 'erc-networks-alist '(irccloud "irc.irccloud.com"))
  (add-to-list 'erc-nickserv-alist '(irccloud "NickServ!NickServ@services." "This nickname is registered" "NickServ@services.name" "IDENTIFY" nil nil "Password accepted"))
  (erc :server "irc.irccloud.com" :full-name "mccraigmccraig" :port 6667 :nick "mccraeg"))

(defun erc-connect/grove ()
  (interactive)
  (add-to-list 'erc-nickserv-passwords `(grove (("mccraeg" . ,grove-pass))))
  (add-to-list 'erc-networks-alist '(grove "irc.grove.io"))
  (add-to-list 'erc-nickserv-alist '(grove "NickServ!NickServ@services." "This nickname is registered." "NickServ" "IDENTIFY" nil))
  (erc :server "codeface.irc.grove.io" :full-name "mccraeg" :port 6667 :nick "mccraeg" :password "codeface"))


(require 'erc-match)

(setq erc-keywords '("mccraig" "mccraeg"))
(erc-match-mode)

(defvar growlnotify-command "/Users/mccraig/bin/growlnotify")

(defun growl (title message)
  "Shows a message through the growl notification system using
 `growlnotify-command` as the program."
  (flet ((encfn (s) (encode-coding-string s (keyboard-coding-system))) )
    (let* ((process (start-process "growlnotify" "*growlnotify*"
                                   growlnotify-command
                                   "-t" (encfn title)
                                   "-m" (encfn message)
                                   "-a" "Emacs"
                                   "-n" "Emacs")))))
  t)

(defun my-erc-hook (match-type nick message)
  "Shows a growl notification, when user's nick was mentioned. If the buffer is currently not visible, makes it sticky."
  (unless (posix-string-match "^\\** *Users on #" message)
    (growl
     (concat "ERC: " (buffer-name (current-buffer)))
     message)))

(add-hook 'erc-text-matched-hook 'my-erc-hook)

;;change wrap width when window is resized
(make-variable-buffer-local 'erc-fill-column)
 (add-hook 'window-configuration-change-hook
           '(lambda ()
              (save-excursion
                (walk-windows
                 (lambda (w)
                   (let ((buffer (window-buffer w)))
                     (set-buffer buffer)
                     (when (eq major-mode 'erc-mode)
                       (setq erc-fill-column (- (window-width w) 2)))))))))
