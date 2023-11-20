#!/bin/bash
NAME="firas"

# Create user 'firas' with sudo rights
useradd -m $NAME
echo "$NAME:password" | chpasswd
usermod -aG sudo $NAME

# Set default shell to bash
chsh -s /bin/bash firas

# Modify .bashrc for user 'firas'
echo "alias gcc='/gcc.sh'" >> /home/$NAME/.bashrc
echo "PS1='\[\e]0;\u: \w\a\]${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '" >> /home/$NAME/.bashrc

# Apply changes
chown $NAME:$NAME /gcc.sh
chown $NAME:$NAME /home/$NAME/.bashrc
