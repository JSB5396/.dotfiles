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

# ___               _ 
#| __|  _ _________| |
#| _| || |_ /_ / -_) |
#|_| \_,_/__/__\___|_|
#                     
fuzzel=$HOME/.config/fuzzel/fuzzel.ini

sed -i "s/background=.*/background=${background}ff/g" $fuzzel
sed -i "s/text=.*/text=${foreground}ff/g" $fuzzel
sed -i "52 s/prompt=.*/prompt=${regular7}ff/g" $fuzzel
sed -i "s/input=.*/input=${foreground}ff/g" $fuzzel
sed -i "s/match=.*/match=${regular4}ff/g" $fuzzel
sed -i "s/selection=.*/selection=${regular1}ff/g" $fuzzel
sed -i "s/selection-text=.*/selection-text=${regular0}ff/g" $fuzzel
sed -i "s/selection-match=.*/selection-match=${regular7}ff/g" $fuzzel
sed -i "s/border=.*/border=${regular0}ff/g" $fuzzel

# ___         _   
#| __|__  ___| |_ 
#| _/ _ \/ _ \  _|
#|_|\___/\___/\__|
#
foot=$HOME/.config/foot/foot.ini

sed -i "s/background=.*/background=${background}/g" $foot
sed -i "s/foreground=.*/foreground=${foreground}/g" $foot
sed -i "s/regular0=.*/regular0=${regular0}  # black/g" $foot
sed -i "s/regular1=.*/regular1=${regular1}  # red/g" $foot
sed -i "s/regular2=.*/regular2=${regular2}  # green/g" $foot
sed -i "s/regular3=.*/regular3=${regular3}  # yellow/g" $foot
sed -i "s/regular4=.*/regular4=${regular4}  # blue/g" $foot
sed -i "s/regular5=.*/regular5=${regular5}  # magenta/g" $foot
sed -i "s/regular6=.*/regular6=${regular6}  # cyan/g" $foot
sed -i "s/regular7=.*/regular7=${regular7}  # white/g" $foot
sed -i "s/bright0=.*/bright0=${bright0}   # bright black/g" $foot
sed -i "s/bright1=.*/bright1=${bright1}   # bright red/g" $foot
sed -i "s/bright2=.*/bright2=${bright2}   # bright green/g" $foot
sed -i "s/bright3=.*/bright3=${bright3}   # bright yellow/g" $foot
sed -i "s/bright4=.*/bright4=${bright4}   # bright blue/g" $foot
sed -i "s/bright5=.*/bright5=${bright5}   # bright magenta/g" $foot
sed -i "s/bright6=.*/bright6=${bright6}   # bright cyan/g" $foot
sed -i "s/bright7=.*/bright7=${bright7}   # bright white/g" $foot

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

# ____         
#|_  /___ _ _  
# / // -_) ' \ 
#/___\___|_||_|
#                              
zen=$HOME/.zen/f8qv2dt1.Default\ \(alpha\)/chrome/theme.css

sed -i "s/--base:.*/--base:           #${background};/g" "${zen}"
sed -i "s/--text:.*/--text:           #${foreground};/g" "${zen}"
sed -i "s/--overlay:.*/--overlay:        #${regular0};/g" "${zen}"
sed -i "s/--subtle:.*/--subtle:         #${regular1};/g" "${zen}"
