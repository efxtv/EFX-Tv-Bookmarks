**Course: Complete Guide to Installing and Using MX Linux (2025 Edition)**

---

# **Module 1: Introduction to MX Linux**

## 1.1 What is MX Linux?

MX Linux is a Debian-based midweight Linux distribution that combines simplicity, stability, and performance. It is designed to work well on both modern and older hardware and provides a highly customizable desktop experience.

## 1.2 Features of MX Linux

- Lightweight and fast
- Based on Debian Stable
- XFCE as the flagship desktop (also offers KDE and Fluxbox)
- MX Tools for easy configuration
- Live USB persistence support
- Easy snapshot and backup tools
- Systemd-free (SysVinit by default)

## 1.3 Official Website & Download

- Homepage: [https://mxlinux.org](https://mxlinux.org)
- Direct Download: [https://mxlinux.org/download-links/](https://mxlinux.org/download-links/)

---

# **Module 2: System Requirements**

## 2.1 Minimum Requirements

- 1 GB RAM (2 GB recommended)
- 8 GB disk space (20 GB recommended)
- 32-bit or 64-bit processor

## 2.2 Recommended Requirements

- 4 GB RAM or higher
- 64 GB SSD or more
- Intel/AMD dual-core 64-bit processor
- UEFI or Legacy BIOS support

---

# **Module 3: Preparing for Installation**

## 3.1 Backup Your Data

- Use an external drive or cloud service to backup personal files before installing.

## 3.2 Download MX Linux ISO

- Visit: [https://mxlinux.org/download-links/](https://mxlinux.org/download-links/)
- Choose between XFCE, KDE, or Fluxbox edition based on system specs and preference

## 3.3 Create a Bootable USB

### Windows:

Use [Rufus](https://rufus.ie) to flash the ISO.

### Linux:

Use `dd`, `balenaEtcher`, or `Ventoy`:

```bash
sudo dd if=MX-*.iso of=/dev/sdX bs=4M status=progress && sync
```

## 3.4 BIOS/UEFI Configuration

- Reboot and enter BIOS (F2, DEL, F10, ESC)
- Disable Secure Boot (if enabled)
- Enable USB boot
- Set USB device as first boot priority

---

# **Module 4: Booting and Trying MX Linux**

## 4.1 Boot Menu

- Insert USB, restart PC
- From MX Linux boot menu, select "MX-21 Live" or similar

## 4.2 Live Session

- Let the system boot into live session
- Explore MX Tools, internet, and file explorer before installing

---

# **Module 5: Installing MX Linux (In-Depth)**

## 5.1 Launch the Installer

- Double-click the "Install MX Linux" icon on the live desktop

## 5.2 Language and Keyboard

- Choose system language
- Set correct timezone and keyboard layout

## 5.3 Disk Setup Options

### A. Auto Install (Erase Disk)

- Recommended for new users
- Automatically sets up partitions (/, /home, swap)

### B. Custom Disk Partitioning (Advanced Users)

- Choose "Custom Install using existing partitions"
- Use GParted to:
  - Create EFI (300 MB, FAT32, mount /boot/efi)
  - Root (20+ GB, ext4, mount /)
  - Home (rest of space, ext4, mount /home)
  - Swap (equal to or half of RAM)

## 5.4 Bootloader Setup

- Choose to install GRUB bootloader to MBR or EFI partition (auto-detects mode)
- Select the correct drive to install bootloader

## 5.5 User Account

- Set username, password, and hostname
- Choose auto-login if desired

## 5.6 Final Confirmation

- Review installation summary
- Click "Install"
- Wait 10–30 minutes
- Click "Finish" and reboot when prompted

---

# **Module 6: Post-Installation Setup**

## 6.1 Remove USB and Boot into MX Linux

- After reboot, remove USB when prompted

## 6.2 First Boot

- Log in with your user credentials
- Explore Welcome Screen and MX Tools

## 6.3 Run Updates

```bash
sudo apt update && sudo apt upgrade -y
```

Or use MX Updater GUI from system tray.

## 6.4 Install Common Apps

```bash
sudo apt install vlc gimp firefox gparted
```

---

# **Module 7: MX Tools Overview**

- **MX Snapshot** – Create system backups
- **MX Boot Repair** – Fix bootloader issues
- **MX Package Installer** – One-click install popular apps
- **MX Tweak** – Adjust UI and system behavior
- **MX Conky** – Enable/disable desktop widgets
- **MX USB Maker** – Make bootable USBs with persistence

---

# **Module 8: Best Usage Scenarios**

## 8.1 Lightweight Desktops

- XFCE and Fluxbox are ideal for older PCs

## 8.2 Power Users

- KDE edition offers feature-rich workspace

## 8.3 Portability

- Live USB mode with persistence is perfect for travel

## 8.4 Privacy and Control

- Systemd-free architecture offers more transparency

---

# **Module 9: Maintenance Tips**

## 9.1 Remove Orphaned Packages

```bash
sudo apt autoremove
```

## 9.2 Clean Package Cache

```bash
sudo apt clean
```

## 9.3 Check Disk Space

```bash
df -h
```

## 9.4 Create Backups

- Use MX Snapshot or Timeshift

---

# **Module 10: Troubleshooting Common Issues**

## 10.1 No Wi-Fi

- Launch MX Network Assistant
- Try enabling Wi-Fi or switch drivers

## 10.2 GRUB Bootloader Missing

- Boot live USB
- Run MX Boot Repair

## 10.3 Resolution Issues

- Use MX Tweak → Display tab to adjust resolution

---

# **Course Completion**

You’ve successfully learned how to install and use MX Linux from scratch. With its stability and flexibility, MX is perfect for both beginners and professionals looking for a Debian-based system.

🔗 Website: [https://mxlinux.org](https://mxlinux.org) 📦 Download: [https://mxlinux.org/download-links/](https://mxlinux.org/download-links/)

📺 **Course by EFXTv YouTube Channel**

