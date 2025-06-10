#!/bin/bash
# Monarch Linux ISO builder script
# 
# Make sure the script is running with root privileges

if ! [[ $EUID -ne 0 ]]; then
  echo "Please run as root."
  exit 1
fi

# Run the build 
sudo void-mklive \
  -a x86_64 \
  -o . \
  -p "Monarch Linux" \
  -s overlay/ \
  -I etc/
  -i Monarch-Linux-$(date +%Y%m%d).iso
