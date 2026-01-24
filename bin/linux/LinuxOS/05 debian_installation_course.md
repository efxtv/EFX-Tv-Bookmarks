**Course: Complete Guide to Installing and Using Debian Linux (2025 Edition)**

---

# **Module 1: Introduction to Debian**

## 1.1 What is Debian?

Debian is one of the oldest and most respected Linux distributions, known for its stability, security, and versatility. It is the foundation for many other distributions, including Ubuntu.

## 1.2 Key Features

- Extremely stable and secure
- Huge software repository
- Actively maintained by volunteers
- Offers Free (FOSS) and proprietary options
- Available for desktops, servers, and embedded systems

## 1.3 Homepage and Downloads

- Homepage: [https://www.debian.org](https://www.debian.org)
- Download ISO: [https://www.debian.org/distrib/](https://www.debian.org/distrib/)

---

# **Module 2: System Requirements**

## 2.1 Minimum Requirements

- CPU: 1 GHz or faster
- RAM: 1 GB (2 GB for smoother experience)
- Disk: 10 GB (20+ GB recommended)
- 64-bit or 32-bit architecture
- Network connection (for netinstall)

---

# **Module 3: Pre-Installation Checklist**

## 3.1 Backup Your Data

Always backup files before modifying disk partitions.

## 3.2 Download ISO Image

Choose from:

- Live ISO (with GUI)
- NetInstall ISO (minimal)
- DVD ISO (full offline installer)

## 3.3 Create Bootable USB

- **On Windows**: Use [Rufus](https://rufus.ie)
- **On Linux**:

```bash
sudo dd if=debian-*.iso of=/dev/sdX bs=4M status=progress && sync
```

## 3.4 BIOS/UEFI Setup

- Boot into BIOS (usually F2, ESC, DEL)
- Disable Secure Boot
- Set USB as primary boot device

---

# **Module 4: Booting into Installer**

## 4.1 Boot Options

- Graphical Install
- Text Install (works on low-resources machines)
- Advanced options (expert install, rescue mode)

## 4.2 Select Installer Language

Choose your language, location, and keyboard layout

---

# **Module 5: Debian Installation Steps (Graphical Installer)**

## 5.1 Detect and Configure Network

- Use DHCP or configure manually

## 5.2 Set Hostname & Domain

- Choose a unique system name

## 5.3 Create User Accounts

- Set root password (optional)
- Create a new user with sudo privileges

## 5.4 Disk Partitioning Options

### A. Guided Partitioning (Recommended for Beginners)

- Entire disk with or without LVM
- Automatically creates root, swap, and home

### B. Manual Partitioning (Advanced)

Create:

- EFI (300 MB, FAT32, mount /boot/efi)
- root (30+ GB, ext4, mount /)
- home (remaining space, ext4, mount /home)
- swap (equal to RAM)

## 5.5 Install Base System

Installer will install core Debian system files.

## 5.6 Configure Package Manager

- Choose Debian mirror
- Enable non-free firmware support if needed

## 5.7 Select Software

- Desktop Environment (GNOME, XFCE, KDE, Cinnamon, LXDE, etc.)
- Print server, SSH server (optional)

## 5.8 Install GRUB Bootloader

- Select the drive (usually /dev/sda)
- GRUB ensures the OS boots properly

## 5.9 Finish Installation

- Remove USB when prompted
- Reboot into your new Debian system!

---

# **Module 6: First Boot and Post-Install Tasks**

## 6.1 Login

Use the user account you created.

## 6.2 Update System

```bash
sudo apt update && sudo apt upgrade
```

## 6.3 Install Popular Apps

```bash
sudo apt install firefox-esr vlc gimp libreoffice gparted
```

## 6.4 Enable Sudo (if needed)

```bash
su
apt install sudo
usermod -aG sudo yourusername
```

---

# **Module 7: Best Use Cases**

## 7.1 Servers

Debian is widely used on web servers and cloud infrastructure.

## 7.2 Developers

Great for coding with Python, C, Go, etc.

## 7.3 Desktop Users

With DEs like GNOME, Cinnamon, XFCE, Debian is a solid daily driver.

## 7.4 Privacy-Conscious Users

Debian offers strict FOSS policy and minimal telemetry.

---

# **Module 8: Tips & Maintenance**

## 8.1 Clean Unused Packages

```bash
sudo apt autoremove
```

## 8.2 Remove Cache

```bash
sudo apt clean
```

## 8.3 Install .deb Packages

```bash
sudo dpkg -i package.deb
sudo apt install -f
```

---

# **Module 9: Troubleshooting**

## 9.1 Network Not Working

Use `nmtui` or install firmware if missing.

## 9.2 No GUI Boot

Try:

```bash
sudo systemctl start gdm3
```

Or check which DM is installed (lightdm, sddm, etc.)

## 9.3 GRUB Issues

Boot with Live USB and use Rescue mode to reinstall GRUB.

---

# **Course Completion**

You've successfully learned how to:

- Prepare your system for Debian
- Install via graphical interface
- Set up users and disk layouts
- Install essential software and updates
- Troubleshoot and maintain your Debian setup

🎓 **Congratulations! You're ready to explore the world of Debian Linux!**

📥 Download Debian: [https://www.debian.org/distrib/](https://www.debian.org/distrib/)

📺 **Course by EFXTv YouTube Channel**

