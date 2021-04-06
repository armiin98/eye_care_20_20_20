#!/bin/bash

# chack DBUS_SESSION_BUS_ADDRESS variable
if [ -r "$HOME/.dbus/Xdbus" ]; then
  . "$HOME/.dbus/Xdbus"
fi

# settings to display notification in screen
export DISPLAY=127.0.0.1:0.0
export XAUTHORITY=/home/$USER/.Xauthority

# location of notification sound
address=$(readlink -f eye_care_song.mp3)

while true
  do
    # run programme every 20 minutes
    sleep 1m
    #  play notification sound
    play "$address" 
    # show message
    env DISPLAY=:0.0 notify-send -t 5000 "Look Atleast 20 Feet Away for 20 Seconds!"
  done

