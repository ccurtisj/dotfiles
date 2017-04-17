export PATH="$PATH:~/bin"
export PATH="$HOME/.rbenv/bin:$HOME/bin:$PATH"
export EDITOR='subl -w'
export PATH="/usr/local/opt/elasticsearch@1.7/bin:$PATH"

eval "$(rbenv init -)"

source ~/dotfiles/git-completion.bash
source ~/dotfiles/bash-prompt.bash

alias git_clean="git branch --merged master | grep -v \"\* master\" | xargs -n 1 git branch -d"
alias bs="grunt bootstrap --env=development"
