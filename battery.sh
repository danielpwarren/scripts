#!/bin/sh

export BATTERY=$(cat /sys/class/power_supply/BAT/capacity)

if [ "$BATTERY" -gt 80 ]
then
	msg=" $BATTERY"
elif [ "$BATTERY" -gt 60 ]
then
	msg=" $BATTERY"
elif [ "$BATTERY" -gt 40 ]
then
	msg=" $BATTERY"
elif [ "$BATTERY" -gt 20 ]
then
	msg=" $BATTERY"
else
	msg=" $BATTERY"
fi

echo "$msg%"
