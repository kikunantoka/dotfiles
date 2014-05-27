export PATH="$HOME/.rbenv/bin:$PATH"
export PATH="/usr/local/heroku/bin:$PATH"
export PATH="/usr/local/mysql/bin:$PATH"
export CLICOLOR=1
export LSCOLORS=DxGxcxdxCxgedabagacad

eval "$(rbenv init -)"

alias la='ls -a'
alias ll='ls -a'
alias rm='rm -i'

## History
#
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt bang_hist
setopt extended_history
setopt hist_ignore_dups
setopt share_history
setopt hist_reduce_blanks

