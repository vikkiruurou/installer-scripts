#!/bin/bash
## Version 1.0.2
### Use for Arch or any Arch-based distributions, except of Manjaro, Arco and Artix
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
options=( "test" "Български" "Deutsch" "English" "Română" "Ромынъ (кірілік)" "Русский" "Srpskohrvatski (latinica)" "Српскохрватски (ћирилица)" "Українська" "Quit")
select opt in "${options[@]}"
do
    case $opt in
        #Bulgarian
        "Български")
        #Starting the script
        ## Moving the pacman.conf file
        sudo mv pacman.conf /etc/pacman.conf
        ## Installing yay
        echo "Инсталиране на yay за поддръжка на AUR"
        sudo pacman -Sy go
        git clone "https://aur.archlinux.org/yay.git"
        cd yay/
        makepkg -si
        cd ..
        rm -rf yay/
        ## Syncing the repos
        echo "Синхронизиране на депозитите"
        sudo pacman -Syy
        yay -Syy
        clear
        ## Installing and updating packages
        echo "Инсталиране и актуализиране на пакети"
        yay -Syyu steam flatpak discord htop krita kdenlive kate google-chrome spotify xboxdrv heimdall samsung-unified-driver wine
        echo "Препоръчително е да рестартирате компютъра след затваряне на терминала"
        break
        ;;
        #German (Deutsch)
        "Deutsch")
        #Starting the script
        ## Moving the pacman.conf file
        sudo mv pacman.conf /etc/pacman.conf
        ## Installing yay
        echo "Installation von yay für AUR-Unterstützung"
        sudo pacman -Sy go
        git clone "https://aur.archlinux.org/yay.git"
        cd yay/
        makepkg -si
        cd ..
        rm -rf yay/
        ## Syncing the repos
        echo "Synchronisierung der Repositories"
        sudo pacman -Syy
        yay -Syy
        clear
        ## Installing and updating packages
        echo "Pakete installieren und aktualisieren"
        yay -Syyu steam flatpak discord htop krita kdenlive kate google-chrome spotify xboxdrv heimdall samsung-unified-driver wine
        echo "Es wird empfohlen, Ihren Computer nach dem Schließen des Terminals neu zu starten"
        break
            ;;
        #English
        "English")
        #Starting the script
        ## Moving the pacman.conf file
        sudo mv pacman.conf /etc/pacman.conf
        ## Installing yay
        echo "Installing yay for AUR support"
        sudo pacman -Sy go
        git clone "https://aur.archlinux.org/yay.git"
        cd yay/
        makepkg -si
        cd ..
        rm -rf yay/
        ## Syncing the repos
        echo "Syncing the repositories"
        sudo pacman -Syy
        yay -Syy
        clear
        ## Installing and updating packages
        echo "Installing and updating packages"
        yay -Syyu steam flatpak discord htop krita kdenlive kate google-chrome spotify xboxdrv heimdall samsung-unified-driver wine
        echo "It is recommended to restart your computer after closing the terminal"
        break
            ;;
        #Romanian
        "Română")
        #Starting the script
        ## Moving the pacman.conf file
        sudo mv pacman.conf /etc/pacman.conf
        ## Installing yay
        echo "Se instalează yay pentru suport AUR (Arch User Repository)"
        sudo pacman -Sy go
        git clone "https://aur.archlinux.org/yay.git"
        cd yay/
        makepkg -si
        cd ..
        rm -rf yay/
        ## Syncing the repos
        echo "Se sincronizează depozitele"
        sudo pacman -Syy
        yay -Syy
        clear
        ## Installing and updating packages
        echo "Se instalează și se actualizează pachetele"
        yay -Syyu steam flatpak discord htop krita kdenlive kate google-chrome spotify xboxdrv heimdall samsung-unified-driver wine
        echo "Este recomandat să reporniți computerul după închiderea terminalului"
        break
            ;;
        #Russian
        "Русский")
        #Starting the script
        ## Moving the pacman.conf file
        sudo mv pacman.conf /etc/pacman.conf
        ## Installing yay
        echo "Установка yay для поддержки AUR"
        sudo pacman -Sy go
        git clone "https://aur.archlinux.org/yay.git"
        cd yay/
        makepkg -si
        cd ..
        rm -rf yay/
        ## Syncing the repos
        echo "Синхронизация репозиториев"
        sudo pacman -Syy
        yay -Syy
        clear
        ## Installing and updating packages
        echo "Установка и обновление пакетов"
        yay -Syyu steam flatpak discord htop krita kdenlive kate google-chrome spotify xboxdrv heimdall samsung-unified-driver wine
        echo "Рекомендуется перезагрузить компьютер после закрытия терминала"
        break
            ;;
        #Serbo-croatian (latin)
        "Srpskohrvatski (latinica)")
        #Starting the script
        ## Moving the pacman.conf file
        sudo mv pacman.conf /etc/pacman.conf
        ## Installing yay
        echo "Instaliranje yay za AUR podršku"
        sudo pacman -Sy go
        git clone "https://aur.archlinux.org/yay.git"
        cd yay/
        makepkg -si
        cd ..
        rm -rf yay/
        ## Syncing the repos
        echo "Sinhronizacija spremišta"
        sudo pacman -Syy
        yay -Syy
        clear
        ## Installing and updating packages
        echo "Instaliranje i ažuriranje paketa"
        yay -Syyu steam flatpak discord htop krita kdenlive kate google-chrome spotify xboxdrv heimdall samsung-unified-driver wine
        echo "Preporučuje se da ponovo pokrenete računar nakon zatvaranja terminala"
        break
            ;;
        #Serbo-croatian (cyrillic)
        "Српскохрватски (ћирилица)")
        #Starting the script
        ## Moving the pacman.conf file
        sudo mv pacman.conf /etc/pacman.conf
        ## Installing yay
        echo "Инсталирање yay за AUR подршку"
        sudo pacman -Sy go
        git clone "https://aur.archlinux.org/yay.git"
        cd yay/
        makepkg -si
        cd ..
        rm -rf yay/
        ## Syncing the repos
        echo "Синхронизација спремишта"
        sudo pacman -Syy
        yay -Syy
        clear
        ## Installing and updating packages
        echo "Инсталирање и ажурирање пакета"
        yay -Syyu steam flatpak discord htop krita kdenlive kate google-chrome spotify xboxdrv heimdall samsung-unified-driver wine
        echo "Препоручује се да поново покренете рачунар након затварања терминала"
        break
            ;;
        #Ukrainian
        "Українська")
        #Starting the script
        ## Moving the pacman.conf file
        sudo mv pacman.conf /etc/pacman.conf
        ## Installing yay
        echo "Встановлення yay для підтримки AUR"
        sudo pacman -Sy go
        git clone "https://aur.archlinux.org/yay.git"
        cd yay/
        makepkg -si
        cd ..
        rm -rf yay/
        ## Syncing the repos
        echo "Синхронізація репозиторіїв"
        sudo pacman -Syy
        yay -Syy
        clear
        ## Installing and updating packages
        echo "Встановлення та оновлення пакетів"
        yay -Syyu steam flatpak discord htop krita kdenlive kate google-chrome spotify xboxdrv heimdall samsung-unified-driver wine
        echo "Рекомендується перезавантажити комп’ютер після закриття терміналу"
        break
            ;;
        "Quit")
            break
            ;;
        *) echo "invalid option $REPLY";;
    esac
done
