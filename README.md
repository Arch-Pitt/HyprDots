# HyprDots

Personal dotfiles for a minimal, clean, and functional Hyprland setup on Arch Linux.

This repository provides a ready-to-use Wayland environment with a focus on simplicity and usability, requiring minimal manual configuration.

---

## Features

* **Hyprland** Wayland compositor
* Lockscreen with **hyprlock**
* Preconfigured **kitty**, **waybar**, and **rofi**
* Wallpaper launcher with **rofi** and **awwww**
* Minimal and clean UI/UX
* **Flatpak** with Flathub enabled
* **Yay** for AUR packages
* Basic firewall and networking setup
* **GameMode** for automatic performance and optimization during gaming sessions
* Ready-to-use desktop environment

---

## Preview

### Workspace

![Workspace](https://raw.githubusercontent.com/Arch-Pitt/HyprDots/0a137e7cb02a252665fc5e34a6af8588384f1ed4/.ignore/workspace.png)

### Terminal

![Terminal](https://raw.githubusercontent.com/Arch-Pitt/HyprDots/0a137e7cb02a252665fc5e34a6af8588384f1ed4/.ignore/terminal.png)

### Rofi

![Rofi](https://raw.githubusercontent.com/Arch-Pitt/HyprDots/0a137e7cb02a252665fc5e34a6af8588384f1ed4/.ignore/rofi.png)

### Wallpicker

![Wallpicker](https://github.com/Arch-Pitt/HyprDots/blob/5e03303055ec8bfe84b5b4ac847db9604bcc6fbb/.ignore/wallpicker.gif)


### NWG Bar

![NWG Bar](https://raw.githubusercontent.com/Arch-Pitt/HyprDots/0a137e7cb02a252665fc5e34a6af8588384f1ed4/.ignore/nwg-bar.png)

### GTK Theme

![GTK Theme](https://raw.githubusercontent.com/Arch-Pitt/HyprDots/0a137e7cb02a252665fc5e34a6af8588384f1ed4/.ignore/gtktheme.png)

---

## Installation

> ⚠️ This setup is intended for **Arch Linux or Arch-based distributions only**

Install dependencies:

```bash
sudo pacman -S --needed git base-devel
```

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
* gvfs
* gvfs-mtp
* android-udev
* gamemode

### Network and system

Installs and enables:

* NetworkManager
* ufw
* polkit-gnome

### Applications

Installs:

* firefox
* pavucontrol
* engrampa
* mpv

### Wine support

Installs:

* wine
* wine-gecko
* wine-mono
* winetricks

### Flatpak

* Installs Flatpak
* Adds Flathub repository

### AUR

* Installs yay

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

## Keybindings

> Main modifier: `SUPER` (Windows key)

### General

| Key | Action |
|-----|--------|
| SUPER + Q | Open terminal |
| SUPER + E | Open file manager |
| SUPER + R | Open app launcher |
| SUPER + C | Close active window |
| SUPER + V | Toggle floating |
| SUPER + F | Fullscreen |
| SUPER + L | Lock screen |
| SUPER + P | Power menu |
| SUPER + SHIFT + W | Wallpaper picker |
| SUPER + SHIFT + S | Screenshot (region) |

---

### Window Management

| Key | Action |
|-----|--------|
| SUPER + ←/→/↑/↓ | Move focus |
| SUPER + SHIFT + ←/→/↑/↓ | Move window |
| SUPER + J | Toggle split layout |

---

### Workspaces

| Key | Action |
|-----|--------|
| SUPER + 1-0 | Switch workspace |
| SUPER + SHIFT + 1-0 | Move window to workspace |

---

### GameMode

Run applications with improved performance using GameMode:

```bash
gamemoderun <application>
```
GameMode automatically applies system optimizations while the application is running and stops when it closes.

Example:

```bash
gamemoderun steam
```

Steam integration:

You can enable GameMode for individual games on Steam:

1. Open Steam
2. Right-click the game → Properties
3. In Launch Options, add:

```bash
gamemoderun %command%
```

This will automatically run the game with GameMode enabled.

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

Before using the wallpaper launcher, ensure the script has execute permissions.

```bash
chmod +x ~/.config/rofi/wallpicker.sh
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
* Feel free to modify the script to fit your needs
