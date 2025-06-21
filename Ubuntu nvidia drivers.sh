# NVIDIA drivers and the CUDA Toolkit installation on Ubuntu 24.04

# 1. Prepare your system - Update your Ubuntu installation
sudo apt update
sudo apt upgrade -y
sudo apt autoremove -y

# Install necessary packages. 
sudo apt install -y dkms linux-headers-$(uname -r) build-essential

# 2. Install NVIDIA drivers:
sudo apt install -y nvidia-driver-570

# Reboot your system after installation
 sudo reboot

 # Verify the driver installation.
 nvidia-smi

 # 3. Install CUDA Toolkit:
sudo apt install -y cuda-toolkit-12-8

# To include all GDS packages:
apt install nvidia-gds
