# /etc/modprobe.d/blacklist.conf
Blacklist some unwanted modules
```
blacklist nvidia-wmi-ec-backlight # fix backlight on some optimus laptops
blacklist pcspkr                  # no more pc speaker
blacklist uvcvideo                # webcam driver
```

# /etc/modprobe.d/nvidia.conf
Allows NVIDIA GPUs (Turing and newer) to be fully powered down when not in use (only for laptops).  
Runtime Power Management must be enabled for the NVIdia GPU PCIe bus. Use TLP or laptop-mode-tools for that.  
See https://download.nvidia.com/XFree86/Linux-x86_64/515.48.07/README/dynamicpowermanagement.html
```
options nvidia "NVreg_DynamicPowerManagement=0x02"
```
*Currently the nvidia-open driver does not support this feature. However, it works with the proprietary drivers in both X11 and Wayland.*

# gresource-extract.sh
Extracts gtk resources from a `.gresource` file. This makes the theme usable with libadwaita apps.  
This is only needed when the `gtk-4.0` directory of the theme contains a `gtk.gresource` file.  
Tested with various themes made by [vinceliuice](https://github.com/vinceliuice)

1. Put the script in the `gtk-4.0` directory of your theme.
2. Run `./gresource-extract.sh`.
3. Copy all files from the `theme-extracted` directory to `~/.config/gtk-4.0`

# Qt5/Qt6 app theming in GNOME
1. Install `qt5ct` and `kvantum`.
2. Set the [environmental variable](https://wiki.archlinux.org/title/Environment_variables) `QT_QPA_PLATFORMTHEME=qt5ct`.
3. Open Qt5ct and set the style to `kvantum` or `kvantum-dark`.
4. Download your kvantum theme and install it trough kvantum. Use solid version of the theme if possible.
5. Re-login and enjoy your themed Qt5 apps.  

*For theming Qt6 apps install qt6ct and repeat the third step, but open qt6ct instead of qt5ct*
