#!/bin/bash 
set -e 


#########################################################
############### ARCH LINUX INSTALL SCRIPT ###############
#########################################################
TITLE="GRAPHICAL USER INTERFACE INSTALLATION"

# [ STARTUP ] #
echo -e " \033[1;33m[ $TITLE ]\033[0m \n\n"

# [ SCRIPT ] #

TITLE1="DISPLAY SERVER AND GRAPHICAL DRIVERS INSTALLATION"

# [ STARTUP ] #
echo -e " \033[1;33m[ $TITLE1 ]\033[0m "
sleep 4
	

##########################################################################################
BASE(){
##########################################################################################

				# DISPLAY 
				
				sudo pacman -Syy --noconfirm --needed xorg xorg-drivers xterm							
							
									
				# NETWORK
				sudo pacman -S --noconfirm --needed networkmanager network-manager-applet tor		 	
					
					# Enable Service
						sudo systemctl enable NetworkManager
				
				# AUDIO
				sudo pacman -S --noconfirm --needed pulseaudio alsa-utils pulseaudio-alsa pulseaudio-bluetooth pulseaudio-jack pavucontrol volumeicon				# Audio drivers
				
				

				# CODECS

					# Audio 
					sudo pacman -S --noconfirm --needed lame libmad faac faad2 libvorbis
					
					# Image
					sudo pacman -S --noconfirm --needed openjpeg
					
					# Video
					sudo pacman -S --noconfirm --needed xvidcore libmpeg2 x264 x265 gstreamer gst-libav gst-plugins-base gst-plugins-base-libs gst-plugins-good gst-plugins-bad gst-plugins-ugly gstreamer-vaapi
					 					
				
				# LOGIN
				sudo pacman -S --noconfirm --needed sddm 									
					
					# Enable Service
						sudo systemctl enable sddm

				# WINDOW MANAGER
				sudo pacman -S --noconfirm --needed openbox lxappearance-obconf	tint2 nitrogen menumaker
						yay -S --noconfirm --needed obmenu spacefm obkey ob-autostart

				# FONTS
				sudo pacman -S --noconfirm --needed ttf-dejavu ttf-bitstream-vera ttf-liberation ttf-inconsolata ttf-anonymous-pro ttf-font-awesome
				

				# GTK THEMES
						yay -S --noconfirm --needed openbox-themes 
						yay -S --noconfirm --needed themix-gui-git
						yay -S --noconfirm --needed themix-icons-archdroid-git
						yay -S --noconfirm --needed themix-icons-numix-git
						yay -S --noconfirm --needed themix-theme-arc-git
						yay -S --noconfirm --needed themix-theme-materia-git

				# ESSENTIAL APPS
				sudo pacman -S --noconfirm --needed albert redshift firefox neovim qutebrowser transmission-gtk deepin-clone gnome-multi-writer udisks2 udiskie gparted k3b guvcview galculator zathura-pdf-mupdf audacious vlc nomacs termite bleachbit simple-scan xarchiver htop lxtask lxrandr lxinput blueman intel-ucode
						yay -S --noconfirm --needed sublime-text-dev freeoffice pamac-aur
			# pacman  
				
				# albert 			[ PROGRAM LAUNCHER ]
				# redshift 			[ COLOR CALIBRATION ]
				# firefox qutebrowser	[ WEB BROWSERS ]
				# transmission-gtk 	[ TORRENT DOWNLOADER ]
				# neovim  			[ TEXT EDITOR ]
				# deepin-clone 		[ DISK BACKUP TOOL ]
				# gnome-multi-writer 	[ISO WRITER]
				# udisks2 udiskie 	[ DISK MOUNTER ]
				# gparted 			[ DISK MANAGMENT ]
				# k3b 				[ CD DVD RIPPER ]
				# guvcview	 		[ WEBCAM SOFTWARE ]
				
				# galculator 		[ CALCULATOR ]
				# zathura-pdf-mupdf [ PDF VIEWER ]	
				# audacious 		[ MUSIC PLAYER ]
				# vlc 				[ VIDEO PLAYER ]
				# nomacs 			[ IMAGE VIEWER ]
				
				# termite 			[ TERMINAL ]
				# bleachbit 		[ DISK CLEANER ]
				# simple-scan 		[ SCANNER SOFTWARE ]
				# xarchiver 		[ FILE EXTRACTION ]
				# htop 				[ PROCESS COSUMPTION VIEWER ]
				
				# lxtask 			[ TASK MANAGER ]
				# lxrandr 			[ DISPLAY SETTINGS ]	
				# lxinput 			[ KEYBOARD AND MOUSE SETTINGS ]	
				# blueman 			[ BLUETOOTH MANAGER ]
				# intel-ucode		[ INTEL CPU MICROCODE ]

			# yay 
				# sublime-text-dev 	[ TEXT EDITOR ]
				# freeoffice 		[ PRODUCTIVITY ]
				# pamac-aur			[ PACKAGE MANAGMENT ]

}


#########################################################
############### ARCH LINUX INSTALL SCRIPT ###############
#########################################################

TITLE2="DESKTOP ENVIRONMENT INSTALLATION"

# [ STARTUP ] #
echo -e " \033[1;33m[ $TITLE2 ]\033[0m "
sleep 4




############################################################################################
INTERNET(){
############################################################################################
	
		echo -e " \033[1;33m[01-INTERNET-NETWORK CONNECTION]\033[0m "
		sleep 4
			sudo pacman -Sy --noconfirm --needed networkmanager network-manager-applet openvpn tor
		
		echo -e " \033[1;33m[01-INTERNET-WEB BROWERS]\033[0m "
		sleep 4
			
			sudo pacman -S --noconfirm --needed qutebrowser
				yay -S --noconfirm --needed brave-bin
		
		echo -e " \033[1;33m[01-INTERNET-FILE SHARING]\033[0m "
		sleep 4

			# Downloaders , FTP and ssh 
			sudo pacman -S --noconfirm --needed git curl wget youtube-dl filezilla openssh qbittorrent
		
		echo -e " \033[1;33m[01-INTERNET-COMMUNICATION]\033[0m "
		sleep 4

			# IRC and Chat apps
			sudo pacman -S --noconfirm --needed	weechat discord
					yay -S --noconfirm --needed skypeforlinux-stable-bin
}

############################################################################################
MULTIMEDIA(){
############################################################################################

		echo -e " \033[1;33m[02-MULTIMEDIA-CODECS]\033[0m "
		sleep 4

			# Audio 
			sudo pacman -S --noconfirm --needed lame libmad faac faad2 libvorbis
			
			# Image
			sudo pacman -S --noconfirm --needed openjpeg
			
			# Video
			sudo pacman -S --noconfirm --needed xvidcore libmpeg2 x264 x265 gstreamer gst-libav gst-plugins-base gst-plugins-base-libs gst-plugins-good gst-plugins-bad gst-plugins-ugly gstreamer-vaapi

		echo -e " \033[1;33m[02-MULTIMEDIA-IMAGE]\033[0m "
		sleep 4
			
			# Image editor 
			sudo pacman -S --noconfirm --needed imagemagick gimp #inkscape
			
			# Image viewer
			sudo pacman -S --noconfirm --needed qiv

		echo -e " \033[1;33m[02-MULTIMEDIA-AUDIO]\033[0m "
		sleep 4
		
			# Audio server
			sudo pacman -S --noconfirm --needed pulseaudio alsa-utils pulseaudio-alsa pulseaudio-bluetooth pulseaudio-jack paprefs pavucontrol
	 		
			# Music Player
			sudo pacman -S --noconfirm --needed audacious cmus
			
	 		# Audio tools 
			sudo pacman -S --noconfirm --needed audacity sonic-visualiser 

			# CD / DVD ripper
			sudo pacman -S --noconfirm --needed k3b

		echo -e " \033[1;33m[02-MULTIMEDIA-VIDEO]\033[0m "
		sleep 4

			# webcam 
			sudo pacman -S --noconfirm --needed guvcview ffmpeg

			# Video player
			sudo pacman -S --noconfirm --needed mpv vlc 

		echo -e " \033[1;33m[02-MULTIMEDIA-MOBILE DEVICE MANAGER]\033[0m "
		sleep 4

			# File transfer (android)
			sudo pacman -S --noconfirm --needed android-file-transfer
}

############################################################################################
UTILITIES(){
############################################################################################

		


		echo -e " \033[1;33m[03-UTILITIES-TERMINAL]\033[0m "
		sleep 4

			# emulators
			sudo pacman -S --noconfirm --needed termite

			# Shells
			sudo pacman -S --noconfirm --needed zsh  zsh-autosuggestions  zsh-completions  zsh-syntax-highlighting 

		echo -e " \033[1;33m[03-UTILITIES-FILES]\033[0m "
		sleep 4

			# File Manager 
			sudo pacman -S --noconfirm --needed vifm #pcmanfm
			
			# Files Archiver
			sudo pacman -S --noconfirm --needed xarchiver

		echo -e " \033[1;33m[03-UTILITIES-DEVELOPMENT]\033[0m "
		sleep 4

			# Integrated Development Environment (IDE)
			sudo pacman -S --noconfirm --needed geany
	 

		echo -e " \033[1;33m[03-UTILITIES-TEXT INPUT]\033[0m "
		sleep 4

			# On screen keyboard
			sudo pacman -S --noconfirm --needed onboard


		echo -e " \033[1;33m[03-UTILITIES-DISKS]\033[0m "
		sleep 4

			# Partition tools
			sudo pacman -S --noconfirm --needed gparted
			
			# Mount tools
			sudo pacman -S --noconfirm --needed udevil
			
			# Disk usage 
			sudo pacman -S --noconfirm --needed filelight
			
			# Disk Cleaning
			sudo pacman -S --noconfirm --needed bleachbit
			
			# Disk image writer
				yay -S --noconfirm --needed isoimagewriter

		echo -e " \033[1;33m[03-UTILITIES-SYSTEM]\033[0m "
		sleep 4

			# Fonts 
			sudo pacman -S --noconfirm --needed ttf-dejavu ttf-bitstream-vera ttf-liberation ttf-inconsolata ttf-anonymous-pro ttf-font-awesome
			
			# Themes
			sudo pacman -S --noconfirm --needed mate-themes 
			
			# Icons
			sudo pacman -S --noconfirm --needed papirus-icon-theme
			#		yay -S --noconfirm --needed yltra-flat-icons

			# Compositing
			sudo pacman -S --noconfirm --needed picom
			
			# Task Manager
			sudo pacman -S --noconfirm --needed htop lxtask

			# System monitor 
			sudo pacman -S --noconfirm --needed conky conky-manager dstat netdata sysstat lm_sensors

			# System information
			sudo pacman -S --noconfirm --needed neofetch

			# Font viewers
			#		yay -S --noconfirm --needed font-manager

			# Screen management
			#sudo pacman -S --noconfirm --needed xorg-xrandr   

			# Color Calibration
			sudo pacman -S --noconfirm --needed displaycal

			# Printers
			#sudo pacman -S --noconfirm --needed print-manager

			# Bluetooth manager
			sudo pacman -S --noconfirm --needed blueman 
			
			# Package Manager
				yay -S --noconfirm --needed pamac-aur
			
			# Microcode updates
				
				# Intel CPU
				sudo pacman -S --noconfirm --needed intel-ucode
				
				# AMD CPU
				#sudo pacman -S --noconfirm --needed amd-ucode
				
}

############################################################################################
DOCUMENTS(){
############################################################################################

		echo -e " \033[1;33m[04-DOCUMENTS-TEXT EDITOR]\033[0m "
		sleep 4
		
			# Console
			sudo pacman -S --noconfirm --needed neovim 
			
			# GUI
					yay -S --noconfirm --needed sublime-text-dev
		
		echo -e " \033[1;33m[04-DOCUMENTS-OFFICE]\033[0m "
		sleep 4
		
			# Productivity
					yay -S --noconfirm --needed freeoffice

			# Scanning
			sudo pacman -S --noconfirm --needed simple-scan #scantailor

		
		echo -e " \033[1;33m[04-DOCUMENTS-READERS and VIEWERS]\033[0m "
		sleep 4

			# PDF
			sudo pacman -S --noconfirm --needed zathura  zathura-pdf-mupdf
			
			# E-book
			sudo pacman -S --noconfirm --needed bookworm
			
			# Comic book
			#sudo pacman -S --noconfirm --needed mcomix

		
		echo -e " \033[1;33m[04-DOCUMENTS-ACCESSORIES]\033[0m "
		sleep 4

			# Note Taking 
				yay -S --noconfirm --needed simplenote-electron-bin
			
			# Sticky notes
			#sudo pacman -S --noconfirm --needed knotes

			# Dictionary
			sudo pacman -S --noconfirm --needed xfce4-dict

}

############################################################################################
SECURITY(){
############################################################################################

		echo -e " \033[1;33m[05-SECURITY-THREAT AND VULNERABLITY DETECTION]\033[0m "
		sleep 4

			# system security auditing tool
			sudo pacman -S --noconfirm --needed lynis

		echo -e " \033[1;33m[05-SECURITY-ANTI MALWARE]\033[0m "
		sleep 4
		
			# "Antivirus"
			sudo pacman -S --noconfirm --needed clamav
		
		echo -e " \033[1;33m[05-SECURITY-FIREWALL]\033[0m "
		sleep 4

			# GUI
			sudo pacman -S --noconfirm --needed fwbuilder

		echo -e " \033[1;33m[05-SECURITY-ENCRYPTION]\033[0m "
		sleep 4

			# Disk encryption
			sudo pacman -S --noconfirm --needed truecrypt

		echo -e " \033[1;33m[05-SECURITY-ADMIN TOOLS]\033[0m "
		sleep 4

			# Privilege escalation
			sudo pacman -S --noconfirm --needed opendoas

}

############################################################################################
SCIENCE(){
############################################################################################
	
		echo -e " \033[1;33m[06-SCIENCE-MATHEMATICS]\033[0m "
		sleep 4

			# Calculator
			sudo pacman -S --noconfirm --needed bc galculator 
}

############################################################################################		
EXTRA(){
############################################################################################
	
		echo -e " \033[1;33m[07-EXTRA-ORGANIZATION]\033[0m "
		sleep 4
		
			# Project management
			#sudo pacman -S --noconfirm --needed caligra-plan

		echo -e " \033[1;33m[07-EXTRA-DISPLAY MANAGER]\033[0m "
		sleep 4
		
			# Greeter 
			sudo pacman -S --noconfirm --needed lightdm lightdm-gtk-greeter lightdm-gtk-greeter-settings

		echo -e " \033[1;33m[07-EXTRA-DESKTOP EVIRONMENT]\033[0m "
		sleep 4
		
			# Openbox
			sudo pacman -S --noconfirm --needed menumaker
					yay -S --noconfirm --needed obmenu		

		echo -e " \033[1;33m[07-EXTRA-WINDOW MANAGER]\033[0m "
		sleep 4
		
			# i3
			sudo pacman -S --noconfirm --needed i3-gaps i3lock i3blocks i3status

		echo -e " \033[1;33m[07-EXTRA-TASKBARS]\033[0m "
		sleep 4
		
			# Panel bar
			sudo pacman -S --noconfirm --needed tint2

			# System tray
			#sudo pacman -S --noconfirm --needed trayer	


		echo -e " \033[1;33m[07-EXTRA-LAUNCHERS]\033[0m "
		sleep 4
			
			# Application
			sudo pacman -S --noconfirm --needed albert dmenu
		

		echo -e " \033[1;33m[07-EXTRA-WALLPAPER]\033[0m "
		sleep 4
		
			# Settings
			sudo pacman -S --noconfirm --needed nitrogen #variety


		echo -e " \033[1;33m[07-EXTRA-VIRTUALIZATION]\033[0m "
		sleep 4

			# Opertating System
			sudo pacman -S --noconfirm --needed virtualbox virtualbox-guest-utils xf86-video-vmware

}

############################################################################################
FINISH(){
############################################################################################


	
	# Create autostart file for openbox
	mkdir ~/.config/openbox
	> ~/.config/openbox/autostart
	
	echo -e "
	# set resolution
	xrandr --size 1680x1050 &

	# set keyboard
	setxkbmap be &

	# set Panel
	tint2 &

	# start volume control
	volumeicon &

	# reset menu
	mmaker openbox -f -t xterm &
	
	# reset Wallpaper 
	nitrogen --restore &

	# open music player
	audacious


	" > ~/.config/openbox/autostart

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
			sudo ./.installscripts/openbox-i3/2.GUI/1-SUDOwithPASS.sh
		
		else
			# [ SUDO PERMISSIONS WITHOUT PASSWORD ] #
			echo "# [ SUDO PERMISSIONS WITHOUT PASSWORD ENABLED ] #"
			# finish
			echo -e " \n\033[1;37m\033[44m[ !! INSTALLATION FINISHED !! ]\033[0m \n"
		fi
}

##############
# COMMANDS ###
BASE			##
#INTERNET 	##
#MULTIMEDIA 	##
#UTILITIES 	##
#DOCUMENTS 	##
#SECURITY 	##
#SCIENCE 	##
#EXTRA 		##
FINISH 	 	##
			##
##############
##############
