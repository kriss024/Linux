### ALIASES ###
# Jump back to the root directory
alias root='cd /'

# Directory Navigation
alias ..='cd ..'
alias ...='cd ../../'
alias ....='cd ../../../'
alias .....='cd ../../../../'

# Go to the home directory.
alias ~='cd ~'

# Go to the previous directory.
alias -- -='cd -'

# List Directory Contents
# List with colorized output.
alias ls='ls -a -1'

# Long listing format with hidden files.
alias ll='ls -lah'

# List all items, including hidden files but excluding . and ..
alias la='ls -A'

# Show hidden files only.
alias l.='ls -d .* --color=auto'

# Windows-like experience
alias copy="cp"
alias rename="mv"
alias md="mkdir"
alias rd="rmdir"
alias del="rm -rf"

# Usual Commands
alias p='pwd'
alias r='reset'
alias c='clear'
alias h='history'
alias hh='history | grep -hi $1'
alias t='touch $1'
alias j='jobs -l'
alias edit='mcedit'

# Colorize the grep command output.
alias grep='grep --color=auto'

# Search for a substring (e.g., "text") recursively in the current directory and its subdirectories
alias sub-grep='grep -ri $1 .'

# List all currently running background jobs.
alias jobs='jobs -l'

# Find executable files.
alias where='which'

# Create a directory and move into it.
alias mkdir='mkdir -p'
alias mkcd='mkcd(){ mkdir -p "$1"; cd "$1" }; mkcd'

# Copy files recursively, overwriting existing files.
alias cp='cp -rf'

# Delete a directory and its contents.
alias rm='rm -rf'

# Clipboard management using xsel
alias pbcopy='xsel --clipboard --input'
alias pbpaste='xsel --clipboard --output'

# Show the current time.
alias now='date +"%T"'
alias nowtime=now
alias nowdate='date +"%d-%m-%Y"'
alias dt='date +"%d-%m-%Y %T"'

# Process Management
# Enhanced process listing.
alias ps='ps auxf'

# Forcefully terminate a process.
alias kill='kill -9'

# Use htop for process management (if installed).
alias top='htop'

# Display disk space usage in human-readable format.
alias df='df -h'

# Summarize the total size of the current directory in human-readable format.
alias dss='du -sh .'

# Display system information and network configuration.
alias meminfo='free -m -l -t'
alias cpuinfo='lscpu'
alias gpuinfo='inxi -G'
alias driverinfo='lspci -k'
alias diskinfo='df -h'
alias blockinfo='lsblk -f'
alias usbinfo='lsusb'
alias osinfo='uname -a'
alias ipinfo='curl ifconfig.me'
alias netinfo='ifconfig'

# Display information about network connections.
alias portinfo='netstat -tulanp'
alias tcpinfo='netstat -plnt'
alias portsinfo='ss -tuln'

# Download a file from a website, resuming if interrupted.
alias wget='wget -c'

# Fetch data from a website.
alias curl='curl -L'

# For Debian/Ubuntu based systems
alias sup="sudo apt update && sudo apt upgrade -y"
alias supdate='sudo apt update'
alias supgrade='sudo apt update && sudo apt upgrade'
alias sinstall='sudo apt install'
alias sremove='sudo apt remove'
alias sclean='sudo apt-get clean && sudo apt-get autoclean'

# For Red Hat/Fedora systems
alias dcheck='sudo dnf check-update'
alias dupdate='sudo dnf update'
alias dupgrade='sudo dnf update && sudo dnf upgrade'
alias dinstall='sudo dnf install'
alias dremove='sudo dnf remove'

# For Yum-based systems
alias ycheck='sudo yum check-update'
alias yupdate='sudo yum update'
alias yupgrade='sudo yum update && sudo yum upgrade'
alias yinstall='sudo yum install'
alias yremove='sudo yum remove'

# Apply only security-related updates.
alias ysecurityup='sudo yum --security update'

# Creating a tar archive, e.g., tar -cvf archive.tar .
alias tarc='tar -czvf'

# Extracting a tar archive, e.g., tar -xvf archive.tar .
alias tarx='tar -xzvf'

# Checking the contents of an archive, e.g., tar -tvf archive.tar .
alias tart='tar -tvf'

# Recursively compress files and subdirectories within a directory, e.g., zip -r archive.zip .
alias czip='zip -r'

# Test the contents of a zip archive, e.g., unzip -t archive.zip.
alias tzip='unzip -t'

# Extract files from a zip archive, e.g., unzip archive.zip.
alias uzip='unzip'

# Python enhancements
alias ve='python3 -m venv ./venv'
alias va='source ./venv/bin/activate'
alias vd='deactivate'
alias pipup='python3 -m pip install --upgrade pip'
alias piptool='pip install --upgrade setuptools wheel --no-cache-dir'
alias pipins='pip install --no-cache-dir'
alias pipfre='pip freeze > requirements.txt'
alias pipinsreq='pip install -r requirements.txt'

# Jupyter Notebook shortcut
alias nb='jupyter notebook'

# Spark and Yarn enhancements
alias sparklist="yarn application -list | grep -hi $(whoami) | awk '{print \$1, \$2, \$3, \$4, \$5, \$6}'"
alias sparkstatus='yarn application -status'
alias sparkkill='yarn application -kill'
alias sparklog='view_yarn_logs() { yarn logs -applicationId "$1" -am 1 -log_files stdout; }; view_yarn_logs'
alias sparkwipe="for app_id in \$(yarn application -list | grep -i \$(whoami) | awk -F '\t' '{print \$1}'); do yarn app -kill \$app_id; done"

# GIT enhancements
# Initialize an empty Git repository in the current directory.
alias init='git init'

# Basic Git commands
alias status='git status'
alias branch='git branch'
alias remote='git branch -a -v'
alias fetch='git fetch'
alias diff='git diff'

# Clone a repository to the local machine.
alias clone='git clone'

# Add a file to the Git staging area.
alias add='git add'

# Remove a file from the Git staging area.
alias git-rm='git rm --cached'

# Add all files to the Git staging area.
alias add-all='git add -A'

# Add modified files in the current directory and subdirectories to the staging area.
alias add-mod='git add -u'

# Remove files from staging area
alias reset-stage='git reset HEAD -- .'

# Commit changes to the repository.
alias commit='git commit'

# Push changes to remote repositories.
alias push='git push'
alias push-master='git push origin master'
alias push-dev='git push origin development'

# Pull changes from remote repositories.
alias pull='git pull'
alias pull-master='git pull origin master'
alias pull-dev='git pull origin development'

# Restore specific files or entire directories in the working directory.
alias restore='git fetch && git restore'

# Create a new or copy branch and switch to it.
alias new-branch='git checkout -b'
alias empty-branch='git switch --orphan'
alias new-dev-branch='git checkout -b development'

# Switch to an already existing branch.
alias switch='git checkout'
alias switch-force='git checkout -f'

# Show last commit details
alias last-log='git log -1 HEAD'
alias repo-log='git log --oneline'
