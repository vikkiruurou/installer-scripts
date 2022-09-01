#!/bin/bash
# Version 1.0.2
## For Fedora and Fedora-based distros
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
        "Български")
        #Bulgarian
        echo "Инсталирани са RPM Fusion и хранилища на трети страни"
        sudo dnf install https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm
        sudo dnf install https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm
        sudo dnf install fedora-workstation-repositories
        clear
        ## Updating
        echo "Актуализиране на системата"
        sudo dnf update
        clear
        ## Installing programs
        echo "Инсталиране на пакетите"
        sudo dnf config-manager --set-enabled google-chrome
        sudo dnf install google-chrome-stable neofetch htop krita kdenlive kate
        flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
        sudo flatpak install com.spotify.Client com.valvesoftware.Steam com.discordapp.Discord
        echo "Препоръчително е да рестартирате компютъра си, след като затворите терминала."
        break
        ;;
        #German (Deutsch)
        "Deutsch")
        echo "Installieren von RPM Fusion und Drittanbieter-Repositories"
        sudo dnf install https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm
        sudo dnf install https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm
        sudo dnf install fedora-workstation-repositories
        clear
        ## Updating
        echo "System Aktualisieren"
        sudo dnf update
        clear
        ## Installing programs
        echo "Installieren von Paketen"
        sudo dnf config-manager --set-enabled google-chrome
        sudo dnf install google-chrome-stable neofetch htop krita kdenlive kate
        flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
        sudo flatpak install com.spotify.Client com.valvesoftware.Steam com.discordapp.Discord
        echo "Es wird empfohlen, Ihren Computer nach dem Schließen des Terminals neu zu starten"
        break
            ;;
        #English
        "English")
        echo "Installing RPM Fusion and 3rd Party Repositories"
        sudo dnf install https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm
        sudo dnf install https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm
        sudo dnf install fedora-workstation-repositories
        clear
        ## Updating
        echo "Updating the System"
        sudo dnf update
        clear
        ## Installing programs
        echo "Installing Packages"
        sudo dnf config-manager --set-enabled google-chrome
        sudo dnf install google-chrome-stable neofetch htop krita kdenlive kate
        flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
        sudo flatpak install com.spotify.Client com.valvesoftware.Steam com.discordapp.Discord
        echo "It is recommended to restart your computer after closing the terminal"
        break
            ;;
        #Romanian
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
        sudo dnf install google-chrome-stable neofetch htop krita kdenlive kate
        flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
        sudo flatpak install com.spotify.Client com.valvesoftware.Steam com.discordapp.Discord
        echo "Este recomandat să vă reporniți calculatorul după ce închideți terminalul"
        break
            ;;
        #Russian
        "Русский")
        echo "Установка RPM Fusion и сторонних репозиториев"
        sudo dnf install https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm
        sudo dnf install https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm
        sudo dnf install fedora-workstation-repositories
        clear
        ## Updating
        echo "Обновление системы"
        sudo dnf update
        clear
        ## Installing programs
        echo "Установка пакетов"
        sudo dnf config-manager --set-enabled google-chrome
        sudo dnf install google-chrome-stable neofetch htop krita kdenlive kate
        flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
        sudo flatpak install com.spotify.Client com.valvesoftware.Steam com.discordapp.Discord
        echo "Рекомендуется перезагрузить компьютер после закрытия терминала"
        break
            ;;
        #Serbo-croatian (latin)
        "Srpskohrvatski (latinica)")
        echo "Instaliranje RPM Fusion-a i repozitorijuma treće strane"
        sudo dnf install https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm
        sudo dnf install https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm
        sudo dnf install fedora-workstation-repositories
        clear
        ## Updating
        echo "Ažuriranje sistema"
        sudo dnf update
        clear
        ## Installing programs
        echo "Instaliranje paketa"
        sudo dnf config-manager --set-enabled google-chrome
        sudo dnf install google-chrome-stable neofetch htop krita kdenlive kate
        flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
        sudo flatpak install com.spotify.Client com.valvesoftware.Steam com.discordapp.Discord
        echo "Preporučuje se da ponovo pokrenete računar nakon zatvaranja terminala"
        break
            ;;
        #Serbo-croatian (cyrillic)
        "Српскохрватски (ћирилица)")
        echo "Инсталирање RPM Fusion-а и репозиторијума треће стране"
        sudo dnf install https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm
        sudo dnf install https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm
        sudo dnf install fedora-workstation-repositories
        clear
        ## Updating
        echo "Ажурирање система"
        sudo dnf update
        clear
        ## Installing programs
        echo "Инсталирање пакета"
        sudo dnf config-manager --set-enabled google-chrome
        sudo dnf install google-chrome-stable neofetch htop krita kdenlive kate
        flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
        sudo flatpak install com.spotify.Client com.valvesoftware.Steam com.discordapp.Discord
        echo "Препоручује се да поново покренете рачунар након затварања терминала"
        break
            ;;
        #Ukrainian
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
        sudo dnf install google-chrome-stable neofetch htop krita kdenlive kate
        flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
        sudo flatpak install com.spotify.Client com.valvesoftware.Steam com.discordapp.Discord
        echo "Рекомендується перезавантажити комп’ютер після того, як ви закриєте термінал"
        break
            ;;
        "Quit")
            break
            ;;
        *) echo "invalid option $REPLY";;
    esac
done
