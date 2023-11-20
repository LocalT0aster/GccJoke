#!/bin/bash

# Create user with sudo rights
adduser -D -s /bin/bash $UNAME
echo "$UNAME:password" | chpasswd
addgroup $UNAME wheel

# Set default shell to bash
chsh -s /bin/bash $UNAME

# Modify .bashrc for created user
echo "alias gcc='/gcc.sh'" >> /home/$UNAME/.bashrc
echo "PS1='\[\e]0;\u: \w\a\]${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '" >> /home/$UNAME/.bashrc

# Apply changes
chown $UNAME:$UNAME /gcc.sh
chown $UNAME:$UNAME /home/$UNAME/.bashrc
