#!/bin/sh

# /usr/lib/policykit-1-gnome/polkit-gnome-authentication-agent-1 &

# will need to know actual name of process
#pgrep wicd-client &>/dev/null; [ $? = 0 ] && killall wicd-client
pkill wicd-client
pkill conky
# pkill clipit

# before nitrogen
hsetroot -solid "#000000" & 

sleep 1
{
#	compton --config ~/.compton.conf &
	(sleep 3 && wicd-gtk --tray) &
# 	(sleep 3 && volumeicon --tray) &
#	(sleep 3 && clipit) &
	(sleep 3 && conky -c ~/.conkyrc) &
	# nitrogen --restore &
	# feh --bg-scale $HOME/images/wallpapers/shared/filename.jpg &
	(sleep 6 && star-welcome --firstrun) &
}

## Enable power management
xfce4-power-manager &

## Set keyboard settings - 250 ms delay and 25 cps (characters per second) repeat rate.
## Adjust the values according to your preferances.
xset r rate 250 25 &

## Turn on/off system beep
xset b off &

## read xpdf, xterm, uxrvt etc.. config
xrdb -merge ~/.Xresources
