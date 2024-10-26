#!/bin/bash

min=1
max=372

random_number=$(( RANDOM % (max - min + 1) + min ))


echo -n "" > /home/ivan/.config/hypr/hyprpaper.conf

echo "preload= /home/ivan/Pictures/Images/$random_number.jpg" >> /home/ivan/.config/hypr/hyprpaper.conf
echo "wallpaper= ,/home/ivan/Pictures/Images/$random_number.jpg" >> /home/ivan/.config/hypr/hyprpaper.conf

if pgrep -x "hyprpaper" > /dev/null; then
	pkill hyprpaper && hyprpaper
else
	hyprpaper
fi
