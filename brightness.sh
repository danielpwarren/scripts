#!/bin/sh

echo "  $(xbacklight -get | sed 's/\..*/% /')"
