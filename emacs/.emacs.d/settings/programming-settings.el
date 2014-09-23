;------------------------;
;;; General Programming ;;;
;------------------------;

(add-hook 'prog-mode-hook #'smart-operator-mode)
;;(add-hook 'prog-mode-hook #'paredit-mode)
(add-hook 'prog-mode-hook #'fci-mode)
;helps with no trailing whitespace
;;work-around since show-trailing-whitespace doesn't wokr with fci-mode
;;https://github.com/alpaker/Fill-Column-Indicator/issues/10
(setq-default show-trailing-whitespace t)
(setq-default whitespace-style '(face trailing))
(setq-default whitespace-line-column 80)
(global-whitespace-mode 1)

;; from http://mattbriggs.net/blog/2012/03/18/awesome-emacs-plugins-ctags/
(defun build-ctags ()
  (interactive)
  (message "building project tags")
  (let ((root ".")) ;(eproject-root) instead of .
    (shell-command (concat "ctags -e -R --extra=+fq --exclude=db --exclude=test --exclude=.git --exclude=public -f " root "TAGS " root)))
  (visit-project-tags)
  (message "tags built successfully"))

(defun visit-project-tags ()
  (interactive)
  (let ((tags-file (concat "./" "TAGS"))) ;(eproject-root) instead of .
    (visit-tags-table tags-file)
    (message (concat "Loaded " tags-file))))

(provide 'programming-settings)
