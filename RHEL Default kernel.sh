# Changing the default kernel in Red Hat Enterprise Linux 8 & 9

# Show default kernel
sudo grubby --default-kernel
# /boot/vmlinuz-5.14.0-70.30.1.el9_0.x86_64

sudo uname -r
# 5.14.0-70.30.1.el9_0.x86_64

# Show installed kernel list ( You can count 0,1,.. from the top of the title line)
sudo grubby --info=ALL | grep title
# title="Red Hat Enterprise Linux (5.14.0-70.30.1.el9_0.x86_64) 9.0 (Plow)"    <---0
# title="Red Hat Enterprise Linux (5.14.0-70.13.1.el9_0.x86_64) 9.0 (Plow)"    <---1

# Set the default kernel
sudo grub2-set-default 1

# Eg:
sudo grubby --set-default /boot/vmlinuz-5.14.0-162.23.1.el9_1.x86_64
# OR
sudo grubby --set-default vmlinuz-5.14.0-162.23.1.el9_1.x86_64

# Confirmation after the change
sudo grubby --default-kernel
# /boot/vmlinuz-5.14.0-70.13.1.el9_0.x86_64

uname -r 
# 5.14.0-70.13.1.el9_0.x86_64

sudo grubby --default-index
# 1

# Remove the Specific Kernel Version
sudo dnf remove kernel-5.14.0-70.el9.x86_64

# After removing the kernel, it's a good idea to update the GRUB configuration
sudo grub2-mkconfig -o /boot/grub2/grub.cfg

# Reboot the system
sudo reboot

# Steps to Disable Kernel Updates
# Edit the DNF configuration file
sudo nano /etc/dnf/dnf.conf
# Add an exclude line:
exclude=kernel*

# Verify the configuration
sudo dnf update --assumeno