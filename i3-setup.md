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
2. Add the following line in Section "InputClass" of tocuchpad
```shell
Option "Tapping" "on"
Option "NaturalScrolling" "true"
```

### Brightness
To adjust brightness via the function keys
1. Install xbacklight
```shell
pacman -S xorg-xbacklight
```
2. Add the following line in the i3 config file.
```shell
# Screen brightness controls
bindsym XF86MonBrightnessUp exec "xbacklight -inc 10; notify-send 'brightness up'"
bindsym XF86MonBrightnessDown exec "xbacklight -dec 10; notify-send 'brightness down'"
``` 

### Notifiation
Used an application dunst to manage the notifications
Copy the dunstrc file in .config/dunst folder from the repository.
Add the following line in i3 config
```shell
# Start dunst
exec dunst -config ~/.config/dunst
```

### Set Wallpaper
We will use a GUI application Nitrogen
Install nitrogen using the following command
```shell
pacman -S nitrogen
```
Add the following line in i3 config
```shell
# Set the wallpaper
exec_always --no-startup-id nitrogen --restore
```

### Handle Multiple displays
We will use a GUI application arandr
Install arandr using the following command
```shell
pacman -S arandr
```
### Assign application to workspace
Install a tool xprop to get the class of each application.
```shell
assign [class="Gnome-terminal"] $ws1
```
### Add image to workspace number
First download the fontawesome library and add the .otf files to ~/.fonts folder
Then go to the config and add the icons next to the number by copying the icons from fontawesome website.