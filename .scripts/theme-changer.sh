#!/bin/bash
name="$1"
path=$HOME/.config/niri/config.kdl
rm ~/.config/gtk-4.0/assets
rm ~/.config/gtk-4.0/gtk.css
rm ~/.config/gtk-4.0/gtk-dark.css
rm ~/.config/assets
sed -i 's/GTK_THEME.*/GTK_THEME "'"$name"'"/g' $path
gsettings set org.gnome.desktop.interface gtk-theme $name
ln -s ~/.themes/$name/gtk-4.0/assets  ~/.config/gtk-4.0/assets
ln -s ~/.themes/$name/gtk-4.0/gtk.css  ~/.config/gtk-4.0/gtk.css
ln -s ~/.themes/$name/gtk-4.0/gtk-dark.css  ~/.config/gtk-4.0/gtk-dark.css
sleep 1
ln -s ~/.themes/$name/assets  ~/.config/assets
gtk=`gsettings get org.gnome.desktop.interface gtk-theme`
echo "$gtk set up correctly"
