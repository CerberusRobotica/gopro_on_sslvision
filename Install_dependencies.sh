#!/bin/bash

sudo apt update

echo "Installing dependencies...💜"

sudo apt install -y ffmpeg v4l2loopback-dkms v4l2loopback-utils linux-headers-$(uname -r)
