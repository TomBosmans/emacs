(require 'git-gutter-fringe)

;; Use git gutter in all the files
(global-git-gutter-mode +1)

;; More room in the right fringe
(setq-default left-fringe-width  20)

;; Tie fighter
(fringe-helper-define 'git-gutter-fr:added nil
  "X......X"
  "X......X"
  "X..XX..X"
  "XXXXXXXX"
  "X.XXXX.X"
  "X..XX..X"
  "X......X"
  "X......X")

;; Tie bomber
(fringe-helper-define 'git-gutter-fr:deleted nil
  "........"
  ".X....X."
  "X......X"
  "XXXXXXXX"
  "X.X..X.X"
  "X......X"
  ".X....X."
  "........")

;; Tie Advanced x1
(fringe-helper-define 'git-gutter-fr:modified nil
  ".X....X."
  "X......X"
  "X..XX..X"
  "XXXXXXXX"
  "X.XXXX.X"
  "X..XX..X"
  "X......X"
  ".X....X.")
