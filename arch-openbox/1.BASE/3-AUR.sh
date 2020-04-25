#!/bin/bash 
set -e 


#########################################################
############### ARCH LINUX INSTALL SCRIPT ###############
#########################################################
TITLE="ARCH USER REPOSITORY HELPER INSTALLATION"

# [ STARTUP ] #
echo -e " \033[1;33m[ $TITLE ]\033[0m "


	

			# Enable connman service ( network manager ) 

			sudo systemctl enable --now dhcpcd.service

# USER CHECK

	USERCHECK=`echo $USER`
	ROOT="root"

if [ $USERCHECK == $ROOT ]
then
			
	echo -e " \033[1;37m\033[41m[ !! ATTENTION !! change to a low privilege user and try again. \n . /home/.installscripts/ARCH_SCRIPTS/1-BASE/4-AUR.sh ]\033[0m \n"  
	sleep 2
	exit
	

else


	#		2.5	Arch User Repository
			
				AUR_YAY(){

					package="yay"

						# install utilities
							sudo pacman -S --noconfirm --needed git curl wget
						
						# create aur pkg directory
							sudo mkdir /home/.AUR
			
						# move inside the directory
							cd /home/.AUR
			
						# give read and write permissions to install aur packages in /home/.AUR
							sudo chmod -R ugo+rw /home/.AUR

						# clone package build
							git clone https://aur.archlinux.org/yay.git 
							cd yay/
				
						# give read and write permissions to install aur packages in /home/.AUR/$package
							sudo chmod -R ugo+rw /home/.AUR/$package

						# make package
							makepkg -si --noconfirm
							 
				}
				
				AUR_YAY

			# [ INSTRUCTIONS TO CONTINUE INSTALLATION ] #

			echo -e " \n\033[1;37m\033[41m[ !! ATTENTION !! ]\033[0m \n"  
			sleep 2
			echo -e "\033[1;33m\033[44m[ WHEN PRESENTED WHIT A PROMPT...\n...RUN THIS COMMAND ]\n $ \033[0m\033[1;37m\033[44m . /.installscripts/openbox-i3/2.GUI/0-GUI-installation.sh \033[0m"
			sleep 5
fi


#########################################################################################################
