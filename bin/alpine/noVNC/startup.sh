#!/bin/bash

# Start SSH
service ssh start

# Export DBUS session
export $(dbus-launch)

# Start VNC server
vncserver -kill :1 > /dev/null 2>&1
vncserver :1 -geometry 1280x800 -depth 24

# Start noVNC using Websockify to proxy :1
websockify --web /usr/share/novnc 6080 localhost:5901 &

# Keep container alive
tail -f /dev/null
