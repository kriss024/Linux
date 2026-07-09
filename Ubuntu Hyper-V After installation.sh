# Adjust the Screen Resolution of an Ubuntu Hyper-V Virtual Machine

# Enter:
sudo nano /etc/default/grub

# Change this line:
GRUB_CMDLINE_LINUX_DEFAULT="quiet splash"
# To this.
GRUB_CMDLINE_LINUX_DEFAULT="quiet splash video=hyperv_fb:1920x1080"

# Run:
sudo update-grub

# Reboot the VM