#!/bin/bash

set -ouex pipefail

RELEASE="$(rpm -E %fedora)"


### Install packages

# Packages can be installed from any enabled yum repo on the image.
# RPMfusion repos are available by default in ublue main images
# List of rpmfusion packages can be found here:
# https://mirrors.rpmfusion.org/mirrorlist?path=free/fedora/updates/39/x86_64/repoview/index.html&protocol=https&redirect=1

# this installns a package from fedora repos
# Define an array of package names
packages=(
    papirus-icon-theme
    remmina
    kitty
    yum-utils
    nss-tools
    gparted
    foliate
    freerdp
    neovim
    webkit2gtk3
    htop
    afetch
    # Add more packages as needed
)

# Loop through the array and install each package
for package in "${packages[@]}"; do
    echo "Installing $package..."
    rpm-ostree install "$package"
    if [ $? -eq 0 ]; then
        echo "$package installed successfully."
    else
        echo "Failed to install $package."
    fi
done

# this would install a package from rpmfusion
# rpm-ostree install vlc

#custom scripts

bash /tmp/scripts/wallpaper.sh

#### Example for enabling a System Unit File

systemctl enable podman.socket
