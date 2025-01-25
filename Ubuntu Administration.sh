# Switch to the Root User
sudo su
passwd #changes passwords for user accounts

# 1 Update Ubuntu Linux
sudo apt update && sudo apt upgrade -y
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

# Install Zip, Unzip, RAR and UnRAR
sudo apt install zip unzip
sudo apt install rar unrar

# Install Thunar File Manager
sudo apt install thunar 

# Install Midnight Commander
sudo apt update
sudo apt install mc

# Tilde - Command Line Text Editors
sudo apt install tilde
tilde

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

# Checking IP Address
ifconfig

# In order to get a list of all TCP and UDP network services up-and-running by default in your Ubuntu server
sudo netstat -tulpn

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

# Ubuntu Hyper-V Guest Display Resolution
sudo nano /etc/default/grub

# Change this line:
GRUB_CMDLINE_LINUX_DEFAULT="quiet splash"
# To this.
GRUB_CMDLINE_LINUX_DEFAULT="quiet splash video=hyperv_fb:1920x1080"

sudo update-grub

# Installing GNOME Shell Extensions
sudo apt-get update
sudo apt install gnome-shell-extension-manager
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
  workgroup = WORKGROUP       # Default workgroup name for Windows networks
  server string = Samba Server %v
  security = user             # Requires users to authenticate

# Public share - read-only for everyone
[Public]
   comment = Samba on Ubuntu
   path = /srv/samba/public
   browsable = yes
   writable = no
   guest ok = yes
   read only = yes
   
# Private share - authenticated users only
[Private]
   comment = Samba on Ubuntu
   path = /home/krzysiek/Publiczny
   browsable = yes
   writable = yes
   guest ok = no
   valid users = @smbusers
   create mask = 0660
   directory mask = 0770

# How to add a user to Samba
sudo smbpasswd -a <username>

# Restart Samba
sudo service smbd restart
sudo ufw allow samba

# On Windows, open up File Manager and edit the file path to:
\\ip-address\Publiczny

# From Linux, open up File Manager
smb://ip-address/Publiczny

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
