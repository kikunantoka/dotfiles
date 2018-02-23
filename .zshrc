## Config
#
export LANG=ja_JP.UTF-8

## Path
#
export PATH="/usr/local/heroku/bin:$PATH"
export PATH="/usr/local/mysql/bin:$PATH"
export PATH=$HOME/.nodebrew/current/bin:$PATH
export GOPATH=$HOME/gocode
export GOROOT=/usr/local/opt/go/libexec
export PATH=$GOPATH/bin:$GOROOT/bin:$PATH
export PATH="$HOME/.anyenv/bin:$PATH"
export PATH="$PATH:`yarn global bin`"
eval "$(anyenv init -)"


## AnyEnv
#
for D in 'ls $HOME/.anyenv/envs'
do
  export PATH="$HOME/.anyenv/envs/$D/shims:$PATH"
done


## Alias
#
alias a='atom ./'
alias be='bundle exec'
alias bi='bundle install'
alias bu='bundle update'
alias c='cat -n'
alias dc='docker-compose'
alias dce='docker-compose exec'
alias dcr='docker-compose run --rm'
alias e='echo'
alias er='open -a Preview erd.pdf'
alias fs='foreman start'
alias his='history'
alias l='ls -a'
alias la='ls -a'
alias ll='ls -al'
alias log='tail -f 5'
alias nw='nightwatch'
alias p='pwd'
alias relogin='exec $SHELL -l'
alias rm='rm -i'
alias t='tree'
alias v='vim'
alias vi='vim'

# rails
alias rc='rails console'
alias rg='rails generate'
alias rs='rails server'
alias rdr='rails db:migrate:reset'
alias rds='rails db:seed_fu'
alias rr='rails routes'

# git
alias g='git'
alias ga='git add'
alias gb='git branch'
alias gbd='git branch -D'
alias gc='git commit'
alias gca='git commit --amend'
alias gco='git checkout'
alias gcob='git checkout -b'
alias gd='git diff'
alias gg="git log --graph --date=short --decorate=short --pretty=format:'%Cgreen%h %Creset%cd %Cblue%cn %Cred%d %Creset%s'"
alias gl="git log --date=short --decorate=short --pretty=format:'%Cgreen%h %Creset%cd %Cblue%cn %Cred%d %Creset%s'"
alias gp='git push'
alias gpl='git pull'
alias gr='git rebase'
alias gs='git status'

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
setopt hist_ignore_space

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


# Enable Control + S
stty stop undef
stty start undef

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/kick/google-cloud-sdk/path.zsh.inc' ]; then source '/Users/kick/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/kick/google-cloud-sdk/completion.zsh.inc' ]; then source '/Users/kick/google-cloud-sdk/completion.zsh.inc'; fi
