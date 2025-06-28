# NVIDIA drivers and the CUDA Toolkit installation on Ubuntu 24.04

# 1. Prepare your system - Update your Ubuntu installation
sudo apt update
sudo apt upgrade -y
sudo apt autoremove -y

# Install necessary packages. 
sudo apt install -y dkms linux-headers-$(uname -r) build-essential

# List the recommended NVIDIA drivers
sudo apt install ubuntu-drivers-common
sudo ubuntu-drivers devices

# 2. Install NVIDIA drivers:
sudo apt install -y nvidia-driver-570

# Reboot your system after installation
 sudo reboot

 # Verify the driver installation.
 nvidia-smi

# 3. Install CUDA Toolkit - Local Repository Installation
wget https://developer.download.nvidia.com/compute/cuda/12.5.0/local_installers/cuda-repo-ubuntu2404-12-5-local_12.5.0-1_amd64.deb

# Install the .deb package:
sudo dpkg -i cuda-repo-ubuntu2404-12-5-local_12.5.0-1_amd64.deb

# Add the GPG key
sudo cp /var/cuda-repo-ubuntu2404-12-5-local/cuda-*-keyring.gpg /usr/share/keyrings/

# Install CUDA SDK:
sudo apt update
sudo apt install cuda-toolkit

# To include all GDS packages:
sudo apt install nvidia-gds
