(require 'exec-path-from-shell)
;; OS X has an issue with picking up the right system env
;; Explictly setting it here (So shell-command and buddies can use it)
(when (memq window-system '(mac ns))
  (exec-path-from-shell-initialize))

;; Better buffer swithing
(require 'ido)
(ido-mode t)
(setq ido-enable-flex-matching t) ; case insensitive matching
(add-to-list 'ido-ignore-files "\\.DS_Store")
(setq ido-create-new-buffer 'always) ; always create a new buffer with Ido
(setq ido-use-virtual-buffers t)

;; autosave files in tmp dir
(setq auto-save-file-name-transforms `((".*" ,temporary-file-directory t)))
;; No backup files
(setq make-backup-files nil)

(global-linum-mode t)           ;; Line numbers
(delete-selection-mode t)       ;; Act like a normal text editor
(global-hl-line-mode t)         ;; Highlight current row
(column-number-mode t)          ;; Show current column
(show-paren-mode t)             ;; Highlight matching parenthesis
(highlight-indentation-mode 1)  ;; Highlight indentations
(set-default 'truncate-lines t) ;; Turn of wrapping when line is too long

;; Show color on representing strings
(define-globalized-minor-mode global-rainbow-mode rainbow-mode
  (lambda () (rainbow-mode 1)))

;;(global-rainbow-mode 1)

(add-hook 'ruby-mode-hook 'robe-mode)
(add-hook 'ruby-mode-hook 'minitest-mode)

(setq css-indent-offset 2)
(setq js-indent-level 2)
