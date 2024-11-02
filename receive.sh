#!/bin/bash
# The shebang line above specifies that the script should be run using bash, the Bourne-Again SHell

# Brian Lesko
# 4/20/2024
# receive the camera stream 

# Check if an IP address was provided as an argument
if [ -z "$1" ]; then
    echo "Usage: $0 <IP_ADDRESS>"
    exit 1
fi

# Use the provided IP address
IP=$1

ffplay tcp://$IP:8000 -vf "colorchannelmixer=rr=0:rb=1:br=1:bb=0, setpts=N/30" -fflags nobuffer -flags low_delay -framedrop
