echo "Starting script..."

echo "Install Gnome package"
apt install xorg gnome gnome-shell #installs GNOME desktop and xorg onto the system
wait

echo "Disabling dhcpcd to be able to connect to wifi via gnome network manager"
systemctl disable dhcpcd && /etc/init.d/dhcpcd stop
wait

echo "change permission settings for GNOME"
rm /etc/polkit-1/localauthority.conf.d/
wait
cp localauthority.conf.d /etc/polkit-1/localauthority.conf.d
wait

echo "Install chrome extension intergration for GNOME"
apt install chrome-gnome-shell
wait

echo "Rebooting, enjoy your new desktop!"
reboot
