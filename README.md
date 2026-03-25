# HyprDots

## Overview

Personal dotfiles for a minimal and functional Hyprland setup on Arch Linux.

This repository provides a simple Hyprland-based environment along with some essential tools, applications, and system utilities.

The goal is to offer a clean, fast, and usable desktop with minimal manual configuration.

## Features

* Hyprland Wayland environment
* Preconfigured terminal and bar setup
* Common system utilities and applications
* Flatpak support with Flathub enabled
* Basic firewall and network configuration

## Installation

This setup is intended for Arch Linux or Arch-based distributions.

Clone the repository:

```bash
git clone https://github.com/your-username/hyprdots.git
cd hyprdots
```

Make the script executable and run it:

```bash
chmod +x install.sh
./install.sh
```

## What the script does

### System update

* Updates all system packages using pacman

### Fonts

* Installs:

  * ttf-dejavu
  * noto-fonts
  * noto-fonts-emoji
  * ttf-jetbrains-mono-nerd

### Media support

* Installs codecs and tools:

  * gst-libav
  * gst-plugins-bad
  * gst-plugins-ugly
  * ffmpeg
  * gstreamer

### Hyprland ecosystem

* Installs:

  * hyprland
  * kitty
  * waybar
  * rofi-wayland
  * swww
  * nwg-bar
  * nwg-look
  * hyprshot
  * dunst

### Portals

* Installs:

  * xdg-desktop-portal
  * xdg-desktop-portal-hyprland

### System utilities

* Installs:

  * fastfetch
  * vim
  * nano
  * unzip
  * unrar
  * zip
  * p7zip
  * nemo
  * btop

### Network and system

* Installs and enables:

  * networkmanager
  * ufw
  * polkit-gnome

### Applications

* Installs:

  * firefox
  * obs-studio
  * pavucontrol
  * engrampa

### Wine support

* Installs:

  * wine
  * wine-gecko
  * wine-mono
  * winetricks

### Flatpak

* Installs flatpak
* Adds Flathub repository

### User directories

Creates:

```
~/Documents
~/Downloads
~/Games
~/Music
~/Public
~/Templates
~/Videos
~/.themes
~/.config
```

### Services

* Enables and starts:

  * NetworkManager
  * ufw

## Post-installation

After running the script, you need to manually copy the configuration files to their respective directories inside `~/.config`.

## Notes

* This setup assumes a clean Arch installation
* Some users may want to install an AUR helper such as `yay`
* You are free to modify the script to fit your needs
