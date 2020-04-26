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
		
			sudo pacman -Syy --noconfirm --needed xorg 
			sudo pacman -S --noconfirm --needed xorg-drivers
			sudo pacman -S --noconfirm --needed xterm							
						
								
		

		echo -e " \033[1;33m[ NETWORK DRIVERS ]\033[0m "
		sleep 4
		
			sudo pacman -S --noconfirm --needed networkmanager
			sudo pacman -S --noconfirm --needed network-manager-applet
			sudo pacman -S --noconfirm --needed tor		 	
				
				# Enable Service
					sudo systemctl enable NetworkManager
			
			
		

		echo -e " \033[1;33m[ AUDIO DRIVERS ]\033[0m "
		sleep 4
		
			sudo pacman -S --noconfirm --needed pulseaudio
			sudo pacman -S --noconfirm --needed alsa-utils
			sudo pacman -S --noconfirm --needed pulseaudio-alsa
			sudo pacman -S --noconfirm --needed pulseaudio-bluetooth
			sudo pacman -S --noconfirm --needed pulseaudio-jack
			sudo pacman -S --noconfirm --needed pavucontrol
			sudo pacman -S --noconfirm --needed volumeicon
			
			
		

		echo -e " \033[1;33m[ MULTIMEDIA CODECS ]\033[0m "
		sleep 4
				
			# Audio 
			sudo pacman -S --noconfirm --needed lame
			sudo pacman -S --noconfirm --needed libmad
			sudo pacman -S --noconfirm --needed faac
			sudo pacman -S --noconfirm --needed faad2
			sudo pacman -S --noconfirm --needed libvorbis
				
			# Image
			sudo pacman -S --noconfirm --needed openjpeg
				
			# Video
			sudo pacman -S --noconfirm --needed xvidcore
			sudo pacman -S --noconfirm --needed libmpeg2
			sudo pacman -S --noconfirm --needed x264 x265
			sudo pacman -S --noconfirm --needed gstreamer
			sudo pacman -S --noconfirm --needed gst-libav
			sudo pacman -S --noconfirm --needed gst-plugins-base
			sudo pacman -S --noconfirm --needed gst-plugins-base-libs
			sudo pacman -S --noconfirm --needed gst-plugins-good
			sudo pacman -S --noconfirm --needed gst-plugins-bad
			sudo pacman -S --noconfirm --needed gst-plugins-ugly
			sudo pacman -S --noconfirm --needed gstreamer-vaapi
				 					
			
		echo -e " \033[1;33m[ LOGIN MANAGER ]\033[0m "
		sleep 4
		
			sudo pacman -S --noconfirm --needed sddm 									
				
			# Enable Service
				sudo systemctl enable sddm
	
		

		echo -e " \033[1;33m[ WINDOW MANAGER ]\033[0m "
		sleep 4
		
			sudo pacman -S --noconfirm --needed openbox
			sudo pacman -S --noconfirm --needed lxappearance-obconf
			sudo pacman -S --noconfirm --needed	tint2
			sudo pacman -S --noconfirm --needed nitrogen
			sudo pacman -S --noconfirm --needed menumaker

			
		

		echo -e " \033[1;33m[ FONTS ]\033[0m "
		sleep 4
		
			sudo pacman -S --noconfirm --needed ttf-dejavu
			sudo pacman -S --noconfirm --needed ttf-bitstream-vera
			sudo pacman -S --noconfirm --needed ttf-liberation
			sudo pacman -S --noconfirm --needed ttf-inconsolata
			sudo pacman -S --noconfirm --needed ttf-anonymous-pro
			sudo pacman -S --noconfirm --needed ttf-font-awesome
				
  
				
		

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
			sudo pacman -S --noconfirm --needed filelight				# [ DISK USAGE APP ] 
			sudo pacman -S --noconfirm --needed screengrab				# [ SCREENSHOTS ]
		

		echo -e " \033[1;33m[ ESSENTIAL APPs ]\033[0m "
		sleep 4
		
			sudo pacman -S --noconfirm --needed albert 					# [ PROGRAM LAUNCHER ]
			sudo pacman -S --noconfirm --needed firefox qutebrowser		# [ WEB BROWSERS ]
			sudo pacman -S --noconfirm --needed transmission-gtk 		# [ TORRENT DOWNLOADER ]
			sudo pacman -S --noconfirm --needed neovim  				# [ TEXT EDITOR ]
			sudo pacman -S --noconfirm --needed zathura-pdf-mupdf 		# [ PDF VIEWER ]				
			sudo pacman -S --noconfirm --needed termite 				# [ TERMINAL ]
			sudo pacman -S --noconfirm --needed xarchiver 				# [ FILE EXTRACTION ]
			sudo pacman -S --noconfirm --needed intel-ucode				# [ INTEL CPU MICROCODE ]
			sudo pacman -S --noconfirm --needed curl					# [ WEB TOOL ]
			sudo pacman -S --noconfirm --needed openssh					# [ SSH CONNECTION TOOL ]
		
		

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
		
					yay -S --noconfirm --needed openbox-themes 
					yay -S --noconfirm --needed themix-gui-git
					yay -S --noconfirm --needed themix-icons-archdroid-git
					yay -S --noconfirm --needed themix-icons-numix-git
					yay -S --noconfirm --needed themix-theme-arc-git
					yay -S --noconfirm --needed themix-theme-materia-git

		

		echo -e " \033[1;33m[ OPENBOX TOOLS ]\033[0m "
		sleep 4
		
					yay -S --noconfirm --needed obmenu					# [ OB MENU EDITOR ]
					yay -S --noconfirm --needed spacefm 				# [ FILE EXPLORER ]
					yay -S --noconfirm --needed obkey 					# [ KEY BINDING ]
					yay -S --noconfirm --needed ob-autostart			# [ AUTOSTART APPS ]

}	

############################################################################################
FINISH(){
############################################################################################


	
	# Create autostart file for openbox
	mkdir ~/.config/openbox
	> ~/.config/openbox/autostart
	
	echo -e "
	# set resolution
	xrandr --size 1920x1080i &

	# set keyboard
	setxkbmap be &

	# set Panel
	tint2 &

	# start volume control
	volumeicon &

	# reset menu
	mmaker openbox -f -t xterm &
	
	# reset Wallpaper 
	nitrogen --restore " > ~/.config/openbox/autostart


	# SDDM config
	
	echo -e "
	# set resolution
	xrandr --size 1920x1080i &

	# set keyboard
	setxkbmap be & " > ~/sddm_autostart
	sudo cat ~/sddm_autostart >> /usr/share/sddm/scripts/Xsetup
	rm ~/sddm_autostart

	# set editor variables
		export VISUAL=nano
		export EDITOR=nano



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
			##
BASE		##
FINISH 	 	##
			##
##############
##############
