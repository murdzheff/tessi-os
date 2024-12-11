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






