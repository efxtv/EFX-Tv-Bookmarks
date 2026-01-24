**Course: Complete Guide to Installing and Using EndeavourOS (2025 Edition)**

---

# **Module 1: Introduction to EndeavourOS**

## 1.1 What is EndeavourOS?

EndeavourOS is a user-friendly Arch-based Linux distribution that provides a close-to-Arch experience with a graphical installer, minimal preinstalled software, and excellent community support. It is ideal for users who want a lightweight, customizable system with the power of Arch Linux.

## 1.2 Key Features

- Arch-based with rolling release
- Calamares graphical installer
- Minimal bloat (comes with essential apps only)
- Multiple desktop environments (Xfce, KDE, GNOME, Cinnamon, Budgie, i3, etc.)
- Active community and forum
- Terminal-centric philosophy

## 1.3 Official Website & Download

- Homepage: [https://endeavouros.com](https://endeavouros.com)
- Download: [https://endeavouros.com/latest-release/](https://endeavouros.com/latest-release/)

---

# **Module 2: System Requirements**

## 2.1 Minimum Requirements

- 2 GB RAM (4 GB recommended)
- 20 GB storage space (40 GB recommended)
- 64-bit CPU (x86\_64 architecture)
- Internet connection for installation

## 2.2 Recommended Specs for DEs like KDE/GNOME

- 8 GB RAM
- SSD for better performance
- Dual-core or higher processor
- UEFI or Legacy BIOS support

---

# **Module 3: Pre-Installation Steps**

## 3.1 Backup Existing Data

- Use external storage or cloud services to backup your files.

## 3.2 Download ISO

- Get the latest ISO: [https://endeavouros.com/latest-release/](https://endeavouros.com/latest-release/)

## 3.3 Create Bootable USB

### On Windows

- Use [Rufus](https://rufus.ie) to flash ISO to USB

### On Linux

```bash
sudo dd if=EndeavourOS-*.iso of=/dev/sdX bs=4M status=progress && sync
```

## 3.4 BIOS/UEFI Setup

- Boot into BIOS (F2, DEL, ESC, F10)
- Disable Secure Boot
- Enable USB boot and set USB as primary boot device

---

# **Module 4: Booting into Live Environment**

## 4.1 Boot Menu

- Insert USB and restart PC
- Select "EndeavourOS Live (x86\_64)" in boot menu

## 4.2 Explore Live Session

- Launch Firefox, terminal, system monitor to test hardware compatibility

---

# **Module 5: Installing EndeavourOS (Detailed Guide)**

## 5.1 Start Installer

- Double-click "Start Installer" (Calamares) on the desktop

## 5.2 Select Language, Location & Keyboard

- Choose system language
- Set timezone and keyboard layout

## 5.3 Disk Setup

### A. Auto Install (Erase Disk)

- Automatically creates root, home, and swap partitions

### B. Manual Partitioning (Advanced Users)

- Use GParted to create:
  - EFI (300 MB, FAT32, mount /boot/efi)
  - Root (30+ GB, ext4, mount /)
  - Home (remaining space, ext4, mount /home)
  - Swap (equal to RAM)

## 5.4 Desktop Environment Selection

- Choose from Xfce, KDE Plasma, GNOME, Cinnamon, Budgie, i3, MATE, LXQt

## 5.5 Bootloader Setup

- GRUB is installed by default
- Automatically detects UEFI/Legacy

## 5.6 User Configuration

- Set username and password
- Option to enable autologin

## 5.7 Start Installation

- Review summary and click install
- Takes 10–20 minutes
- Reboot after completion and remove USB

---

# **Module 6: Post-Installation Steps**

## 6.1 First Boot

- Login with created credentials
- Open Welcome app for post-install help

## 6.2 Update System

```bash
sudo pacman -Syu
```

## 6.3 Install Common Software

```bash
sudo pacman -S firefox vlc gimp gparted
```

## 6.4 Enable AUR (Arch User Repository)

- Use Yay (preinstalled) to install AUR packages

```bash
yay -S google-chrome
```

---

# **Module 7: EndeavourOS Tools & Features**

- **Welcome App** – Guide for post-install tasks
- **EOS Package Cleaner** – Clean cache and orphans
- **EOS Update Notifier** – Alerts for updates
- **Terminal-centric tools** – Pacman, yay, reflector

---

# **Module 8: Best Use Cases**

## 8.1 Beginners Seeking Arch Experience

- Graphical installer simplifies Arch setup

## 8.2 Developers

- Rolling release ensures latest tools

## 8.3 Lightweight Setup

- Choose minimal install with i3 or XFCE

## 8.4 Learning Arch Linux Internals

- Manual control and Arch Wiki usage encouraged

---

# **Module 9: Maintenance & Tips**

## 9.1 Clean Cache

```bash
sudo pacman -Sc
```

## 9.2 Remove Orphans

```bash
sudo pacman -Rns $(pacman -Qtdq)
```

## 9.3 Sync Mirrors

```bash
sudo reflector --latest 10 --sort rate --save /etc/pacman.d/mirrorlist
```

---

# **Module 10: Troubleshooting**

## 10.1 Network Issues

- Use `nmtui` or `nmtui-connect`

## 10.2 Bootloader Not Found

- Boot Live USB → Launch terminal:

```bash
sudo arch-chroot /mnt
grub-install --target=x86_64-efi --efi-directory=/boot/efi --bootloader-id=GRUB
update-grub
```

## 10.3 AUR Errors

- Try clearing cache or rebuilding package:

```bash
yay -S <package> --rebuildtree
```

---

# **Course Completion**

Congratulations! You've completed the full course on installing and configuring EndeavourOS. You've learned everything from pre-install steps to system maintenance.

📎 Download: [https://endeavouros.com/latest-release/](https://endeavouros.com/latest-release/)

📺 **Course by EFXTv YouTube Channel**

