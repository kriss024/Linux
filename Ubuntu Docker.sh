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