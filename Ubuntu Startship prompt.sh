# Quick Install
curl -sS https://starship.rs/install.sh | sh

# Configuration
# To get started configuring starship, create the following file: ~/.config/starship.toml.
mkdir -p ~/.config && touch ~/.config/starship.toml

# All configuration for starship is done in this TOML (opens new window)file:
[character]
success_symbol = '[\$](bold green)'

[username]
style_user = '#a6aaf1 bold'
style_root = 'white bold'
format = '[$user]($style)'
disabled = false
show_always = true

[hostname]
ssh_only = false
format = '[@](white bold)[$hostname](#50fa7b bold)'
disabled = false

[directory]
style = '#00a5ff bold'
truncation_length = 0
truncate_to_repo = false

# Bash
# Add the following to the end of ~/.bashrc:

# Startship prompt
eval "$(starship init bash)"

# Reload .bashrc settings
source ~/.bashrc
