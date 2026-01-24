**Course: Complete Guide to Installing and Using SparkyLinux (2025 Edition)**

---

# **Module 1: Introduction to SparkyLinux**

## 1.1 What is SparkyLinux?

SparkyLinux is a Debian-based lightweight and fast Linux distribution designed for both old and new computers. It offers various desktop environments (LXQt, Xfce, MATE, KDE, MinimalGUI, and CLI) and is ideal for beginners as well as advanced users who want performance, simplicity, and reliability.

## 1.2 Homepage and Download Link

- Homepage: [https://sparkylinux.org](https://sparkylinux.org)
- Download: [https://sparkylinux.org/download/](https://sparkylinux.org/download/)

---

# **Module 2: System Requirements**

## 2.1 Minimum Requirements (for Lightweight Editions like LXQt or MinimalGUI)

- CPU: i686 or x86\_64 processor
- RAM: 512 MB minimum (1 GB recommended)
- Storage: 5 GB minimum (10+ GB recommended)

## 2.2 Recommended Requirements (for Full Desktop Editions)

- CPU: Dual-core 64-bit processor
- RAM: 2 GB minimum (4 GB recommended)
- Storage: 20 GB or more

---

# **Module 3: Preparing Installation Media**

## 3.1 Download ISO Image

- Choose between Stable or Rolling releases
- Select desktop environment (e.g., LXQt, KDE, Xfce)

## 3.2 Create Bootable USB

### On Windows:

- Use [Rufus](https://rufus.ie)

### On Linux/macOS:

```bash
sudo dd if=sparkylinux.iso of=/dev/sdX bs=4M status=progress && sync
```

## 3.3 BIOS/UEFI Setup

- Enable USB boot
- Disable Secure Boot (if applicable)
- Select UEFI or Legacy mode based on your hardware

---

# **Module 4: Booting and Installation Menu**

## 4.1 Boot from USB

- Insert USB, reboot and select boot device
- Select "SparkyLinux Installer" or test Live version first

---

# **Module 5: Installation Steps**

## 5.1 Launch Calamares Installer (GUI Installer)

- Choose language, timezone, keyboard layout

## 5.2 Partitioning the Disk

### Option A: Auto Partition

- Use entire disk automatically

### Option B: Manual Partition

- `/boot/efi` (FAT32, 512MB) for UEFI
- `/` (ext4, 20+ GB)
- `swap` (optional: RAM x2 if under 4GB)

## 5.3 Create User

- Set username and password
- Choose to log in automatically or require password

## 5.4 Install and Reboot

- Confirm settings and begin installation
- Remove USB after completion and reboot

---

# **Module 6: First Boot and Post-Install Tasks**

## 6.1 Log In to Desktop Environment

## 6.2 Update the System

```bash
sudo apt update && sudo apt upgrade -y
```

## 6.3 Install Additional Software

```bash
sudo apt install vlc gimp libreoffice gparted
```

## 6.4 Enable Firewall and SSH (Optional)

```bash
sudo ufw enable
sudo systemctl enable ssh && sudo systemctl start ssh
```

---

# **Module 7: Best Use Cases for SparkyLinux**

## 7.1 Reviving Old PCs and Laptops

- Lightweight editions are perfect for low-resource systems

## 7.2 Daily Desktop Use

- Complete office, media, and browsing functionality

## 7.3 Developer and Hacker Friendly

- Rolling editions with APTus tools for managing apps and scripts

## 7.4 Educational Use

- Ideal for students learning Linux or coding

---

# **Module 8: Tools and Maintenance**

## 8.1 Sparky APTus App Center

- GUI tool for installing common apps and tools

## 8.2 Manage Packages

```bash
sudo apt install <package>
sudo apt remove <package>
```

## 8.3 System Cleanup

```bash
sudo apt autoremove && sudo apt clean
```

## 8.4 Backup and Restore

- Use `Timeshift` or `Deja Dup` for snapshots and backups

---

# **Course Summary**

✅ You’ve learned:

- How to install and configure SparkyLinux
- Desktop usage, tools, and best performance tips
- Lightweight and powerful Linux OS for everyone

📥 Download SparkyLinux: [https://sparkylinux.org/download/](https://sparkylinux.org/download/)

📺 **Course by EFXTv YouTube**

