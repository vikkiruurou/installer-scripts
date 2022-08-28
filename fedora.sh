#!/bin/bash
## For Fedora and Fedora-based distros
echo "Welcome to Vikki's Installer Script (version 1.0.1)"
echo "Bine ați venit în Script-ul de Instalare al lui Vikki (versiunea 1.0.1)"
echo "Ласкаво просимо до скрипта інсталятора Віккі (версія 1.0.1)"
echo ""
echo ""
echo "Choose your language"
PS3=': -> '
options=("English" "Română" "Українська" "Quit")
select opt in "${options[@]}"
do
    case $opt in
        "English")
        echo "Installing RPM Fusion and 3rd Party Repositories"
        sudo dnf install https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm
        sudo dnf install https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm
        sudo dnf install fedora-workstation-repositories
        clear
        ## Updating
        echo "Update System"
        sudo dnf update
        clear
        ## Installing programs
        echo "Installing Packages"
        sudo dnf config-manager --set-enabled google-chrome
        sudo dnf install google-chrome-stable neofetch htop krita kdenlive
        flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
        sudo flatpak install com.spotify.Client com.valvesoftware.Steam com.discordapp.Discord
        echo "It is recomanded to reboot your computer..."
        break
            ;;
        "Română")
        echo "Se instalează RPM Fusion and depozitele terțe"
        sudo dnf install https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm
        sudo dnf install https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm
        sudo dnf install fedora-workstation-repositories
        clear
        ## Updating
        echo "Se actualizează sistemul"
        sudo dnf update
        clear
        ## Installing programs
        echo "Se instalează pachetele"
        sudo dnf config-manager --set-enabled google-chrome
        sudo dnf install google-chrome-stable neofetch htop krita kdenlive
        flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
        sudo flatpak install com.spotify.Client com.valvesoftware.Steam com.discordapp.Discord
        echo "Este recomandat să vă reporniți calculatorul..."
        break
            ;;
        "Українська")
        echo "Встановлено RPM Fusion і сторонні репозиторії"
        sudo dnf install https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm
        sudo dnf install https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm
        sudo dnf install fedora-workstation-repositories
        clear
        ## Updating
        echo "Оновлення системи"
        sudo dnf update
        clear
        ## Installing programs
        echo "Встановлення пакетів"
        sudo dnf config-manager --set-enabled google-chrome
        sudo dnf install google-chrome-stable neofetch htop krita kdenlive
        flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
        sudo flatpak install com.spotify.Client com.valvesoftware.Steam com.discordapp.Discord
        echo "Рекомендується перезавантажити комп'ютер..."
        break
            ;;
        "Quit")
            break
            ;;
        *) echo "invalid option $REPLY";;
    esac
done
