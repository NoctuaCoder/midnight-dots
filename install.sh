#!/usr/bin/env bash

# 🌙 Midnight Dots Installer
# A robust installer for the Midnight Dots Hyprland configuration

# Colors
RED='\033[0;31m'
GREEN='\033[0;32m'
BLUE='\033[0;34m'
PURPLE='\033[0;35m'
CYAN='\033[0;36m'
NC='\033[0m' # No Color

# Paths
CONFIG_DIR="$HOME/.config"
BACKUP_DIR="$HOME/.config/midnight-dots-backup-$(date +%Y%m%d-%H%M%S)"
LOG_FILE="install.log"

# Header
echo -e "${PURPLE}"
echo "███╗   ███╗██╗██████╗ ███╗   ██╗██╗ ██████╗ ██╗  ██╗████████╗"
echo "████╗ ████║██║██╔══██╗████╗  ██║██║██╔════╝ ██║  ██║╚══██╔══╝"
echo "██╔████╔██║██║██║  ██║██╔██╗ ██║██║██║  ███╗███████║   ██║   "
echo "██║╚██╔╝██║██║██║  ██║██║╚██╗██║██║██║   ██║██╔══██║   ██║   "
echo "██║ ╚═╝ ██║██║██████╔╝██║ ╚████║██║╚██████╔╝██║  ██║   ██║   "
echo "╚═╝     ╚═╝╚═╝╚═════╝ ╚═╝  ╚═══╝╚═╝ ╚═════╝ ╚═╝  ╚═╝   ╚═╝   "
echo -e "${NC}"
echo -e "${CYAN}Welcome to the Midnight Dots Installer! 🌙${NC}"
echo -e "${BLUE}This script will install configuration files and packages.${NC}"
echo ""

# Logging
exec > >(tee -a "$LOG_FILE") 2>&1

# Helper Functions
log() {
    echo -e "${GREEN}[INFO]${NC} $1"
}

error() {
    echo -e "${RED}[ERROR]${NC} $1"
}

warn() {
    echo -e "${PURPLE}[WARN]${NC} $1"
}

check_dependencies() {
    log "Checking dependencies..."
    if ! command -v git &> /dev/null; then
        error "Git is not installed. Please install git first."
        exit 1
    fi
}

backup_configs() {
    log "Backing up existing configurations..."
    mkdir -p "$BACKUP_DIR"
    
    configs=("hypr" "waybar" "kitty" "rofi" "dunst")
    
    for config in "${configs[@]}"; do
        if [ -d "$CONFIG_DIR/$config" ]; then
            log "Backing up $config..."
            cp -r "$CONFIG_DIR/$config" "$BACKUP_DIR/"
        fi
    done
    
    log "Backup created at $BACKUP_DIR"
}

install_packages() {
    log "Installing packages..."
    if [ -f "packages.txt" ]; then
        if command -v pacman &> /dev/null; then
            sudo pacman -S --needed - < packages.txt
        else
            warn "Pacman not found. Skipping package installation (Manual install required)."
        fi
    else
        warn "packages.txt not found. Skipping package installation."
    fi
}

copy_configs() {
    log "Copying configuration files..."
    mkdir -p "$CONFIG_DIR"
    
    cp -r .config/* "$CONFIG_DIR/"
    
    # Make scripts executable
    if [ -d "scripts" ]; then
        chmod +x scripts/*.sh
        mkdir -p "$HOME/.local/bin"
        cp scripts/*.sh "$HOME/.local/bin/"
    fi
    
    log "Configurations installed successfully!"
}

setup_fonts() {
    log "Setting up fonts..."
    # Placeholder for font installation logic
    log "Please ensure Nerd Fonts are installed."
}

main() {
    check_dependencies
    
    read -p "Do you want to proceed with installation? (y/n) " -n 1 -r
    echo
    if [[ ! $REPLY =~ ^[Yy]$ ]]; then
        log "Installation cancelled."
        exit 1
    fi
    
    backup_configs
    install_packages
    copy_configs
    setup_fonts
    
    echo ""
    echo -e "${PURPLE}✨ Installation Complete! ✨${NC}"
    echo -e "${CYAN}Please restart Hyprland to apply changes.${NC}"
    echo -e "${BLUE}Enjoy your Midnight Dots! 🦉${NC}"
}

main
