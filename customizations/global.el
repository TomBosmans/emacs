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

;; Line numbers
(global-linum-mode t)

;; Act like a normal text editor
(delete-selection-mode 1)
