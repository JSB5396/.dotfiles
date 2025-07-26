#!/bin/bash
name="$1"
path=$HOME/.config/niri/config.kdl
sed -i 's/xcursor-theme.*/xcursor-theme "'"$name"'"/g' $path
gsettings set org.gnome.desktop.interface cursor-theme $name
cursor=`gsettings get org.gnome.desktop.interface cursor-theme`
echo "$cursor set up correctly"
