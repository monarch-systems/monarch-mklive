#!/bin/bash
# Monarch Linux ISO builder script
# Run the build 

sudo ./mkiso.sh \
  -a x86_64 \
  -o . \
  -s overlay/ \
  -I etc/ \
  -i Monarch-Linux-$(date +%Y%m%d).iso
