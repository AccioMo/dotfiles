#!/bin/bash
v=$(i3-volume output %v)
nv=$(echo $v | sed 's/[^0-9]//g')

if [ "$v" = "MUTE" ]; then
	echo "󰝟 Muted"
elif [ "$nv" -gt 89 ]; then
	echo " $v"
elif [ "$nv" -gt 49 ]; then
	echo " $v"
elif [ "$nv" -gt 5 ]; then
	echo " $v"
else
	echo " $v"
fi

