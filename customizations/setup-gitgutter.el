(require 'git-gutter-fringe)

;; Use git gutter in all the files
(global-git-gutter-mode +1)

(setq-default left-fringe-width  20)
(fringe-helper-define 'git-gutter-fr:added nil
  "X......X"
  "X......X"
  "X..XX..X"
  "XXXXXXXX"
  "X.XXXX.X"
  "X..XX..X"
  "X......X"
  "X......X")

(fringe-helper-define 'git-gutter-fr:deleted nil
  "X......X"
  "X......X"
  "X..XX..X"
  "XXXXXXXX"
  "X.XXXX.X"
  "X..XX..X"
  "X......X"
  "X......X")

(fringe-helper-define 'git-gutter-fr:modified nil
  "X......X"
  "X......X"
  "X..XX..X"
  "XXXXXXXX"
  "X.XXXX.X"
  "X..XX..X"
  "X......X"
  "X......X")
