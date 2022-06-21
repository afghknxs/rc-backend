#!/bin/sh

set -e

if [[ -n "$RCLONE_CONF" ]]
then
  mkdir -p ~/.config/rclone
  echo "$RCLONE_CONF" > ~/.config/rclone/rclone.conf
fi

#Infinite run 

while :
do
	rclone $*
	sleep 301
done

#sh -c "rclone $*"
