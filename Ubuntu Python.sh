# Where is python
which python3
# or
type -a python3

# Installing G++ the C++ compiler on Ubuntu 18.04
sudo apt update
sudo apt-get install build-essential gdb
sudo apt install g++

g++ --version
g++ -o hello hello.cc
./hello

# Installing Python 3.7 on Ubuntu with Apt
sudo apt update
sudo apt install software-properties-common

sudo add-apt-repository ppa:deadsnakes/ppa

sudo apt install python3.9

python3.9 --version

# Installing Python 3.7 on Ubuntu from Source

sudo apt update
sudo apt install build-essential zlib1g-dev libncurses5-dev libgdbm-dev libnss3-dev libssl-dev libreadline-dev libffi-dev libsqlite3-dev wget libbz2-dev

wget https://www.python.org/ftp/python/3.9.1/Python-3.9.1.tgz
tar -xf Python-3.9.1.tgz
cd Python-3.9.1
./configure --enable-optimizations
make -j 12
sudo make altinstall

python3.9 --version

# Install Anaconda on Ubuntu 20.04 with Python 3.8

# Downloading the Anaconda Bash Script
cd /tmp
wget https://repo.anaconda.com/archive/Anaconda3-2022.05-Linux-x86_64.sh
sha256sum Anaconda3-2022.05-Linux-x86_64.sh

# Running the Anaconda Script
bash Anaconda3-2022.05-Linux-x86_64.sh
# A license agreement will appear. Use the Enter key to review the agreement.
# Do you wish the installer to initialize Anaconda3 by running conda init? -> yes

# Activating Installation
source ~/.bashrc

# Testing Installation
conda list
conda info
conda update conda
conda update anaconda

# Setting Up Anaconda Environments
conda create --name my_env python=3
conda activate my_env
conda deactivate

# If you are no longer working on a specific project and have no further need for the associated environment, you can remove it.
conda remove --name my_env35 --all

sudo apt install jupyter-notebook
jupyter-notebook