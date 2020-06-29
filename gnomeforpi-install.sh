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
#sudo sed -i 's/[Mapping analog-mono]/;[Mapping analog-mono]/g' /usr/share/pulseaudio/alsa-mixer/profile-sets/default.conf
#wait
#sudo sed -i 's/device-strings = hw:%f/;device-strings = hw:%f/g' /usr/share/pulseaudio/alsa-mixer/profile-sets/default.conf
#wait
#sudo sed -i 's/channel-map = mono/;channel-map = mono/g' /usr/share/pulseaudio/alsa-mixer/profile-sets/default.conf
#wait
#sudo sed -i 's/paths-output = analog-output analog-output-lineout analog-output-speaker analog-output-headphones analog-output-headphones-2 analog-output-mono/;paths-output = analog-output analog-output-lineout analog-output-speaker analog-output-headphones analog-output-headphones-2 analog-output-mono/g' /usr/share/pulseaudio/alsa-mixer/profile-sets/default.conf
#wait
#sudo sed -i 's/paths-input = analog-input-front-mic analog-input-rear-mic analog-input-internal-mic analog-input-dock-mic analog-input analog-input-mic analog-input-linein analog-input-aux analog-input-video analog-input-tvtuner analog-input-fm analog-input-mic-line analog-input-headset-mic/;paths-input = analog-input-front-mic analog-input-rear-mic analog-input-internal-mic analog-input-dock-mic analog-input analog-input-mic analog-input-linein analog-input-aux analog-input-video analog-input-tvtuner analog-input-fm analog-input-mic-line analog-input-headset-mic/g' /usr/share/pulseaudio/alsa-mixer/profile-sets/default.conf
#wait
#sudo sed -i 's/priority = 7/;priority = 7/g' /usr/share/pulseaudio/alsa-mixer/profile-sets/default.conf
#wait

echo "change permission settings for GNOME"
sleep 2
sudo sh -c 'echo "[Configuration]" >> /etc/polkit-1/localauthority.conf.d/51-admin.conf'
wait
sudo sh -c 'echo "AdminIdentities=unix-group:sudo;unix-group:admin" >> /etc/polkit-1/localauthority.conf.d/51-admin.conf'
wait

echo "Rebooting, enjoy your new desktop!"
sleep 2
reboot
