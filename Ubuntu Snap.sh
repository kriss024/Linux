# Install the Snapd service
sudo apt install snapd

# Completely Uninstall Snapd and remove all configuration files (Purge)
sudo apt purge snapd

# List all currently installed Snap packages
snap list

# Install a Snap package (e.g., Hello World or GIMP)
snap install <package_name>

# Run an installed Snap application (e.g., Discord)
<package_name> (e.g., discord)

# Uninstall/Remove a Snap package
snap remove <package_name>

# Update all installed Snap packages
snap refresh

# Update a specific Snap package
snap refresh <package_name>

# List Snaps with available updates
snap refresh --list

# Stop the Snapd socket service
sudo systemctl stop snapd.socket

# Check the status of the Snapd socket service
sudo systemctl status snapd.socket

# Navigate to the Snap installation directory
cd /var/lib/snapd/snaps/

# Remove a partial installation file (to free disk space)
sudo rm <filename>.partial