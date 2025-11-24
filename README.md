<div align="center">

```
███╗   ███╗██╗██████╗ ███╗   ██╗██╗ ██████╗ ██╗  ██╗████████╗
████╗ ████║██║██╔══██╗████╗  ██║██║██╔════╝ ██║  ██║╚══██╔══╝
██╔████╔██║██║██║  ██║██╔██╗ ██║██║██║  ███╗███████║   ██║   
██║╚██╔╝██║██║██║  ██║██║╚██╗██║██║██║   ██║██╔══██║   ██║   
██║ ╚═╝ ██║██║██████╔╝██║ ╚████║██║╚██████╔╝██║  ██║   ██║   
╚═╝     ╚═╝╚═╝╚═════╝ ╚═╝  ╚═══╝╚═╝ ╚═════╝ ╚═╝  ╚═╝   ╚═╝   
        ██████╗  ██████╗ ████████╗███████╗
        ██╔══██╗██╔═══██╗╚══██╔══╝██╔════╝
        ██║  ██║██║   ██║   ██║   ███████╗
        ██║  ██║██║   ██║   ██║   ╚════██║
        ██████╔╝╚██████╔╝   ██║   ███████║
        ╚═════╝  ╚═════╝    ╚═╝   ╚══════╝
```

### 🦉 *Dotfiles that code by night*

[![Arch Linux](https://img.shields.io/badge/Arch_Linux-1793D1?style=for-the-badge&logo=arch-linux&logoColor=white)](https://archlinux.org/)
[![Hyprland](https://img.shields.io/badge/Hyprland-58E1FF?style=for-the-badge&logo=wayland&logoColor=black)](https://hyprland.org/)
[![License](https://img.shields.io/badge/License-MIT-purple?style=for-the-badge)](./LICENSE)

*A cosmic collection of configuration files for Arch Linux + Hyprland*

[Screenshots](#-screenshots) • [Installation](#-installation) • [Features](#-features) • [Keybinds](#%EF%B8%8F-keybindings)

</div>

---

## 🌌 Overview

Dotfiles repository featuring a celestial-themed Hyprland setup with purple-to-pink gradients, smooth animations, and cyberpunk aesthetics. Designed for productivity by night and beauty always.

## ✨ Features

### Window Manager
- **Hyprland** - Tiling Wayland compositor with smooth animations
- **Waybar** - Customizable status bar with modules
- **Rofi** - Application launcher and window switcher
- **Dunst** - Notification daemon with celestial styling

### Terminal & Shell
- **Kitty** - GPU-accelerated terminal emulator
- **Bash/Zsh** - Shell with custom prompt and aliases
- **Starship** (optional) - Minimal, blazing-fast prompt

### Theming
- **Purple → Pink** gradient color scheme
- **Glassmorphism** effects with transparency and blur
- **Cyberpunk** inspired accents
- **Noctua** branded everywhere 🦉

### Utilities
- **Screenshot tools** - Automated screenshot scripts
- **Volume/Brightness** - Custom control scripts
- **Startup apps** - Auto-launch essential applications
- **Workspace management** - Smart workspace switching

## 📸 Screenshots

> Coming soon! Add your rice screenshots here

## 🚀 Installation

### Prerequisites

```bash
# Arch Linux with base installation
# Git installed
sudo pacman -S git
```

### Quick Install

```bash
# Clone repository
git clone https://github.com/NoctuaCoder/midnight-dots.git
cd midnight-dots

# Run installation script
chmod +x install.sh
./install.sh
```

### Manual Installation

```bash
# Backup existing configs
cp -r ~/.config ~/.config.backup

# Copy configs
cp -r .config/* ~/.config/
cp -r scripts ~/.local/bin/
cp .bashrc ~/.bashrc  # or .zshrc

# Install required packages
./scripts/install-packages.sh

# Reload configs
hyprctl reload
```

## 📦 Packages

### Essential
```bash
hyprland waybar kitty rofi dunst
```

### Optional but Recommended
```bash
firefox thunar grim slurp wl-clipboard
brightnessctl playerctl pamixer
```

### Fonts
```bash
ttf-jetbrains-mono-nerd ttf-font-awesome
```

Full package list in [`packages.txt`](./packages.txt)

## 🗂️ Structure

```
midnight-dots/
├── .config/
│   ├── hypr/              # Hyprland configs
│   │   ├── hyprland.conf  # Main config
│   │   ├── keybinds.conf  # Keybindings
│   │   └── rules.conf     # Window rules
│   ├── waybar/            # Status bar
│   │   ├── config         # Waybar config
│   │   └── style.css      # Styling
│   ├── kitty/             # Terminal
│   │   └── kitty.conf     # Terminal config
│   ├── rofi/              # App launcher
│   │   └── config.rasi    # Rofi theme
│   └── dunst/             # Notifications
│       └── dunstrc        # Notification config
├── scripts/               # Utility scripts
│   ├── screenshot.sh      # Screenshot tool
│   ├── brightness.sh      # Brightness control
│   └── volume.sh          # Volume control
├── wallpapers/            # Wallpaper collection
├── install.sh             # Installation script
├── packages.txt           # Package list
└── README.md              # You are here
```

## ⌨️ Keybindings

### Window Management
| Key | Action |
|-----|--------|
| `SUPER + Q` | Close window |
| `SUPER + M` | Exit Hyprland |
| `SUPER + V` | Toggle floating |
| `SUPER + F` | Toggle fullscreen |
| `SUPER + Arrow` | Move focus |
| `SUPER + SHIFT + Arrow` | Move window |

### Applications
| Key | Action |
|-----|--------|
| `SUPER + Return` | Terminal (Kitty) |
| `SUPER + D` | App launcher (Rofi) |
| `SUPER + E` | File manager |
| `SUPER + B` | Browser |

### Workspaces
| Key | Action |
|-----|--------|
| `SUPER + 1-9` | Switch workspace |
| `SUPER + SHIFT + 1-9` | Move to workspace |
| `SUPER + Mouse scroll` | Cycle workspaces |

### Utilities
| Key | Action |
|-----|--------|
| `SUPER + SHIFT + S` | Screenshot area |
| `Print` | Screenshot full |
| `SUPER + L` | Lock screen |

Full keybind list in [`.config/hypr/keybinds.conf`](./.config/hypr/keybinds.conf)

## 🎨 Customization

### Change Color Scheme

Edit the color variables in:
- `~/.config/waybar/style.css` - Waybar colors
- `~/.config/hypr/hyprland.conf` - Border colors
- `~/.config/kitty/kitty.conf` - Terminal palette
- `~/.config/rofi/config.rasi` - Rofi theme

### Wallpaper

```bash
# Add your wallpaper to wallpapers/
cp your-wallpaper.png ~/midnight-dots/wallpapers/

# Update Hyprland config
echo "exec-once = hyprpaper" >> ~/.config/hypr/hyprland.conf
```

### Modify Keybinds

Edit `~/.config/hypr/keybinds.conf` and reload:
```bash
hyprctl reload
```

## 🔧 Troubleshooting

### Hyprland won't start
```bash
# Check logs
cat /tmp/hypr/$(ls -t /tmp/hypr/ | head -n 1)/hyprland.log

# Verify drivers (NVIDIA)
lspci -k | grep -A 2 -E "(VGA|3D)"
```

### Waybar not showing
```bash
# Kill and restart
pkill waybar && waybar &
```

### Audio not working
```bash
# Install pipewire
sudo pacman -S pipewire pipewire-pulse wireplumber
systemctl --user enable --now pipewire pipewire-pulse wireplumber
```

## 🤝 Contributing

Feel free to fork and customize! If you create something cool:
1. Fork the repository
2. Create your feature branch
3. Commit your changes
4. Open a pull request

## 📄 License

This project is licensed under the MIT License - see [LICENSE](./LICENSE) file.

## 🦉 Credits

**NoctuaCoder**  
*Coding through the night, configuring with passion*

- GitHub: [@NoctuaCoder](https://github.com/NoctuaCoder)
- Portfolio: [noctuacoder.github.io](https://noctuacoder.github.io/Noctua-profile.html/)

### Inspiration
- [r/unixporn](https://reddit.com/r/unixporn) - Rice inspiration
- [Hyprland Wiki](https://wiki.hyprland.org/) - Configuration guides
- Cyberpunk aesthetics and cosmic themes

<div align="center">

---

Made with 💜 and ☕ at midnight

**[⬆ back to top](#)**

</div>
