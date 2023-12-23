#!/bin/sh

systemctl --user import-environment DISPLAY:
greenclip daemon &
picom &
~/.config/wpg/wp_init.sh
dunst &
dwmblocks &

while true; do
	dwm >/dev/null 2>&1
done
