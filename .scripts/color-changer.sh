#!/bin/bash
#__   __        _      _    _        
#\ \ / /_ _ _ _(_)__ _| |__| |___ ___
# \ V / _` | '_| / _` | '_ \ / -_|_-<
#  \_/\__,_|_| |_\__,_|_.__/_\___/__/

background=1c1e26
foreground=e0e0e0
        
regular0=16161c
regular1=e95678
regular2=29d398
regular3=fab795
regular4=26bbd9
regular5=ee64ac
regular6=59e1e3
regular7=d5d8da

bright0=5b5858
bright1=ec6a88
bright2=3fdaa4
bright3=fbc3a7
bright4=3fc4de
bright5=f075b5
bright6=6be4e6
bright7=d5d8da

#    _   _             _ _   _        
#   /_\ | |__ _ __ _ _(_) |_| |_ _  _ 
#  / _ \| / _` / _| '_| |  _|  _| || |
# /_/ \_\_\__,_\__|_| |_|\__|\__|\_, |
#                                |__/ 
#
alacritty=$HOME/.config/alacritty/alacritty.toml

sed -i "s/background =.*/background = '#${background}'/g" $alacritty
sed -i "s/foreground =.*/foreground = '#${foreground}'/g" $alacritty
sed -i "15 s/black =.*/black = '#${regular0}'/g" $alacritty
sed -i "16 s/red =.*/red = '#${regular1}'/g" $alacritty
sed -i "17 s/green =.*/green = '#${regular2}'/g" $alacritty
sed -i "18 s/yellow =.*/yellow = '#${regular3}'/g" $alacritty
sed -i "19 s/blue =.*/blue = '#${regular4}'/g" $alacritty
sed -i "20 s/magenta =.*/magenta = '#${regular5}'/g" $alacritty
sed -i "21 s/cyan =.*/cyan = '#${regular6}'/g" $alacritty
sed -i "22 s/white =.*/white = '#${regular7}'/g" $alacritty
sed -i "25 s/black =.*/black = '#${bright0}'/g" $alacritty
sed -i "26 s/red =.*/red = '#${bright1}'/g" $alacritty
sed -i "27 s/green =.*/green = '#${bright2}'/g" $alacritty
sed -i "28 s/yellow =.*/yellow = '#${bright3}'/g" $alacritty
sed -i "29 s/blue =.*/blue = '#${bright4}'/g" $alacritty
sed -i "30 s/magenta =.*/magenta = '#${bright5}'/g" $alacritty
sed -i "31 s/cyan =.*/cyan = '#${bright6}'/g" $alacritty
sed -i "32 s/white =.*/white = '#${bright7}'/g" $alacritty           

# ___               _ 
#| __|  _ _________| |
#| _| || |_ /_ / -_) |
#|_| \_,_/__/__\___|_|
#                     
fuzzel=$HOME/.config/fuzzel/fuzzel.ini

sed -i "s/background=.*/background=${background}ff/g" $fuzzel
sed -i "s/text=.*/text=${foreground}ff/g" $fuzzel
sed -i "53 s/prompt=.*/prompt=${regular7}ff/g" $fuzzel
sed -i "s/input=.*/input=${foreground}ff/g" $fuzzel
sed -i "s/match=.*/match=${regular4}ff/g" $fuzzel
sed -i "s/selection=.*/selection=${regular1}ff/g" $fuzzel
sed -i "s/selection-text=.*/selection-text=${regular0}ff/g" $fuzzel
sed -i "s/selection-match=.*/selection-match=${regular7}ff/g" $fuzzel
sed -i "s/border=.*/border=${regular0}ff/g" $fuzzel

# _  _               _         _   
#| || |_  _ _ __ _ _| |___  __| |__
#| __ | || | '_ \ '_| / _ \/ _| / /
#|_||_|\_, | .__/_| |_\___/\__|_\_\
#      |__/|_|                     
#
hyprlock=$HOME/.config/hypr/hyprlock.conf

sed -i 's/$text = rgb.*/$text = rgb('"${regular4}"')/g' $hyprlock
sed -i 's/$input = rgb.*/$input = rgb('"${foreground}"')/g' $hyprlock
sed -i 's/$border = rgb.*/$border = rgb('"${regular0}"')/g' $hyprlock
sed -i 's/$background = rgb.*/$background = rgb('"${background}"')/g' $hyprlock

# _    _ _          __      __   _  __  
#| |  (_) |__ _ _ __\ \    / /__| |/ _| 
#| |__| | '_ \ '_/ -_) \/\/ / _ \ |  _|
#|____|_|_.__/_| \___|\_/\_/\___/_|_|
#                                                                      
libreWolf=$HOME/.librewolf/d7ygme0s.default-default/chrome/theme.css

sed -i "s/--base:.*/--base:           #${background};/g" $libreWolf
sed -i "s/--text:.*/--text:           #${foreground};/g" $libreWolf
sed -i "s/--overlay:.*/--overlay:        #${regular0};/g" $libreWolf
sed -i "s/--subtle:.*/--subtle:         #${regular1};/g" $libreWolf

# __  __      _       
#|  \/  |__ _| |_____ 
#| |\/| / _` | / / _ \
#|_|  |_\__,_|_\_\___/
#                     
mako=$HOME/.config/mako/config

sed -i "s/background-color=.*/background-color=#${background}/g" $mako
sed -i "s/text-color=.*/text-color=#${foreground}/g" $mako
sed -i "8 s/border-color=.*/border-color=#${regular0}/g" $mako
sed -i "12 s/border-color=.*/border-color=#${regular1}/g" $mako

# _  _ _     _ 
#| \| (_)_ _(_)
#| .` | | '_| |
#|_|\_|_|_| |_|
#              
niri=$HOME/.config/niri/config.kdl

sed -i 's/background-color.*/background-color "#'"$background"'"/g' $niri
sed -i 's/active-color.*/active-color "#'"$regular0"'"/g' $niri
sed -i 's/inactive-color.*/inactive-color "#'"$background"'"/g' $niri
sed -i 's/urgent-color.*/urgent-color "#'"$regular1"'"/g' $niri
sed -i 's/backdrop-color.*/backdrop-color "#'"$background"'"/g' $niri

#__      __         _              
#\ \    / /_ _ _  _| |__  __ _ _ _ 
# \ \/\/ / _` | || | '_ \/ _` | '_|
#  \_/\_/\__,_|\_, |_.__/\__,_|_|  
#              |__/               
#
waybar=$HOME/.config/waybar/style.css

sed -i "s/@define-color maincolor.*/@define-color maincolor #${regular4};/g" $waybar
sed -i "s/@define-color accentcolor.*/@define-color accentcolor #${foreground};/g" $waybar
sed -i "s/@define-color bgmodule.*/@define-color bgmodule #${regular0};/g" $waybar
sed -i "s/@define-color background.*/@define-color background #${background};/g" $waybar

#__      ___                    _   
#\ \    / / |___  __ _ ___ _  _| |_ 
# \ \/\/ /| / _ \/ _` / _ \ || |  _|
#  \_/\_/ |_\___/\__, \___/\_,_|\__|
#                |___/              
#
wlogout=$HOME/.config/wlogout/style.css

sed -i "s/@define-color selectcolor.*/@define-color selectcolor #${regular0};/g" $wlogout
sed -i "s/@define-color textcolor.*/@define-color textcolor #${regular4};/g" $wlogout
sed -i "s/@define-color bgcolor.*/@define-color bgcolor #${background};/g" $wlogout
