(require 'projectile)

;; Enable Projectile globally
(projectile-global-mode)

(defun projectile-term ()
  "Create an ansi-term at the project root"
  (interactive)
  (let ((root (projectile-project-root))
	(buff-name (concat " [term] " (projectile-project-root))))
    (if (get-buffer buff-name)
      (switch-to-buffer-other-window buff-name)
      (progn
	(split-window-sensibly (selected-window))
	(other-window 1)
	(setq default-directory root)
	(ansi-term (getenv "SHELL"))
	(rename-buffer buff-name t)))))

(global-set-key (kbd "C-x M-t") 'projectile-term)
