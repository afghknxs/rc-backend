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
	rclone sync "drive1ee:" "onedrive:" --transfers 5 -P --ignore-existing --drive-chunk-size 16M --onedrive-chunk-size=5M --drive-acknowledge-abuse --drive-stop-on-upload-limit
	sleep 301
done

#sh -c "rclone $*"
