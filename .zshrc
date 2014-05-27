export PATH="$HOME/.rbenv/bin:$PATH"
export PATH="/usr/local/heroku/bin:$PATH"
export PATH="/usr/local/mysql/bin:$PATH"

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

## Complement
#
autoload -U compinit; compinit
setopt auto_list
setopt auto_menu
setopt list_packed
setopt list_types
bindkey "^[[Z" reverse-menu-complete
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'

## Prompt
#
autoload colors
colors
PROMPT="%{${fg[yellow]}%}%~%{${reset_color}%}
[%n]$ "
PROMPT2='[%n]> '

## Color
#
export LSCOLORS=Exfxcxdxbxegedabagacad
# export LSCOLORS=DxGxcxdxCxgedabagacad
export LS_COLORS='di=01;34:ln=01;35:so=01;32:ex=01;31:bd=46;34:cd=43;34:su=41;30:sg=46;30:tw=42;30:ow=43;30'
export ZLS_COLORS=$LS_COLORS
export CLICOLOR=true
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}

