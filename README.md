# gnomeforpi
A script to install gnome to the Raspberry Pi

This simply installs the gnome package for Raspberry Pi OS, then replaces config files to optimize GNOME.

To install on Raspberry Pi OS:

git clone https://github.com/TerraGitHuB/gnomeforpi.git && cd gnomeforpi && sudo bash install.sh

You will need to disable the animations yourself (working on it), and you'll also need to enable fakeKMS openGL driver in raspi-config, but everything else should be fine. 

Once you get to the login screen, you'll need to change the session to "GNOME on Xorg"

Thank you.
