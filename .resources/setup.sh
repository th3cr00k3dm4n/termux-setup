#!/bin/bash
#script for  settting up termux
install_font(){
	sleep 0.3
	echo "*+ Installing fonts and properties +*"
	curl -fsSL https://raw.githubusercontent.com/th3cr00k3dm4n/termux-setup/main/.resources/font.ttf >> "$HOME"/.termux/font.ttf 
	curl -fsSL https://raw.githubusercontent.com/th3cr00k3dm4n/termux-setup/main/.resources/termux.properties >> "$HOME"/.termux/termux.properties 
	}
install_wps() {      
    cd "$HOME" || exit ; mkdir tools ; cd tools || exit ;
    curl -sSf https://raw.githubusercontent.com/drygdryg/OneShot_Termux_installer/master/installer.sh | bash ; 
    echo "installed wps pin brute " ;
    }
install_zsh(){
	cd "$HOME" &&  curl -fsSL https://raw.githubusercontent.com/th3cr00k3dm4n/termux-setup/master/.resources/.zshrc > .zshrc
    rm ../usr/etc/motd 
	svn export https://github.com/th3cr00k3dm4n/termux-setup/trunk/.resources/.zsh .zsh
	sleep 0.3
	clear
	chsh -s zsh
	}

install_ytd(){
	echo "installing yt-dlp"
	sleep 0.5
	clear 
	python3 -m pip install yt-dlp
	sleep 0.5 
	}

banner(){
	clear
	figlet termux-setup | lolcat
	echo "==[github.com/th3cr00k3dm4n]=="
	echo ""
	}
	
 clear 
 sleep 0.5
 apt update -y && apt upgrade -y 
 clear
 sleep 0.5
 pkg i  openssh subversion micro git curl zsh wget openssl neofetch python ffmpeg figlet lolcat-y  
 banner
 termux-setup-storage
 sleep 0.5
 install_zsh
 sleep 0.5
 install_font
 sleep 0.5
 install_wps
 sleep 0.5
 install_ytd
 sleep 0.5
 termux-reload-settings
 sleep 0.5
 clear 
 banner
 echo "Done.."
 exit
