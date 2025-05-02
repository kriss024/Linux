# btop - Advanced System and Process Monitor
sudo apt-get update
sudo apt-get install btop
btop

# list of open ports in linux
sudo apt-get update
sudo apt-get install lsof
sudo lsof -i -P -n

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

# Install GNOME Tweak Tool
sudo apt update
sudo add-apt-repository universe
sudo apt install gnome-tweaks
gnome-tweaks

sudo apt install -y gnome-shell-extension-manager

sudo apt install gnome-weather

# Install ZSH Shell
sudo apt update
sudo apt install zsh -y
chsh -s $(which zsh)

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

# Install Google Chrome
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo apt install ./google-chrome-stable_current_amd64.deb

# Install Brave Browser
sudo apt install curl
sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg] https://brave-browser-apt-release.s3.brave.com/ stable main"|sudo tee /etc/apt/sources.list.d/brave-browser-release.list
sudo apt update
sudo apt install brave-browser

# Install Microsoft Edge Browser
sudo apt update
sudo apt install software-properties-common apt-transport-https wget
wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/edge stable main"
sudo apt install microsoft-edge-dev

# Installing Qemu and KVM virtualization
sudo apt update
sudo apt install -y bridge-utils cpu-checker libvirt-clients libvirt-daemon qemu qemu-kvm

kvm-ok

sudo usermod -aG kvm $USER

sudo systemctl enable --now libvirtd
sudo systemctl start libvirtd
sudo systemctl status libvirtd

virsh list --all

# Install Boxes
sudo apt install gnome-boxes

# Install Onlyoffice Desktop Editors
sudo apt install ./onlyoffice-desktopeditors_amd64.deb

# Install Viewnior
sudo add-apt-repository ppa:desdelinux/viewnior
sudo apt-get update
sudo apt-get install viewnior

# Docker and Docker Desktop install
sudo apt-get update
sudo apt-get install ca-certificates curl

sudo install -m 0755 -d /etc/apt/keyrings
sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
sudo chmod a+r /etc/apt/keyrings/docker.asc
echo   "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu \
		$(. /etc/os-release && echo "$VERSION_CODENAME") stable" |   sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

sudo apt-get update
sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
sudo service docker start

docker run hello-world

sudo apt-get update
sudo apt-get install ./docker-desktop-amd64.deb
systemctl --user start docker-desktop

# Start and Automate Docker
sudo systemctl start docker
sudo systemctl enable docker

# Manage Docker as a non-root user
sudo groupadd docker
sudo usermod -aG docker $USER

# Either do a "newgrp docker" or log out/in to activate the changes to groups.
docker run hello-world

# Docker uninstall
sudo systemctl stop docker

dpkg -l | grep -i docker

sudo apt-get purge -y docker-buildx-plugin docker-ce docker-ce-cli docker-ce-rootless-extras docker-compose-plugin docker-desktop
sudo apt-get autoremove -y --purge docker-buildx-plugin docker-ce docker-ce-cli docker-ce-rootless-extras docker-compose-plugin docker-desktop

sudo rm -rf /etc/docker
sudo rm -rf /var/lib/docker
sudo rm -rf /var/run/docker.sock
sudo rm -rf /var/lib/containerd
sudo rm -r ~/.docker
