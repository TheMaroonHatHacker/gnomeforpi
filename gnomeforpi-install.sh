#!/bin/sh
echo "Starting script..."

echo "Updating Repositories"
sleep 2
apt-get update
wait
apt-get upgrade -y
wait

echo "Install all packages"
sleep 2
apt-get install -y gnome gnome-shell rpi-chromium-mods xorg #installs all required packges
wait

echo "Disabling dhcpcd to be able to connect to wifi via gnome network manager"
sleep 2
systemctl disable dhcpcd && /etc/init.d/dhcpcd stop
wait

echo "Correcting Audio for GNOME"
sleep 2
sudo sed -i 's/load-module module-udev-detect/load-module module-udev-detect tsched=0/g' /etc/pulse/default.pa
wait

#echo "Disable Animations"
#sleep 2
#sudo gsettings set org.gnome.desktop.interface enable-animations false
#wait

echo "change permission settings for GNOME"
sleep 2
sudo touch /etc/polkit-1/localauthority.conf.d/51-admin.conf
wait
sudo sh -c 'echo "[Configuration]" >> /etc/polkit-1/localauthority.conf.d/51-admin.conf'
wait
sudo sh -c 'echo "AdminIdentities=unix-group:sudo;unix-group:admin" >> /etc/polkit-1/localauthority.conf.d/51-admin.conf'
wait

echo "Rebooting, enjoy your new desktop!"
sleep 2
reboot
