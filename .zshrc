## Config
#
export LANG=ja_JP.UTF-8

## Path
#
export PATH="$HOME/.rbenv/bin:$PATH"
export PATH="/usr/local/heroku/bin:$PATH"
export PATH="/usr/local/mysql/bin:$PATH"
export PATH=$HOME/.nodebrew/current/bin:$PATH
export GOPATH=$HOME/gocode
export GOROOT=/usr/local/opt/go/libexec
export PATH=$GOPATH/bin:$GOROOT/bin:$PATH
eval "$(rbenv init -)"


## Alias
#
alias be='bundle exec'
alias bi='bundle install'
alias bu='bundle update'
alias his='history'
alias p='pwd'
alias e='echo'
alias v='vim'
alias vi='vim'
alias s="subl"
alias t='tree'
alias c='cat -n'
alias l='ls -a'
alias la='ls -a'
alias ll='ls -al'
alias log='tail -f 5'
alias rm='rm -i'

# git
alias g='git'
alias gs='git status'
alias gl='git log'
alias ga='git add'
alias gc='git commit'
alias gp='git push'


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
# PROMPT='%(?,%F{green}(▰╹◡╹),%F{red}٩(๑\`^´๑%)۶)%(!,#,<)%f '
PROMPT='%(?,%F{green},%F{red})%(!,#,$)%f '
RPROMPT='%F{blue}%n%f@%F{green}%m%f:%F{yellow}[ %~ ]%f'
setopt transient_rprompt


## Color
#
export LSCOLORS=Exfxcxdxbxegedabagacad
# export LSCOLORS=DxGxcxdxCxgedabagacad
export LS_COLORS='di=01;34:ln=01;35:so=01;32:ex=01;31:bd=46;34:cd=43;34:su=41;30:sg=46;30:tw=42;30:ow=43;30'
export ZLS_COLORS=$LS_COLORS
export CLICOLOR=true
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}

