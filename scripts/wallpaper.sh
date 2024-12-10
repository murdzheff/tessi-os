#!/bin/sh

set -ouex pipefail

cp /tmp/scripts/files/5275499.jpg /usr/share/backgrounds/default.png

#!/bin/bash

# Assume SOURCE_IMAGE is passed as the first argument or set as an environment variable
SOURCE_IMAGE=${1:-${SOURCE_IMAGE}}

# Template for the if statement
if [ "$SOURCE_IMAGE" == "cinnamon-main" ]; then
  echo "Special configuration for cinnamon-main"
  cp /tmp/scripts/files/5275499.jpg /usr/share/backgrounds/tiles/default_blue.jpg
  # Add commands specific to 'cinnamon-main' here
elif [ "$SOURCE_IMAGE" == "kinno-main" ]; then
  echo "Special configuration for kinno-main"
  # Add commands specific to 'kinno-main' here
elif [ "$SOURCE_IMAGE" == "blue-main" ]; then
  echo "Special configuration for blue-main"
  # Add commands specific to 'blue-main' here
else
  echo "Unknown SOURCE_IMAGE: $SOURCE_IMAGE"
  # Handle unknown or default cases here
fi




