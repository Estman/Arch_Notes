#!/bin/sh
export DISPLAY=:0
notify-send "Transmission" "$TR_TORRENT_NAME completed." -i transmission #&
#echo "$TR_TORRENT_NAME" >> /home/tatou/.to_watch
#panel-torrents
