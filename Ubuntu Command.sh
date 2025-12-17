# Switch between the CLI and GUI on a Linux
# Ctrl + Alt + F3 (or F4, F5, F6)	Switch to a text console (CLI)
# Ctrl + Alt + F2	Switch back to GUI
# Tab	Auto-complete.
# Ctrl + C	Kill/Stop the current running process immediately.
# Ctrl + Z	Suspend/Pause the process (resume with fg for foreground or bg for background).
# Ctrl + D	Close the terminal (same as typing exit).
# Ctrl + L	Clear the screen (leaves your current line at the top).
# Ctrl + Shift + C	Copy selected text.
# Ctrl + Shift + V	Paste text.

# Using the Bash interpreter in scripts
#!/bin/bash

# Top 50 Linux Commands
ls - The most frequently used command in Linux to list directories
pwd - Print working directory command in Linux
cd - Linux command to navigate through directories
mkdir - Command used to create directories in Linux
mv - Move or rename files in Linux
cp - Similar usage as mv but for copying files in Linux
rm - Delete files or directories
touch - Create blank/empty files
ln - Create symbolic links (shortcuts) to other files
cat - Display file contents on the terminal
clear - Clear the terminal display
echo - Print any text that follows the command
less - Linux command to display paged outputs in the terminal
man - Access manual pages for all Linux commands
uname - Linux command to get basic information about the OS
whoami - Get the active username
tar - Command to extract and compress files in Linux
grep - Search for a string within an output
head - Return the specified number of lines from the top
tail - Return the specified number of lines from the bottom
diff - Find the difference between two files
cmp - Allows you to check if two files are identical
comm - Combines the functionality of diff and cmp
sort - Linux command to sort the content of a file while outputting
export - Export environment variables in Linux
zip - Zip files in Linux
unzip - Unzip files in Linux
ssh - Secure Shell command in Linux
service - Linux command to start and stop services
ps - Display active processes
kill and killall - Kill active processes by process ID or name
df - Display disk filesystem information
mount - Mount file systems in Linux
chmod - Command to change file permissions
chown - Command for granting ownership of files or folders
ifconfig - Display network interfaces and IP addresses
traceroute - Trace all the network hops to reach the destination
wget - Direct download files from the internet
ufw - Firewall command
iptables - Base firewall for all other firewall utilities to interface with
apt, pacman, yum, rpm - Package managers depending on the distro
sudo - Command to escalate privileges in Linux
cal - View a command-line calendar
alias - Create custom shortcuts for your regularly used commands
dd - Majorly used for creating bootable USB sticks
whereis - Locate the binary, source, and manual pages for a command
whatis - Find what a command is used for
top - View active processes live with their system usage
useradd and usermod - Add new user or change existing users data
passwd - Create or update passwords for existing users

awk	"Aho, Weinberger and Kernigan", Bell Labs, 1970s. Interpreted programming language for text processing.
awk -F	(see above) + Set the field separator.
cat	Display the contents of a file at the command line, is also used to copy and or append text files into a document. Named after its function to con-cat-enate files.
cd	Change the current working directory. Also known as chdir (change directory).
cd /	Change the current directory to root directory.
cd ..	Change the current directory to parent directory.
cd ~	Change the current directory to your home directory.
cp	Make copies of files and directories.
cp -r	Copy directories recursively.
cut	Drop sections of each line of input by bytes, characters, or fields, separated by a delimiter (the tab character by default).
cut -d -f	-d is for delimiter instead of tab character, -f select only those fields (ex.: “cut -d “,“ -f1 multilined_file.txt” - will mean that we select only the first field from each comma-separated line in the file)
du	Estimate (and display) the file space usage - space used under a particular directory or files on a file system.
df	Display the amount of available disk space being used by file systems.
df -h	Use human readable format.
free	Display the total amount of free and used memory (use vm_stat instead on MacOS).
free -m	Display the amount of memory in megabytes.
free -g	Display the amount of memory in gigabytes.
grep	Process text and print any lines which match a regular expression ("global regular expression print")
head	Print the beginning of a text file or piped data. By default, outputs the first 10 lines of its input to the command line.
head -n	Output the first n lines of input data (ex.: “head -5 multilined_file.txt”).
kill	Send a signal to kill a process. The default signal for kill is TERM (which will terminate the process).
less	Is similar to more, but has the extended capability of allowing both forward and backward navigation through the file.
ls	List the contents of a directory.
ls -l	List the contents of a directory + use a long format, displaying Unix file types, permissions, number of hard links, owner, group, size, last-modified date and filename.
ls -lh	List the contents of a directory + print sizes in human readable format. (e.g. 1K, 234M, 2G, etc.)
ls -lS	Sort by file size
lsblk	List all the attached disks on your computer
man	Display the manual pages which provide documentation about commands, system calls, library routines and the kernel.
mkdir	Create a directory on a file system ("make directory")
more	Display the contents of a text file one screen at a time.
mv	Rename files or directories or move them to a different directory.
nice	Run a command with a modified scheduling priority.
ps	Provide information about the currently running processes, including their process identification numbers (PIDs) ("process status").
ps a	Select all processes except both session leaders and processes not associated with a terminal.
pwd	Abbreviated from "print working directory", pwd writes the full pathname of the current working directory.
rm	Remove files or directories.
rm -rf	Remove directories and their contents recursively.
sort	Sort the contents of a text file.
sort -r	Sort the output in the reverse order. Reverse means - to reverse the result of comparsions
sort -k	-k or --key=POS1[,POS2] Start a key at POS1 (origin 1), end it at POS2 (default end of the line) (ex.: “sort -k2,2 multilined_file.txt”).
sort -n	Compare according to string numerical value.
tail	Print the tail end of a text file or piped data. Be default, outputs the last 10 lines of its input to the command line.
tail -n	Output the last n lines of input data (ex.: “tail -2 multilined_file.txt”).
top	Produce an ordered list of running processes selected by user-specified criteria, and updates it periodically.
touch	Update the access date and or modification date of a file or directory or create an empty file.
tr	Replace or remove specific characters in its input data set ("translate").
tr -d	Delete characters, do not translate.
vim	Is a text editor ("vi improved"). It can be used for editing any kind of text and is especially suited for editing computer programs.
wc	Print a count of lines, words and bytes for each input file ("word count")
wc -c	Print only the number of characters.
wc -l	Print only the number of lines.
