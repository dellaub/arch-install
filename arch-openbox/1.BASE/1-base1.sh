#!/bin/bash 
set -e 


#########################################################
############### ARCH LINUX INSTALL SCRIPT ###############
#########################################################
TITLE="BASE SYSTEM INSTALLATION"

# [ STARTUP ] #
echo -e " \033[1;33m[ $TITLE ]\033[0m "


# [ ORDER ] # 

	#[ PART 1 ]#

		#   1.6 UPDATE SYSTEM CLOCK
				timedatectl set-ntp true

		# 1	 Pre-installation

		#	1.7	PARTITION THE DISKS

				PARTITION(){
					
					echo -e " \033[1;33m[ STARTING DISK PARTITIONING ]\033[0m "
					
						cfdisk	
					}

		#	1.8	FORMAT THE PARTITIONS

				FORMAT_EXT4(){

					echo -e " \033[1;33m[ MAKING FILESYSTEMS ]\033[0m "

					# show partitions to choose from
						lsblk | grep sd

					# list the correct partitions name

						echo -e "\033[34m[ what the name of the boot partition? [sdx(?n)] ]\033[0m"
							read boot

						echo -e "\033[34m[ what the name of the swap partition? [sdx(?n)] ]\033[0m"
							read swap

						echo -e "\033[34m[ what the name of the home partition? [sdx(?n)] ]\033[0m"
							read home

						echo -e "\033[34m[ what the name of the root partition? [sdx(?n)] ]\033[0m"
							read root

					# make filesystem in /boot & /home & /mnt
				 			mkfs.ext4 /dev/$boot
							mkfs.ext4 /dev/$home
							mkfs.ext4 /dev/$root
					# make swap partition 
							mkswap /dev/$swap
					# enable swap partition 
							swapon /dev/$swap
				}

		#	1.9	MOUNT THE FILE SYSTEMS

				MOUNTFILESYS(){
				
					echo -e " \033[1;33m[ MOUNTING FILESYSTEMS ]\033[0m  "

						# mount filesystem in root partition as /mnt 
							mount /dev/$root /mnt
						# create home and boot folder within /mnt
							mkdir /mnt/home /mnt/boot 
						# mount the partitions to their respective folder
							mount /dev/$boot /mnt/boot
							mount /dev/$home /mnt/home
						# check partitions	
							lsblk | grep sd
				}

		# 	1.10 MOVESCRIPTS 

				MOVESCRIPTS(){
				
					echo -e " \033[1;33m[ MOVING INSTALL SCRIPTS INTO THE SYSTEM ]\033[0m  "

						# create home and boot folder within /mnt
							mkdir /mnt/.installscripts 
						
						# copy the parts of the installation to the system
							cp -r ~/arch-install/openbox-i3 /mnt/.installscripts 
				
						
						# make them executable
							chmod +x /mnt/.installscripts/openbox-i3/1.BASE/1-base1.sh
							chmod +x /mnt/.installscripts/openbox-i3/1.BASE/2-base2.sh
							chmod +x /mnt/.installscripts/openbox-i3/1.BASE/3-AUR.sh

							chmod +x /mnt/.installscripts/openbox-i3/2.GUI/0-GUI_installation.sh
							chmod +x /mnt/.installscripts/openbox-i3/2.GUI/1-SUDOwithPASS.sh
				}	

		# 2	Installation

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

		#	2.2	INSTALL ESSENTIAL PACKAGES
				
					ESSENTIAL(){
					
						echo -e " \033[1;33m[ STARTING KERNEL AND FIRMWARE INSTALLATION ]\033[0m  "
						sleep 1
							
							# update repositories
								pacman -Sy 		
							

								pacstrap /mnt base base-devel pacman-contrib linux-lts linux-firmware linux-lts-headers nano vim man-db dhcpcd 
		
					}			

		# 3	Configure the system

			#	3.1	FSTAB
					
					FSTAB(){
						
						echo -e " \033[1;33m[ GENERATING FILESYSTEM TABLES ]\033[0m  "
						sleep 1

							# Generate an fstab file
								genfstab -U /mnt >> /mnt/etc/fstab
					}
###### COMMANDS ######
##					##
	PARTITION 		##
	FORMAT_EXT4		##
	MOUNTFILESYS	##
	MOVESCRIPTS		##
	MIRRORS 		##
	ESSENTIAL 		##
	FSTAB 			##
##					##
######################


	echo -e " \033[1;33m\033[44m[ PLEASE, WHEN YOU LOG IN AS ROOT: ]\033[0m "
	sleep 2
	echo -e " \033[1;33m\033[44m[ 1 RUN THIS COMMAND $\033[1;37m . /.installscripts/openbox-i3/1.BASE/2-base2.sh \033[0m\033[1;33m]\033[0m "
	sleep 2
	
		
	
			#	3.2	CHROOT
	
				CHROOT(){
				
					echo -e " \033[1;33m[ LOGIN IN AS ROOT ]\033[0m  "
					sleep 1
	
						# LOG AS ROOT IN /mnt
							arch-chroot /mnt
				}

############		
	CHROOT ##
############
