# Quick Install
curl -sS https://starship.rs/install.sh | sh

# Configuration
# To get started configuring starship, create the following file: ~/.config/starship.toml.
mkdir -p ~/.config && touch ~/.config/starship.toml

# A Nerd Font installed and enabled in your terminal (the example uses Fira Code Nerd Font)
starship preset nerd-font-symbols -o ~/.config/starship.toml

# Bash
# Add the following to the end of ~/.bashrc:

# Startship prompt
eval "$(starship init bash)"

# Reload .bashrc settings
source ~/.bashrc

# Install Gnome Terminal
sudo apt-get install dconf-cli
git clone https://github.com/dracula/gnome-terminal
cd gnome-terminal
./install.sh

# Go to https://draculatheme.com/gtk
