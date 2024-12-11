#!/bin/sh
# Check if SOURCE_IMAGE is set, and if not, use a default value
: ${SOURCE_IMAGE:="kinno-main"}  # Default to "default-image" if SOURCE_IMAGE is not set

echo "Source image: $SOURCE_IMAGE"


set -ouex pipefail

cp /tmp/scripts/files/5275499.jpg /usr/share/backgrounds/default.png


# Assume SOURCE_IMAGE is passed as the first argument or set as an environment variable
SOURCE_IMAGE=${1:-${SOURCE_IMAGE}}


if [ "$SOURCE_IMAGE" == "cinnamon-main" ]; then
  echo "Special configuration for cinnamon-main"
  cp /tmp/scripts/files/5275499.jpg /usr/share/backgrounds/tiles/default_blue.jpg

elif [ "$SOURCE_IMAGE" == "kinno-main" ]; then
  echo "Special configuration for kinno-main"

elif [ "$SOURCE_IMAGE" == "blue-main" ]; then
  echo "Special configuration for blue-main"

else
  echo "Unknown SOURCE_IMAGE: $SOURCE_IMAGE"
fi




