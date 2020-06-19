echo "Starting script..."

echo "Updating Repositories"
sleep 2
apt update
wait

echo "Install Gnome package"
sleep 2
apt-get install -y gnome-shell #installs GNOME desktop and xorg onto the system
wait

echo "Disabling dhcpcd to be able to connect to wifi via gnome network manager"
sleep 2
systemctl disable dhcpcd && /etc/init.d/dhcpcd stop
wait

echo "Correcting Audio for GNOME"
sleep 2
rm /etc/pulse/default.pa
wait
mv default.pa /etc/pulse/default.pa
wait
rm /usr/share/pulseaudio/alsa-mixer/profile-sets/default.conf
wait
mv  default.conf /usr/share/pulseaudio/alsa-mixer/profile-sets/default.conf
echo "change permission settings for GNOME"
sleep 2
wait
cp localauthority.conf /etc/polkit-1/localauthority.conf.d/51-localauthority.conf
wait

echo "Installing chromium"
sleep 2
apt install rp[i-chromium-mods
wait

echo "Rebooting, enjoy your new desktop!"
sleep 2
reboot
