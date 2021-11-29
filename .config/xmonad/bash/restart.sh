#!/bin/bash

## Vars
input=~/.cache/wal/colors

# xmonad
configTemplate=~/.config/xmonad/xmonad-template.hs
configOutput=~/.config/xmonad/xmonad.hs
barTemplate=~/.config/xmobar/xmobarrc-template
barOutput=~/.config/xmobar/xmobarrc

# rofi
topbarTemplate=~/.config/rofi/themes/topbar-template.rasi
topbarOutput=~/.config/rofi/themes/topbar.rasi


# Colors
# 0 = background
# 15 = foreground
mapfile -t colors < $input



sed \
-e "s/BGCOLOR/${colors[0]}/g" \
-e "s/FGCOLOR/${colors[15]}/g" \
-e "s/COLOR1/${colors[0]}/g" \
-e "s/COLOR2/${colors[1]}/g" \
-e "s/COLOR3/${colors[2]}/g" \
-e "s/COLOR4/${colors[3]}/g" \
-e "s/COLOR5/${colors[4]}/g" \
-e "s/COLOR6/${colors[5]}/g" \
-e "s/COLOR7/${colors[6]}/g" \
-e "s/COLOR8/${colors[7]}/g" \
-e "s/COLOR9/${colors[8]}/g" \
-e "s/COLOR10/${colors[9]}/g" \
-e "s/COLOR11/${colors[10]}/g" \
-e "s/COLOR12/${colors[11]}/g" \
-e "s/COLOR13/${colors[12]}/g" \
-e "s/COLOR14/${colors[13]}/g" \
-e "s/COLOR15/${colors[14]}/g" \
-e "s/COLOR16/${colors[15]}/g" \
$configTemplate > $configOutput

sed \
-e "s/BGCOLOR/${colors[0]}/g" \
-e "s/FGCOLOR/${colors[15]}/g" \
-e "s/COLOR1/${colors[0]}/g" \
-e "s/COLOR2/${colors[1]}/g" \
-e "s/COLOR3/${colors[2]}/g" \
-e "s/COLOR4/${colors[3]}/g" \
-e "s/COLOR5/${colors[4]}/g" \
-e "s/COLOR6/${colors[5]}/g" \
-e "s/COLOR7/${colors[6]}/g" \
-e "s/COLOR8/${colors[7]}/g" \
-e "s/COLOR9/${colors[8]}/g" \
-e "s/COLOR10/${colors[9]}/g" \
-e "s/COLOR11/${colors[10]}/g" \
-e "s/COLOR12/${colors[11]}/g" \
-e "s/COLOR13/${colors[12]}/g" \
-e "s/COLOR14/${colors[13]}/g" \
-e "s/COLOR15/${colors[14]}/g" \
-e "s/COLOR16/${colors[15]}/g" \
$barTemplate > $barOutput

sed \
-e "s/BGCOLOR/${colors[0]}/g" \
-e "s/FGCOLOR/${colors[15]}/g" \
-e "s/COLOR1/${colors[0]}/g" \
-e "s/COLOR2/${colors[1]}/g" \
-e "s/COLOR3/${colors[2]}/g" \
-e "s/COLOR4/${colors[3]}/g" \
-e "s/COLOR5/${colors[4]}/g" \
-e "s/COLOR6/${colors[5]}/g" \
-e "s/COLOR7/${colors[6]}/g" \
-e "s/COLOR8/${colors[7]}/g" \
-e "s/COLOR9/${colors[8]}/g" \
-e "s/COLOR10/${colors[9]}/g" \
-e "s/COLOR11/${colors[10]}/g" \
-e "s/COLOR12/${colors[11]}/g" \
-e "s/COLOR13/${colors[12]}/g" \
-e "s/COLOR14/${colors[13]}/g" \
-e "s/COLOR15/${colors[14]}/g" \
-e "s/COLOR16/${colors[15]}/g" \
$topbarTemplate > $topbarOutput


killall xmobar
xmonad --recompile; xmonad --restart

