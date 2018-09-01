(require 'dashboard)
(use-package dashboard
  :config
  (dashboard-setup-startup-hook)
  (setq dashboard-items '((recents  . 20))))

(provide 'init-dashboard)
