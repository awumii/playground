#source /usr/share/cachyos-fish-config/cachyos-config.fish
# ~/.config/fish/config.fish

# Remove the greeting :(
#set -U fish_greeting

# Building speed improvement
#export PATH="/usr/lib/ccache/bin/:$PATH" # Install ccache and follow this: https://wiki.archlinux.org/title/Ccache#Enable_ccache_for_makepkg
#export MAKEFLAGS="-j12" 		             # Change 12 to the number of your CPU threads.
#export BUILDDIR="/tmp/makepkg"           # Sets the makepkg directory to tmpfs (RAM).

# Pacman aliases. Requires yay and pacman-contrib
alias install="yay -S --needed"
alias search="yay -Ss"
alias installed="pacman -Qs"                                                   
alias update="yay"
alias remove="sudo pacman -Rcns"                                       # Removes a package with and all of its dependencies (if unused by any other package)
alias cleanup="echo Unneeded: (pacman -Qdtq) && sudo paccache -r -k 0" # Displays unneeded packages and removes downloaded package files.

# Other aliases
#alias update-grub="sudo grub-mkconfig -o /boot/grub/grub.cfg" # Use this or the update-grub package
alias fish-config="vim ~/.config/fish/config.fish"             # Opens this config file.
alias trim="sudo fstrim --verbose --all" 		       # Trim your nvme drive. You should enable fstrim.timer instead.
alias archivezstd="tar --zstd --verbose -cf"                   # Create a .zstd archive.
alias btop="btop --utf-force" 				       # Fixes UTF error for btop.
alias killwine="killall wineserver -9 & killall winedevice.exe -9 & killall Xwayland -9"

export GAMEID=0
alias umu="WINEPREFIX=/home/admin/Dokumenty/UMU/prefix PROTONPATH=/home/admin/Dokumenty/UMU/proton umu-run"

alias jre8="/usr/lib/jvm/java-8-openjdk/jre/bin/java -Xms4096M -Xmx4096M -XX:+AlwaysPreTouch -XX:+DisableExplicitGC -XX:+ParallelRefProcEnabled -XX:+PerfDisableSharedMem -XX:+UnlockExperimentalVMOptions -XX:+UseG1GC -XX:G1HeapRegionSize=8M -XX:G1HeapWastePercent=5 -XX:G1MaxNewSizePercent=40 -XX:G1MixedGCCountTarget=4 -XX:G1MixedGCLiveThresholdPercent=90 -XX:G1NewSizePercent=30 -XX:G1RSetUpdatingPauseTimePercent=5 -XX:G1ReservePercent=20 -XX:InitiatingHeapOccupancyPercent=15 -XX:MaxGCPauseMillis=200 -XX:MaxTenuringThreshold=1 -XX:SurvivorRatio=32 -Dusing.aikars.flags=https://mcflags.emc.gs -Daikars.new.flags=true -jar"
#thefuck --alias | source
# overwrite greeting
# potentially disabling fastfetch
#function fish_greeting
#    # smth smth
#end
