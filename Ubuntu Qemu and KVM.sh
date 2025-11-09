# Installing Qemu and KVM virtualization
sudo apt update
sudo apt install -y bridge-utils cpu-checker libvirt-daemon-system libvirt-clients virt-manager qemu-system-x86 qemu-utils

kvm-ok

sudo usermod -aG libvirt,kvm $USER

sudo systemctl enable --now libvirtd
sudo systemctl start libvirtd
sudo systemctl status libvirtd

virsh list --all

# Install Boxes
sudo apt install gnome-boxes
