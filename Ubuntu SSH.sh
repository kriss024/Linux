# Install ssh on Ubuntu
sudo apt-get update
sudo apt-get upgrade
sudo apt-get install openssh-server

sudo systemctl enable ssh
# OR enable and start the ssh service immediately ##
sudo systemctl enable ssh --now

sudo systemctl start ssh
sudo systemctl status ssh.service

# SSH Configuration
# Creating Host Keys on Server
# ssh-keygen
mkdir -p ~/.ssh
ssh-keygen

# Once you have generated the keys, they are stored in the ~/.ssh/ directory with the following permissions:
chmod 700 ~/.ssh
chmod 600 ~/.ssh/id_rsa
chmod 644 ~/.ssh/id_rsa.pub

# Optional syntax for advance users
ssh-keygen -t rsa -b 4096 -f .ssh/s_home -C "serwer123456"

# ls ~/.ssh
# Private key -> s_home or id_rsa
# Public key -> s_home.pub or id_rsa.pub

# The public key is uploaded to a remote server that you want to be able to log into with SSH. 
# The key is added to a special file within the user account you will be logging into called ~/.ssh/authorized_keys.
touch ~/.ssh/authorized_keys
chmod 600 ~/.ssh/authorized_keys
cat ~/.ssh/id_rsa.pub >> ~/.ssh/authorized_keys
rm ~/.ssh/id_rsa.pub

# id_rsa -> Private_Key.ppk

sudo nano /etc/ssh/sshd_config
# PasswordAuthentication yes -> PasswordAuthentication yes
sudo service sshd restart

# Open ssh port using in firewall
sudo ufw delete allow ssh

# You lost public key ?
ssh-keygen -y -f authorized_keys > id_rsa.pub

# Install the public key in remote server
ssh-copy-id -i $HOME/.ssh/id_rsa.pub user@server1.cyberciti.biz
# or just copy the public key in remote server as authorized_keys in ~/.ssh/ directory:
scp $HOME/.ssh/id_rsa.pub user@server1.cyberciti.biz:~/.ssh/authorized_keys

cat $HOME/.ssh/id_rsa.pub | ssh vivek@server1.cyberciti.biz "cat >> .ssh/authorized_keys"

# Copy a remote private key to a local system using the scp command
scp remote_username@10.10.0.2:~/.ssh/id_rsa .

# User's configuration file (~/.ssh/config)
cd ~/.ssh
touch config
chmod 644 ~/.ssh/config

# Save file in C:\Users\<username>\.ssh\config
chmod 600 ~/.ssh/<private key>

# In VS Code, run Remote-SSH: Open Configuration File...,
# and select an SSH config file, and add (or modify) a host entry as follows:
Host <linux-server>
  HostName <linux-server-ip>
  User <username>
  IdentitiesOnly yes
  PreferredAuthentications publickey
  PasswordAuthentication no
  IdentityFile ~/.ssh/<private key>  
  # IdentityFile ~/.ssh/id_rsa
  # IdentityFile C:\Users\[User]\.ssh\id_rsa

# Access a Remote Server
ssh username@linux-server-ip

# Or if you configured the config file:
ssh linux-server
