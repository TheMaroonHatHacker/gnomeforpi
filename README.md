# GNOME For Pi
A script to install gnome on the Raspberry Pi

![alt text](https://github.com/TerraGitHuB/gnomeforpi/blob/stable/Screenshot%20from%202021-04-16%2010-11-01.png)

This simply installs the gnome package for Raspberry Pi OS, then modifies config files to optimize GNOME.

To get started, you'll need to do initial setup first.

This must be done with Raspberry Pi OS lite, and an ethernet cable is required at the beginning of the prossedure.

Firstly, login. REMEMBER: Username: pi, Password: raspberry

then type:

```sh
sudo raspi-config
```

You will want to enable fakeKMS (Advanced -> openGL driver -> fakeKMS). It may ask to install packages. Install them.

Also, now is a good time to update:

```sh
sudo apt update
```

and install git:


```sh
sudo apt install git
```

Now that you've done that, run: 
```sh
git clone https://github.com/TerraGitHuB/gnomeforpi.git && cd gnomeforpi && sudo bash gnomeforpi-install
```
and just let her rip!

Once it's finished, it will reboot, and you'll be faced with a login screen. Use the same credetials as above.

NOTE: Click the cogwheel at the bottom left of the login screen to change to "GNOME on Xorg". In my expeirirence, it provides the best performance.

Everything should be working now. Animations work, but they can be disabled in tweaks.

Enjoy!
