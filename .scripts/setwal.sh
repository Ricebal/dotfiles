#!/bin/bash
wal -i $1 -n
pywal-discord
nitrogen --head=0 --set-auto $1
nitrogen --head=1 --set-auto $1
~/.config/xmonad/bash/restart.sh