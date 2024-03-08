#!/bin/bash

# List of packages to install
packages=(
    tightvncserver
    novnc
    net-tools
    nano
    vim
    neovim
    curl
    wget
    firefox
    git
    sudo
    tilix
    gnome
    fish
    kubuntu-desktop
    neofetch
    gnome
    gnome-tweaks
    xfce4-appearance-settings
    arc-theme
    numix-gtk-themes
    papirus-icon-theme
    xfwm4-themes
    variety
    plank
    compton
    conky
    fonts-firacode
    vertex-theme
    adapta-gtk-theme
    breeze-cursor-theme
    dmz-cursor-theme
    splashy
    lxappearance
    xfce4-terminal
    nitrogen
    feh
    breeze-cursor-theme
    xfdesktop4
    fonts-ubuntu
    xfce4-whiskermenu-plugin
    xfce4-windowck-plugin
    konsole
    gnome-shell-extension-dash-to-dock
    wallpaperdownloader
    gnome-backgrounds
    ubuntu-wallpapers
    unsplash-wallpaper
    update-manager-core
    yaru-theme-gtk
    obs-studio
    xfce4-whiskermenu-plugin
    xfce4-weather-plugin
    xfce4-systemload-plugin
    python3
    python3-pip
)

# Arrays to store installed and failed packages
installed_packages=()
failed_packages=()

# Loop through each package and install it
for package in "${packages[@]}"; do
    echo "Installing $package..."
    if sudo apt install -y $package; then
        installed_packages+=("$package")
    else
        failed_packages+=("$package")
    fi
done

# Print installed packages
echo "Installed packages:"
for package in "${installed_packages[@]}"; do
    echo "- $package"
done

# Print failed packages
echo "Failed to install packages:"
for package in "${failed_packages[@]}"; do
    echo "- $package"
done
