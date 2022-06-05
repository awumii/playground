# ~/.config/fish/config.fish

# Remove the greeting :(
set -U fish_greeting

# Building speed improvement
export PATH="/usr/lib/ccache/bin/:$PATH" # Install ccache package first.
export MAKEFLAGS="-j12" 		 # Change 12 to the number of your CPU threads.
export BUILDDIR="/tmp/makepkg"           # Sets makepkg directory to tmpfs (RAM).

# Pacman aliases. Requires yay and pacman-contrib
alias install="yay -S --needed"
alias search="yay -Ss"
alias installed="pacman -Qs"                                                   
alias update="yay -Syu"
alias remove="sudo pacman -Rcns"                                       # Removes a package with and all of its dependencies (if unused by any other package)
alias cleanup="echo Unneeded: (pacman -Qdtq) && sudo paccache -r -k 0" # Displays unneeded packages and removes downloaded package files.

# Other aliases
#alias update-grub="sudo grub-mkconfig -o /boot/grub/grub.cfg" # Use this or the update-grub package
alias fish-config="vim ~/.config/fish/config.fish"             # Opens this config file.
alias trim="sudo fstrim --verbose --all" 		       # Trim your nvme drive. You should enable fstrim.timer instead.
alias archivezstd="tar --zstd --verbose -cf"                   # Create a .zstd archive.
alias btop="btop --utf-force" 				       # Fixes UTF error for btop.

#thefuck --alias | source
