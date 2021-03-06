;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; mccraigmccraig's Personal Live Pack

;;(live-add-pack-lib "mk-project")
;;(require 'mk-project)

(live-load-config-file "util-fns.el")
(live-load-config-file "look-and-feel.el")
(live-load-config-file "shell.el")
(live-load-config-file "personal.el")
(live-load-config-file "erc-conf.el")
(live-load-config-file "org-mode-conf.el")
(live-load-config-file "spelling.el")
(live-load-config-file "bindings.el")
(live-load-config-file "java-style.el")

(live-load-config-file "compojure.el")

;; (require 'clj-refactor)
;; (add-hook 'clojure-mode-hook (lambda ()
;;                                (clj-refactor-mode 1)
;;                                (cljr-add-keybindings-with-prefix "C-c C-m")
;;                                ))

;; configure elpa packages
(require 'warnings)
(setq warning-suppress-types '())
;;(add-to-list 'load-path (concat live-load-pack-dir "elpa"))
(setq elpa-dir (file-name-as-directory (concat live-root-dir "elpa")))
(require 'package)

(add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/"))
;; (add-to-list 'package-archives '("elpa" . "http://tromey.com/elpa/"))
(add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/"))

(package-initialize)

;; Setting rbenv path for compilation mode
;; also had to commend out invocation of /usr/libexec/path_helper in /etc/zshenv or /etc/profile as appropriate
(setenv "PATH" (concat (getenv "HOME") "/.rbenv/shims:" (getenv "HOME") "/.rbenv/bin:" (getenv "PATH")))

(setq custom-file "~/.live-packs/mccraigmccraig-pack/config/custom.el")

(server-start)

(put 'upcase-region 'disabled nil)
(put 'downcase-region 'disabled nil)

(projectile-global-mode)
