#set -U fish_greeting # Remove the greeting

# Pacman aliases. Requires yay and pacman-contrib
alias install="yay -S --needed"
alias search="yay -Ss" # Search both arch repositories and AUR.
alias installed="pacman -Qs" # Shows installed packages / searches installed packages by name.                                                
alias update="yay"
alias remove="sudo pacman -Rcns" # Removes a package with and all of its dependencies
alias cleanup="echo Unused packages: (pacman -Qdtq) && sudo paccache -r -k 0"

# Other aliases
alias winewayland="DISPLAY= wine" # Use wine wayland driver.
alias killwine="killall wineserver -9 & killall winedevice.exe -9 & killall Xwayland -9" # Kills everything when wine is stuck.
alias syncfiles="rsync -avh --progress" # Sync two directories.
alias archivezstd="tar --use-compress-program='zstd -T0 --long --progress' -cf" # Fast and small archives!!
alias neofetch="fastfetch -c all.jsonc" # neofetch is dead, shows all stuff

#fish_add_path /home/admin/.millennium/ext/bin # Millenium added this, probably not needed.
