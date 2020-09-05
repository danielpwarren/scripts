#/bin/sh

echo " $(free -h | awk '/^Mem/ { print $3" / 32G" }' | sed s/i//g)"
