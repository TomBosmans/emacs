## My emacs setup

Got the great idea to start using Emacs, so this is my current setup that most likely will change alot in the coming years.
I use Cask so this only works for Emacs 24 and up

## How to install For macOS
- brew cask install emacs
- brew install cask
- brew install ag
- brew install aspell (Needed for spellcheck)
- brew install ghostscript (Needed to view pdf in doc-view-mode)
- put all this in you `~/.emacs.d` folder.
- cask install

## Iterm-2 open file in emacs client:
- preferences -> profiles -> advanced
- Semantic History set on "Run coprocess..."
- fill in: `echo emacsclient -n \1`

## Nice to knows:
### Global
- f1           toggle view mode
- C-c C-p      open project
- C-c C-c      open file
- C-h f        description method
- C-c f        go to in neotree

### Neotree
- C-c z        open finder in current folder
- C-c C-n      create new file
- C-c C-d      delete a file
- C-c C-r      rename file (can also be used to move file)

