;; (package-initialize)

;; Prevent 'Saving Customizations' to be written in this file
;; https://www.gnu.org/software/emacs/manual/html_node/emacs/Saving-Customizations.html
(setq custom-file "~/.emacs.d/custom.el")
(when (file-exists-p "custom.el") (load "custom"))

;; Project management tool for Emacs http://cask.readthedocs.io
(require 'cask "/usr/local/share/emacs/site-lisp/cask/cask.el")
(cask-initialize)

;; Here we put our customizations.
(add-to-list 'load-path "~/.emacs.d/customizations")

(load "ui")                          ;; Everything ui related
(load "global")                      ;; global snizzle
(load "setup-projectile")            ;; setup for projectile
(load "setup-neotree")               ;; Setup for neotree
(load "setup-gitgutter")             ;; Setup for gitgutter
(load "setup-webmode")               ;; Setup for web-mode
(load "setup-reveal-in-osx-finder")  ;; Setup for reveal-in-osx-finder
(load "setup-coffee-mode")           ;; Setup for coffee-mode
(load "setup-flycheck")              ;; Setup flycheck
(load "setup-flyspell")              ;; Setup flyspell
(load "setup-markdown")              ;; Setup a comfy way to edit markdown files
(load "setup-fill-column-indicator") ;; Setup horizontal line for max columns
(load "setup-dashboard")             ;; Setup for dashboard on emacs launch
