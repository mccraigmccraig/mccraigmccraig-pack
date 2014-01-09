;;PATH stuff
(push "/usr/local/bin" exec-path)
(setq path "/Applications/Supercollider:/Users/mccraig/bin:/usr/local/bin:$PATH:/bin:/usr/bin")
(setenv "PATH" path)
(push "/Applications/SuperCollider" exec-path)

;;organise ibuffer into handy groups
(setq ibuffer-saved-filter-groups
      (quote (("default"
               ("IRC"      (mode . erc-mode))
               ("emacs" (or
                         (name . "^\\*scratch\\*$")
                         (name . "^\\*Messages\\*$")
                         (name . "^\\*Completions\\*$")
                         (name . "^\\*ack\\*$")
                         (name . "^\\*Help\\*$")
                         (name . "^\\*Apropos\\*$")
                         (name . "^\\*Process List\\*$")
                         (name . "^\\*growlnotify\\*$")
                         (name . "^\\*Compile-Log\\*$")
                         (name . "^\\*Backtrace\\*$")
                         (filename . ".emacs.d")))
               ("nrepl || SLIME" (or
                         (name . "^\\*inferior-lisp\\*$")
                         (name . "^\\*slime-events\\*$")
                         (name . "^\\*slime-repl.*$")
                         (name . "^\\*sldb clojure/.*$")
                         (name . "^\\*SLIME Macroexpansion\\*")
                         (name . "^\\*SLIME Compilation\\*")
                         (name . "^\\*nrepl\\*$")
                         (name . "^\\*nrepl-.*$")
                         ))
               ("dired" (mode . dired-mode))))))
(add-hook 'ibuffer-mode-hook
          (lambda ()
            (ibuffer-switch-to-saved-filter-groups "default")))
