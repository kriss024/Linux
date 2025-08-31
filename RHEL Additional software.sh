# Flatpaks don't see some installed fonts
~/.local/share/fonts/
cp /usr/share/fonts/cantarell/* ~/.local/share/fonts/

dnf install epel-release

# Install liberation-fonts rpm package
dnf install liberation-fonts

# Flathub Applications
# https://flathub.org/apps

# Yum is the Red Hat package manager

# Updating All Packages and Their Dependencies and Installing Packages
sudo yum update
sudo yum install <package_name>

# Upgrade the kernel and restart the machine
sudo yum upgrade kernel
sudo reboot now

# Checking For Updates
sudo yum check-update

# Updating Security-Related Packages
sudo yum update --security
# or
sudo yum update-minimal --security

# Clear cache after update
sudo yum clean all

# Searching Packages
yum search term&hellip;

# Listing Packages
yum list all

# Listing Repositories
yum repolist

# Removing Packages
sudo yum remove <package_name>

# Installing Intel microcode firmware
sudo yum install linux-firmware microcode_ctl

# Extra Packages for Enterprise Linux (EPEL)
sudo dnf update -y
sudo subscription-manager repos --enable codeready-builder-for-rhel-9-$(arch)-rpms
sudo dnf install https://dl.fedoraproject.org/pub/epel/epel-release-latest-9.noarch.rpm

# Installing Nvidia drivers on RHEL 9
sudo dnf config-manager --add-repo http://developer.download.nvidia.com/compute/cuda/repos/rhel9/$(uname -i)/cuda-rhel9.repo
sudo dnf module install nvidia-driver:latest-dkms
nvidia-smi

sudo dnf install -y ansible
# Installing Container Device Interface (CDI) Support
sudo dnf clean expire-cache
sudo dnf install -y nvidia-container-toolkit-base
nvidia-ctk --version

# Installing Cockpit A browser-based administration tool for Linux
sudo subscription-manager repos --enable rhel-7-server-extras-rpms
sudo yum install cockpit
sudo systemctl enable --now cockpit.socket
sudo firewall-cmd --add-service=cockpit --permanent
# Cockpit Administration tool for Linux
# Go to https://localhost:9090

# Installing Build-essentials
sudo yum install gcc gcc-c++ kernel-devel make
sudo yum groupinstall "Development Tools"
sudo yum install kernel-headers

# Installing Java
sudo yum install java
sudo yum install java-devel

# Clipboard management
sudo dnf install xsel

# Installing GVim
sudo yum install gvim

# Add "colorscheme slate" to to your _vimrc file.

# Installing 7-Zip
sudo yum install p7zip p7zip-plugins

# Installing GNOME Tweak Tool
sudo dnf install gnome-tweaks

# Installing GNOME Shell Extensions
sudo dnf install gnome-extensions-app

# Installing GCC Compiler for C/C++
sudo yum install gcc
gcc --version
make

# Installing Sublime Text
sudo rpm -v --import https://download.sublimetext.com/sublimehq-rpm-pub.gpg
sudo dnf config-manager --add-repo https://download.sublimetext.com/rpm/stable/x86_64/sublime-text.repo
sudo dnf install sublime-text

# Installing Google Chrome
wget https://dl.google.com/linux/direct/google-chrome-stable_current_x86_64.rpm
sudo dnf install ./google-chrome-stable_current_x86_64.rpm
google-chrome

# Installing Visual Studio Code
sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc
sudo sh -c 'echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" > /etc/yum.repos.d/vscode.repo'

# How do I make VS Code open a new tab by default?
"workbench.editor.enablePreview"
"workbench.editor.enablePreviewFromQuickOpen"

# Install the latest version of code.
sudo yum check-update
sudo yum install code -y

# Start the VSCode
code

# Installing Python 3.9
sudo yum install python39*

# Update-alternatives to Python
sudo alternatives --set python /usr/bin/python3.9

# Installing Python environment
python -m pip install --user --upgrade pip
python -m pip --version

# Installing virtualenv
python3 -m pip install --user virtualenv

# Creating a virtual environment
python -m venv ./venv
source ./venv/bin/activate
# or
virtualenv -p /usr/bin/python3 venv
. venv/bin/activate

#  Show configuration file
pip config list -v
pip config list

cat .pip/pip.conf

# Upgrade pip
python -m pip install --upgrade pip

# Installing packages
pip install --upgrade setuptools wheel
python -m pip install <package name>
python -m pip install requests
python -m pip install -r requirements.txt

jupyter notebook

# Leaving the virtual environment
deactivate

# Installing PyCharm Community
# Keymap page of the Settings dialog: Ctrl+Alt+S
mkdir pycharm-community
tar xzf pycharm-community-2022.3.2.tar.gz -C ~/pycharm-community
cd ~/pycharm-community/pycharm-community-2022.3.2/bin
sh pycharm.sh