#/bin/sh

level=$(amixer -D pulse get Master | awk '$2== "Left:" {print $5}' | sed 's/[][]//g')
muted=$(pacmd list-sinks | awk '/muted/ { print $2 }' | head -n 1)

if [ $muted = "yes" ]
then
	echo "  $level "
elif [ $muted = "no" ]
then
	echo "  $level "
else
	echo " err "
fi
