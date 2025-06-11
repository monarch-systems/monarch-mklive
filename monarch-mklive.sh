#!/bin/bash
# Monarch Linux ISO builder script
# Run the build 

sudo ./mklive.sh \
  -a x86_64 \
  -o Monarch-Linux-$(date +%Y%m%d).iso \
  -s xz \
  -g runit void-runit \
  -e "/usr/bin/bash" \
  -I overlay/ \
  -i xz
