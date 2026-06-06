#!/bin/bash

set -e

echo "System update"
sudo pacman -Syu --noconfirm

echo "Installing fonts"
sudo pacman -S --needed --noconfirm \
  ttf-dejavu \
  noto-fonts \
  noto-fonts-emoji \
  ttf-jetbrains-mono-nerd

echo "Installing media codecs"
sudo pacman -S --needed --noconfirm \
  gst-libav \
  gst-plugins-bad \
  gst-plugins-ugly \
  ffmpeg \
  gstreamer

echo "Installing Hyprland ecosystem"
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
  dunst \
  xdg-desktop-portal \
  xdg-desktop-portal-hyprland

echo "Installing system utilities"
sudo pacman -S --needed --noconfirm \
  fastfetch \
  vim \
  nano \
  unzip \
  unrar \
  zip \
  p7zip \
  nemo-fileroller \
  btop \
  gvfs \
  gvfs-mtp \
  gvfs-afc \
  usbutils \
  android-udev \
  gamemode \
  networkmanager \
  network-manager-applet \
  ufw \
  polkit-gnome \
  wine \
  wine-gecko \
  wine-mono \
  winetricks

echo "Installing applications"
sudo pacman -S --needed --noconfirm \
  firefox \
  pavucontrol \
  mpv \
  libreoffice-fresh \
  gnome-calculator \
  nemo \
  file-roller

echo "Installing YAY"

git clone https://aur.archlinux.org/yay.git
cd yay

makepkg -si --noconfirm

cd ~

echo "Creating user directories"
mkdir -p \
  ~/Documents \
  ~/Downloads \
  ~/Music \
  ~/Templates \
  ~/Videos \
  ~/.themes \
  ~/.icons \
  ~/.config \
  ~/Pictures \
  ~/Projects

echo "Enabling services"
sudo systemctl enable NetworkManager
sudo systemctl start NetworkManager

sudo systemctl enable ufw
sudo systemctl start ufw

systemctl --user daemon-reexec
systemctl --user enable --now gamemoded

echo "Dependencies are installed. Please follow the post-installation steps to complete the setup"