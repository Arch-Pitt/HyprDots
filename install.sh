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
  btop

echo "INSTALLING NETWORK / SYSTEM"
sudo pacman -S --needed --noconfirm \
  networkmanager \
  ufw \
  polkit-gnome

echo "INSTALLING APPLICATIONS"
sudo pacman -S --needed --noconfirm \
  firefox \
  obs-studio \
  pavucontrol \
  engrampa

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
  ~/.config \
  ~/Pictures

echo "COPYING USER FILES"

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"

if [ -d "$SCRIPT_DIR/configs" ]; then
  echo "Copying configs..."
  cp -rn "$SCRIPT_DIR/configs/"* ~/.config/
fi

if [ -d "$SCRIPT_DIR/themes" ]; then
  echo "Copying themes..."
  cp -rn "$SCRIPT_DIR/themes/"* ~/.themes/
fi

if [ -d "$SCRIPT_DIR/Pictures" ]; then
  echo "Copying Pictures..."
  cp -rn "$SCRIPT_DIR/Pictures/"* ~/Pictures/
fi

echo "SETTING WALLPAPER"

WALLPAPER="$HOME/Pictures/Wallpapers/DarkFlow.jpg"

if [ -f "$WALLPAPER" ]; then
  if pgrep -x "Hyprland" > /dev/null; then
    swww init
    sleep 1
    swww img "$WALLPAPER"
  else
    echo "Hyprland not running. Wallpaper will be applied on login."
  fi
else
  echo "Wallpaper not found: $WALLPAPER"
fi

echo "ENABLING SERVICES"
sudo systemctl enable NetworkManager
sudo systemctl start NetworkManager

sudo systemctl enable ufw
sudo systemctl start ufw

echo "DEPENDENCIES ARE INSTALLED. PLEASE COPY CONFIG FOLDERS TO THE APPROPRIATE DIRECTORIES."