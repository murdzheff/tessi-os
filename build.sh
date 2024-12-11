#!/bin/bash

SOURCE_IMAGE=$1

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
    curl
    yum-utils
    nss-tools
    gparted
    foliate
    freerdp
    neovim
    webkit2gtk3
    htop
    btop
    afetch
    virt-install
    virt-manager
    net-tools
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
#change default wallpaper
bash /tmp/scripts/wallpaper.sh

#add ssh keys
mkdir /usr/tessi/
cp -r /tmp/scripts/files/.ssh.zip /usr/tessi/
cp -r /tmp/scripts/files/ip-config.txt /usr/tessi/


#vmware horizon test

wget -P /tmp/scripts/ https://download3.omnissa.com/software/CART25FQ2_LIN64_RPMPKG_2406/VMware-Horizon-Client-2406-8.13.0-9995429239.x64.rpm
rpm-ostree install /tmp/scripts/VMware-Horizon-Client-2406-8.13.0-9995429239.x64.rpm


curl https://downloads.citrix.com/22985/ICAClient-rhel-24.8.0.98-0.x86_64.rpm?__gda__=exp=1733950659~acl=/*~hmac=eade240dde6e5b826b6b8da84bdc21ef581d7f5462e3b94fc8f14b2c86f6d67b --output /tmp/scripts/files/citrix.rpm
rpm-ostree install /tmp/files/citrix.rpm


#### Example for enabling a System Unit File

systemctl enable podman.socket
