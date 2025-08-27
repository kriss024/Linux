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