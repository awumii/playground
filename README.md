# /etc/modprobe.d/blacklist.conf
Blacklist some unwanted modules
```
blacklist pcspkr                  # i hate the beeping
blacklist uvcvideo                # webcam driver
```

# /etc/modprobe.d/nvidia.conf
Allows NVIDIA GPUs (Turing and newer) to be fully powered down when not in use (only for laptops).  
Runtime Power Management must be enabled for the Nvidia GPU PCIe bus. Use TLP or laptop-mode-tools for that.  
See https://download.nvidia.com/XFree86/Linux-x86_64/525.60.11/README/dynamicpowermanagement.html
```
options nvidia "NVreg_DynamicPowerManagement=0x02"
```
*Currently the nvidia-open driver does not support this feature. However, it works with the proprietary drivers in both X11 and Wayland.*

# Qt5/Qt6 app theming in GNOME
1. Install `qt6ct` and `kvantum`.
2. Set the [environmental variable](https://wiki.archlinux.org/title/Environment_variables) `QT_QPA_PLATFORMTHEME=qt5ct`.
3. Open Qt6ct and set the style to `kvantum` or `kvantum-dark`.
4. Download your kvantum theme and install it trough kvantum. I don't recommend to use transparent themes.
5. Re-login and enjoy your themed Qt apps.
