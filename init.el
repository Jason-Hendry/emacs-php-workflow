(add-to-list 'load-path "~/.emacs.d/lisp/")
(load "php-mode")
; (load "sr-speedbar")
(require 'project-mode)
(require 'smarty-mode)
(require 'open-resource)

(project-mode 1)

(global-set-key "\C-\M-r" 'open-resource)
(setq open-resource-ignore-patterns (quote ("~$" ".svn" "templates_cpl")))

(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories "/Users/jasonhendry/.emacs.d/ac-dict")
(ac-config-default)

(add-to-list 'auto-mode-alist '("\\.tpl" . smarty-mode))
(add-to-list 'auto-mode-alist '("\\.php" . php-mode))

; Show Selection like regular programs
(transient-mark-mode 1)

; Use spaces instead of tabs
(setq-default indent-tabs-mode nil)
