# 1.Naprawa błędu cdrom w sources.lst
  sudo nano /etc/apt/sources.lst
  
# 2.Repozytoria contrib i non-free i pełny update systemu
   sudo apt update && sudo apt upgrade -y && sudo apt dist-upgrade -y && sudo apt autoremove -y && sudo apt install -y lsb-release

# 3.Różny firmware
	sudo apt install firmware-realtek firmware-atheros firmware-linux firmware-linux-nonfree firmware-misc-nonfree

# 4.Tilix i autouzupełnianie basha
	sudo apt install bash-completion tilix
# 	Edytuj:
	~/.bashrc
	if [ -f /etc/bash_completion ]; then
        . /etc/bash_completion
        fi

# Potem w terminalu: source .bashrc

# 5. Sterowniki GPU
#      Stery nvidia
	sudo apt install nvidia-detect
	sudo nvidia-detect
	sudo apt install nvidia-driver nvidia-settings 
# Stery AMD
#      Podstawowe:
	sudo apt install libdrm-amdgpu1 xserver-xorg-video-amdgpu
#      Gry i vulkan:
	sudo apt install mesa-vulkan-drivers libvulkan1 vulkan-tools vulkan-validationlayers

# 6.DLA WIFI BROADCOM
sudo apt install broadcom-sta-dkms broadcom-sta-common firmware-brcm80211 firmware-iwlwifi

# 7.Bluetooth
 sudo apt install bluetooth bluez bluez-firmware bluez-cups bluez-tools firmware-atheros firmware-iwlwifi pulseaudio-module-bluetooth pulseaudio-module-zeroconf

# 8.Backporty instalacja
	su - -c 'mkdir -p /etc/apt/sources.list.d && \
	echo -e "deb http://deb.debian.org/debian $(lsb_release -cs)-backports main contrib non-free\ndeb-src http://deb.debian.org/debian $(lsb_release -cs)-backports main contrib non-free\n" | \
tee /etc/apt/sources.list.d/debian-backports.list && \
apt update'

# Instalacja z backportów
      sudo apt -t bullseye-backports install <package name>


# 9. Mikrokod 
 	sudo apt install intel-microcode
#  lub
 	sudo apt install amd64-microcode

# 10.Do kompilacji
	sudo apt install build-essential dkms linux-headers-$(uname -r)

# 11.Dodaj architekturę 32bit np do wine
	sudo dpkg --add-architecture i386

# 12.Zainstaluj isenkram - auto instalacja firmware jezeli brakuje lub pokaze gui
	sudo apt install isenkram-cli
	sudo isenkram-autoinstall-firmware

# 13. Dodatki - czcionki microsoft, kodeki itp
	sudo apt install ffmpeg ttf-mscorefonts-installer rar unrar libavcodec-extra gstreamer1.0-libav gstreamer1.0-plugins-ugly gstreamer1.0-vaapi

# 14. Ustawienie zarzadzania swapowaniem
	cat /proc/sys/vm/swappiness # 60 (default)
	sudo nano /etc/sysctl.conf - vm.swappiness=10

# 15. Napraw aplikacje QT
	sudo apt install qt5-style-plugins
	echo "export QT_QPA_PLATFORMTHEME=gtk2" >> ~/.profile

# 16. GRUB przyspiesz - nie wolno 0!
	sudo nano /etc/default/grub

# 17. timeshift obowiązkowo
	sudo apt install timeshift
	
# 18. dla laptopów
	sudo apt install tlp

# 19. Polecam programy
	sudo apt xfce4-goodies inxi neofetch mc git bpytop bat