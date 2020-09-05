#/bin/sh

level=$(amixer sget Master | awk '$1== "Mono:" {print $4}' | sed 's/[][]//g')
muted=$(amixer sget Master | awk '$1== "Mono:" {print $6}' | sed 's/[][]//g')

if [ $muted = "on" ]
then
	echo " $level"
elif [ $muted = "off" ]
then
	echo " $level"
else
	echo "err"
fi
