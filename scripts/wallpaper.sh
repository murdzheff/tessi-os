#!/bin/bash

set -ouex pipefail

cp /tmp/scripts/files/5275499.jpg /usr/share/backgrounds/default.png


# Assume SOURCE_IMAGE is passed as the first argument or set as an environment variable

FOLDER="/usr/share/backgrounds/tiles"

# Check if the folder exists
if [ ! -d "$FOLDER" ]; then
  echo "Folder does not exist. Creating it..."
  mkdir -p "$FOLDER"
  echo "Folder tiles created: $FOLDER"
else
  echo "Folder tiles already exists: $FOLDER"
fi

  cp /tmp/scripts/files/5275499.jpg /usr/share/backgrounds/tiles/default_blue.jpg

mkdir -p /etc/dconf/db/local.d/
echo -e "[org/gnome/desktop/background]\npicture-uri='file:///usr/share/backgrounds/default.png'" | tee /etc/dconf/db/local.d/00-background

if command -v dconf >/dev/null 2>&1; then
    dconf update
else
    echo "dconf command not found. Please install it to proceed."
fi






