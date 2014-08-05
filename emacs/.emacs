;;(add-hook 'after-init-hook '(lambda ()
;;	  (load-file"~/configuration/emacs/load-packages.el")))

(require 'package)
(add-to-list 'package-archives
             '("melpa" . "http://melpa.milkbox.net/packages/") t)
(package-initialize)

(add-to-list 'load-path "~/.emacs.d/el-get/el-get")

(setq-default exec-path (append '("/usr/local/bin" "/usr/local/share/python") exec-path))

(unless (require 'el-get nil 'noerror)
  (with-current-buffer
      (url-retrieve-synchronously
       "https://raw.github.com/dimitri/el-get/master/el-get-install.el")
    (let (el-get-master-branch)
      (goto-char (point-max))
      (eval-print-last-sexp))))
(add-to-list 'el-get-recipe-path "~/configuration/emcas/el-get-recipes")
(el-get 'sync)

;;packages used
(setq my-packages
      (append
       '(el-get color-theme-solarized jedi smart-operator paredit js2-mode
		js-comint fill-column-indicator whitespace 
		color-theme-zen-and-art ipython pymacs flymake ein pydoc-info
		auto-complete ac-python tagedit blank-mode web-mode go-mode)
       (mapcar 'el-get-source-name el-get-sources)))

(el-get 'sync my-packages)

;; (require 'package)
;; (package-initialize)
;; (setq package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
;;                          ("marmalade" . "http://marmalade-repo.org/packages/")
;;                          ("melpa" . "http://melpa.milkbox.net/packages/")))


(add-to-list 'load-path "~/configuration/emacs/.emacs.d/settings")
;;use this for any packages not available with el-get
(setq plugin-path "~/configuration/emacs/.emacs.d/plugins/")
;;used for javascript repl (js-comint)
(setq javascript-interpreter "/Users/ih/.nvm/v0.10.18/bin/node")

;;load the various settings files
(require 'custom-functions)
(require 'programming-settings)
(require 'ui-settings)
(require 'window-settings)
(require 'cursor-settings)
(require 'text-settings)
(require 'fill-column-indicator-settings)
(require 'javascript-settings)
;(require 'python-settings)
(require 'auto-complete-settings)
(require 'html-settings)
(require 'css-settings)

(ido-mode 1)
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



;; ;; Camelcase functions
;; (require 'camelcase-settings)

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
