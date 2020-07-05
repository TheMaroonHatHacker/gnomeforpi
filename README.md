# gnomeforpi
A script to install gnome on the Raspberry Pi

WARNING: All tests are made on this branch at the moment. Any changes may break GNOME desktop even more so than without.

Currently we don't support audio. If you need to use audio, we recommend you use bluetooth

This simply installs the gnome package for Raspberry Pi OS, then replaces config files to optimize GNOME.

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
git clone https://github.com/TerraGitHuB/gnomeforpi.git && cd gnomeforpi && sudo bash gnomeforpi
```
and just let her rip!

Once it's finished, it will reboot, and you'll be faced with a login screen. Use the same credetials as above. Before you login though, change the session from "GNOME" to GNOME on Xorg.

Everything should be working now.

Enjoy!
