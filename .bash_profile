# Some stuff I've added in my .bash_profile.

# Random snizzle
alias matrix='LC_ALL=C tr -c "[:digit:]" " " < /dev/urandom | dd cbs=$COLUMNS conv=unblock | GREP_COLOR="1;32" grep --color "[^ ]"'

# Go to project
project() { cd ~/Documents/Projects/"$1"; }
alias p='project'

# Move back like a boss
alias .="cd .."
alias .2="cd ../.."
alias .3="cd ../../.."
alias .4="cd ../../../.."
alias .5="cd ../../../../.."

# Run rubocop on edited files
alias rbcop="git status --porcelain | cut -c4- | grep '\.rb' | xargs rubocop"

# Some rails stuff
alias brails="./bin/rails"
alias be='bundle exec'
