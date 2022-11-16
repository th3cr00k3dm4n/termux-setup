#!/bin/bash
#script for  settting up termux

tmux_up() 
    {
    apt update -y && apt upgrade -yy && pkg i root-repo &&            
    pkg i git curl zsh tsu python wpa-supplicant pixiewps iw openssl -y && install_omz ;  
    }

#INSTALLING OH MY ZSH                

install_omz()
{  
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" && chsh -s zsh && rm $HOME/../usr/etc/motd &&  install_wps ;  
}

#INSTALLING WPS BRUTEFORCE

install_wps()
    {      
    cd $HOME
    mkdir tools
    cd tools
    curl -sSf https://raw.githubusercontent.com/drygdryg/OneShot_Termux_installer/master/installer.sh | bash && echo "installed wps pin brute " &&
    echo "alias wps=\"sudo python OneShot/oneshot.py -i wlan0 --iface-down -K\"" >> $HOME/.zshrc && echo "finished" &&  termux-reload-settings ; 
    }
    
 tmux_up
