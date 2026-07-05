# Python installation
# In Debian: 
sudo apt-get update
sudo apt-get install -y python3
sudo apt install -y python3-pip
sudo apt install -y python3-venv
python3 --version
# In RHEL: 
sudo dnf update
sudo dnf install python39*
sudo dnf install python3-pip 
sudo dnf install python3-venv
python --version
sudo alternatives --set python /usr/bin/python3.9

python --version
whereis python3

# In your Command Prompt navigate to your project:
cd your_project

# Create an environment
sudo apt install python3.10-venv
python3 -m venv ./venv

# Activating a virtual environment
source .venv/bin/activate
# In MS-Windows: venv\Scripts\activate.bat

# The PYTHONPATH variable has a value that is a string with a list of directories that Python should add to the sys.path directory list.
# In Linux: export PYTHONPATH=/home/my_user/code
# In Linux: export PYTHONPATH="$PWD"
# In Linux: echo $PYTHONPATH

# Upgrade Pip to the latest version
python3 -m pip install --upgrade pip
pip install -U setuptools wheel

pip list

# To search pip packages, run the following command:
pip search <package name>

# List all versions of a package that's available?
pip index versions <package name>

#  Create a virtual environment and install packages from requirements.txt
python3 -m venv .venv
source .venv/bin/activate
python3 -m pip install --upgrade pip
pip install -U setuptools wheel
pip install -r requirements.txt
deactivate

# Install Python Data Science Packages
pip install requests cachetools six python-dateutil scipy numpy pandas scikit-learn scikit-image yellowbrick openpyxl statsmodels pyarrow seaborn matplotlib bokeh pydotplus ipython tqdm
pip install xlrd
pip install plotly
pip install 'polars[all]'
pip install pingouin sidetable shap optbinning feature-engine
pip install xgboost lightgbm catboost pycaret[full]
pip install imageio pillow opencv
pip install sqlalchemy
pip install cx_oracle pyodbc
pip install cryptography
pip install ipyparallel
pip install --upgrade jupyter

jupyter notebook --notebook-dir=/home/notebooks --ip='*' --port=8888 --no-browser --allow-root

# Black code formatter
pip install black

black {source_file_or_directory}

# Generate a requirements file
pip freeze > requirements.txt

# Install Flask
pip install --upgrade pip setuptools wheel
pip install Flask

# Install packages from requirements.txt and upgrade all outdated packages
pip install -r requirements.txt --upgrade

# Run the application
set FLASK_APP=main.py
set FLASK_RUN_PORT=8000
flask run

# Deactivate a virtual environment
deactivate

# ---------------------- Conda virtual environments

# Check if Conda is up to date
conda update conda

# First, let's check out the list of existing virtual environments:
conda env list # Option 1
conda info --envs # Option 2

# Creating virtual environments
conda create -n <env_name> python=3.9.7 -y

# Creating a virtual environment from a YAML file
conda env create -f environment.yml # Short form
conda env create --file environment.yml # Long form

# Creating a virtual environment by cloning
conda create -n <env_name> --clone <test> # Short form
conda create --name <env_name> --clone <test> # Long form

# Let's activate the new environment
conda activate <env_name>
python --version

# Conda channels
conda config --show channels

# To add conda-forge channel and check the current channels again
conda config --add channels conda-forge
conda config --show channels

# Alternative command we can use to install package from other channels
conda install <package_name> -c conda-forge -y # Short form
conda install <package_name> --channel conda-forge -y # Long form

# Conda-forge is a community effort that provides conda packages for a wide range of software.
# Make sure you have conda >=4.9.
conda --version
conda update conda
conda config --add channels conda-forge
conda config --set channel_priority strict
conda install <package-name>

# Conda will install the latest version of these packages.
conda list
conda install pip
conda install <package-name>
conda install ipykernel notebook

# Adding Virtual Environment in Jupyter Notebook
conda activate <env_name>
python -m ipykernel install --user --name=<env_name>
jupyter notebook --notebook-dir=/home/notebooks --ip='*' --port=8888 --no-browser --allow-root

# To remove the Virtual Environment from Jupyter
jupyter kernelspec uninstall <env_name>

# conda-pack is a command line tool for creating archives of conda environments that can be installed on other systems and locations.
conda install conda-pack
conda install -c conda-forge conda-pack
pip install conda-pack

# Pack environment my_env into my_env.tar.gz
conda pack -n <env_name>

# Pack environment my_env into out_name.tar.gz
conda pack -n <env_name> -o out_name.tar.gz

# Pack environment located at an explicit path into my_env.tar.gz
conda pack -p /explicit/path/to/my_env

# Unpack environment into directory 'environment'
mkdir -p environment
tar -xzf conda_env.tar.gz -C environment

# Sending to destination
scp conda_env.tar.gz user@<hostname>:/home/user/work

# Use python without activating or fixing the prefixes. Most python
# libraries will work fine, but things that require prefix cleanups
# will fail.
./my_env/bin/python

# Activate the environment. This adds `my_env/bin` to your path
source my_env/bin/activate

# Conda install from requirements.txt
conda install -n <env_name> requirements.txt
conda install --yes --file requirements.txt

# If a package is not available across Conda channels, you can install the package from Pip
pip install <package_name>
pip install requirements.txt

# To export the specifications of the current environment into a YAML file
conda env export > environment.yml # Option 1
conda env export -f environment.yml # Option 2

# Deactivating virtual environments
conda deactivate <env_name>

# Removing virtual environment
# Need to deactivate the environment first
conda remove --name <env_name> --all
# In Linux: rm rm -rf <env_name>

# List all installed Jupyter kernels
jupyter kernelspec list
jupyter kernelspec remove <kernel_name>

# Job example
conda activate /home/user1/.conda/envs/my_env
python /home/user1/jobs/my_code.py
conda deactivate

# Uninstall anaconda on Ubuntu
conda activate <env_name>  # activate your conda environment
conda install anaconda-clean   # install the package anaconda clean
anaconda-clean --yes           # clean all anaconda related files and directories

rm -rf ~/anaconda3             # removes the entire anaconda directory

rm -rf ~/.anaconda_backup      # anaconda clean creates a back_up of files/dirs, remove it
                               # (conda list; cmd shouldn't respond after the clean up)

# ---------------------- uv - package and project manager

# Installing uv
curl -LsSf https://astral.sh/uv/install.sh | sh
# or
wget -qO- https://astral.sh/uv/install.sh | sh

# Upgrading uv
uv self update

# Installing a specific version
uv python install 3.12

# Upgrade all uv-managed Python versions
uv python upgrade

# Running a script
uv run main.py

# Viewing Python installations
uv python list

# Creating a new virtual environment
uv venv
# or
uv venv --python 3.12