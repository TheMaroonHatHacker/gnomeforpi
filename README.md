# gnomeforpi
A script to install gnome on the Raspberry Pi

This is the stable branch. This branch is recommended. If you want to live on the edge and bug test, head over to beta.

Audio is now supported, however it is mono over audio jack. We still recommend you use bluetooth

This simply installs the gnome package for Raspberry Pi OS, then modifies config files to optimize GNOME.

To get started, you'll need to do initial setup first.

This must be done with Raspberry Pi OS lite, and an ethernet cable is required at the beginning of the prossedure.

Firstly, login. REMEMBER: Username: pi, Password: raspberry

then type:

```sh
sudo raspi-config
```

You will want to enable fakeKMS (Advanced -> openGL driver -> fakeKMS). It may ask to install packages. Install them.

Now that you've done that, run: 
```sh
git clone https://github.com/TerraGitHuB/gnomeforpi.git && cd gnomeforpi && sudo bash gnomeforpi-install
```
and just let her rip!

Once it's finished, it will reboot, and you'll be faced with a login screen. Use the same credetials as above.

NOTE: Click the cogwheel at the bottom left of the login screen to change to "GNOME on Xorg"

Everything should be working now. You will need to disable animations in tweaks.

Enjoy!
