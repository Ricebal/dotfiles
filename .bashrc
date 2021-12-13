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

## Aliases
alias ls='ls --color=auto'
alias config='/usr/bin/git --git-dir=/home/rice/dotfiles/ --work-tree=/home/rice'
alias sconfig='sudo /usr/bin/git --git-dir=/home/rice/dotfiles --work-tree=/home/rice'
alias setwal='~/.scripts/setwal.sh'
alias yt='~/.scripts/yt.sh'
alias m='devour mpv'

# Suckless
alias rcas='~/.scripts/suckless/rcas.sh' # Recompile all suckless utilities
alias rcdwm='~/.scripts/suckless/rcdwm.sh' # Recompile DWM
alias rcdm='~/.scripts/suckless/rcdm.sh' # Recompile dmenu
alias rcdwmb='~/.scripts/suckless/rcdwmb.sh' # Recompile DWMBlocks
