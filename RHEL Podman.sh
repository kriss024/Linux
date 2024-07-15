# Steps to install Podman on Ubuntu 20.04 LTS
# 1. Update Ubuntu 20.04
sudo apt update && sudo apt upgrade

# install CURL
sudo apt install curl

# 2. Add Podman Repository

# Add repo:
echo "deb https://download.opensuse.org/repositories/devel:/kubic:/libcontainers:/stable/xUbuntu_20.04/ /" | sudo tee /etc/apt/sources.list.d/devel:kubic:libcontainers:stable.list

# Add GPG Key:
curl -L "https://download.opensuse.org/repositories/devel:/kubic:/libcontainers:/stable/xUbuntu_20.04/Release.key" | sudo apt-key add -

# Again run the system update command:
sudo apt update

# 3. Install Podman on Ubuntu 20.04
sudo apt install podman

# 4. Check the version
podman -v

# 5. Set Podman registries conf
# Edit Registry configuration file 
sudo nano /etc/containers/registries.conf

[registries.search]
registries=["registry.access.redhat.com", "registry.fedoraproject.org", "docker.io"]

# After that save the file by pressing Ctrl+O, hit the Enter key, and then exit using Ctrl+X.
podman info

# 6. Search and pull images on Ubuntu 20.04
podman search ubuntu

podman pull ubuntu

# 7. List all Images
podman images

# 8. Create Container
podman run -dit --name h2smediaa ubuntu

# Get running container command-line access:
podman attach <container-name>

podman attach h2smediaa

# 9. Stop or Start a Container
# To stop:
podman stop <container-id> or <name>
podman stop h2smediaa

# To Start:
podman start <container-id> or <name>
podman stop h2smediaa