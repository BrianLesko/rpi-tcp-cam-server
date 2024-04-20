#!/bin/bash
# The shebang line above specifies that the script should be run using bash, the Bourne-Again SHell

# Brian Lesko
# 4/20/2024
# receive the camera stream 

ffplay tcp://172.20.10.3:8000 -vf "colorchannelmixer=rr=0:rb=1:br=1:bb=0, setpts=N/30" -fflags nobuffer -flags low_delay -framedrop