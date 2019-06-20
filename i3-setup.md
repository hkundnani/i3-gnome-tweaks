### Install i3, i3lock, i3status and dmenu
I am using manjaro linux hence the commands will for this distro.
```shell
pacman -S i3wm i3lock i3status dmenu
```
### Tocuhpad click
If the click using touchpad is not working then follow these steps:
1. Open the 40-libinput.conf file
```shell
vim /usr/share/X11/xorg.conf.d/40-libinput.conf
```
2. Add the following line in Section "InputClass"
```shell
Option "Tapping" "on"
```