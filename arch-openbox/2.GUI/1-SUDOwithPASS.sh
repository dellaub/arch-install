#!/bin/bash 
set -e 


######################################################################
############### ARCH LINUX INSTALL SUDO WITH PASSWORD ################
######################################################################
												

# [ STARTUP ] #


		echo -e "\033[1;37m# [ SUDO PERMISSIONS WITHOUT PASSWORD ] #\033[0m "

		# enable sudo with password to the wheel group user	
		sudo sed 's/# %wheel ALL=(ALL) ALL/%wheel ALL=(ALL) ALL/g' /etc/sudoers > /etc/sudoers.tmp
		
		# disable sudo without password to the wheel group user
		sudo sed 's/%wheel ALL=(ALL) NOPASSWD: ALL/# %wheel ALL=(ALL) NOPASSWD: ALL/g' /etc/sudoers.tmp > /etc/sudoers.tmp2
		sudo mv /etc/sudoers.tmp2 /etc/sudoers
		sudo rm /etc/sudoers.tmp
		sleep 2
		sudo cat /etc/sudoers | grep wheel

		# finish
		echo -e " \n\033[1;37m\033[41m[ !! INSTALLATION FINISHED !! ]\033[0m \n"

#########################################################################################################
