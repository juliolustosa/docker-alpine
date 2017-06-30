#!/bin/sh
set -e

## Create a user for the web app.
addgroup -g 9999 $USER
adduser -u 9999 -G $USER -S -g "Application" $USER
mkdir -p /home/$USER/.ssh
chmod 700 /home/$USER/.ssh
chown $USER:$USER /home/$USER/.ssh