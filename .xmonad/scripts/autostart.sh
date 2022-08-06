#!/bin/bash

function run {
  if ! pgrep $1 ;
  then
    $@&
  fi
}

#Set your native resolution IF it does not exist in xrandr
#More info in the script
#run $HOME/.xmonad/scripts/set-screen-resolution-in-virtualbox.sh

#Find out your monitor name with xrandr or arandr (save and you get this line)
xrandr --output DP-0 --mode 1920x1080 --pos 0x0 --rotate normal --output DP-1 --off --output DP-2 --primary --mode 2560x1440 --pos 1920x0 --rotate normal --output DP-3 --off --output HDMI-0 --off --output HDMI-1 --off --output HDMI-2 --off --output DP-4 --mode 1920x1080 --pos 4480x0 --rotate normal --output DP-5 --off



#change your keyboard if you need it
setxkbmap -layout de &

#cursor active at boot
xsetroot -cursor_name left_ptr &

#start ArcoLinux Welcome App
#run dex $HOME/.config/autostart/arcolinux-welcome-app.desktop

#Some ways to set your wallpaper besides variety or nitrogen
feh --bg-fill $HOME/.xmonad/wall.jpg &
#start the conky to learn the shortcuts
#(conky -c $HOME/.xmonad/scripts/system-overview) &

#starting utility applications at boot time
#run variety &
run nm-applet &
#run pamac-tray &
#run xfce4-power-manager &
#run volumeicon &
numlockx on &
#blueberry-tray &
picom --config $HOME/.xmonad/scripts/picom.conf &
/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1 &
/usr/lib/xfce4/notifyd/xfce4-notifyd &
run thunderbird &
#starting user applications at boot time
#nitrogen --restore &
#run caffeine &
#run vivaldi-stable &
#run firefox &
#run thunar &
#run spotify &
#run atom &

#run telegram-desktop &
#run discord &
#run dropbox &
#run insync start &
#run ckb-next -b &
