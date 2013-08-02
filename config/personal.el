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

;;projects
(project-def "overtone"
             '((basedir          "/Users/mccraig/dev/clojure/overtone")
               (src-patterns     ("*.clj"))
               (ignore-patterns  ("*.log" "*#"))
               (file-list-cache  "/Users/mccraig/.emacs.d/tmp/mk-project-cache/overtone-files")
               (open-files-cache "/Users/mccraig/.emacs.d/tmp/mk-project-cache/overtone-open-files")
               (vcs              git)
               (ack-args         "--clojure")
               (shutdown-hook    nil)))

(project-def "tones"
             '((basedir          "/Users/mccraig/dev/tones")
               (src-patterns     ("*.clj"))
               (ignore-patterns  ("*.log" "*#"))
               (file-list-cache  "/Users/mccraig/.emacs.d/tmp/mk-project-cache/tones-files")
               (open-files-cache "/Users/mccraig/.emacs.d/tmp/mk-project-cache/tones-open-files")
               (vcs              git)
               (ack-args         "--clojure")
               (shutdown-hook    nil)))

(project-def "bcrp"
             '((basedir          "/Users/mccraig/dev/codeface/bcrp")
               (src-patterns     ("*.rb" "*.html" "*.css"))
               (ignore-patterns  ("*.log" "*#"))
               (file-list-cache  "/Users/mccraig/.emacs.d/tmp/mk-project-cache/bcrp-files")
               (open-files-cache "/Users/mccraig/.emacs.d/tmp/mk-project-cache/bcrp-open-files")
               (vcs              git)
               (ack-args         "")
               (shutdown-hook    nil)))

(project-def "cloudserv-chef-repo"
             '((basedir          "/Users/mccraig/dev/codeface/cloudserv-chef-repo")
               (src-patterns     ("*.rb" "*.html" "*.css"))
               (ignore-patterns  ("*.log" "*#"))
               (file-list-cache  "/Users/mccraig/.emacs.d/tmp/mk-project-cache/cloudserv-chef-repo-files")
               (open-files-cache "/Users/mccraig/.emacs.d/tmp/mk-project-cache/cloudserv-chef-repo-open-files")
               (vcs              git)
               (ack-args         "")
               (shutdown-hook    nil)))

(project-def "clustermap"
             '((basedir          "/Users/mccraig/dev/clustermap")
               (src-patterns     ("*.clj" "*.html" "*.css" "*.js"))
               (ignore-patterns  ("*.log" "*#"))
               (file-list-cache  "/Users/mccraig/.emacs.d/tmp/mk-project-cache/clustermap-files")
               (open-files-cache "/Users/mccraig/.emacs.d/tmp/mk-project-cache/clustermap-open-files")
               (vcs              git)
               (ack-args         "--ignore-dir resources --ignore-dir client/_public --ignore-dir client/app/assets --ignore-dir client/node_modules --ignore-dir client/vendor --ignore-dir event-impact")
               (shutdown-hook    nil)))

(project-def "techcitymap-app"
             '((basedir          "/Users/mccraig/dev/techcitymap-app")
               (src-patterns     ("*.clj" "*.html" "*.css" "*.js"))
               (ignore-patterns  ("*.log" "*#"))
               (file-list-cache  "/Users/mccraig/.emacs.d/tmp/mk-project-cache/techcitymap-app-files")
               (open-files-cache "/Users/mccraig/.emacs.d/tmp/mk-project-cache/techcitymap-app-open-files")
               (vcs              git)
               (shutdown-hook    nil)))

(project-def "clustermap-admin"
             '((basedir          "/Users/mccraig/dev/clustermap-admin")
               (src-patterns     ("*.rb" "*.html" "*.css"))
               (ignore-patterns  ("*.log" "*#"))
               (file-list-cache  "/Users/mccraig/.emacs.d/tmp/mk-project-cache/clustermap-admin-app-files")
               (open-files-cache "/Users/mccraig/.emacs.d/tmp/mk-project-cache/clustermap-admin-app-open-files")
               (vcs              git)
               (ack-args         "")
               (shutdown-hook    nil)))

(project-def "dyd_diary_2012"
             '((basedir          "/Users/mccraig/dev/codeface/dyd_diary_2012")
               (src-patterns     ("*.rb" "*.html" "*.css"))
               (ignore-patterns  ("*.log" "*#"))
               (file-list-cache  "/Users/mccraig/.emacs.d/tmp/mk-project-cache/dyd_diary_2012-files")
               (open-files-cache "/Users/mccraig/.emacs.d/tmp/mk-project-cache/dyd_diary_2012-open-files")
               (vcs              git)
               (ack-args         "")
               (shutdown-hook    nil)))

(project-def "cloudtimers"
             '((basedir          "/Users/mccraig/dev/cloudtimers")
               (src-patterns     ("*.clj"))
               (ignore-patterns  ("*.log" "*#"))
               (file-list-cache  "/Users/mccraig/.emacs.d/tmp/mk-project-cache/cloudtimers-files")
               (open-files-cache "/Users/mccraig/.emacs.d/tmp/mk-project-cache/cloudtimers-open-files")
               (vcs              git)
               (ack-args         "--clojure")
               (shutdown-hook    nil)))

(project-def "battleships"
             '((basedir          "/Users/mccraig/dev/clojure/battleships")
               (src-patterns     ("*.clj"))
               (ignore-patterns  ("*.log" "*#"))
               (file-list-cache  "/Users/mccraig/.emacs.d/tmp/mk-project-cache/battleships-files")
               (open-files-cache "/Users/mccraig/.emacs.d/tmp/mk-project-cache/battleships-open-files")
               (vcs              git)
               (ack-args         "--clojure")
               (shutdown-hook    nil)))

(project-def "clojureql"
             '((basedir          "/Users/mccraig/dev/clojure/clojureql")
               (src-patterns     ("*.clj"))
               (ignore-patterns  ("*.log" "*#"))
               (file-list-cache  "/Users/mccraig/.emacs.d/tmp/mk-project-cache/clojureql-files")
               (open-files-cache "/Users/mccraig/.emacs.d/tmp/mk-project-cache/clojureql-open-files")
               (vcs              git)
               (ack-args         "--clojure")
               (shutdown-hook    nil)))

(project-def "mdquery"
             '((basedir          "/Users/mccraig/dev/ruby/mdquery")
               (src-patterns     ("*.rb" "*.html" "*.css"))
               (ignore-patterns  ("*.log" "*#"))
               (file-list-cache  "/Users/mccraig/.emacs.d/tmp/mk-project-cache/mdquery-app-files")
               (open-files-cache "/Users/mccraig/.emacs.d/tmp/mk-project-cache/mdquery-app-open-files")
               (vcs              git)
               (ack-args         "")
               (shutdown-hook    nil)))

(project-def "sonar-server"
             '((basedir          "/Users/mccraig/dev/sonar-server")
               (src-patterns     ("*.rb" "*.html" "*.css"))
               (ignore-patterns  ("*.log" "*#"))
               (file-list-cache  "/Users/mccraig/.emacs.d/tmp/mk-project-cache/sonar-server-app-files")
               (open-files-cache "/Users/mccraig/.emacs.d/tmp/mk-project-cache/sonar-server-app-open-files")
               (vcs              git)
               (ack-args         "--ignore-dir db/migrate --ignore-dir vendor")
               (shutdown-hook    nil)))

(project-def "metascope.git"
             '((basedir          "/Users/mccraig/dev/metascope.git/code/gui-prototype")
               (src-patterns     ("*.rb" "*.html" "*.css" "*.java"))
               (ignore-patterns  ("*.log" "*#"))
               (file-list-cache  "/Users/mccraig/.emacs.d/tmp/mk-project-cache/metascope.git-app-files")
               (open-files-cache "/Users/mccraig/.emacs.d/tmp/mk-project-cache/metascope.git-app-open-files")
               (vcs              git)
               (ack-args         "")
               (shutdown-hook    nil)))

(project-def "incanterize"
             '((basedir          "/Users/mccraig/dev/incanterize")
               (src-patterns     ("*.clj"))
               (ignore-patterns  ("*.log" "*#"))
               (file-list-cache  "/Users/mccraig/.emacs.d/tmp/mk-project-cache/incanterize-files")
               (open-files-cache "/Users/mccraig/.emacs.d/tmp/mk-project-cache/incanterize-open-files")
               (vcs              git)
               (ack-args         "--clojure")
               (shutdown-hook    nil)))

(project-def "clojure"
             '((basedir          "/Users/mccraig/dev/clojure/clojure")
               (src-patterns     ("*.clj"))
               (ignore-patterns  ("*.log" "*#"))
               (file-list-cache  "/Users/mccraig/.emacs.d/tmp/mk-project-cache/clojure-files")
               (open-files-cache "/Users/mccraig/.emacs.d/tmp/mk-project-cache/clojure-open-files")
               (vcs              git)
               (ack-args         "--clojure")
               (shutdown-hook    nil)))

(project-def "storm"
             '((basedir          "/Users/mccraig/dev/clojure/storm")
               (src-patterns     ("*.clj"))
               (ignore-patterns  ("*.log" "*#"))
               (file-list-cache  "/Users/mccraig/.emacs.d/tmp/mk-project-cache/storm-files")
               (open-files-cache "/Users/mccraig/.emacs.d/tmp/mk-project-cache/storm-open-files")
               (vcs              git)
               (ack-args         "--clojure")
               (shutdown-hook    nil)))

(project-def "twitter-streaming-client"
             '((basedir          "/Users/mccraig/dev/clojure/twitter-streaming-client")
               (src-patterns     ("*.clj"))
               (ignore-patterns  ("*.log" "*#"))
               (file-list-cache  "/Users/mccraig/.emacs.d/tmp/mk-project-cache/twitter-streaming-client-files")
               (open-files-cache "/Users/mccraig/.emacs.d/tmp/mk-project-cache/twitter-streaming-client-open-files")
               (vcs              git)
               (ack-args         "--clojure")
               (shutdown-hook    nil)))

(project-def "project-euler"
             '((basedir          "/Users/mccraig/dev/clojure/project-euler")
               (src-patterns     ("*.clj"))
               (ignore-patterns  ("*.log" "*#"))
               (file-list-cache  "/Users/mccraig/.emacs.d/tmp/mk-project-cache/project-euler-files")
               (open-files-cache "/Users/mccraig/.emacs.d/tmp/mk-project-cache/project-euler-open-files")
               (vcs              git)
               (ack-args         "--clojure")
               (shutdown-hook    nil)))

(project-def "mahout"
             '((basedir          "/Users/mccraig/dev/java/mahout/mahout")
               (src-patterns     ("*.java"))
               (ignore-patterns  ("*.log" "*#"))
               (file-list-cache  "/Users/mccraig/.emacs.d/tmp/mk-project-cache/mahout-files")
               (open-files-cache "/Users/mccraig/.emacs.d/tmp/mk-project-cache/mahout-open-files")
               (vcs              git)
               (ack-args         "--java")
               (shutdown-hook    nil)))

(project-def "qseq"
             '((basedir          "/Users/mccraig/dev/clojure/qseq")
               (src-patterns     ("*.clj"))
               (ignore-patterns  ("*.log" "*#"))
               (file-list-cache  "/Users/mccraig/.emacs.d/tmp/mk-project-cache/qseq-files")
               (open-files-cache "/Users/mccraig/.emacs.d/tmp/mk-project-cache/qseq-open-files")
               (vcs              git)
               (ack-args         "--clojure")
               (shutdown-hook    nil)))

(project-def "cascalog"
             '((basedir          "/Users/mccraig/dev/clojure/cascalog")
               (src-patterns     ("*.clj"))
               (ignore-patterns  ("*.log" "*#"))
               (file-list-cache  "/Users/mccraig/.emacs.d/tmp/mk-project-cache/cascalog-files")
               (open-files-cache "/Users/mccraig/.emacs.d/tmp/mk-project-cache/cascalog-open-files")
               (vcs              git)
               (ack-args         "--clojure")
               (shutdown-hook    nil)))

(project-def "index-tables"
             '((basedir          "/Users/mccraig/dev/ruby/index-tables")
               (src-patterns     ("*.rb" "*.html" "*.css"))
               (ignore-patterns  ("*.log" "*#"))
               (file-list-cache  "/Users/mccraig/.emacs.d/tmp/mk-project-cache/index-tables-app-files")
               (open-files-cache "/Users/mccraig/.emacs.d/tmp/mk-project-cache/index-tables-app-open-files")
               (vcs              git)
               (ack-args         "")
               (shutdown-hook    nil)))

(project-def "rews"
             '((basedir          "/Users/mccraig/dev/ruby/rews")
               (src-patterns     ("*.rb" "*.html" "*.css"))
               (ignore-patterns  ("*.log" "*#"))
               (file-list-cache  "/Users/mccraig/.emacs.d/tmp/mk-project-cache/rews-app-files")
               (open-files-cache "/Users/mccraig/.emacs.d/tmp/mk-project-cache/rews-app-open-files")
               (vcs              git)
               (ack-args         "")
               (shutdown-hook    nil)))

(project-def "korma"
             '((basedir          "/Users/mccraig/dev/clojure/korma")
               (src-patterns     ("*.clj"))
               (ignore-patterns  ("*.log" "*#"))
               (file-list-cache  "/Users/mccraig/.emacs.d/tmp/mk-project-cache/korma-files")
               (open-files-cache "/Users/mccraig/.emacs.d/tmp/mk-project-cache/korma-open-files")
               (vcs              git)
               (ack-args         "--clojure")
               (shutdown-hook    nil)))

(project-def "regex"
             '((basedir          "/Users/mccraig/dev/clojure/regex")
               (src-patterns     ("*.clj"))
               (ignore-patterns  ("*.log" "*#"))
               (file-list-cache  "/Users/mccraig/.emacs.d/tmp/mk-project-cache/regex-files")
               (open-files-cache "/Users/mccraig/.emacs.d/tmp/mk-project-cache/regex-open-files")
               (vcs              git)
               (ack-args         "--clojure")
               (shutdown-hook    nil)))

(project-def "cascapipe"
             '((basedir          "/Users/mccraig/dev/clojure/cascapipe")
               (src-patterns     ("*.clj"))
               (ignore-patterns  ("*.log" "*#"))
               (file-list-cache  "/Users/mccraig/.emacs.d/tmp/mk-project-cache/cascapipe-files")
               (open-files-cache "/Users/mccraig/.emacs.d/tmp/mk-project-cache/cascapipe-open-files")
               (vcs              git)
               (ack-args         "--clojure")
               (shutdown-hook    nil)))

(project-def "algo.monads"
             '((basedir          "/Users/mccraig/dev/clojure/algo.monads")
               (src-patterns     ("*.clj"))
               (ignore-patterns  ("*.log" "*#"))
               (file-list-cache  "/Users/mccraig/.emacs.d/tmp/mk-project-cache/algo.monads-files")
               (open-files-cache "/Users/mccraig/.emacs.d/tmp/mk-project-cache/algo.monads-open-files")
               (vcs              git)
               (ack-args         "--clojure")
               (shutdown-hook    nil)))

(project-def "activerecord-model-spaces"
             '((basedir          "/Users/mccraig/dev/ruby/activerecord-model-spaces")
               (src-patterns     ("*.rb" "*.html" "*.css"))
               (ignore-patterns  ("*.log" "*#"))
               (file-list-cache  "/Users/mccraig/.emacs.d/tmp/mk-project-cache/activerecord-model-spaces-app-files")
               (open-files-cache "/Users/mccraig/.emacs.d/tmp/mk-project-cache/activerecord-model-spaces-app-open-files")
               (vcs              git)
               (ack-args         "--ignore-dir coverage")
               (shutdown-hook    nil)))

(project-def "clustermap-bvca"
             '((basedir          "/Users/mccraig/dev/clustermap-bvca")
               (src-patterns     ("*.clj" "*.js" "*.coffee" "*.html" "*.css" "*.less"))
               (ignore-patterns  ("*.log" "*#"))
               (file-list-cache  "/Users/mccraig/.emacs.d/tmp/mk-project-cache/clustermap-bvca-files")
               (open-files-cache "/Users/mccraig/.emacs.d/tmp/mk-project-cache/clustermap-bvca-open-files")
               (vcs              git)
               (ack-args         "--ignore-dir resources --ignore-dir client/_public --ignore-dir client/app/assets --ignore-dir client/node_modules --ignore-dir client/vendor --ignore-dir client/components")
               (shutdown-hook    nil)))


(project-def "alia"
             '((basedir          "/Users/mccraig/dev/clojure/alia")
               (src-patterns     ("*.clj"))
               (ignore-patterns  ("*.log" "*#"))
               (file-list-cache  "/Users/mccraig/.emacs.d/tmp/mk-project-cache/alia-files")
               (open-files-cache "/Users/mccraig/.emacs.d/tmp/mk-project-cache/alia-open-files")
               (vcs              git)
               (ack-args         "--clojure")
               (shutdown-hook    nil)))

(project-def "clj-duedil"
             '((basedir          "/Users/mccraig/dev/clj-duedil")
               (src-patterns     ("*.clj"))
               (ignore-patterns  ("*.log" "*#"))
               (file-list-cache  "/Users/mccraig/.emacs.d/tmp/mk-project-cache/clj-duedil-files")
               (open-files-cache "/Users/mccraig/.emacs.d/tmp/mk-project-cache/clj-duedil-open-files")
               (vcs              git)
               (ack-args         "--clojure")
               (shutdown-hook    nil)))

(project-def "clonfig"
             '((basedir          "/Users/mccraig/dev/clonfig")
               (src-patterns     ("*.clj"))
               (ignore-patterns  ("*.log" "*#"))
               (file-list-cache  "/Users/mccraig/.emacs.d/tmp/mk-project-cache/clonfig-files")
               (open-files-cache "/Users/mccraig/.emacs.d/tmp/mk-project-cache/clonfig-open-files")
               (vcs              git)
               (ack-args         "--clojure")
               (shutdown-hook    nil)))

(project-def "drift"
             '((basedir          "/Users/mccraig/dev/clojure/drift")
               (src-patterns     ("*.clj"))
               (ignore-patterns  ("*.log" "*#"))
               (file-list-cache  "/Users/mccraig/.emacs.d/tmp/mk-project-cache/drift-files")
               (open-files-cache "/Users/mccraig/.emacs.d/tmp/mk-project-cache/drift-open-files")
               (vcs              git)
               (ack-args         "--clojure")
               (shutdown-hook    nil)))

(project-def "cascading-cassandra"
             '((basedir          "/Users/mccraig/dev/clojure/cascading-cassandra")
               (src-patterns     ("*.clj"))
               (ignore-patterns  ("*.log" "*#"))
               (file-list-cache  "/Users/mccraig/.emacs.d/tmp/mk-project-cache/cascading-cassandra-files")
               (open-files-cache "/Users/mccraig/.emacs.d/tmp/mk-project-cache/cascading-cassandra-open-files")
               (vcs              git)
               (ack-args         "--clojure")
               (shutdown-hook    nil)))

(project-def "elastisch"
             '((basedir          "/Users/mccraig/dev/clojure/elastisch")
               (src-patterns     ("*.clj"))
               (ignore-patterns  ("*.log" "*#"))
               (file-list-cache  "/Users/mccraig/.emacs.d/tmp/mk-project-cache/elastisch-files")
               (open-files-cache "/Users/mccraig/.emacs.d/tmp/mk-project-cache/elastisch-open-files")
               (vcs              git)
               (ack-args         "--clojure")
               (shutdown-hook    nil)))

(project-def "clomponents"
             '((basedir          "/Users/mccraig/dev/clomponents")
               (src-patterns     ("*.clj"))
               (ignore-patterns  ("*.log" "*#"))
               (file-list-cache  "/Users/mccraig/.emacs.d/tmp/mk-project-cache/clomponents-files")
               (open-files-cache "/Users/mccraig/.emacs.d/tmp/mk-project-cache/clomponents-open-files")
               (vcs              git)
               (ack-args         "--clojure")
               (shutdown-hook    nil)))

(project-def "clopp"
             '((basedir          "/Users/mccraig/dev/clopp")
               (src-patterns     ("*.clj"))
               (ignore-patterns  ("*.log" "*#"))
               (file-list-cache  "/Users/mccraig/.emacs.d/tmp/mk-project-cache/clopp-files")
               (open-files-cache "/Users/mccraig/.emacs.d/tmp/mk-project-cache/clopp-open-files")
               (vcs              git)
               (ack-args         "--clojure")
               (shutdown-hook    nil)))

(project-def "sinatra-play"
             '((basedir          "/Users/mccraig/dev/sinatra-play")
               (src-patterns     ("*.rb" "*.html" "*.css"))
               (ignore-patterns  ("*.log" "*#"))
               (file-list-cache  "/Users/mccraig/.emacs.d/tmp/mk-project-cache/sinatra-play-app-files")
               (open-files-cache "/Users/mccraig/.emacs.d/tmp/mk-project-cache/sinatra-play-app-open-files")
               (vcs              git)
               (ack-args         "")
               (shutdown-hook    nil)))

(project-def "clustermap2"
             '((basedir          "/Users/mccraig/dev/clustermap2")
               (src-patterns     ("*.clj" "*.html" "*.css" "*.js"))
               (ignore-patterns  ("*.log" "*#"))
               (file-list-cache  "/Users/mccraig/.emacs.d/tmp/mk-project-cache/clustermap2-files")
               (open-files-cache "/Users/mccraig/.emacs.d/tmp/mk-project-cache/clustermap2-open-files")
               (vcs              git)
               (ack-args         "--ignore-dir resources --ignore-dir client/_public --ignore-dir client/app/assets --ignore-dir client/node_modules --ignore-dir client/vendor --ignore-dir event-impact")
               (shutdown-hook    nil)))
