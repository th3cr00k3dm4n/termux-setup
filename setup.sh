#!/bin/bash
#script for  settting up termux
FOO='alias ls="ls -al"'
DWN='alias dwn="cd storage/downloads"'
tmux_up() 
   {
    apt update -y && apt upgrade -yy && pkg i root-repo &&            
    pkg i git curl zsh tsu wget  openssl neofetch python -y && clear && echo "installing yt-dlp" && python3 -m pip install yt-dlp   
    }
    
 tmux_up
 echo $FOO>> $HOME/.zshrc ;
 echo $DWN>> $HOME/.zshrc ;
 
 
