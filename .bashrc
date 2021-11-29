#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Pywal
(cat ~/.cache/wal/sequences &)
source ~/.cache/wal/colors-tty.sh

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '
alias config='/usr/bin/git --git-dir=/home/rice/dotfiles/ --work-tree=/home/rice'
alias sconfig='sudo /usr/bin/git --git-dir=/home/rice/dotfiles --work-tree=/home/rice'
