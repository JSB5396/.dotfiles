#!/bin/bash
name="$1"
path=$HOME/.config/niri/config.kdl
gsettings set org.gnome.desktop.interface icon-theme $name
icon=`gsettings get org.gnome.desktop.interface icon-theme`
sed -i 's/GTK_ICON_THEME.*/GTK_ICON_THEME "'"$name"'"/g' $path
echo "$icon set up correctly"
