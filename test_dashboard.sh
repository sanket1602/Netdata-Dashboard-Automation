#!/bin/bash

# Print message
echo "Starting System Load To Test Netdata Dashboard..!"

# Run a stress test (CPU intensive)
echo "Running CPU Stress Test..!"
stress --cpu 4 --timeout 60

# Run memory load
echo "Running Memory Load Test..!"
stress --vm 2 --vm-bytes 512M --timeout 60

# Check the Netdata dashboard
echo "Load Test Complete. You can now check your Netdata Dashboard at http://<your-server-ip>:19999/"

