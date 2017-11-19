;; remove the annoying
(menu-bar-mode -1)
(toggle-scroll-bar -1)
(tool-bar-mode -1)

;; load the awesome
(load-theme 'solarized-dark t)
;;(set-default-font "Monaco 12")
(set-default-font "Roboto Mono Medium 12")

;; Use sane fullscreen until Sea Lion fixes fullscreen apps.
;; [Source](http://crypt.codemancers.com/posts/2013-07-05-non-native-fullscreen-for-osx-on-emacs-24-dot-3/)
(setq ns-use-native-fullscreen nil)

;; Fullscreen shortcut
;; (global-set-key [f1] 'toggle-frame-fullscreen)
;; http://stackoverflow.com/questions/9248996/how-to-toggle-fullscreen-with-emacs-as-default
(defun switch-fullscreen nil
  (interactive)
  (let* ((modes '(nil fullboth fullwidth fullheight))
         (cm (cdr (assoc 'fullscreen (frame-parameters) ) ) )
         (next (cadr (member cm modes) ) ) )
    (modify-frame-parameters
     (selected-frame)
     (list (cons 'fullscreen next)))))

(define-key global-map [f1] 'switch-fullscreen)

;; Make background transparent
(set-frame-parameter (selected-frame) 'alpha '(90 . 50))
