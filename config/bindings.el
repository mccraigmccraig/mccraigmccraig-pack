;;mk-project shortcuts
(global-set-key (kbd "C-c p l") 'project-load)
(global-set-key (kbd "C-c p u") 'project-unload)
(global-set-key (kbd "C-c p c") 'project-compile)
(global-set-key (kbd "C-c p g") 'project-grep)
(global-set-key (kbd "C-c p a") 'project-ack)
(global-set-key (kbd "C-c p o") 'project-multi-occur)
;; (global-set-key (kbd "C-c p f") 'project-find-file-ido)
(global-set-key (kbd "C-c p i") 'project-index)
(global-set-key (kbd "C-c p t") 'project-tags)
(global-set-key (kbd "C-c p d") 'project-dired)
(global-set-key (kbd "C-c p s") 'project-status)

;; pin windows
(defun toggle-window-dedicated ()
"Toggle whether the current active window is dedicated or not"
(interactive)
(message
 (if (let (window (get-buffer-window (current-buffer)))
       (set-window-dedicated-p window
        (not (window-dedicated-p window))))
    "Window '%s' is dedicated"
    "Window '%s' is normal")
 (current-buffer)))

(global-set-key (kbd "C-c w d") 'toggle-window-dedicated)

(global-set-key (kbd "C-c n b") 'windmove-left)
(global-set-key (kbd "C-c n f") 'windmove-right)
(global-set-key (kbd "C-c n p") 'windmove-up)
(global-set-key (kbd "C-c n n") 'windmove-down)

;; multiple cursors
(global-set-key (kbd "C-,") 'mc/mark-previous-like-this)
(global-set-key (kbd "C-.") 'mc/mark-next-like-this)
(global-set-key (kbd "C-c C-,") 'mc/mark-all-like-this)
(global-set-key (kbd "C-c C-.") 'mc/edit-lines)
