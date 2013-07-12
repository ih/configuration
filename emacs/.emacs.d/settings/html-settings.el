;------------------------;
;;; HTML Programming ;;;
;------------------------;

;;Make tagedit have same bindings as paredit
(eval-after-load "sgml-mode"
  '(progn
     (tagedit-add-paredit-like-keybindings)
     (add-hook 'html-mode-hook (lambda () 
				 (tagedit-mode 1)
				 (setq sgml-basic-offset 2)
				 (setq tab-width 2)
				 (setq indent-tabs-mode t)))))

(provide 'html-settings)
