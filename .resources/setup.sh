#!/bin/bash
#script for  settting up termux
 termux-setup-storage
 apt update -y && apt upgrade -y
 pkg i  pv 
 ( pkg i root-repo openssh micro git curl zsh tsu wget openssl neofetch python -y &&  echo "installing yt-dlp" && python3 -m pip install yt-dlp ) | pv -l > /dev/null
 (  cd "$HOME" &&  curl -fsSL https://raw.githubusercontent.com/th3cr00k3dm4n/termux-setup/master/.resources/.zshrc >> .zshrc &&  chsh -s zsh &&  rm ../usr/etc/motd ) | pv -l > /dev/null
 sleep 0.3
 echo "*+ Installing fonts and properties +*"
 ( curl -fsSL https://raw.githubusercontent.com/th3cr00k3dm4n/termux-setup/main/.resources/font.ttf >> $HOME/.termux/font.ttf && curl -fsSL https://raw.githubusercontent.com/th3cr00k3dm4n/termux-setup/main/.resources/termux.properties >> $HOME/.termux/termux.properties ) | pv -l > /dev/null
 sleep 0.3
 termux-reload-settings
 echo "+-+-+-+-+-+-+-+-+-+"
 echo "+ Finished Install +"
 echo "+-+-+-+-+-+-+-+-+-+"
 exit
