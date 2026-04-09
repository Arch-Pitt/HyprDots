#!/bin/bash

set -e

echo "SYSTEM UPDATE"
sudo pacman -Syu --noconfirm

echo "INSTALLING FONTS"
sudo pacman -S --needed --noconfirm \
  ttf-dejavu \
  noto-fonts \
  noto-fonts-emoji \
  ttf-jetbrains-mono-nerd

echo "INSTALLING MEDIA"
sudo pacman -S --needed --noconfirm \
  gst-libav \
  gst-plugins-bad \
  gst-plugins-ugly \
  ffmpeg \
  gstreamer

echo "INSTALLING HYPRLAND ECOSYSTEM"
sudo pacman -S --needed --noconfirm \
  hyprland \
  kitty \
  waybar \
  rofi-wayland \
  swww \
  nwg-bar \
  nwg-look \
  hyprshot \
  hyprlock \
  hypridle \
  dunst

echo "INSTALLING PORTALS"
sudo pacman -S --needed --noconfirm \
  xdg-desktop-portal \
  xdg-desktop-portal-hyprland

echo "INSTALLING SYSTEM UTILITIES"
sudo pacman -S --needed --noconfirm \
  fastfetch \
  vim \
  nano \
  unzip \
  unrar \
  zip \
  p7zip \
  nemo \
  btop \
  gvfs \
  gvfs-mtp \
  android-udev \
  gamemode

echo "INSTALLING NETWORK / SYSTEM"
sudo pacman -S --needed --noconfirm \
  networkmanager \
  network-manager-applet \
  ufw \
  polkit-gnome \

echo "INSTALLING APPLICATIONS"
sudo pacman -S --needed --noconfirm \
  firefox \
  pavucontrol \
  engrampa \
  mpv

echo "INSTALLING WINE"
sudo pacman -S --needed --noconfirm \
  wine \
  wine-gecko \
  wine-mono \
  winetricks

echo "INSTALLING FLATPAK"
sudo pacman -S --needed --noconfirm flatpak

echo "ADDING FLATHUB REPOSITORY"
sudo flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

echo "INSTALLING YAY (AUR HELPER)"

git clone https://aur.archlinux.org/yay.git
cd yay

makepkg -si --noconfirm

cd ~

echo "CREATING USER DIRECTORIES"
mkdir -p \
  ~/Documents \
  ~/Downloads \
  ~/Games \
  ~/Music \
  ~/Public \
  ~/Templates \
  ~/Videos \
  ~/.themes \
  ~/.icons \
  ~/.config \
  ~/Pictures

echo "ENABLING SERVICES"
sudo systemctl enable NetworkManager
sudo systemctl start NetworkManager

sudo systemctl enable ufw
sudo systemctl start ufw

systemctl --user daemon-reexec
systemctl --user enable --now gamemoded

echo "DEPENDENCIES ARE INSTALLED. PLEASE FOLLOW THE POST-INSTALLATION STEPS TO COMPLETE THE SETUP"