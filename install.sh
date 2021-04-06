#!/bin/bash

# set the DBUS_SESSION_BUS_ADDRESS variable. By default cron does not have access to the variable.
mkdir $HOME/.dbus
touch $HOME/.dbus/Xdbus
chmod 600 $HOME/.dbus/Xdbus
env | grep DBUS_SESSION_BUS_ADDRESS > $HOME/.dbus/Xdbus
echo 'export DBUS_SESSION_BUS_ADDRESS' >> $HOME/.dbus/Xdbus

# install sox (an app to play music from terminal)
echo "Enter root password to install dependencies"
sudo pacman -S sox

# set cron to run app at startup
# location of script
address=$(readlink -f eye_care_.sh)
crontab -l > .cron
echo "@reboot $address" >> .cron
crontab .cron
rm .cron

# final reasult
if [ $? -eq 0 ]; then
    echo "Eye care 20 20 20 Installed Succefully"
else
    echo "Installation failed"
fi