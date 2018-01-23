(require 'fill-column-indicator)
(setq-default fci-rule-column 100)

;; Hooks
(add-hook 'ruby-mode-hook 'fci-mode)
