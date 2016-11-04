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

path+=('/home/johannm/.gem/ruby/2.3.0/bin')
# Customize to your needs...

path+=('/home/johannm/bin')
export IDEA_JDK=/usr/lib/jvm/java-8-openjdk

# Remap Caps Lock to Control/Escape combo
setxkbmap -option 'caps:ctrl_modifier'
xcape -e 'Caps_Lock=Escape;Control_L=Escape;Control_R=Escape'

#so as not to be disturbed by Ctrl-S ctrl-Q in terminals:
stty -ixon
