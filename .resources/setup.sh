#!/bin/bash
#script for  settting up termux
 termux-setup-storage
 sleep 0.5
 apt update -y && apt upgrade -y 
 clear
 sleep 0.5
 pkg i  openssh subversion micro git curl zsh wget openssl neofetch python ffmpeg -y  
 sleep 0.5
 clear
 echo ""
 echo ""
 echo "installing yt-dlp"
 sleep 0.5
 clear 
 python3 -m pip install yt-dlp
 sleep 0.5 
 cd "$HOME" &&  curl -fsSL https://raw.githubusercontent.com/th3cr00k3dm4n/termux-setup/master/.resources/.zshrc > .zshrc &&  chsh -s zsh &&  rm ../usr/etc/motd 
 sleep 0.3
 echo "*+ Installing fonts and properties +*"
 curl -fsSL https://raw.githubusercontent.com/th3cr00k3dm4n/termux-setup/main/.resources/font.ttf >> "$HOME"/.termux/font.ttf 
 curl -fsSL https://raw.githubusercontent.com/th3cr00k3dm4n/termux-setup/main/.resources/termux.properties >> "$HOME"/.termux/termux.properties 
 sleep 0.3
 svn export https://github.com/th3cr00k3dm4n/termux-setup/trunk/.resources/.zsh .zsh
 sleep 0.3
 clear
 termux-reload-settings
 echo "+-+-+-+-+-+-+-+-+-+"
 echo "+ Finished Install +"
 echo "+-+-+-+-+-+-+-+-+-+"
 sleep 2
 exit
