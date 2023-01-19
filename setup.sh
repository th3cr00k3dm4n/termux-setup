#!/bin/bash
#script for  settting up termux
 apt update -y && apt upgrade -y
 pkg i  pv 
 ( pkg i root-repo openssh micro git curl zsh tsu wget openssl neofetch python -y &&  echo "installing yt-dlp" && python3 -m pip install yt-dlp ) | pv -l > /dev/null
 (  cd "$HOME" &&  curl -fsSL https://raw.githubusercontent.com/th3cr00k3dm4n/termux-setup/master/.zshrc >> .zshrc &&  chsh -s zsh &&  rm ../usr/etc/motd ) | pv -l > /dev/null
 sleep 0.3
 echo "+-+-+-+-+-+-+-+-+-+"
 echo "+ Finished Install +"
 echo "+-+-+-+-+-+-+-+-+-+"
 exit
