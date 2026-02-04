#!/usr/bin/env bash

# Script by t.me/EFXTv

# Optimized QEMU Script (1080p Fix)
set -e

RAM="6G"
CORES="4"
CPU="host"

# --- STABILITY & RESOLUTION FIXES ---
export GDK_BACKEND=x11
export QT_QPA_PLATFORM=xcb

# Optimized Options:
# Changed 'vgamem_mb' to 'edid=on' and 'xres/yres' for better compatibility.
COMMON_OPTS=(
    -m "$RAM"
    -cpu "$CPU,hv_relaxed,hv_spinlocks=0x1fff,hv_vapic,hv_time"
    -smp "$CORES"
    -enable-kvm
    -display gtk,zoom-to-fit=on
    -device virtio-vga,edid=on,xres=1920,yres=1080
    -device virtio-tablet-pci
    -device virtio-serial-pci
    -device virtserialport,chardev=spicechannel0,name=com.redhat.spice.0
    -chardev spicevmc,id=spicechannel0,name=vdagent
    -netdev user,id=net0 -device virtio-net-pci,netdev=net0
)

show_help() {
    echo -e "\n====================================="
    echo "Boot OS with QEMU:"
    echo "  boot -create [file.qcow2] [size]"
    echo "  boot -boot [iso] [disk]"
    echo "  boot -boot [disk]"
    echo "  boot -moni [disk]"
    echo "  boot -shell"
    echo "  boot -virtmanager"
    echo "  boot -install"
    echo "====================================="
}

createVHD() {
    echo "[+] Creating VHD: $1 ($2)"
    qemu-img create -f qcow2 "$1" "$2"
}

bootwithiso() {
    local iso="$1"
    local disk="$2"
    qemu-system-x86_64 "${COMMON_OPTS[@]}" \
        -drive file="$disk",format=qcow2,if=virtio,cache=writethrough \
        -cdrom "$iso" -boot d
}

bootwithvhd() {
    local disk="$1"
    echo "[+] Booting VHD: $disk"
    qemu-system-x86_64 "${COMMON_OPTS[@]}" \
        -drive file="$disk",format=qcow2,if=virtio,cache=writethrough \
        -boot c
}

bootwithmonitor() {
    local disk="$1"
    qemu-system-x86_64 "${COMMON_OPTS[@]}" \
        -drive file="$disk",format=qcow2,if=virtio,cache=writethrough \
        -boot c -monitor unix:/tmp/qemu-monitor-socket,server,nowait
}

install_deps() {
    sudo apt update && sudo apt install qemu-kvm libvirt-daemon-system \
    virt-manager spice-vdagent qemu-guest-agent xwayland -y
    sudo usermod -aG kvm $USER
}

shells() {
echo "
=============================================
                USE COMMANDS
=============================================
info snapshots: Lists all snapshots in the disk image
savevm <name>: Creates a snapshot of current state
loadvm <name>: Restores VM to a specific snapshot
delvm <name>: Deletes a snapshot by name/ID
stop: Pauses the virtual machine
cont: Resumes the virtual machine
system_reset: Reboots the virtual machine
system_powerdown: Sends a clean shutdown signal
quit: Terminates QEMU and closes VM
info block: Shows disk drive status
eject <device>: Removes media from a drive
change <device> <filename>: Swaps media/ISO in a drive
commit <device>: Saves temporary changes to disk
info status: Shows if VM is running/paused
info kvm: Checks if KVM is active
info history: Lists previously typed commands
help: Displays all available monitor commands
==============================================
"
    nc -U /tmp/qemu-monitor-socket
}

case "$1" in
    -virtmanager) sudo virt-manager ;;
    -shell) shells;;
    -install)     install_deps ;;
    -moni)         bootwithmonitor "$2" ;;
    -create)      createVHD "$2" "$3" ;;
    -boot)
        if [[ "$#" -eq 3 ]]; then 
            bootwithiso "$2" "$3"
        elif [[ "$#" -eq 2 ]]; then 
            bootwithvhd "$2"
        else 
            show_help
        fi ;;
    *) show_help ;;
esac
