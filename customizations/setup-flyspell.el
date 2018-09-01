(require 'flyspell)
(setq flyspell-issue-message-flg nil)

(add-hook 'find-file-hooks 'turn-on-flyspell) ;; spellcheck on all files
