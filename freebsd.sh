#!/bin/bash
#!/bin/zsh
# Version 1.1
# For FreeBSD only
# Run this script as superuser

## Starting script

## Updating the repository
echo "Updating the repository"
pkg update
pkg install -y sudo aria2 neofetch neovim
## Enabling shared memory support
echo "Enabling shared memory support"
sysctl kern.ipc.shm_allow_removed=1
echo "kern.ipc.shm_allow_removed=1" >> /etc/sysctl.conf
clear
## Updating the system
freebsd-update fetch
freebsd-update install
clear
## Installing packages
echo "Installing packages"
pkg install -y chromium kate neofetch htop nano xorg xfce4 xfce4-goodies
## Configuring the system
echo "moused_enable="YES"" >> /etc/rc.conf
echo "dbus_enable="YES"" >> /etc/rc.conf
echo "hald_enable="YES"" >> /etc/rc.conf
echo "slim_enable="YES"" >> /etc/rc.conf
reboot

