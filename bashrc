#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

if [ -f /usr/lib/python3.4/site-packages/powerline/bindings/bash/powerline.sh ]; then
    source /usr/lib/python3.4/site-packages/powerline/bindings/bash/powerline.sh
fi

alias ls='ls --color=auto'
alias ll='ls -lG'
PS1='[\u@\h \W]\$ '

# Path
PS1="\[\033[32m\][\w]\[\033[0m\]\n\[\033[1;36m\]\u\[\033[1;33m\] $ \[\033[0m\]"
#PS1='\[\e[0;32m\]\u\[\e[m\] \[\e[1;34m\]\w\[\e[m\] \[\e[1;32m\]\$\[\e[m\] \[\e[1;37m\]'
#export PATH=$PATH://home/cjbarrac/.gem/ruby/2.2.0/bin
export LESSOPEN="| /usr/bin/source-highlight-esc.sh %s"
export LESS='-R '

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

# Added by the BTAF install script
export LD_LIBRARY_PATH=/opt/oracle/instantclient
export PATH=$PATH:/opt/oracle/instantclient
export TNS_ADMIN=/opt/oracle/instantclient
export NLS_LANG=AMERICAN_AMERICA.UTF8
[ -s "$HOME/.rvm/scripts/rvm" ] && . "$HOME/.rvm/scripts/rvm"
