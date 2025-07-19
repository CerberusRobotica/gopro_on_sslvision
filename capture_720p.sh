#!/usr/bin/env bash

echo "Loading the module with new camera parameters"

sudo modprobe -r v4l2loopback

sudo modprobe v4l2loopback \
video_nr=2 \
exclusive_caps=1 \
max_buffers=4 \
card_label="GoPro_YUYV" \
format=YUYV

echo "Starting the capture in 720p.🚀🐺"

ffmpeg -nostdin -i 'udp://@0.0.0.0:8554?overrun_nonfatal=1&fifo_size=50000000' \
-vf "scale=1280:720,format=yuyv422" \
-pix_fmt yuyv422 \
-f v4l2 /dev/video2
