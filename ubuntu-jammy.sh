#!/bin/bash
echo "Welcome to Vikki's Installer Script (version 1.0)"
echo "Bine ați venit în Script-ul de Instalare al lui Vikki (versiunea 1.0)"
echo "Ласкаво просимо до скрипта інсталятора Віккі (версія 1.0)"
echo ""
echo ""
echo "Choose your language"
PS3=': -> '
options=("English" "Română (Coming soon)" "Українська (Coming soon)" "Quit")
select opt in "${options[@]}"
do
    case $opt in
        "English")
            echo "English Selected"
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
                sudo add-apt-repository ppa:flatpak/stable
                wget "https://download.virtualbox.org/virtualbox/6.1.36/virtualbox-6.1_6.1.36-152435~Ubuntu~jammy_amd64.deb"
                sudo dpkg -i *.deb -y
                sudo apt install --fix-broken -y
                sudo apt install --fix-missing -y
                sudo rm *.deb
            sudo apt upgrade -y
            sudo apt install nala spotify-client kate libreoffice* ttf-mscorefonts-installer fonts-liberation neofetch htop nano flatpak gnome-software-plugin-flatpak
            flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
            clear
## Fetching nala (EN)
            echo "Select a mirror"
            sudo nala fetch
            sudo nala update
            clear
## Clearing junk and reboot (EN)
            sudo apt purge snapd -y
            sudo apt autoremove -y
            sudo reboot
            ;;
        "Română (Coming soon)")
            echo "Script-ul nu este terminat... Vă rog, folosiți varianta în engleză (English)"
            ;;
        "Українська (Coming soon)")
            echo "Скрипт ще не завершений... Використовуйте англійський (English) варіант"
            ;;
        "Quit")
            break
            ;;
        *) echo "invalid option $REPLY";;
    esac
done
