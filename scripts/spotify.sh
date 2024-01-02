#!/bin/bash

sp="/bin/dbus-send --print-reply --dest=org.mpris.MediaPlayer2.spotify /org/mpris/MediaPlayer2 org.mpris.MediaPlayer2.Player."
toggle="PlayPause"
next="Next"
prev="Previous"

if [ $1 = "toggle" ]; then
	$sp$toggle
elif [ $1 = "next" ]; then
	$sp$next
elif [ $1 = "prev" ]; then
	$sp$prev
fi
	
