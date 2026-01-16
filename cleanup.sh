#!/bin/bash

# Stop Netdata service
echo "Stopping Netdata Service..!"
sudo systemctl stop netdata

# Remove Netdata
echo "Removing Netdata..!"
sudo apt remove --purge -y netdata

# Clean up configuration files
echo "Cleaning up Configuration files..!"
sudo rm -rf /etc/netdata

# Check if Netdata is still installed
echo "Checking if Netdata is still installed..."
dpkg -l | grep netdata

echo "Cleanup complete!"
