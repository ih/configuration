;------------------------;
;;; General Programming ;;;
;------------------------;

(add-hook 'prog-mode-hook #'smart-operator-mode)
(add-hook 'prog-mode-hook #'paredit-mode)
(add-hook 'prog-mode-hook #'fci-mode)
;helps with no trailing whitespace
;;work-around since show-trailing-whitespace doesn't wokr with fci-mode
;;https://github.com/alpaker/Fill-Column-Indicator/issues/10
(setq-default show-trailing-whitespace t)
(setq-default whitespace-style '(face trailing))
(setq-default whitespace-line-column 80)
(global-whitespace-mode 1)

(provide 'programming-settings)

