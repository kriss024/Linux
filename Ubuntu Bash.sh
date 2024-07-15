# Use Control + L to clear the screen and Control + D to exit

# Show bash history
history

# Search Bash shell command history
history | grep "stuff"

# Run a Linux Command in the Background
# Here the output of the ping command is redirected to the output.log file. You can replace it with /dev/null if you want to discard the result. 
# The 2>&1 tells Bash to redirect any errors to the same file. The final & signals Bash to run this command in the background.
ping -c5 8.8.8.8 >output.log 2>&1 &

# Use the jobs utility to display the status of all stopped and background jobs in the current shell session:
jobs -l

# To terminate the background process, use the kill command followed by the process ID:
kill -9 25177

# Nohup, short for no hang up is a command in Linux systems that keep processes running even after exiting the shell or terminal.
nohup --version
nohup ping -c5 8.8.8.8 >output.log 2>&1 &

# Retrieve last 100 lines logs
tail -100 output.log

# Read commands from string
bash -c 'date && cal'

# Show calendar
cal

# Find all files in current and subfolders based on wildcard matching
find . -name "*.sh"

# Used to list types of all the files
file *

# Compress an entire directory
tar -czvf file.tar.gz /path/to/dir

# Extracting tar.gz file
tar -xvf archive.tar.gz

# Perform a case-insensitive search for the word in file
grep -i 'string' output.log
# or read all files under each directory
grep -r 'string' .

# Use the shell for doing math
echo $((19*34))
echo "scale=2; 9*3/((2*2)+1)" | bc

# Basic loop with sleep
iterations=100

counter=1
while true; do
    echo "Loop iteration $counter"
    # Your commands here
	
	# Pause for 10 minutes (600 seconds)
    sleep 600  

    counter=$((counter + 1)) 

    if [ $counter -gt $iterations ]; then
        echo "Loop finished after $iterations iterations."
        break
    fi
done

## Steps to write and execute a script
# Open the terminal. Go to the directory where you want to create your script.
cd ~
cd work

# Create a file with .sh extension.
touch hello_world.sh

# Write the script in the file using an editor.
#!/bin/bash
echo "Hello $USER"
echo "Today is $(date)"
echo "Today is "`date`
NOW=$(date)
echo $NOW

# Assign values to shell variables
varName='someValue'
echo $varName
# or
echo "$varName"
# or
echo "${varName}"
# Deleting variables
unset variablename
# To set value of an environment variable
export Variable=value
# Displays all environment variables
env

# Make the script executable with command chmod +x <fileName>.
chmod +x hello_world.sh

# Run the script using ./<fileName>.
./hello_world.sh

# The Pipe is a command in Linux that lets you use two or more commands such that output of one command serves as input to the next.
# In short, the output of each process directly as input to the next one like a pipeline.
# grep search_string
cat sample.txt | grep search_string

# Find a file
# find starting/path e.g. /var/www/ expression e.g. -name "*.html"
find . -name tnsnames.ora