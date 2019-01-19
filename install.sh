#!/bin/bash
if [ "$EUID" -ne 0 ]
  then echo "Please run as root"
  exit
fi
add-apt-repository ppa:noobslab/themes  ppa:varlesh-l/papirus-pack ppa:noobslab/icons ppa:papirus/papirus ppa:webupd8team/atom ppa:teejee2008/ppa -y
apt-get update &&  apt-get upgrade -y 
apt install arc-theme gnome-tweak-tool arc-icons papirus-icon-theme gnome-shell-extensions shutter atom timeshift neofetch git exfat-utils openvpn screen -y
apt install nmap hashcat -y
snap install spotify gimp vlc virtualbox handbrake-jz
snap install slack --classic

#dconf write /org/gnome/desktop/interface/gtk-theme 'Arc-Darker'
#dconf write /org/gnome/desktop/interface/icon-theme 'Papirus-Dark'
#dconf write /org/gnome/mutter/workspaces-only-on-primary false
#dconf write /org/gnome/mutter/dynamic-workspaces true
#dconf write /org/gnome/desktop/wm/preferences/button-layout 'close,minimize,maximize:'
#dconf write /org/gnome/desktop/interface/clock-show-date true
#dconf write /org/gnome/shell/extensions/dash-to-dock/dock-fixed false
#dconf write /org/gnome/shell/extensions/dash-to-dock/dash-max-icon-size 32

while read p; do
  gsettings set $p
done <gsettings.txt
