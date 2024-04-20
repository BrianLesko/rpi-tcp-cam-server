#!/bin/bash
# The shebang line above specifies that the script should be run using bash, the Bourne-Again SHell

# Brian Lesko
# 4/20/2024
# Run a camera server on a Raspberry Pi
# Built off rpicam-apps and libcamera

rpicam-vid --level 4.2 --framerate 100 --width 1280 --height 720 -t 0 --inline --listen -o tcp://0.0.0.0:8000 --denoise cdn_off -n