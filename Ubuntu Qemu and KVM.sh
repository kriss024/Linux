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