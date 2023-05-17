#!/bin/bash
#!/bin/zsh
##Ubnuntu 22.04 LTS script

## Adding repos
curl -sS https://download.spotify.com/debian/pubkey_5E3C45D7B312C643.gpg | sudo apt-key add -
echo "deb http://repository.spotify.com stable non-free" | sudo tee /etc/apt/sources.list.d/spotify.list
clear
## Installing Packages
sudo apt update
sudo apt install -y aria2c
cd ~/Downloads
    aria2c "https://cdn.cloudflare.steamstatic.com/client/installer/steam.deb"
    aria2c "https://dl.discordapp.net/apps/linux/0.0.19/discord-0.0.19.deb"
    aria2c "https://download.virtualbox.org/virtualbox/6.1.36/virtualbox-6.1_6.1.36-152435~Ubuntu~jammy_amd64.deb"
    sudo dpkg -i *.deb
    sudo apt install --fix-broken -y
    sudo apt install --fix-missing -y
    sudo rm *.deb
sudo apt upgrade -y
sudo apt install neovim neofetch aria2c kate ttf-mscorefonts-installer fonts-liberation neofetch htop nano flatpak krita kdenlive
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

## Running apt autoremove
sudo apt autoremove

## Running apt autoclean
sudo apt autoclean

clear
echo "Done!:)"

break