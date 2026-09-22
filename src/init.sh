#!/bin/sh

# ==============================================================================
# Catlow OS - Init Script (PID 1)
# Created by Alfie Catlow
# ==============================================================================

# Mount the basic virtual filesystems required by the Linux kernel
mount -t proc none /proc
mount -t sysfs none /sys
mount -t devtmpfs none /dev

# Clear the screen for a clean boot look
clear

# Display the system welcome banner
echo "========================================================================"
echo "                   Welcome to Catlow OS v1.0.0                          "
echo "           A Custom Linux Distribution by Alfie Catlow                  "
echo "========================================================================"
echo ""
echo "System initialized successfully. Core filesystems mounted."
echo "Type 'help' for available built-in BusyBox commands."
echo ""

# Launch an infinite interactive shell loop for the user
while true; do
    /bin/sh
done

