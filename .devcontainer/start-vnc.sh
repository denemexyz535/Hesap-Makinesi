#!/bin/bash
# Sanal ekran
Xvfb :1 -screen 0 1024x768x16 &
export DISPLAY=:1

# XFCE başlat
startxfce4 &

# x11vnc başlat
x11vnc -display :1 -forever -passwd 1234 &

# noVNC başlat
/opt/noVNC/utils/novnc_proxy --vnc localhost:5900 --listen 6080
