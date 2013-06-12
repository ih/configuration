;------------------------;
;;; Javascript Programming ;;;
;------------------------;


;make sure to use js2mode for javscript files by default
(add-to-list 'auto-mode-alist '("\\.js$" . js2-mode))

(provide 'javascript-settings)

;;for js-comint
(setq inferior-js-program-command javascript-interpreter)
(add-hook 'js2-mode-hook '(lambda () 
			    (local-set-key "\C-x\C-e" 'js-send-last-sexp)
			    (local-set-key "\C-\M-x" 'js-send-last-sexp-and-go)
			    (local-set-key "\C-cb" 'js-send-buffer)
			    (local-set-key "\C-c\C-b" 'js-send-buffer-and-go)
			    (local-set-key "\C-cl" 'js-load-file-and-go)
			    (setq tab-width 4)
			    (setq indent-tabs-mode t)
			    ))

