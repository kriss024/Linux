# Quick Install
curl -sS https://starship.rs/install.sh | sh

# Configuration
# To get started configuring starship, create the following file: ~/.config/starship.toml.
mkdir -p ~/.config && touch ~/.config/starship.toml

# All configuration for starship is done in this TOML (opens new window)file:
# Get editor completions based on the config schema
"$schema" = 'https://starship.rs/config-schema.json'

# Inserts a blank line between shell prompts
add_newline = true

# Replace the '❯' symbol in the prompt with '➜'
[character] # The name of the module we are configuring is 'character'
success_symbol = '[➜](bold green)' # The 'success_symbol' segment is being set to '➜' with the color 'bold green'

# Disable the package module, hiding it from the prompt completely
[package]
disabled = true

# Bash
# Add the following to the end of ~/.bashrc:

# Startship prompt
eval "$(starship init bash)"

# Reload .bashrc settings
source ~/.bashrc