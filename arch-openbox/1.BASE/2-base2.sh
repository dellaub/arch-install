#!/bin/bash 
set -e 


#########################################################
############### ARCH LINUX INSTALL SCRIPT ###############
#########################################################
TITLE="BASE SYSTEM CONFIGURATION"

# [ STARTUP ] #
echo -e " \033[1;33m[ $TITLE ]\033[0m "




				
	# [ PART 2 ] #
	
		#	3.3	TIME ZONE

			TIME_ZONE(){

				echo -e "\033[36m[ What is your region ?  (i.e : Europe , Asia ...) ]\033[0m"
					read REGION

				echo -e "\033[36m[ what is the capital of your country ? (i.e : Brussels, Paris ...) ]\033[0m"
					read CITY

					# Set Timezone
						ln -sf /usr/share/zoneinfo/$REGION/$CITY /etc/localtime

					# Set Hardware clock
						hwclock --systohc
			}

		#	3.4	LOCALIZATION

				LOCALE(){

					# edit locale.gen
						sed 's/#en_US.UTF-8/en_US.UTF-8/g' /etc/locale.gen > /etc/locale.tmp

					# replace original 
						mv /etc/locale.tmp /etc/locale.gen

					# generate localization file
						locale-gen

					# create a language config file
						echo "LANG=en_US.UTF-8" > /etc/locale.conf
						export LANG=en_US.UTF-8
					
					# create a keyboard layout config file (presistent)
						echo "KEYMAP=be-latin1" > /etc/vconsole.conf	
						export KEYMAP=be-latin1
				}		
	
		#	3.5	NETWORK CONFIGURATION

				NETWORK1(){

					# Ask for host name
						echo -e "\033[32m[ SET HOSTNAME ]\033[0m"
							read HOST

					# set host name (computer name)
						echo "$HOST" > /etc/hostname

					# set static ip adresses
						echo "
						127.0.0.1	localhost
						::1		localhost
						127.0.1.1	$HOST.localdomain $HOST" >> /etc/hosts
				}
	
		#	3.7	ROOT PASSWORD

				ROOTPASS(){

						echo -e "\033[32m[ SET ROOT PASSWORD ]\033[0m"

					# set root password ( while root ) 
						passwd
				}

		#	2.1	SELECT THE MIRRORS
		
				MIRRORS(){
					# 4. Sync repositories, Create mirrorlist, & install latest keyring
						pacman -Syy --noconfirm
						pacman -Sy --noconfirm --needed archlinux-keyring
						pacman -Sy --noconfirm --needed reflector
					echo -e " \033[1;33m[ SETTING MIRRORS ] \033[0m  "
					sleep 1
						# get the fast mirrors
							reflector --protocol https --sort rate --save /etc/pacman.d/mirrorlist	
				}
				SYSADMIN(){
					
					#1	System administration
					TITLE="SYSTEM ADMINISTRATION"
					#	 [ STARTUP ] #
					echo -e " \033[1;33m[ $TITLE ]\033[0m "
				
					#		1.1	Users and groups
							# Ask for user
								echo -e "\033[32m[ SET USERNAME ]\033[0m"
								read USER
							# add user to wheel group
								useradd -m -G wheel $USER
							# set password
								echo -e " \033[1;33m[ SET PASSWORD FOR $USER ]\033[0m"
								passwd $USER
								
				
				#		1.2	Privilege elevation
							# enable sudo to the new user WITHOUT PASSWORD IS TEMPORARY
								sed 's/# %wheel ALL=(ALL) NOPASSWD: ALL/%wheel ALL=(ALL) NOPASSWD: ALL/g' /etc/sudoers > /etc/sudoers.tmp
								mv /etc/sudoers.tmp /etc/sudoers
				}
	
		#	3.8	BOOT LOADER
				BOOT_LOADER(){
					# download grub
						pacman -Sy --noconfirm --needed grub
					
					# install grub
						grub-install --target=i386-pc /dev/sda
					
					# make grub config file
						grub-mkconfig -o /boot/grub/grub.cfg
						mkinitcpio -p linux-lts
				}

	##################
	#### COMMANDS ####
	##				##
		TIME_ZONE	##
		LOCALE		##			
		NETWORK1	##
		ROOTPASS	##
		MIRRORS 	##
   		SYSADMIN	##
		BOOT_LOADER	##
	##				##
	#########################################################################################
	# 4	REBOOT  ########################################################################
		


			# [ INSTRUCTIONS TO CONTINUE INSTALLATION ] #

			echo -e " \n\033[1;37m\033[41m[ !! ATTENTION REBOOT AND REMOVE USB !! AFTER REBOOTING...]\033[0m \n"  
			sleep 2
			echo -e "\033[1;33m\033[44m[ WHEN PRESENTED WHIT A PROMPT...\n...RUN THIS COMMAND AS A LOW PRIVELEGE USER ]\n # \033[0m\033[1;37m\033[44m . /.installscripts/arch-openbox/1.BASE/3-AUR.sh \033[0m"
			sleep 2

		# [ INFORMATION TO UNMOUNT FROM THE USB AND ] #

			echo -e " \033[1;33m\033[44m[ 1 PLEASE, RUN THIS COMMAND #\033[1;37m exit \033[0m\033[1;33m]\033[0m "
			sleep 2
			echo -e " \033[1;33m\033[44m[ 2 THEN INSIDE THE ISO , RUN THIS COMMAND #\033[1;37m umount -a \033[0m\033[1;33m]\033[0m "
			sleep 2
			echo -e " \033[1;33m\033[44m[ 3 FINALLY REBOOT, WITH THIS COMMAND #\033[1;37m reboot \033[0m\033[1;33m]\033[0m "
			sleep 2

#######################################################################################
