#!/bin/bash
sudo add-apt-repository ppa:noobslab/themes && sudo apt-get update
sudo apt install arc-theme
sudo add-apt-repository universe
sudo apt install gnome-tweak-tool
sudo add-apt-repository ppa:varlesh-l/papirus-pack
sudo add-apt-repository ppa:noobslab/icons && sudo apt-get update
sudo apt-get install arc-icons
sudo add-apt-repository ppa:papirus/papirus && sudo apt-get update
sudo apt install papirus-icon-theme
sudo apt install gnome-shell-extensions
sudo snap install spotify gimp vlc virtualbox handbrake-jz
sudo snap install slack --classic
sudo apt-get install shutter
sudo add-apt-repository ppa:webupd8team/atom
sudo apt update; sudo apt install atom
sudo apt-add-repository -y ppa:teejee2008/ppa
sudo apt-get install timeshift
sudo apt install neofetch

dconf write /org/gnome/desktop/interface/gtk-theme 'Arc-Darker'
dconf write /org/gnome/desktop/interface/icon-theme 'Papirus-Dark'
dconf write /org/gnome/mutter/workspaces-only-on-primary false
dconf write /org/gnome/mutter/dynamic-workspaces true
dconf write /org/gnome/desktop/wm/preferences/button-layout 'close,minimize,maximize:'
dconf write /org/gnome/desktop/interface/clock-show-date true
dconf write /org/gnome/shell/extensions/dash-to-dock/dock-fixed false
dconf write /org/gnome/shell/extensions/dash-to-dock/dash-max-icon-size 32

