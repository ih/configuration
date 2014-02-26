;------------------------;
;;; Python Programming ;;;
;------------------------;
;; (virtualenv-workon "analytics")
;; (require 'python)

;; (setq
;;  python-shell-interpreter "ipython"
;;  python-shell-interpreter-args (if (system-is-mac)
;;                                    "--gui=osx --matplotlib=osx --colors=Linux"
;;                                    (if (system-is-linux)
;;                                        "--gui=wx --matplotlib=wx --colors=Linux"))
;;  python-shell-prompt-regexp "In \\[[0-9]+\\]: "
;;  python-shell-prompt-output-regexp "Out\\[[0-9]+\\]: "
;;  python-shell-completion-setup-code
;;    "from IPython.core.completerlib import module_completion"
;;  python-shell-completion-module-string-code
;;    "';'.join(module_completion('''%s'''))\n"
;;  python-shell-completion-string-code
;;    "';'.join(get_ipython().Completer.all_completions('''%s'''))\n")


;; ; switch to the interpreter after executing code
;; (setq py-shell-switch-buffers-on-execute-p t)
;; (setq py-switch-buffers-on-execute-p t)
;; ; don't split windows
;; (setq py-split-windows-on-execute-p nil)
; python-mode

; use IPython
;;(setq-default py-shell-name "~/.pythonz/pythons/CPython-2.7.5/bin/python")
;; (setq-default py-which-bufname "IPython")
;; ; use the wx backend, for both mayavi and matplotlib
;; (setq-default py-python-command-args
;; 	      (if (system-is-mac)
;; 		  '("--gui=osx" "--pylab=osx" "--colors" "Linux")
;; 		(if (system-is-linux)
;; 		    '("--gui=wx" "--pylab=wx" "--colors" "Linux")
;; 		  '())))
;; (setq py-force-py-shell-name-p 1)

;; ; switch to the interpreter after executing code
;; (setq py-shell-switch-buffers-on-execute-p 1)
;; (setq py-switch-buffers-on-execute-p 1)
;; ; don't split windows
;; (setq py-split-windows-on-execute-p -1)
;; ; try to automagically figure out indentation
;; (setq py-indent-honors-inline-comment 1)
;; (setq-default py-smart-indentation 1)
;; ; Delete trailing whitespace maybe left by py-newline-and-indent
;; (setq py-newline-delete-trailing-whitespace-p 1)
;; ; TAB will indent/cycle the region, not just the current line
;; (setq py-tab-shifts-region-p 1)
;; ; Format the whole docstring
;; (setq py-paragraph-fill-docstring-p 1)

;; (defun load-pycomplete ()
;;   "Load and initialize pycomplete."
;;   (interactive)
;;   (let* ((pyshell (py-choose-shell))
;;          (path (getenv "PYTHONPATH")))
;;     (setenv "PYTHONPATH" (concat
;;                           (expand-file-name py-install-directory) "completion"
;;                           (if path (concat path-separator path))))
;;     (if (py-install-directory-check)
;;         (progn
;;           (setenv "PYMACS_PYTHON" (if (string-match "IP" pyshell)
;;                                       "python"
;;                                     pyshell))
;;           (autoload 'pymacs-apply "pymacs")
;;           (autoload 'pymacs-call "pymacs")
;;           (autoload 'pymacs-eval "pymacs")
;;           (autoload 'pymacs-exec "pymacs")
;;           (autoload 'pymacs-load "pymacs")
;;           (load (concat py-install-directory "completion/pycomplete.el") nil t)
;; 	  (add-hook 'python-mode-hook 'py-complete-initialize))
;;       (error "`py-install-directory' not set, see INSTALL"))))

;; ; pymacs
;; (defun setup-pymacs ()
;;   (interactive)
;;   (autoload 'pymacs-apply "pymacs")
;;   (autoload 'pymacs-call "pymacs")
;;   (autoload 'pymacs-eval "pymacs" -1 1)
;;   (autoload 'pymacs-exec "pymacs" -1 1)
;;   (autoload 'pymacs-load "pymacs" -1 1)
;;   (autoload 'pymacs-autoload "pymacs")
;;   (setq py-load-pymacs-p 1)
;;   (setq py-complete-set-keymap-p 1))

;; ;; activate the virtualenv where Pymacs is located
;; (virtualenv-workon "default/")
;; (eval-after-load 'pymacs '(load-pycomplete))
;; (setup-pymacs)


;; ;; pyflakes flymake integration
;; ;; http://stackoverflow.com/a/1257306/347942
;; ;; (when (load "flymake" t)
;; ;;   (defun flymake-pyflakes-init ()
;; ;;     (let* ((temp-file (flymake-init-create-temp-buffer-copy
;; ;;                        'flymake-create-temp-inplace))
;; ;;            (local-file (file-relative-name
;; ;;                         temp-file
;; ;;                         (file-name-directory buffer-file-name))))
;; ;;       (list "~/bin/pycheckers" (list local-file))))
;; ;;   (add-to-list 'flymake-allowed-file-name-masks
;; ;;                '("\\.py\\'" flymake-pyflakes-init)))
;; ;; (add-hook 'python-mode-hook
;; ;; 	  (lambda ()
;; ;; 	    (unless (eq buffer-file-name nil) (flymake-mode 1))))

;; ; use autocompletion, but don't start to autocomplete after a dot
;; (setq ein:complete-on-dot -1)
;; (setq ein:use-auto-complete 1)

;; ; set python console args
;; (setq ein:console-args
;;       (if (system-is-mac)
;; 	  '("--profile nbserver" "--gui=osx" "--pylab=osx" "--colors" "Linux")
;; 	(if (system-is-linux)
;; 	    '("--profile nbserver" "--gui=wx" "--pylab=wx" "--colors" "Linux"))))

;; ; timeout settings
;; (setq ein:query-timeout 1000)

;; ; shortcut function to load notebooklist
;; (defun load-ein () 
;;   (ein:notebooklist-load)
;;   (interactive)
;;   (ein:notebooklist-open))

;; ; jedi python completion
;; (add-hook 'python-mode-hook 'jedi:setup)
;; (setq jedi:setup-keys t)
;; (setq jedi:complete-on-dot t)



;; ; Set PYTHONPATH, because we don't load .bashrc
;; (setenv "PYTHONPATH"
;;  (concat 
;;   "/Users/jhamrick/project/pyutil/src:"
;;   "/Users/jhamrick/project/pystoch/src:"
;;   "/Users/jhamrick/project/gutenbach/server/lib:"
;;   "/Users/jhamrick/project/cogphysics/dev/code:"
;;   "/Developer/Panda3D/lib/:"
;;   "/usr/local/lib/python2.7/site-packages:"))

;; (provide 'python-settings)

