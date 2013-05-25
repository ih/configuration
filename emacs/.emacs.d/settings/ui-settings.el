;--------------------;
;;; User Interface ;;;
;--------------------;

; color theme
(load-theme 'solarized-dark 1)
(setq solarized-termcolors 256)

; always use spaces, not tabs, when indenting
(setq-default indent-tabs-mode -1)
 
; ignore case when searching
(setq-default case-fold-search 1)

; require final newlines in files when they are saved
(setq require-final-newline 1)
; add a new line when going to the next line
(setq next-line-add-newlines t)

; window modifications
;; (global-set-key (kbd "S-C-<left>") 'shrink-window-horizontally)
;; (global-set-key (kbd "S-C-<right>") 'enlarge-window-horizontally)
;; (global-set-key (kbd "S-C-<down>") 'shrink-window)
;; (global-set-key (kbd "S-C-<up>") 'enlarge-window)

; set the keybinding so that you can use f4 for goto line
(global-set-key [f4] 'goto-line)

;make it easy to rename a buffer
(global-set-key (kbd "C-x n") 'rename-buffer)

;make navigation between buffers easier
(defun select-next-window ()
  "Switch to the next window" 
  (interactive)
  (select-window (next-window)))

(defun select-previous-window ()
  "Switch to the previous window" 
  (interactive)
  (select-window (previous-window)))

(global-set-key (kbd "M-o") 'select-next-window)
(global-set-key (kbd "M-O")  'select-previous-window)

; set command key to be meta instead of option
(if (system-is-mac)
    (setq ns-command-modifier 'meta))

; set PATH, because we don't load .bashrc
(setenv 
 "PATH" (concat 
	 "$HOME/bin:"
	 "/bin:"
	 "/usr/bin:"
	 "/sbin:"
	 "/usr/sbin:"
	 "/usr/local/bin:"
	 "/usr/local/sbin"))

(provide 'ui-settings)
