#!/bin/bash
#!/bin/zsh
##Version 1.1

echo "Welcome to Vikki's Installer Script (version 1.1)"
echo ""
echo ""
echo "If you don't see your distro, then choose the option 'Other distro'"
echo "If you choose the options 'Other distro', 'Linux Mint' and 'Ubuntu 23.04' will install flatpak"
echo "Disclaimer! After finishing the script using the option 'Ubuntu 23.04', will automaticly reboot your computer and will remove all snaps installed, as well as the package 'snapd'"
echo "Choose your distro"
PS3=': > '
options=( "Arch" "Artix" "Debian" "Devuan" "Fedora" "Linux Mint" "Ubuntu LTS 22.04" "Ubuntu 23.04" "Other distro" "Quit")
select opt in "${options[@]}"
do
    case $opt in
        #Arch btw
        "Arch")
            ./arch.sh
            break
        ;;

        #Artix
        "Artix")
            ./artix.sh
            break
        ;;

        #Debian
        "Debian")
            ./debian.sh
            break
        ;;

        #Devuan
        "Devuan")
            ./devuan.sh
            break
        ;;

        #Fedora
        "Fedora")
            ./fedora.sh
            break
        ;;

        #Mint
        "Linux Mint")
            ./mint.sh
            break
        ;;

        #Ubuntu LTS
        "Ubuntu LTS 22.04")
            ./ubuntu-jammy.sh
            break
        ;;

        #Ubuntu Non-LTS
        "Ubuntu 23.04")
            ./ubuntu-lunar.sh
            break
        ;;

        #Other (Flatpak)
        "Other distro")
            ## Executes the generic flatpak.sh script from the repo
            ./flatpak.sh
            break
        ;;

        #Quit
        "Quit")
            exit
    esac
done