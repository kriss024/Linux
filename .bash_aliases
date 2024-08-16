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
alias ls='ls --color=auto'

# Long listing format with hidden files.
alias ll='ls -lah'

# List all items, including hidden files but excluding . and ..
alias la='ls -A'

# Show hidden files only.
alias l.='ls -d .* --color=auto'

# Usual Commands
alias p='pwd'
alias r='reset'
alias c='clear'
alias h='history'
alias hh='history | grep -hi $1'
alias t='touch'
alias j='jobs -l'
alias mkdir='mkdir -p'
alias edit='nano $1'

# Clipboard management using xsel
alias pbcopy='xsel --clipboard --input'
alias pbpaste='xsel --clipboard --output'

# Colorize the grep command output.
alias grep='grep --color=auto'

# List all currently running background jobs.
alias jobs='jobs -l'

# Find executable files.
alias where='which'

# Create a directory and move into it.
alias mkcd='mkcd(){ mkdir -p "$1"; cd "$1" }; mkcd'

# Copy files recursively, overwriting existing files.
alias cp='cp -rf'

# Delete a directory and its contents.
alias rm='rm -rf'

# Display disk space usage in human-readable format.
alias df='df -h'

# Summarize the total size of the current directory in human-readable format.
alias dss='du -sh .'

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

# Display system information and network configuration.
alias meminfo='free -m -l -t'
alias cpuinfo='lscpu'
alias diskinfo='df -h'
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

# System Updates and Cleaning
# For Debian/Ubuntu based systems
alias aupgrade='sudo apt update && sudo apt upgrade'
alias aupdate='sudo apt update'
alias ainst='sudo apt install'
alias arem='sudo apt remove'

# For Red Hat/Fedora systems
alias dcheck='sudo dnf check-update'
alias dupgrade='sudo dnf update && sudo dnf upgrade'
alias dupdate='sudo dnf update'
alias dins='sudo dnf install'
alias drem='sudo dnf remove'

# For Yum-based systems
alias ycheck='sudo yum check-update'
alias yupgrade='sudo yum update && sudo yum upgrade'
alias yupdate='sudo yum update'
alias yins='sudo yum install'
alias yrem='sudo yum remove'

# Apply only security-related updates.
alias yupsec='sudo yum --security update'

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

# ----------------- PYTHON ALIASES --------------------
alias ve='python3 -m venv ./venv'
alias va='source ./venv/bin/activate'
alias vd='deactivate'
alias pipup='python3 -m pip install --upgrade pip'
alias piptool='pip install --upgrade setuptools wheel --no-cache-dir'
alias pipins='pip install --no-cache-dir'
alias pipfre='pip freeze > requirements.txt'
alias pipinsreq='pip install -r requirements.txt'

# ----------------- SPARK ALIASES --------------------
alias sparklist='yarn application -list | grep -hi $(whoami)'
alias sparkkill='yarn application -kill'
alias sparklog='view_yarn_logs() { yarn logs -applicationId "$1" -am 1 -log_files stdout; }; view_yarn_logs'
alias sparkwipe="for app_id in \$(yarn application -list | grep -i \$(whoami) | awk -F '\t' '{print \$1}'); do yarn app -kill \$app_id; done "

# ----------------- GIT ALIASES --------------------
# Initialize an empty Git repository in the current directory.
alias init='git init'

# Basic Git commands
alias status='git status'
alias branch='git branch'
alias remote='git branch -r'
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

# Create a new Git branch and switch to it.
alias new-branch='git checkout -b $1 $2'
alias switch='git checkout'
