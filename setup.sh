#!/bin/bash
#script for  settting up termux
FOO='alias wps="sudo python tools/OneShot/oneshot.py -i wlan0 --iface-down -K"'

tmux_up() 
   {
    apt update -y && apt upgrade -yy && pkg i root-repo &&            
    pkg i git curl zsh tsu python wpa-supplicant pixiewps iw openssl neofetch python -y && clear && echo "installing yt-dlp" && python3 -m pip install yt-dlp && omz ;  
    }
#INSTALLING OH MY ZSH                

omz(){ 
	sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" ; 
	chsh -s zsh ;
	rm $HOME/../usr/etc/motd ;
	echo 'neofetch'>> $HOME/.zshrc ;
	install_wps ;  
	}

#INSTALLING WPS BRUTEFORCE

install_wps() {      
    cd $HOME ; mkdir tools ; cd tools ;
    curl -sSf https://raw.githubusercontent.com/drygdryg/OneShot_Termux_installer/master/installer.sh | bash ; 
    echo "installed wps pin brute " ;
    echo $FOO>> $HOME/.zshrc ;
    termux-reload-settings ; 
    }
    
 tmux_up
