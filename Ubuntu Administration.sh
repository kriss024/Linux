# Switch to the Root User
sudo su
passwd #changes passwords for user accounts

# 1 Update Ubuntu Linux
sudo apt update && sudo apt upgrade -y
sudo apt full-upgrade -y
sudo apt dist-upgrade -y

# In order to remove all locally downloaded deb packages and all other apt-get caches, execute the below command.
sudo apt-get autoremove -y
sudo apt-get clean -y

# Remove Old Kernels (If No Longer Required)
sudo apt-get autoremove --purge

# 2 Installing Additional Dependencies
sudo apt update
sudo apt install lsb-release -y
sudo apt install software-properties-common curl apt-transport-https ca-certificates -y
sudo apt install build-essential manpages-dev -y

# Installing Intel microcode firmware
sudo apt install intel-microcode

# Clipboard management
sudo apt install xclip

# Install Tilix Terminal Emulator
sudo apt install tilix

# net-tools, the collection of base networking utilities
sudo apt install net-tools

# Install Zip, Unzip, RAR and UnRAR
sudo apt install zip unzip
sudo apt install rar unrar

# Installing Git
sudo apt install git

# Installing Java
sudo apt update
sudo apt install default-jre
java -version

# Install Midnight Commander
sudo apt update
sudo apt install mc

# Tilde - Command Line Text Editors
sudo apt install tilde
tilde

# Installing Microsoft fonts
sudo apt install ttf-mscorefonts-installer
sudo fc-cache -f -v

# Configure a network interface
sudo apt install net-tools
ifconfig

# Checking IP Address
ifconfig

# In order to get a list of all TCP and UDP network services up-and-running by default in your Ubuntu server
sudo netstat -tulpn

# Ubuntu Linux install OpenSSH server
sudo apt update
sudo apt install openssh-server
ssh -V

sudo service ssh status
sudo ufw allow ssh

# 3 Check Firewall Status
sudo ufw enable
sudo ufw allow 22

sudo ufw status
sudo ufw status verbose
sudo ufw status numbered
sudo ufw app list
sudo ufw app info Samba

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

# Ubuntu Hyper-V Guest Display Resolution
sudo nano /etc/default/grub

# Change this line:
GRUB_CMDLINE_LINUX_DEFAULT="quiet splash"
# To this.
GRUB_CMDLINE_LINUX_DEFAULT="quiet splash video=hyperv_fb:1920x1080"

sudo update-grub

# Ubuntu 18.04: Change to dark theme on GNOME3
sudo apt install gnome-tweak-tool
gnome-tweaks
# Change "Applications" to "Adwaita-dark" at "Themes" of "Appearance".

# Install and Configure Samba
sudo apt update
sudo apt install samba
smbd --version

mkdir -p /home/<username>/Publiczny

sudo mkdir -p /home/<username>/Publiczny
sudo chmod 0777 /home/<username>/Publiczny

# Configure Samba
sudo nano /etc/samba/smb.conf

# Open the configuration file
[global]
  workgroup = WORKGROUP
  netbios name = samba
  security = user

# Scroll down and add
[Publiczny]
   comment = Samba on Ubuntu
   path = /home/krzysiek/Publiczny
   browsable = yes
   read only = no
   writable = yes
   guest only = yes
   force create mode = 0666
   force directory mode = 0777

# How to add a user to Samba
sudo smbpasswd -a <username>

# Restart Samba
sudo service smbd restart
sudo ufw allow samba

# On Windows, open up File Manager and edit the file path to:
\\ip-address\Publiczny

# How to Assign Static IP Address
ip add show
netstat -r -n

sudo vi /etc/netplan/00-installer-config.yaml

network:
  ethernets:
    enp0s3:
      dhcp4: false
      addresses: [192.168.1.3/24]
      gateway4: 192.168.1.1
      nameservers:
        addresses: [4.2.2.2, 8.8.8.8]
  version: 2

sudo netplan apply
