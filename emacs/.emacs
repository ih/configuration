(add-to-list 'load-path "~/.emacs.d/el-get/el-get")

;;initialize el-get, which will be used to maintain packages that are installed
(unless (require 'el-get nil 'noerror)
  (with-current-buffer
      (url-retrieve-synchronously
       "https://raw.github.com/dimitri/el-get/master/el-get-install.el")
    (let (el-get-master-branch)
      (goto-char (point-max))
      (eval-print-last-sexp))))
(el-get 'sync)

;;packages used
(setq my-packages
      (append
       '(el-get color-theme-solarized)
       (mapcar 'el-get-source-name el-get-sources)))

(el-get 'sync my-packages)
(add-to-list 'load-path "~/configuration/emacs/.emacs.d/settings")
;;use this for any packages not available with el-get
(setq plugin-path "~/configuration/emacs/.emacs.d/plugins/")

(require 'custom-functions)
(require 'ui-settings)

;; (require 'window-settings)
;; (require 'cursor-settings)
;; (require 'text-settings)

;; ;; Smart Operator
;; (include-plugin "smart-operator")
;; (require 'smart-operator)

;; ;; Autopair
;; (include-plugin "autopair")
;; (require 'autopair)

;; ;; MuMaMo
;; (load (make-plugin-path "nxhtml/autostart.el"))
;; ;; Workaround the annoying warnings:
;; ;;    Warning (mumamo-per-buffer-local-vars):
;; ;;    Already 'permanent-local t: buffer-file-name
;; (when (and (equal emacs-major-version 24)
;;            (equal emacs-minor-version 3))
;;   (eval-after-load "mumamo"
;;     '(setq mumamo-per-buffer-local-vars
;;            (delq 'buffer-file-name mumamo-per-buffer-local-vars))))

;; ;; Popup
;; (include-plugin "popup")
;; (require 'popup)

;; ;; Websocket
;; (include-plugin "websocket")
;; (require 'websocket)

;; ;; Request
;; (include-plugin "request")
;; (require 'request)

;; ;; Ido mode
;; (require 'ido)
;; (ido-mode 1)

;; ;; Markdown mode
;; (include-plugin "markdown-mode")
;; (autoload 'markdown-mode "markdown-mode.el"
;;   "Major mode for editing Markdown files" t)
;; (setq auto-mode-alist
;;       (append 
;;        (list '("\\.text" . markdown-mode) 
;; 	     '("\\.md" . markdown-mode) 
;; 	     '("\\.markdown" . markdown-mode) 
;; 	     )
;;        auto-mode-alist))

;; ;; C indentation styles
;; (setq c-basic-offset 8)
;; (setq c-default-style (quote (
;;     (c-mode . "bsd") 
;;     (java-mode . "java") 
;;     (awk-mode . "awk") 
;;     (other . "gnu"))))

;; ;; Auto complete
;; (require 'auto-complete-settings)

;; ;; Camelcase functions
;; (require 'camelcase-settings)

;; ;; Fill column indicator
;; ;(require 'fill-column-indicator-settings)

;; ;; Python mode 
;; (require 'python-settings)

;; ;; LaTeX and Auctex
;; ;;(require 'latex-settings)

;; ;; Church
;; ;(require 'church)

;; ;; Haskell
;; ;(require 'haskell-mode)

;; ;; R
;; ;(require 'ess-site)
;; ;(setq-default inferior-R-program-name "R")

;; ;; Git
;; (include-plugin "magit")
;; (require 'magit)

;; ;; SCSS Mode
;; (include-plugin "scss-mode")
;; (autoload 'scss-mode "scss-mode")
;; (add-to-list 'auto-mode-alist '("\\.scss\\'" . scss-mode))
;; (setenv
;;  "PATH" (concat
;; 	 (expand-file-name "~/.rvm/gems/ruby-1.9.3-p392/bin") ":"
;; 	 (expand-file-name "~/.rvm/rubies/ruby-1.9.3-p392/bin") ":"
;; 	 (getenv "PATH")))
;; (setq scss-sass-command (expand-file-name "~/.rvm/gems/ruby-1.9.3-p392/bin/sass"))
;; (setq scss-compile-at-save nil)

;; ;; Put auto 'custom' changes in a separate file
;; (load 
;;  (setq custom-file (expand-file-name "settings/custom.el" user-emacs-directory))
;;  'noerror)
