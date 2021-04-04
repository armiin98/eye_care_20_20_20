#!/bin/bash

# set cron to run app at startup
crontab -l > .cron
echo "@reboot /home/$USER/Downloads/eye_care_20_20_20/eye_care.sh" >> .cron
crontab .cron
rm .cron

# set the DBUS_SESSION_BUS_ADDRESS variable. By default cron does not have access to the variable.
mkdir $HOME/.dbus
touch $HOME/.dbus/Xdbus
chmod 600 $HOME/.dbus/Xdbus
env | grep DBUS_SESSION_BUS_ADDRESS > $HOME/.dbus/Xdbus
echo 'export DBUS_SESSION_BUS_ADDRESS' >> $HOME/.dbus/Xdbus

# install sox (an app to play music from terminal)
sudo pacman -S sox

