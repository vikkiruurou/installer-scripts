#!/bin/bash
# Version 1.0.3
# For FreeBSD only
# Run this script as superuser
echo "Добре дошли в инсталационния скрипт на Викки (версия 1.0.3 Pre-release 1 (not tested))"
echo "Willkommen bei Vikkis Installationsskript (Version 1.0.3 Pre-release 1 (not tested))"
echo "Welcome to Vikki's Installer Script (version 1.0.3 Pre-release 1 (not tested))"
echo "Bine ați venit în Script-ul de Instalare al lui Vikki (versiunea 1.0.3 Pre-release 1 (not tested))"
echo "Добро пожаловать в скрипт установки Викки (версия 1.0.3 Pre-release 1 (not tested))"
echo "Dobrodošli u Vikki-jevu skriptu za instalaciju (verzija 1.0.3 Pre-release 1 (not tested))"
echo "Добродошли у Викки-јеву скрипту за инсталацију (верзија 1.0.3 Pre-release 1 (not tested))"
echo "Ласкаво просимо до скрипта інсталятора Віккі (версія 1.0.3 Pre-release 1 (not tested))"
echo ""
echo ""
echo "Choose your language"
PS3=': -> '
options=("Български" "Deutsch" "English" "Română" "Ромынъ (кірілік)" "Русский" "Srpskohrvatski (latinica)" "Српскохрватски (ћирилица)" "Українська" "Quit")
select opt in "${options[@]}"
do
    case $opt in
    #English
    "English")
    ## Starting script

    ## Updating the repository
    echo "Updating the repository"
    pkg update
    ## Installing doas as the superuser client
    echo "Installing doas as the superuser client"
    pkg install -y doas
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
    pkg install -y chromium kate neofetch htop nano xorg xfce
    ## Configuring the system
    echo "moused_enable="YES"" >> /etc/rc.conf
    echo "dbus_enable="YES"" >> /etc/rc.conf
    echo "hald_enable="YES"" >> /etc/rc.conf
    echo "slim_enable="YES"" >> /etc/rc.conf
    reboot
    break
    ;;
