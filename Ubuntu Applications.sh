# Install the requisite dependencies
sudo apt update
sudo apt install software-properties-common curl apt-transport-https ca-certificates -y

# Clipboard management
sudo apt install xclip

# htop - an interactive process viewer
sudo apt update
sudo apt install htop
htop
# or
top

# atop - Advanced System and Process Monitor
sudo apt update
sudo apt install atop
atop

# list of open ports in linux
sudo apt update
sudo apt-get install lsof
sudo lsof -i -P -n

# Installing Java
sudo apt update
sudo apt install default-jre
java -version

# Install Zip and Unzip in Linux
sudo apt install zip unzip

# Install Midnight Commander
sudo apt update
sudo apt install mc

# Tilde - Command Line Text Editors
sudo apt install tilde
tilde

# tmux is a terminal multiplexer tool in Linux
sudo apt-get install tmux
tmux

# net-tools, the collection of base networking utilities
sudo apt install net-tools
route -n

# downloading file in background
wget -b <file>

# Install The Silver Searcher
sudo apt install silversearcher-ag

# Install GNOME Tweak Tool
sudo apt update
sudo add-apt-repository universe
sudo apt install gnome-tweaks
gnome-tweaks

# Install Google Chrome
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo apt install ./google-chrome-stable_current_amd64.deb

# Install Microsoft Edge Browser
sudo apt update
sudo apt install software-properties-common apt-transport-https wget
wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/edge stable main"
sudo apt install microsoft-edge-dev

# Installing Git
sudo apt update
sudo apt install git
git --version

# Install GitHub
# https://github.com/shiftkey/desktop/releases/tag/release-2.0.4-linux1
sudo apt install ./GitHubDesktop-linux-2.0.4-linux1.deb

# Install Visual Studio Code
sudo apt-get install wget gpg
wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg
sudo install -D -o root -g root -m 644 packages.microsoft.gpg /etc/apt/keyrings/packages.microsoft.gpg
echo "deb [arch=amd64,arm64,armhf signed-by=/etc/apt/keyrings/packages.microsoft.gpg] https://packages.microsoft.com/repos/code stable main" |sudo tee /etc/apt/sources.list.d/vscode.list > /dev/null
rm -f packages.microsoft.gpg
sudo apt install apt-transport-https
sudo apt update
sudo apt install code

# Install Boxes
sudo apt install gnome-boxes

# Install Docker Engine on Ubuntu
# Uninstall old versions
sudo apt-get remove docker docker-engine docker.io containerd runc

sudo apt-get update

sudo apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg \
    lsb-release

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg

echo \
  "deb [arch=amd64 signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

# Install Docker Engine
sudo apt-get update
sudo apt-get install docker-ce docker-ce-cli containerd.io
apt-cache madison docker-ce

sudo apt-get install docker-ce=<VERSION_STRING> docker-ce-cli=<VERSION_STRING> containerd.io

sudo docker run hello-world

# Start and Automate Docker
sudo systemctl start docker
sudo systemctl enable docker

# Manage Docker as a non-root user
sudo groupadd docker
sudo usermod -aG docker $USER
# Either do a "newgrp docker" or log out/in to activate the changes to groups.
docker run hello-world
