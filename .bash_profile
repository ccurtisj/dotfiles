export PATH="$PATH:~/bin"
export PATH="$HOME/.rbenv/bin:$HOME/bin:$PATH"
export PATH="/usr/local/opt/elasticsearch@1.7/bin:$PATH"
export PATH="/usr/local/Cellar/node/8.1.3/bin:$PATH"
export EDITOR='subl -w'

eval "$(rbenv init -)"

source ~/dotfiles/git-completion.bash
source ~/dotfiles/bash-prompt.bash

alias ssh_production="ey-core ssh -e production"

alias git_clean="git branch --merged master | grep -v \"\* master\" | xargs -n 1 git branch -d"
alias git_nuke="git branch | grep -v 'master' | xargs git branch -D "
alias git_log="git log --pretty=format:'%h - %an, %ar : %s'"
alias git_report="git log --pretty=format:'%s' --since='yesterday'"

alias gitr='git rebase HEAD~`git rev-list --count HEAD ^master` -i'

alias bs="grunt bootstrap --env=development"
alias js="bundle exec jekyll serve"
alias test_watch="npm run test-watch"

alias ssh_hoodle="ssh -p 60911 deploy@104.236.100.153"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

source ~/dotfiles/.nvm_auto/nvm_auto.sh
eval "$(jenv init -)"
export PATH="/usr/local/opt/mongodb@3.4/bin:$PATH"

source ~/dotfiles/git-open.sh
alias pr="open-pr"
