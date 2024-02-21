# GNOME For Pi

A script to install GNOME on the Raspberry Pi

## NOTE

This project hasn't been worked on by me for a long time. As such it may be currently broken. Pull requests from others are welcome, otherwise wait till I have the time to pick this back up again.

## Requirements

* Raspberry Pi with an up to date Raspberry Pi OS Lite (R-Pi OS) installed. This can be a fresh install or a previous installation that is current with Bullseye. If the current install has not been updated recently, it would be wise to update and reboot before starting. (This has not been tested with older (e.g. Buster R-Pi OS) or the full R-Pi OS with native GUI.)
* Internet connection either via WiFi or Ethernet. This will need to pull a lot of packages from the repositories.

Testing has been performed on a 3B+ using the 32 bit release and on a 4B using the 64 bit release and in both cases, the releases made 2022-09-06.

![alt text](https://github.com/HankB/gnomeforpi/blob/stable/Screenshot.png)

This simply installs the GNOME package for Raspberry Pi OS, then modifies config files to optimize GNOME.

Video tutorial: <https://youtu.be/JTwh7ndiNU0>

## Options
There is a 'lite' install that can be implemented by executing the command `sudo gnomeforpi-install --lite` instead of `sudo gnomeforpi-install` (below.) The 'lite' install includes fewer packages and does not refer to the 'Lite' version of R-Pi OS.

## Process

To get started, you'll need to do initial setup first.

This must be done with Raspberry Pi OS lite, and an Ethernet or WiFi connection to the Internet is required.

Firstly, login. using the user name and password established at first boot (or `pi`/`raspberry` for an older install which is still using the defaults.) Then execute the following commands:

```text
wget https://github.com/TerraGitHuB/gnomeforpi/archive/refs/heads/stable.zip
unzip stable.zip
cd gnomeforpi-stable
sudo ./gnomeforpi-install
# - or - 
sudo ./gnomeforpi-install --lite
```

and just let her rip!

Once it's finished, it will reboot, and you'll be faced with a login screen. Use the same credetials as above mentioned.

> NOTE: Click the cogwheel at the bottom left of the login screen to change to "GNOME on Xorg". In my expeirirence, it provides the best performance. If needed  Animations can be disabled in gnome-tweaks.

If you expirience any bugs with the script itself feel free to open an issue here.

Enjoy!
