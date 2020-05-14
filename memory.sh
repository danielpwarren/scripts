#/bin/sh

echo "  $(free -h | awk '/^Mem/ { print $3" / 8G" }' | sed s/i//g) "
