#!/bin/bash

# Stop Netdata Service
echo "Stopping Netdata Service..!"
sudo systemctl stop netdata

# Remove Netdata
echo "Removing Netdata..!"
sudo apt remove --purge -y netdata

# Clean Up Configuration Files
echo "Cleaning up Configuration files..!"
sudo rm -rf /etc/netdata

# Check If Netdata is Still Installed
echo "Checking if Netdata is still installed..."
dpkg -l | grep netdata

echo "Cleanup complete!"
