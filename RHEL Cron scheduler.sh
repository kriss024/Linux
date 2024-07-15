# Check if cron package is installed
dpkg -l cron

sudo apt update
sudo apt install cron

# You’ll need to make sure it’s set to run in the background too
sudo service cron status
sudo service cron stop
sudo service cron start
sudo service cron restart

# You can edit your crontab with the following command:
crontab -e
:wq

# List all cron jobs
crontab -l

# https://crontab.guru/