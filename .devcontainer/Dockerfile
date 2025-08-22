FROM mcr.microsoft.com/devcontainers/base:ubuntu

# XFCE, VNC ve noVNC kurulumu
RUN apt-get update && \
    apt-get install -y xfce4 xfce4-goodies x11vnc xvfb wget git curl && \
    git clone https://github.com/novnc/noVNC.git /opt/noVNC && \
    git clone https://github.com/novnc/websockify.git /opt/noVNC/utils/websockify && \
    mkdir -p /root/.vnc && x11vnc -storepasswd 1234 /root/.vnc/passwd

# Başlatma scriptini kopyala
COPY start-vnc.sh /usr/local/bin/start-vnc.sh
RUN chmod +x /usr/local/bin/start-vnc.sh
