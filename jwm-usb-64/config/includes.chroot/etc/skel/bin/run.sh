#!/bin/sh

if [ ! -d "/home/star/.config/star" ]; then
	mkdir /home/star/.config/star
fi

if [ ! -f "/home/star/.config/star/star-setup" ]; then

    #if [ -f "/home/star/.mozilla/firefox/cpffssvb.default/prefs.js" ]; then
        #rpl -q 'REPLACEME' star /home/star/.mozilla/firefox/cpffssvb.default/prefs.js > /dev/null 2>&1
    #fi

    ln -s /usr/share/backgrounds /home/star/images/wallpapers/shared

	touch /home/star/.config/star/star-setup
    chown -R star:star /home/star

	xdg-user-dirs-update

fi

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
