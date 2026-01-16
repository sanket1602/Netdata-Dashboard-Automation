#!/bin/bash

# Update system packages
echo "Updating system packages..."
sudo apt update -y
sudo apt upgrade -y

# Install required dependencies
echo "Installing required dependencies..."
sudo apt install -y curl bash

# Download and run Netdata's installer script
echo "Installing Netdata..."
bash <(curl -Ss https://my-netdata.io/kickstart.sh)

# Start and enable the Netdata service
echo "Starting and enabling Netdata service..."
sudo systemctl start netdata
sudo systemctl enable netdata

# Check Netdata status
echo "Checking Netdata service status..."
sudo systemctl status netdata

echo "Netdata installation complete!"

