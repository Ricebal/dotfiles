#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Pywal
(cat ~/.cache/wal/sequences &)
source ~/.cache/wal/colors-tty.sh

# Exports
export EDITOR=nvim

PS1='[\u@\h \W]\$ '

# Aliases
alias ls='ls --color=auto'
alias config='/usr/bin/git --git-dir=/home/rice/dotfiles/ --work-tree=/home/rice'
alias sconfig='sudo /usr/bin/git --git-dir=/home/rice/dotfiles --work-tree=/home/rice'
alias setwal='~/.scripts/setwal.sh'
alias yt='~/.scripts/yt.sh'
