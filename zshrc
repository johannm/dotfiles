#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Customize to your needs...
export PATH=$PATH:~/bin
export CDPATH=/Users/johannm/go/src/git.greenqloud.com/greenqloud/
#export gk='/Users/johannm/go/src/git.greenqloud.com/greenqloud'

export GOPATH=$HOME/go
export GOROOT=/usr/local/opt/go/libexec
export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:$GOROOT/bin

export DEVMANAGEMENTHOME=/Users/johannm/development-management
export PATH=$PATH:$DEVMANAGEMENTHOME/bin


export VISUAL=vim
export EDITOR="$VISUAL"

alias getdbpw='kubectl exec -it etcd-0 -- etcdctl get /qstack/config/mysql/server_root_password'
alias k='kubectl'
alias vim='nvim'

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
