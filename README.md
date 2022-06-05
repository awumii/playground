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

# gresource-extract.sh
Extracts gtk resources from a `.gresource` file. This makes the theme usable with libadwaita apps.  
This is only needed when the `gtk-4.0` directory of the theme contains a `gtk.gresource` file.  
Tested with various themes made by [vinceliuice](https://github.com/vinceliuice)

1. Put the script in the `gtk-4.0` directory of your theme.
2. Run `./gresource-extract.sh`.
3. Copy all files from the `theme-extracted` directory to `~/.config/gtk-4.0`
