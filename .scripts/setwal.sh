#!/bin/bash

# Vars
wideflag='false'
helpflag='false'
image=${!#}


# Empty check
if [ $# -eq 0 ]; then
    echo "setwal: usage: setwal [options] path/to/image, use -h for help."
    exit 1
fi

# Flags
while getopts :hw flag; do
    case $flag in
        h) helpflag='true';;
        w) wideflag='true';;
        ?) echo "setwal: usage: setwal [options] path/to/image, use -h for help."; exit 1;;
    esac
done

# Help
if $helpflag; then
    echo "Tool for setting your wallpaper with pywal."
    echo ""
    echo "usage: setwal [options] path/to/image"
    echo "default behaviour: sets a copy of the image on each screen"
    echo ""
    echo "Options:"
    echo "-h            show this page"
    echo "-w            stretch the image across both screens"
    exit 1
fi

# Check if not directory
if [ ! -e $image ]; then
    echo "${image} does not exist."
    echo "setwal: usage: setwal [options] path/to/image, use -h for help."
    exit 1
elif [ -d $image ]; then
    echo "${image} is a directory."
    echo "setwal: usage: setwal [options] path/to/image, use -h for help."
    exit 1
fi


wal -i $image -n &&
(
pywal-discord

if $wideflag; then
    nitrogen --set-auto $image
else
    nitrogen --head=0 --set-auto $image
    nitrogen --head=1 --set-auto $image
fi

sudo cp $image /usr/share/pixmaps/wallpaper

## Fix things that need recompiling
# Xmonad
~/.scripts/xmonad-restart.sh

# Dmenu
~/.scripts/suckless/rcdm.sh

# DWM
~/.scripts/suckless/rcdwm.sh
)

