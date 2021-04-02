#!/bin/bash

if [ -r "$HOME/.dbus/Xdbus" ]; then
  . "$HOME/.dbus/Xdbus"
fi

export DISPLAY=127.0.0.1:0.0
export XAUTHORITY=/home/$USER/.Xauthority

while [ "i" == "i" ]
  do
    sleep 1m
    /bin/play "/home/$USER/w/bash/eye_care_20_20_20/eye_care_song.mp3" &
    env DISPLAY=:0.0 /bin/notify-send -t 5000 "Look Atleast 20 Feet Away for 20 Seconds!"
  done

