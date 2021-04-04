#!/bin/bash

# chack DBUS_SESSION_BUS_ADDRESS variable
if [ -r "$HOME/.dbus/Xdbus" ]; then
  . "$HOME/.dbus/Xdbus"
fi

# settings to display notification in screen
export DISPLAY=127.0.0.1:0.0
export XAUTHORITY=/home/$USER/.Xauthority

while true
  do
    # run programme every 20 minutes
    sleep 20m
    #  play notification sound
    /bin/play "/home/$USER/Downloads/eye_care_20_20_20/eye_care_song.mp3" &
    # show message
    env DISPLAY=:0.0 /bin/notify-send -t 5000 "Look Atleast 20 Feet Away for 20 Seconds!"
  done

