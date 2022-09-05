#!/bin/sh
lang=$(setxkbmap -query) && lang=${lang##* }
[ "$lang" = "us" ] && lang="latam" || lang="us"
[ "$lang" = "us" ] && stat="American English" || stat="Latinamerican Spanish"

setxkbmap $lang
dunstify -h string:x-dunst-stack-tag:lang \
         -i "$HOME/.local/share/icons/Reversal-dark/actions/22/amarok_change_language.svg" \
         "Keyboard Language" "Set to <b>$stat</b>"
