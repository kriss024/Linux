# Switch to the Root User
sudo su
passwd #changes passwords for user accounts

# To show details about your machine hostname run the following command.
hostnamectl
lsb_release -a
free -m
lscpu
df -h

# Display Linux distro version
cat /etc/*-release

# Update Ubuntu Linux
sudo apt update -y && sudo apt upgrade -y
sudo apt-get dist-upgrade -y

# In order to remove all locally downloaded deb packages and all other apt-get caches, execute the below command.
sudo apt-get autoremove -y
sudo apt-get clean -y

sudo apt install -y lsb-release

# Remove Old Kernels (If No Longer Required)
sudo apt-get autoremove --purge

# Check Firewall Status
sudo ufw enable
sudo ufw allow 22

sudo ufw status
sudo ufw status verbose
sudo ufw status numbered
sudo ufw app list
sudo ufw app info Samba

# Configure a network interface
sudo apt install net-tools
ifconfig

# Checking IP Address
ifconfig

# In order to get a list of all TCP and UDP network services up-and-running by default in your Ubuntu server
sudo netstat -tulpn

# How to Shut Down Ubuntu
sudo shutdown now
sudo reboot

# Ubuntu Linux install OpenSSH server
sudo apt update
sudo apt install openssh-server
ssh -V

sudo service ssh status
sudo ufw allow ssh

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

# Installing Intel microcode firmware
sudo apt install intel-microcode

# Install and Configure Samba
sudo apt update
sudo apt install samba
smbd --version

mkdir -p /home/<username>/Publiczny

sudo chmod -R 755 /home/<username>/Publiczny
sudo chown -R nobody:nobody /home/<username>/Publiczny
sudo chcon -t samba_share_t /home/<username>/Publiczny

sudo nano /etc/samba/smb.conf

# Look for this line:
workgroup = WORKGROUP

# Scroll down and add
[Publiczny]
   comment = Samba on Ubuntu
   path = /home/krzysiek/Publiczny
   browseable = yes
   public = yes
   read only = no
   writable = yes
   guest only = yes
   force create mode = 0666
   force directory mode = 0777
   
# Then press Ctrl-O to save and Ctrl-X to exit from the nano text editor.

sudo service smbd restart
sudo ufw allow samba

# How to add a user to Samba
sudo smbpasswd -a <username>

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