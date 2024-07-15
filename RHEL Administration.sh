# Set up first
touch ~/.bash_aliases

# Then, make sure that this code appears in your ~/.bashrc file:
# User specific aliases and functions
if [ -e $HOME/.bash_aliases ]; then
    source $HOME/.bash_aliases
fi

# Creating Bash Aliases
alias gh='history|grep'

# Here’s an example of how to use it:
gh bash