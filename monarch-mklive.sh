#!/bin/bash
# Monarch Linux ISO builder script
# Run the build 

sudo ./mklive.sh \
  -a x86_64 \
  -o Monarch-Linux-$(date +%Y%m%d).iso \
  -s xz \
  -I overlay/ \
  -i xz
