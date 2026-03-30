# HyprDots

Personal dotfiles for a minimal, clean, and functional Hyprland setup on Arch Linux.

This repository provides a ready-to-use Wayland environment with a focus on simplicity, performance, and usability, requiring minimal manual configuration.

---

## Features

* Hyprland Wayland compositor
* Preconfigured terminal, bar, and launcher
* Minimal and clean UI/UX
* Flatpak with Flathub enabled
* Basic firewall and networking setup
* Ready-to-use desktop environment

---

## Preview

### Workspace

![Workspace](https://raw.githubusercontent.com/Arch-Pitt/HyprDots/0a137e7cb02a252665fc5e34a6af8588384f1ed4/.ignore/workspace.png)

### Terminal

![Terminal](https://raw.githubusercontent.com/Arch-Pitt/HyprDots/0a137e7cb02a252665fc5e34a6af8588384f1ed4/.ignore/terminal.png)

### Rofi

![Rofi](https://raw.githubusercontent.com/Arch-Pitt/HyprDots/0a137e7cb02a252665fc5e34a6af8588384f1ed4/.ignore/rofi.png)

### NWG Bar

![NWG Bar](https://raw.githubusercontent.com/Arch-Pitt/HyprDots/0a137e7cb02a252665fc5e34a6af8588384f1ed4/.ignore/nwg-bar.png)

### GTK Theme

![GTK Theme](https://raw.githubusercontent.com/Arch-Pitt/HyprDots/0a137e7cb02a252665fc5e34a6af8588384f1ed4/.ignore/gtktheme.png)

---

## Installation

> ⚠️ This setup is intended for **Arch Linux or Arch-based distributions only**

Clone the repository:

```bash
git clone https://github.com/Arch-Pitt/HyprDots.git
cd HyprDots
```

Make the installer executable and run it:

```bash
chmod +x install.sh
./install.sh
```

---

## What the install script does

### System update

* Updates all system packages using `pacman`

### Fonts

Installs:

* ttf-dejavu
* noto-fonts
* noto-fonts-emoji
* ttf-jetbrains-mono-nerd

### Media support

Installs:

* gst-libav
* gst-plugins-bad
* gst-plugins-ugly
* ffmpeg
* gstreamer

### Hyprland ecosystem

Installs:

* hyprland
* kitty
* waybar
* rofi-wayland
* swww
* nwg-bar
* nwg-look
* hyprshot
* hypridle
* hyprlock
* dunst

### Portals

Installs:

* xdg-desktop-portal
* xdg-desktop-portal-hyprland

### System utilities

Installs:

* fastfetch
* vim
* nano
* unzip / zip / unrar / p7zip
* nemo
* btop

### Network and system

Installs and enables:

* NetworkManager
* ufw
* polkit-gnome

### Applications

Installs:

* firefox
* obs-studio
* pavucontrol
* engrampa

### Wine support

Installs:

* wine
* wine-gecko
* wine-mono
* winetricks

### Flatpak

* Installs Flatpak
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

Enables:

* NetworkManager
* ufw

---

## Post-installation

After the installation script finishes, you need to manually move the configuration files to the correct directories.

- Move everything inside the `config` folder to `~/.config`
- Move everything inside the `themes` folder to `~/.themes`
- Move everything inside the `pictures` folder to your home directory (`~/`)

You can do this with:

```bash
cp -r config/* ~/.config/
cp -r themes/* ~/.themes/
cp -r pictures/* ~/
```
---

## Final Steps

1. Reboot the system:
   ```bash
   sudo reboot
   ```

2. Log in through a TTY (Ctrl + Alt + F2, for example)

3. Start Hyprland:
   ```bash
   start-hyprland
   ```
---

## Notes

* This setup assumes a **clean Arch installation**
* You may want to install an AUR helper like:

  ```bash
  yay
  ```
* Feel free to modify the script to fit your needs
