echo "Starting script..."

echo "Updating Repositories"
sleep 2
apt update
wait

echo "Install Gnome package"
sleep 2
apt-get install -y xorg gnome gnome-shell #installs GNOME desktop and xorg onto the system
wait

echo "Disabling dhcpcd to be able to connect to wifi via gnome network manager"
sleep 2
systemctl disable dhcpcd && /etc/init.d/dhcpcd stop
wait

echo "change permission settings for GNOME"
sleep 2
wait
cp localauthority.conf /etc/polkit-1/localauthority.conf.d/60-localauthority.conf
wait

echo "Install chrome extension intergration for GNOME"
sleep 2
apt install chrome-gnome-shell
wait

echo "Rebooting, enjoy your new desktop!"
sleep 2
reboot
