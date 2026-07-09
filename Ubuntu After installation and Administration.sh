# Switch to the Root User
sudo su
passwd #changes passwords for user accounts

# 1 Update Ubuntu Linux
sudo apt update && sudo apt upgrade -y

# Upgrade all the packages to the latest version
sudo apt update
sudo apt -y full-upgrade

# Upgrades to new Ubuntu versions/releases
sudo do-release-upgrade -d
sudo do-release-upgrade

# In order to remove all locally downloaded deb packages and all other apt-get caches, execute the below command.
sudo apt-get autoclean
sudo apt-get clean
sudo apt-get autoremove

# Remove Old Kernels (If No Longer Required)
sudo apt-get autoremove --purge

# 2 Installing Additional Dependencies
sudo apt update
sudo apt install -y lsb-release
sudo apt install -y linux-generic
sudo apt install -y software-properties-common curl apt-transport-https ca-certificates
sudo apt install -y build-essential automake bison cmake flex gcc-multilib gdb g++-multilib libelf-dev libltdl-dev m4 swig
sudo apt install -y sysstat chrpath cifs-utils net-tools nfs-common pm-utils samba-common samba-libs 

# Installing Remote Sync
sudo apt install rsync

# Installing Synaptic Package Manager
sudo apt-get install synaptic

# Clipboard management
sudo apt install xsel

# Install Tilix Terminal Emulator
sudo apt install tilix

# Install Zip, Unzip, RAR and UnRAR
sudo apt install zip unzip
sudo apt install rar unrar

# Install Midnight Commander
sudo apt update
sudo apt install mc

# Tilde - Command Line Text Editors
sudo apt install tilde
tilde

# Microsoft Edit with snap
sudo apt update
sudo snap install msedit --classic

# Installing Git
sudo apt install git

# Installing Java
sudo apt update
sudo apt install default-jre
java -version

# Installing Microsoft fonts
sudo apt install ttf-mscorefonts-installer
sudo fc-cache -f -v

# Configure a network interface
sudo apt install net-tools
ifconfig

# Ubuntu Linux install OpenSSH server
sudo apt update
sudo apt install openssh-server
ssh -V
sudo service ssh status

# 3 Firewalls
# ufw by default is initially disabled.
sudo nano /etc/default/ufw
IPV6=yes

# To set the default UFW incoming policy to deny, run:
sudo ufw default deny incoming
sudo ufw default allow outgoing
sudo ufw allow OpenSSH
sudo ufw allow ssh

# Enabling UFW
sudo ufw enable
sudo ufw status

# Remember, once UFW enabled, it runs across system reboots too.
# We can verify that easily as follows using the systemctl command:
sudo systemctl status ufw.service

sudo ufw status verbose
sudo ufw status numbered
sudo ufw app list
sudo ufw app info Samba

sudo ufw reload

# How to Shut Down Ubuntu
sudo shutdown now
sudo reboot

# To show details about your machine hostname run the following command.
hostnamectl
lsb_release -a
free -m
lscpu
df -h

# Display Linux distro version
cat /etc/*-release

# Installing GNOME Shell Extensions
sudo apt-get update
sudo apt install gnome-tweak-tool
gnome-tweaks
# Change "Applications" to "Adwaita-dark" at "Themes" of "Appearance".
sudo apt install gnome-shell-extension-manager

# Installing Snap
sudo apt update
sudo apt install snapd

# Optional - Enable Snap services
sudo systemctl enable --now snapd.socket

# Optional - Install a test Snap package
snap install hello-world
hello-world

# Installing Flatpak
sudo apt install flatpak
sudo apt install gnome-software-plugin-flatpak
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
flatpak remotes