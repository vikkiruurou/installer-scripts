#!/bin/bash
# Version 1.0.2
## For Ubuntu 22.04 Jammy Jellyfish and Ubuntu 22.04-based Distributions
echo "Добре дошли в инсталационния скрипт на Викки (версия 1.0.2)"
echo "Willkommen bei Vikkis Installationsskript (Version 1.0.2)"
echo "Welcome to Vikki's Installer Script (version 1.0.2)"
echo "Bine ați venit în Script-ul de Instalare al lui Vikki (versiunea 1.0.2)"
echo "Добро пожаловать в скрипт установки Викки (версия 1.0.2)"
echo "Dobrodošli u Vikki-jevu skriptu za instalaciju (verzija 1.0.2)"
echo "Добродошли у Викки-јеву скрипту за инсталацију (верзија 1.0.2)"
echo "Ласкаво просимо до скрипта інсталятора Віккі (версія 1.0.2)"
echo ""
echo ""
echo "Choose your language"
PS3=': -> '
options=("Български" "Deutsch" "English" "Română" "Ромынъ (кірілік)" "Русский" "Srpskohrvatski (latinica)" "Српскохрватски (ћирилица)" "Українська" "Quit")
select opt in "${options[@]}"
do
    case $opt in
    #Bulgarian
    "Български")
        ## Adding repos
        echo "Добавяне на хранилища на трети страни"
            curl -sS https://download.spotify.com/debian/pubkey_5E3C45D7B312C643.gpg | sudo apt-key add -
            echo "deb http://repository.spotify.com stable non-free" | sudo tee /etc/apt/sources.list.d/spotify.list
            echo "deb https://deb.volian.org/volian/ scar main" | sudo tee /etc/apt/sources.list.d/volian-archive-scar-unstable.list
            wget -qO - https://deb.volian.org/volian/scar.key | sudo tee /etc/apt/trusted.gpg.d/volian-archive-scar-unstable.gpg > /dev/null
            clear
        ## Installing Packages
        echo "Инсталиране на пакети"
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
        ## Using 'nala' to fetch
        echo "Изберете локален сървър, след като nala тества сървъра"
            sudo nala fetch
            sudo nala update
            clear
        ## Clearing trash
        echo "Изчистване на неизползвани пакети и изчистване на snapd"
            sudo apt purge snapd -y
            sudo apt autoremove
        clear
        ## The script is finished
        echo "Препоръчително е да рестартирате компютъра си, след като затворите терминала"
        break
    ;;
    #English
    "English")
        ## Adding repos
        echo "Adding 3rd party repositories"
            curl -sS https://download.spotify.com/debian/pubkey_5E3C45D7B312C643.gpg | sudo apt-key add -
            echo "deb http://repository.spotify.com stable non-free" | sudo tee /etc/apt/sources.list.d/spotify.list
            echo "deb https://deb.volian.org/volian/ scar main" | sudo tee /etc/apt/sources.list.d/volian-archive-scar-unstable.list
            wget -qO - https://deb.volian.org/volian/scar.key | sudo tee /etc/apt/trusted.gpg.d/volian-archive-scar-unstable.gpg > /dev/null
            clear
        ## Installing Packages
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
        ## Using 'nala' to fetch
        echo "Select a mirror"
            sudo nala fetch
            sudo nala update
            clear
        ## Clearing trash
        echo "Clearing unused packages and purging snapd"
            sudo apt purge snapd -y
            sudo apt autoremove
        clear
        ## The script is finished
        echo "It is recommended to reboot your computer after you'll close the terminal"
        break
    ;;
    #Romanian with latin alphabet
    "Română")
        ## Adding repos
        echo "Se adaugă depozitele terțe"
            curl -sS https://download.spotify.com/debian/pubkey_5E3C45D7B312C643.gpg | sudo apt-key add -
            echo "deb http://repository.spotify.com stable non-free" | sudo tee /etc/apt/sources.list.d/spotify.list
            echo "deb https://deb.volian.org/volian/ scar main" | sudo tee /etc/apt/sources.list.d/volian-archive-scar-unstable.list
            wget -qO - https://deb.volian.org/volian/scar.key | sudo tee /etc/apt/trusted.gpg.d/volian-archive-scar-unstable.gpg > /dev/null
            clear
        ## Installing Packages
        echo "Se instalează pachetele"
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
        ## Using 'nala' to fetch
        echo "Selectează un server local, după ce se testează toate serverele"
            sudo nala fetch
            sudo nala update
            clear
        ## Clearing trash
        echo "Se șterg pachetele inutile și se deyinstalează pachetul snapd"
            sudo apt purge snapd -y
            sudo apt autoremove
        clear
        ## The script is finished
        echo "Este recomandat să vă reporniți calculatorul după ce închideți terminalul"
        break
    ;;
    #Romanian with cyrillic alphabet
    "Ромынъ (кірілік)")
        ## Adding repos
        echo "Се адаугъ депозітеле терце"
            curl -sS https://download.spotify.com/debian/pubkey_5E3C45D7B312C643.gpg | sudo apt-key add -
            echo "deb http://repository.spotify.com stable non-free" | sudo tee /etc/apt/sources.list.d/spotify.list
            echo "deb https://deb.volian.org/volian/ scar main" | sudo tee /etc/apt/sources.list.d/volian-archive-scar-unstable.list
            wget -qO - https://deb.volian.org/volian/scar.key | sudo tee /etc/apt/trusted.gpg.d/volian-archive-scar-unstable.gpg > /dev/null
            clear
        ## Installing Packages
        echo "Се інсталѣзъ пакетеле"
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
        ## Using 'nala' to fetch
        echo "Селектѣзъ ун сервър локал, дупъ че се тестѣзъ тоате сервъреле"
            sudo nala fetch
            sudo nala update
            clear
        ## Clearing trash
        echo "Се щерг пакетеле інутіле ші се дезінсталѣзъ snapd"
            sudo apt purge snapd -y
            sudo apt autoremove
        clear
        ## The script is finished
        echo "Єсте рекомандат съ въ репорніць калкулаторул дупъ че инкідець терміналул"
        break
    ;;
    #Russian
    "Русский")
        echo "Добавление сторонних репозиториев"
            curl -sS https://download.spotify.com/debian/pubkey_5E3C45D7B312C643.gpg | sudo apt-key add -
            echo "deb http://repository.spotify.com stable non-free" | sudo tee /etc/apt/sources.list.d/spotify.list
            echo "deb https://deb.volian.org/volian/ scar main" | sudo tee /etc/apt/sources.list.d/volian-archive-scar-unstable.list
            wget -qO - https://deb.volian.org/volian/scar.key | sudo tee /etc/apt/trusted.gpg.d/volian-archive-scar-unstable.gpg > /dev/null
            clear
        ## Installing Packages
        echo "Установка пакетов"
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
        ## Using 'nala' to fetch
        echo "Выберите зеркало"
            sudo nala fetch
            sudo nala update
            clear
        ## Clearing trash
        echo "Очистка неиспользуемых пакетов и очистка snapd"
            sudo apt purge snapd -y
            sudo apt autoremove
        clear
        ## The script is finished
        echo "После закрытия терминала рекомендуется перезагрузить компьютер"
        break
    ;;
    #Serbian, Croatian, Bosnian, Muntenegrin (Serbo-Croatian) with latin alphabet
    "Srpskohrvatski (latinica)")
        ## Adding repos
        echo "Dodavanje spremišta treće strane"
            curl -sS https://download.spotify.com/debian/pubkey_5E3C45D7B312C643.gpg | sudo apt-key add -
            echo "deb http://repository.spotify.com stable non-free" | sudo tee /etc/apt/sources.list.d/spotify.list
            echo "deb https://deb.volian.org/volian/ scar main" | sudo tee /etc/apt/sources.list.d/volian-archive-scar-unstable.list
            wget -qO - https://deb.volian.org/volian/scar.key | sudo tee /etc/apt/trusted.gpg.d/volian-archive-scar-unstable.gpg > /dev/null
            clear
        ## Installing Packages
        echo "Instaliranje paketa"
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
        ## Using 'nala' to fetch
        echo "Izaberite lokalni server nakon testiranja svih servera"
            sudo nala fetch
            sudo nala update
            clear
        ## Clearing trash
        echo "Brisanje neiskorišćenih paketa i čišćenje snapd-a"
            sudo apt purge snapd -y
            sudo apt autoremove
        clear
        ## The script is finished
        echo "Preporučuje se da ponovo pokrenete računar nakon što zatvorite terminal"
        break
    ;;
    #Serbo-Croatian with cyrillic alphabet
    "Српскохрватски (ћирилица)")
        ## Adding repos
        echo "Додавање спремишта треће стране"
            curl -sS https://download.spotify.com/debian/pubkey_5E3C45D7B312C643.gpg | sudo apt-key add -
            echo "deb http://repository.spotify.com stable non-free" | sudo tee /etc/apt/sources.list.d/spotify.list
            echo "deb https://deb.volian.org/volian/ scar main" | sudo tee /etc/apt/sources.list.d/volian-archive-scar-unstable.list
            wget -qO - https://deb.volian.org/volian/scar.key | sudo tee /etc/apt/trusted.gpg.d/volian-archive-scar-unstable.gpg > /dev/null
            clear
        ## Installing Packages
        echo "Инсталирање пакета"
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
        ## Using 'nala' to fetch
        echo "Изаберите локални сервер након тестирања свих сервера"
            sudo nala fetch
            sudo nala update
            clear
        ## Clearing trash
        echo "Брисање неискоришћених пакета и чишћење snapd-а"
            sudo apt purge snapd -y
            sudo apt autoremove
        clear
        ## The script is finished
        echo "Препоручује се да поново покренете рачунар након што затворите терминал"
        break
    ;;
    #Ukrainian
    "Українська")
        ## Adding repos
        echo "Додавання сторонніх репозиторіїв"
            curl -sS https://download.spotify.com/debian/pubkey_5E3C45D7B312C643.gpg | sudo apt-key add -
            echo "deb http://repository.spotify.com stable non-free" | sudo tee /etc/apt/sources.list.d/spotify.list
            echo "deb https://deb.volian.org/volian/ scar main" | sudo tee /etc/apt/sources.list.d/volian-archive-scar-unstable.list
            wget -qO - https://deb.volian.org/volian/scar.key | sudo tee /etc/apt/trusted.gpg.d/volian-archive-scar-unstable.gpg > /dev/null
            clear
        ## Installing Packages
        echo "Встановлення пакетів"
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
        ## Using 'nala' to fetch
        echo "Виберіть локальний сервер після тестування всіх серверів"
            sudo nala fetch
            sudo nala update
            clear
        ## Clearing trash
        echo "Очищення невикористаних пакетів і видалення snapd"
            sudo apt purge snapd -y
            sudo apt autoremove
        clear
        ## The script is finished
        echo "Рекомендується перезавантажити комп’ютер після того, як ви закриєте термінал"
        break
    ;;
    esac
done
