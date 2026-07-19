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

# Install ZSH Shell
sudo apt update
sudo apt install zsh -y
chsh -s $(which zsh)

# Installing Git
sudo apt update
sudo apt install git
git --version

# Install GParted (Gnome Partition Editor)
sudo apt update
sudo apt install gparted

# Install Nemo File Manager
sudo apt-get update
sudo apt-get install nemo

# -- 1. Create the .desktop file
nano ~/.local/share/applications/nemo.desktop

# -- 2. Paste this content
[Desktop Entry]
Name=Nemo
Comment=Cinnamon file manager
Exec=nemo %U
Icon=folder
Terminal=false
Type=Application
Categories=Utility;FileManager;
MimeType=inode/directory;
StartupNotify=true

# -- 3. Make it executable
update-desktop-database ~/.local/share/applications/

# -- 4. Refresh GNOME
update-desktop-database ~/.local/share/applications/

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

# Install Onlyoffice Desktop Editors
sudo apt install ./onlyoffice-desktopeditors_amd64.deb

# Install Viewnior
sudo add-apt-repository ppa:desdelinux/viewnior
sudo apt-get update
sudo apt-get install viewnior

# Installing GNOME Shell Extensions
sudo apt-get update
sudo apt install gnome-tweak-tool
gnome-tweaks
# Change "Applications" to "Adwaita-dark" at "Themes" of "Appearance".
sudo apt install gnome-shell-extension-manager

# Install Gnome Terminal
sudo apt-get install dconf-cli
git clone https://github.com/dracula/gnome-terminal
cd gnome-terminal
./install.sh

# Go to https://draculatheme.com/gtk
# Wallpaper https://raw.githubusercontent.com/linuxdotexe/nordic-wallpapers/master/wallpapers/ign_astronaut.png