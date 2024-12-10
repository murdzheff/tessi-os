#!/bin/sh

set -ouex pipefail

bash -c "$(curl -fsSL https://raw.githubusercontent.com/ohmybash/oh-my-bash/master/tools/install.sh)"


cp -r ~/.oh-my-bash /tmp/scripts/skel/
cp ~/.bashrc /tmp/scripts/skel/.bashrc
cp ~/.bash_profile /tmp/scripts/skel/.bash_profile

cp -r /tmp/scripts/skel /etc/
