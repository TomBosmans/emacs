(require 'fill-column-indicator)
(setq-default fci-rule-column 80)

;; Hooks
(add-hook 'ruby-mode-hook 'fci-mode)
