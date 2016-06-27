#!/bin/sh

# will need to know actual name of process
#pgrep wicd-client &>/dev/null; [ $? = 0 ] && killall wicd-client
pkill wicd-client

sleep 1
{

	#compton --config ~/.compton.conf &
	(sleep 2 && wicd-gtk --tray) &
#	(sleep 3 && volumeicon --tray) &
	(sleep 2 && conky -c ~/bin/.conky/.conkyrc.ribbon) &
	nitrogen --restore &
	(sleep 4 && star-welcome --firstrun) &
}
