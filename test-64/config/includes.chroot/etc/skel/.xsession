
hsetroot -solid "#000000" & 

## trackpad ## tapbutton off by default ##
# if egrep -iq 'touchpad' /proc/bus/input/devices; then
#     synclient VertTwoFingerScroll=1
#     synclient HorizTwoFingerScroll=1
#     synclient TapButton1=0
# fi

## read ~.Xresources file ##
## read xpdf, xterm, uxrvt etc.. config
# xrdb -merge ~/.Xresources
[[ -f ~/.Xresources ]] && xrdb -merge ~/.Xresources

## set ctrl_alt_bksp as session-killer ##
# setxkbmap -option terminate:ctrl_alt_bksp

# /usr/share/star/setup-user

exec /usr/bin/jwm

# https://wiki.debian.org/WiFi/HowToUse#wpa_supplicant
# ifup wlan0 &

## Set keyboard settings - 250 ms delay and 25 cps (characters per second) repeat rate.
## Adjust the values according to your preferances.
xset r rate 250 25 &

## Turn on/off system beep
xset b off &

# exec --no-startup-id wicd-client -t








