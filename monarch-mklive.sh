#!/bin/bash
# Monarch Linux ISO builder script
# Run the build 

sudo ./mkiso.sh \
  -a x86_64 \
  -o Monarch-Linux-$(date +%Y%m%d).iso \
  -s xz \
  -I etc/ \
  -I usr/ \
  -i xz
