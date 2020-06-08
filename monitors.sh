#!/bin/sh
# Toggle on/off an external HDMI monitor, does not support audio over HDMI as it's pretending that it's DVI

intern="eDP1"
extern="HDMI2"

case "$1" in
	"disconnect") xrandr --output "$extern" --off --output "$intern" -- auto ;;
	"extra") xrandr --output "$extern" --set audio force-dvi --mode 1920x1080 &&
    xrandr --output "$intern" --auto --output "$extern" --left-of "$intern" ;;
	"duplicate") xrandr --output "$extern" --set audio force-dvi --mode 1920x1080 && xrandr --output "$intern" --auto --output "$extern" --same-as "$intern" ;;
	*) notify-send "Multi Monitor" "Unknown Operation" ;;
esac
