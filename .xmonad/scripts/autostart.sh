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
#xrandr --output VGA-1 --primary --mode 1360x768 --pos 0x0 --rotate normal
xrandr --output DP-0 --primary --mode 2560x1440 --rate 59.94 --output  &
xrandr --output DVI-I-1 --mode 1920x1080 --mode 1920x1080 --left-of DP-0 &
xrandr --output HDMI-0 --mode 1920x1080 right-of DP-0

(sleep 2; run $HOME/.config/polybar/launch.sh) &

#change your keyboard if you need it
setxkbmap -layout de

#cursor active at boot
xsetroot -cursor_name left_ptr &

#start ArcoLinux Welcome App
#run dex $HOME/.config/autostart/arcolinux-welcome-app.desktop

#Some ways to set your wallpaper besides variety or nitrogen
feh --bg-fill /usr/share/backgrounds/arcolinux/arco-wallpaper.jpg &
#start the conky to learn the shortcuts
#(conky -c $HOME/.xmonad/scripts/system-overview) &

#starting utility applications at boot time
#run variety &
run nm-applet &
run pamac-tray &
# run xfce4-power-manager &
run volumeicon &
numlockx on &
blueberry-tray &
picom --config $HOME/.xmonad/scripts/picom.conf &
/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1 &
/usr/lib/xfce4/notifyd/xfce4-notifyd &

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
