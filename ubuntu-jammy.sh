#!/bin/bash
## For Ubuntu 22.04 Jammy Jellyfish and Ubuntu 22.04-based Distributions
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
            clear
## Adding the repos (EN)
            echo "Adding the repos"
            curl -sS https://download.spotify.com/debian/pubkey_5E3C45D7B312C643.gpg | sudo apt-key add -
            echo "deb http://repository.spotify.com stable non-free" | sudo tee /etc/apt/sources.list.d/spotify.list
            echo "deb https://deb.volian.org/volian/ scar main" | sudo tee /etc/apt/sources.list.d/volian-archive-scar-unstable.list
            wget -qO - https://deb.volian.org/volian/scar.key | sudo tee /etc/apt/trusted.gpg.d/volian-archive-scar-unstable.gpg > /dev/null
            clear
## Starting installing packages (EN)
            echo "Installing packages"
            sudo apt update
            cd ~/Downloads
                wget "https://cdn.cloudflare.steamstatic.com/client/installer/steam.deb"
                wget "https://dl.discordapp.net/apps/linux/0.0.19/discord-0.0.19.deb"
                wget "https://download.virtualbox.org/virtualbox/6.1.36/virtualbox-6.1_6.1.36-152435~Ubuntu~jammy_amd64.deb"
                sudo dpkg -i *.deb
                sudo apt install --fix-broken -y
                sudo apt install --fix-missing -y
                sudo rm *.deb
            sudo apt upgrade -y
            sudo apt install nala spotify-client kate ttf-mscorefonts-installer fonts-liberation neofetch htop nano flatpak krita kdenlive
            flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
            clear
## Fetching nala (EN)
            echo "Select a mirror"
            sudo nala fetch
            sudo nala update
            clear
## Clearing junk and reboot (EN)
            echo "Clearing unused packages and purging snapd"
            sudo apt purge snapd -y
            sudo apt autoremove
            echo "It is recomanded to reboot your computer..."
            break
            ;;
        "Română")
            echo "Se adaugă depozitele"
            curl -sS https://download.spotify.com/debian/pubkey_5E3C45D7B312C643.gpg | sudo apt-key add -
            echo "deb http://repository.spotify.com stable non-free" | sudo tee /etc/apt/sources.list.d/spotify.list
            echo "deb https://deb.volian.org/volian/ scar main" | sudo tee /etc/apt/sources.list.d/volian-archive-scar-unstable.list
            wget -qO - https://deb.volian.org/volian/scar.key | sudo tee /etc/apt/trusted.gpg.d/volian-archive-scar-unstable.gpg > /dev/null
            clear

            echo "Se instalează pachetele"
            sudo apt update
            cd ~/Downloads
                wget "https://cdn.cloudflare.steamstatic.com/client/installer/steam.deb"
                wget "https://dl.discordapp.net/apps/linux/0.0.19/discord-0.0.19.deb"
                wget "https://download.virtualbox.org/virtualbox/6.1.36/virtualbox-6.1_6.1.36-152435~Ubuntu~jammy_amd64.deb"
                sudo dpkg -i *.deb
                sudo apt install --fix-broken -y
                sudo apt install --fix-missing -y
                sudo rm *.deb
            sudo apt upgrade -y
            sudo apt install nala spotify-client kate ttf-mscorefonts-installer fonts-liberation neofetch htop nano flatpak krita kdenlive
            flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
            clear

            echo "Selectează un mirror (Server local)"
            sudo nala fetch
            sudo nala update
            clear

            echo "Se șterg pachetele inutile și se dezinstalează snapd"
            sudo apt purge snapd -y
            sudo apt autoremove
            echo "Este recomandat să vă reporniți calculatorul..."
            break
            ;;
        "Українська")
            echo "Депозити додаються"
            curl -sS https://download.spotify.com/debian/pubkey_5E3C45D7B312C643.gpg | sudo apt-key add -
            echo "deb http://repository.spotify.com stable non-free" | sudo tee /etc/apt/sources.list.d/spotify.list
            echo "deb https://deb.volian.org/volian/ scar main" | sudo tee /etc/apt/sources.list.d/volian-archive-scar-unstable.list
            wget -qO - https://deb.volian.org/volian/scar.key | sudo tee /etc/apt/trusted.gpg.d/volian-archive-scar-unstable.gpg > /dev/null
            clear

            echo "Встановлення пакетів"
            sudo apt update
            cd ~/Downloads
                wget "https://cdn.cloudflare.steamstatic.com/client/installer/steam.deb"
                wget "https://dl.discordapp.net/apps/linux/0.0.19/discord-0.0.19.deb"
                wget "https://download.virtualbox.org/virtualbox/6.1.36/virtualbox-6.1_6.1.36-152435~Ubuntu~jammy_amd64.deb"
                sudo dpkg -i *.deb
                sudo apt install --fix-broken
                sudo apt install --fix-missing
                sudo rm *.deb
            sudo apt upgrade -y
            sudo apt install nala spotify-client kate ttf-mscorefonts-installer fonts-liberation neofetch htop nano flatpak krita kdenlive
            flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
            clear

            echo "Виберіть мірор (локальний сервер)"
            sudo nala fetch
            sudo nala update
            clear

            echo "Видаліть непотрібні пакети та видаліть snapd"
            sudo apt purge snapd -y
            sudo apt autoremove
            echo "Рекомендується перезавантажити комп'ютер..."
            ;;
        "Quit")
            break
            ;;
        *) echo "invalid option $REPLY";;
    esac
done
