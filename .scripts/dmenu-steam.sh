#!/bin/sh

# Vars
PROMPT="Steam"
SELECTION=$(for f in /home/$(whoami)/.steam/steam/steamapps/*.acf 
do
	NAME=$(grep -e name $f | awk -F'"' '{ print $4 }')
	APPID=$(grep -e \"appid\" $f | awk -F'"' '{ print $4 }')
	echo "${NAME} -- ${APPID}"
done | dmenu -i -p "${PROMPT}" | awk -F' -- ' '{ print $2 }')
if [ ! -z "${SELECTION}" ]; then
	steam steam://rungameid/${SELECTION}
fi

