#!/bin/bash

# banner.sh - Enable or disable Ubuntu SSH login banner and last login messages
# Usage:
#   ./banner.sh --enable    # Restore default login banners
#   ./banner.sh --disable   # Suppress all login messages

set -e

MOTD_DIR="/etc/update-motd.d"
PAM_SSHD="/etc/pam.d/sshd"
SSHD_CONFIG="/etc/ssh/sshd_config"

function usage() {
    echo "Usage: $0 --enable|--disable"
    exit 1
}

function disable_banner() {
    echo "Disabling MOTD scripts..."
    sudo chmod -x "$MOTD_DIR"/*

    echo "Disabling Ubuntu Pro / apt news..."
    sudo pro config set apt_news=false || echo "Ubuntu Pro not installed, skipping"

    echo "Disabling PAM MOTD integration..."
    sudo sed -i.bak -E 's/^(session\s+optional\s+pam_motd\.so.*)/# \1/' "$PAM_SSHD"

    echo "Disabling SSH last login message..."
    if grep -q "^PrintLastLog" "$SSHD_CONFIG"; then
        sudo sed -i.bak 's/^PrintLastLog.*/PrintLastLog no/' "$SSHD_CONFIG"
    else
        echo "PrintLastLog no" | sudo tee -a "$SSHD_CONFIG" > /dev/null
    fi

    echo "Restarting SSH service..."
    sudo systemctl restart ssh

    echo "All login messages have been disabled."
}

function enable_banner() {
    echo "Restoring MOTD scripts..."
    sudo chmod +x "$MOTD_DIR"/*

    echo "Enabling Ubuntu Pro / apt news..."
    sudo pro config set apt_news=true || echo "Ubuntu Pro not installed, skipping"

    echo "Restoring PAM MOTD integration..."
    sudo sed -i.bak -E 's/^#\s*(session\s+optional\s+pam_motd\.so.*)/\1/' "$PAM_SSHD"

    echo "Restoring SSH last login message..."
    if grep -q "^PrintLastLog" "$SSHD_CONFIG"; then
        sudo sed -i 's/^PrintLastLog.*/#PrintLastLog yes/' "$SSHD_CONFIG"
    fi

    echo "Restarting SSH service..."
    sudo systemctl restart ssh

    echo "All login messages have been restored."
}

# Main
if [[ $# -ne 1 ]]; then
    usage
fi

case "$1" in
    --enable)
        enable_banner
        ;;
    --disable)
        disable_banner
        ;;
    *)
        usage
        ;;
esac
