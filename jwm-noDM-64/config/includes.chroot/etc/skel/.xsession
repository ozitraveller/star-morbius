# uncomment the following line if there is no display manager: lightdm, .....

## trackpad ## tapbutton off by default ##
if egrep -iq 'touchpad' /proc/bus/input/devices; then
    synclient VertTwoFingerScroll=1
    synclient HorizTwoFingerScroll=1
    synclient TapButton1=0
fi

## read ~.Xresources file ##
[[ -f ~/.Xresources ]] && xrdb -merge ~/.Xresources

## set ctrl_alt_bksp as session-killer ##
setxkbmap -option terminate:ctrl_alt_bksp

/usr/share/star/star-user-setup

exec /usr/bin/jwm

# exec --no-startup-id wicd-client -t
