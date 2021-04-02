crontab -l > .cron
echo "@reboot /home/$USER/Downloads/eye_care_20_20_20/eye_care.sh" >> .cron
crontab .cron
rm .cron

sudo pacman -S sox

