# Installs the Flatpak package manager on Debian.
sudo apt install flatpak

# Checks the currently installed version of Flatpak.
flatpak --version

# Adds the Flathub repository, the main source for Flatpak applications.
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

# Displays the list of configured Flatpak repositories (remotes).
flatpak remotes

# Shows a list of all available programs in the Flathub repository.
flatpak remote-ls flathub

# Displays the list of available applications in a more detailed format.
flatpak remote-ls flathub --app (or similar)

# Searches the Flatpak repositories for applications matching the query (e.g., GIMP).
flatpak search gimp

# Installs the specified application (e.g., GIMP) from Flathub.
flatpak install flathub org.gimp.GIMP

# Shows a list of all currently installed Flatpak applications.
flatpak list

# Displays detailed metadata and information about an installed Flatpak program.
flatpak info org.gimp.GIMP

# Launches an installed Flatpak application.
flatpak run org.gimp.GIMP

# Updates all installed Flatpak applications and runtimes to their latest versions.
flatpak update

# Removes the specified Flatpak application from the system.
flatpak uninstall org.gimp.GIMP

# Cleans up and removes any runtime dependencies or components no longer used by installed applications.
flatpak uninstall --unused

# Checks the integrity of installed applications and runtimes and attempts to repair any issues.
flatpak repair

# Visual Studio Code shortcut
alias code='flatpak run com.visualstudio.code'