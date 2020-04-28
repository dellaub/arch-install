#!/bin/bash 
set -e 


#########################################################
############### ARCH LINUX INSTALL SCRIPT ###############
#########################################################

TITLE="GRAPHICAL USER INTERFACE INSTALLATION"

# [ STARTUP ] #
echo -e " \033[1;33m[ $TITLE ]\033[0m \n\n"



# [ SCRIPT ] #


##########################################################################################
BASE(){
##########################################################################################

		
		

		echo -e " \033[1;33m[ DISPLAY DRIVERS ]\033[0m "
		sleep 4 
		
			sudo pacman -Syy --noconfirm --needed xorg 					# [ DISPLAY SERVER ]
			sudo pacman -S --noconfirm --needed xorg-drivers			# [ DISPLAY SERVER ]
			sudo pacman -S --noconfirm --needed xterm					# [ X TERMINAL ]		
						
								
		

		echo -e " \033[1;33m[ NETWORK DRIVERS ]\033[0m "
		sleep 4
		
			sudo pacman -S --noconfirm --needed networkmanager 			# [ NETWORK MANAGER ]
			sudo pacman -S --noconfirm --needed network-manager-applet	# [ NETWORK MANAGER ]
			sudo pacman -S --noconfirm --needed tor		 				# [ NETWORK PRIVACY ]
				
				# Enable Service
					sudo systemctl enable NetworkManager
			
			
		

		echo -e " \033[1;33m[ AUDIO DRIVERS ]\033[0m "
		sleep 4
		
			sudo pacman -S --noconfirm --needed pulseaudio 				# [ AUDIO DRIVERS ]
			sudo pacman -S --noconfirm --needed alsa-utils				# [ AUDIO DRIVERS ]
			sudo pacman -S --noconfirm --needed pulseaudio-alsa			# [ AUDIO DRIVERS ]
			sudo pacman -S --noconfirm --needed pulseaudio-bluetooth	# [ AUDIO DRIVERS ]	
			sudo pacman -S --noconfirm --needed pulseaudio-jack			# [ AUDIO DRIVERS ]
			sudo pacman -S --noconfirm --needed pavucontrol				# [ AUDIO SETTINGS ]
			sudo pacman -S --noconfirm --needed volumeicon				# [ AUDIO CONTROL ]
			
			
		

		echo -e " \033[1;33m[ MULTIMEDIA CODECS ]\033[0m "
		sleep 4
				
			# Audio 
			sudo pacman -S --noconfirm --needed lame					# [ AUDIO CODECS ]
			sudo pacman -S --noconfirm --needed libmad					# [ AUDIO CODECS ]
			sudo pacman -S --noconfirm --needed faac					# [ AUDIO CODECS ]
			sudo pacman -S --noconfirm --needed faad2					# [ AUDIO CODECS ]
			sudo pacman -S --noconfirm --needed libvorbis				# [ AUDIO CODECS ]
				
			# Image
			sudo pacman -S --noconfirm --needed openjpeg				# [ IMAGE CODEC ]
				
			# Video
			sudo pacman -S --noconfirm --needed xvidcore				# [ VIDEO CODECS ]
			sudo pacman -S --noconfirm --needed libmpeg2				# [ VIDEO CODECS ]
			sudo pacman -S --noconfirm --needed x264 x265				# [ VIDEO CODECS ]
			sudo pacman -S --noconfirm --needed gstreamer 				# [ VIDEO CODECS ]
			sudo pacman -S --noconfirm --needed gst-libav				# [ VIDEO CODECS ]
			sudo pacman -S --noconfirm --needed gst-plugins-base 		# [ VIDEO CODECS ]
			sudo pacman -S --noconfirm --needed gst-plugins-base-libs	# [ VIDEO CODECS ]	
			sudo pacman -S --noconfirm --needed gst-plugins-good		# [ VIDEO CODECS ]	
			sudo pacman -S --noconfirm --needed gst-plugins-bad			# [ VIDEO CODECS ]
			sudo pacman -S --noconfirm --needed gst-plugins-ugly		# [ VIDEO CODECS ]
			sudo pacman -S --noconfirm --needed gstreamer-vaapi			# [ VIDEO CODECS ]
				 					
			
		echo -e " \033[1;33m[ LOGIN MANAGER ]\033[0m "
		sleep 4
		
			sudo pacman -S --noconfirm --needed sddm 					# [ DISPLAY MANAGER ]
				
			# Enable Service
				sudo systemctl enable sddm
	
		

		echo -e " \033[1;33m[ WINDOW MANAGER ]\033[0m "
		sleep 4
		
			sudo pacman -S --noconfirm --needed openbox 				# [ WINDOW MANAGER ]
			sudo pacman -S --noconfirm --needed lxappearance-obconf		# [ DESKTOP SETTINGS ]
			sudo pacman -S --noconfirm --needed	tint2 					# [ PANEL ]
			sudo pacman -S --noconfirm --needed nitrogen				# [ WALLPAPER SETTER ]
			sudo pacman -S --noconfirm --needed menumaker				# [ MENU GENERATOR ]

			
		

		echo -e " \033[1;33m[ FONTS ]\033[0m "
		sleep 4
		
			sudo pacman -S --noconfirm --needed ttf-dejavu				# [ FONTS ]
			sudo pacman -S --noconfirm --needed ttf-bitstream-vera		# [ FONTS ]
			sudo pacman -S --noconfirm --needed ttf-liberation			# [ FONTS ]
			sudo pacman -S --noconfirm --needed ttf-inconsolata			# [ FONTS ]
			sudo pacman -S --noconfirm --needed ttf-anonymous-pro		# [ FONTS ]
			sudo pacman -S --noconfirm --needed ttf-font-awesome		# [ FONTS ]
			sudo pacman -S --noconfirm --needed terminus-font			# [ FONTS ]
				
  
				
		

		echo -e " \033[1;33m[ MULTIMEDIA APPs ]\033[0m "
		sleep 4
		
			sudo pacman -S --noconfirm --needed audacious 				# [ MUSIC PLAYER ]
			sudo pacman -S --noconfirm --needed vlc 					# [ VIDEO PLAYER ]
			sudo pacman -S --noconfirm --needed nomacs 					# [ IMAGE VIEWER ]
			sudo pacman -S --noconfirm --needed gimp					# [ IMAGE MANIPULATION ]
			sudo pacman -S --noconfirm --needed audacity				# [ AUDIO MANIPULATION ]
			sudo pacman -S --noconfirm --needed k3b 					# [ CD DVD RIPPER ]
			sudo pacman -S --noconfirm --needed guvcview	 			# [ WEBCAM SOFTWARE ]
		
		

		echo -e " \033[1;33m[ UTILITIES APPs ]\033[0m "
		sleep 4
		
			sudo pacman -S --noconfirm --needed redshift 				# [ NIGHT MODE ]
			sudo pacman -S --noconfirm --needed deepin-clone 			# [ DISK BACKUP TOOL ]
			sudo pacman -S --noconfirm --needed gnome-multi-writer 		# [ ISO WRITER ]
			sudo pacman -S --noconfirm --needed udisks2 udiskie 		# [ DISK MOUNTER ]
			sudo pacman -S --noconfirm --needed gparted 				# [ DISK MANAGMENT ]					
			sudo pacman -S --noconfirm --needed galculator 				# [ CALCULATOR ]
			sudo pacman -S --noconfirm --needed bleachbit 				# [ DISK CLEANER ]
			sudo pacman -S --noconfirm --needed simple-scan 			# [ SCANNER SOFTWARE ]
			sudo pacman -S --noconfirm --needed htop 					# [ PROCESS COSUMPTION VIEWER ]				
			sudo pacman -S --noconfirm --needed lxtask 					# [ TASK MANAGER ]
			sudo pacman -S --noconfirm --needed lxrandr 				# [ DISPLAY SETTINGS ]	
			sudo pacman -S --noconfirm --needed lxinput 				# [ KEYBOARD AND MOUSE SETTINGS ]	
			sudo pacman -S --noconfirm --needed blueman 				# [ BLUETOOTH MANAGER ]
			sudo pacman -S --noconfirm --needed android-file-transfer	# [ ANDROID TOOL ]
			sudo pacman -S --noconfirm --needed baobab					# [ DISK USAGE APP ] 
			sudo pacman -S --noconfirm --needed screengrab				# [ SCREENSHOTS ]
			sudo pacman -S --noconfirm --needed print-manager			# [ PRINTER TOOL ]
			sudo pacman -S --noconfirm --needed system-config-printer	# [ PRINTER CONFIGURATION APPLET ]
			sudo pacman -S --noconfirm --needed cbatticon				# [ POWER MANAGEMENT ICON ]
		

		echo -e " \033[1;33m[ ESSENTIAL APPs ]\033[0m "
		sleep 4
		
			sudo pacman -S --noconfirm --needed pacmanfm 				# [ FILE EXPLORER ]
			sudo pacman -S --noconfirm --needed albert 					# [ PROGRAM LAUNCHER ]
			sudo pacman -S --noconfirm --needed firefox qutebrowser		# [ WEB BROWSERS ]
			sudo pacman -S --noconfirm --needed transmission-gtk 		# [ TORRENT DOWNLOADER ]
			sudo pacman -S --noconfirm --needed neovim  				# [ TEXT EDITOR ]
			sudo pacman -S --noconfirm --needed zathura-pdf-mupdf 		# [ PDF VIEWER ]				
			sudo pacman -S --noconfirm --needed termite 				# [ TERMINAL ]
			sudo pacman -S --noconfirm --needed xarchiver 				# [ FILE EXTRACTION ]
			sudo pacman -S --noconfirm --needed intel-ucode				# [ INTEL CPU MICROCODE ]

		
		

		echo -e " \033[1;33m[ EXTRA APPs ]\033[0m "
		sleep 4
		
			sudo pacman -S --noconfirm --needed filezilla				# [ SSH AND FTP FILESHARING ]
			sudo pacman -S --noconfirm --needed weechat					# [ IRC CONSOLE-BASED ]
			sudo pacman -S --noconfirm --needed discord					# [ VOICE CHAT GROUPS ]			
			sudo pacman -S --noconfirm --needed neofetch				# [ SYSTEM INFORMATION BANNER ]
			sudo pacman -S --noconfirm --needed picom					# [ COMPOSITOR ]
			sudo pacman -S --noconfirm --needed conky 					# [ DESKTOP WIDGET SYSTEM STATS ]
			sudo pacman -S --noconfirm --needed virtualbox 				# [ VIRTUALIZATION ]
			sudo pacman -S --noconfirm --needed virtualbox-guest-utils	# [ VBOX TOOLS ]

		

		echo -e " \033[1;33m[ AUR APPS ]\033[0m "
		sleep 4
		
					yay -S --noconfirm --needed yltra-flat-icons		# [ ICON SET ]
					yay -S --noconfirm --needed simplenote-electron-bin	# [ NOTE ORGANIZER ]
					yay -S --noconfirm --needed sublime-text-dev 		# [ TEXT EDITOR ]
					yay -S --noconfirm --needed freeoffice 				# [ PRODUCTIVITY ]
					yay -S --noconfirm --needed pamac-aur				# [ PACKAGE MANAGMENT ]
					yay -S --noconfirm --needed timeshift				# [ SYSTEM BACKUP ]

		

		echo -e " \033[1;33m[ GTK THEMES ]\033[0m "
		sleep 4
		
					yay -S --noconfirm --needed openbox-themes 			# [ OPENBOX THEMES ]
					yay -S --noconfirm --needed themix-full-git			# [ THEME EDITOR ]

		

		echo -e " \033[1;33m[ OPENBOX TOOLS ]\033[0m "
		sleep 4
		
					yay -S --noconfirm --needed obmenu3					# [ OB MENU EDITOR ]
					yay -S --noconfirm --needed obkey 					# [ KEY BINDING ]
					yay -S --noconfirm --needed ob-autostart			# [ AUTOSTART APPS ]

}	


############################################################################################
CONFIG(){
############################################################################################

# delete target folder
# move the config_files into the target location 
# CONFIGS LOCATION "/.installscripts/arch-openbox/2.GUI/config_files/"




echo -e " \033[1;33m[ # OPENBOX ]\033[0m "
sleep 1

		OB_CONFIG="/.installscripts/arch-openbox/2.GUI/config_files/openbox/"									
		TARGET_LOCATION_OB="~/.config/"p


					# Replace configs with original files
					sudo cp -r --remove-destination $OB_CONFIG $TARGET_LOCATION_OB






echo -e " \033[1;33m[ # SDDM ]\033[0m "
sleep 1

		SDDM_CONFIG="/.installscripts/arch-openbox/2.GUI/config_files/sddm/Xsetup"					
		TARGET_LOCATION_SDDM="/usr/share/sddm/scripts/"


					# Replace configs with original files
					sudo cp -r --remove-destination $SDDM_CONFIG $TARGET_LOCATION_SDDM
	




echo -e " \033[1;33m[ # TINT2 ]\033[0m "
sleep 1

		TINT2_CONFIG="/.installscripts/arch-openbox/2.GUI/config_files/tint2/"							
		TARGET_LOCATION_TINT2="~/.config/"


					# Replace configs with original files
					sudo cp -r --remove-destination $TINT2_CONFIG $TARGET_LOCATION_TINT2


}


############################################################################################
FINISH(){
############################################################################################


	# create home folders
	mkdir ~/Desktop ~/Images ~/Downloads ~/Music ~/Documents ~/Videos



	echo -e " \n\033[1;37m\033[41m[ !! ATTENTION !! ]\033[0m \n"
	sleep 2
	echo -e " \n\033[1;37m\033[44m[ Do you want SUDO commands ]\033[0m \n"
	sleep 2	
	echo -e " \n\033[1;33m\033[44m[ ...WITH PASSWORD (type : W ) \n...or WITHOUT PASSWORD ? (type : WO) \033[0m\n"	
		read sudo
		
		WITH='W'
		WITHOUT='WO'
		
		if [ $sudo == $WITH ]
		then
			echo "# [ SUDO PERMISSIONS WITH PASSWORD ] #"
			#echo -e " \n\033[1;37m\033[41m !! Run as ROOT !! :\n \033[0m\033[1;33m\033[41m . /.installscripts/openbox-i3/2.GUI/1-SUDOwithPASS.sh' \033[0m \n"
			sudo ./.installscripts/arch-openbox/2.GUI/1-SUDOwithPASS.sh
		
		else
			# [ SUDO PERMISSIONS WITHOUT PASSWORD ] #
			echo "# [ SUDO PERMISSIONS WITHOUT PASSWORD ENABLED ] #"
			# finish
			echo -e " \n\033[1;37m\033[44m[ !! INSTALLATION FINISHED !! ]\033[0m \n"
		fi

}

##############
# COMMANDS ###
##############
##			##
	BASE 	##
   CONFIG	##
   FINISH 	##
##			##
##############
##############
