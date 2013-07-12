(provide 'css-settings)

(setq auto-mode-alist (cons '("\\.less$" . css-mode) auto-mode-alist))

(add-hook 'css-mode-hook'(lambda ()
		       (setq tab-width 2)
		       (setq indent-tabs-mode t)))
