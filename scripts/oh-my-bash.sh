#!/bin/sh

set -ouex pipefail

#move the scel folder with all required
git clone https://github.com/ohmybash/oh-my-bash /tmp/scripts/skel/.oh-my-bash

cp -r /tmp/scripts/skel /etc/
