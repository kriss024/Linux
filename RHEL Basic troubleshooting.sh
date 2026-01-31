# Journalctl is a utility for querying and displaying logs

# View recent system logs
journalctl -xe

# Follow logs in real-time (like tail -f)
journalctl -f

# Show logs from the current boot
journalctl -b

# Show logs from a specific service (e.g., sshd)
journalctl -u sshd.service

# Show logs from the last hour
journalctl --since "1 hour ago"

# Show logs between specific times
journalctl --since "2024-01-31 10:00:00" --until "2024-01-31 11:00:00"

# Show only error and critical messages
journalctl -p err

# Show kernel messages (like dmesg)
journalctl -k

# Show logs in reverse order (newest first)
journalctl -r

# Show logs with specific priority and from specific service
journalctl -u httpd.service -p warning

# Export logs to JSON format
journalctl -o json

# Show disk usage by journal
journalctl --disk-usage

# Vacuum old logs (keep only last 2 days)
sudo journalctl --vacuum-time=2d

# View the entire file
sudo less /var/log/messages

# View last 50 lines
sudo tail -50 /var/log/messages

# Follow logs in real-time
sudo tail -f /var/log/messages

# Search for specific content
sudo grep "error" /var/log/messages

# Search with context (5 lines before and after)
sudo grep -C 5 "kernel" /var/log/messages

# View logs from today
sudo grep "$(date '+%b %d')" /var/log/messages

# Search for specific service or process
sudo grep "sshd" /var/log/messages

# Combine with other tools
sudo awk '/error|fail|critical/i' /var/log/messages

# The cockpit-ws program is the web service component used for communication between the browser application and various configuration tools and services

# Install Cockpit (if not already installed)
sudo dnf install cockpit

# Enable and start the cockpit.socket service
sudo systemctl enable --now cockpit.socket

# Configure the firewall to allow Cockpit traffic
sudo firewall-cmd --add-service=cockpit --permanent
sudo firewall-cmd --reload

# Verify the service is running
sudo systemctl status cockpit.socket
```

**5. Access Cockpit:**
Open a web browser and navigate to:
```
https://<your-server-ip>:9090
```
or on the local machine:
```
https://localhost:9090


