#!/bin/sh

temp=$(sensors | awk '/^Package id 0:/{print $4}')
temp_num=$(echo $temp | sed 's/+//' | sed 's/\..*//')

if [ $temp_num -gt 70 ]
then
	msg=" $temp"
elif [ $temp_num -gt 60 ]
then
	msg=" $temp"
elif [ $temp_num -gt 50 ]
then
	msg=" $temp"
elif [ $temp_num -gt 40 ]
then
	msg=" $temp"
else
	msg=" $temp"
fi

echo "$msg"
