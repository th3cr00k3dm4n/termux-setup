#!/bin/bash
#script for  settting up termux
tmux_up() 
   {
    apt update -y && apt upgrade -yy && pkg i root-repo &&            
    pkg i git curl zsh tsu wget  openssl neofetch python -y && clear && echo "installing yt-dlp" && python3 -m pip install yt-dlp   
    }
    
 tmux_up
 clear
 sleep 0.5
 echo "+-+-+-+-+-+-+-+-+-+"
 echo  "+ installing zsh  +"
 echo "+-+-+-+-+-+-+-+-+-+"
 cd "$HOME" || exit 
 curl -fsSL https://raw.githubusercontent.com/th3cr00k3dm4n/termux-setup/master/.zshrc >> .zshrc
 
