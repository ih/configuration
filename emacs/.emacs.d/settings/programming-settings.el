;------------------------;
;;; General Programming ;;;
;------------------------;

(add-hook 'prog-mode-hook #'smart-operator-mode)
(add-hook 'prog-mode-hook #'paredit-mode)

(provide 'programming-settings)
