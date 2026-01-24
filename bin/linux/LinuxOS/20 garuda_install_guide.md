**Course: Complete Guide to Installing and Using Garuda Linux (2025 Edition)**

---

# **Module 1: Introduction to Garuda Linux**

## 1.1 What is Garuda Linux?

Garuda Linux is a cutting-edge, performance-oriented Linux distribution based on Arch Linux. It features the Linux Zen kernel and a stunning visual experience using KDE Plasma (default), GNOME, XFCE, and more. It is optimized for gamers, developers, and power users.

## 1.2 Homepage and Download Link

- Homepage: [https://garudalinux.org](https://garudalinux.org)
- Download: [https://garudalinux.org/downloads.html](https://garudalinux.org/downloads.html)

---

# **Module 2: System Requirements**

## 2.1 Minimum Requirements

- CPU: 64-bit (x86\_64)
- RAM: 4 GB (8 GB recommended)
- Disk: 30 GB (SSD recommended for best performance)
- GPU: NVIDIA/AMD/Intel with open drivers
- USB: 4 GB+ USB Drive

---

# **Module 3: Preparing Installation Media**

## 3.1 Download the ISO

- Choose your preferred desktop environment (KDE Dragonized, GNOME, XFCE, etc.)

## 3.2 Create Bootable USB Drive

### On Windows:

- Use Rufus: [https://rufus.ie](https://rufus.ie)

### On Linux/macOS:

```bash
sudo dd if=garuda.iso of=/dev/sdX bs=4M status=progress && sync
```

## 3.3 BIOS/UEFI Settings

- Enable USB boot
- Disable Secure Boot (Garuda recommends this)
- Set USB as first boot device

---

# **Module 4: Live Session and Testing**

## 4.1 Boot into Live Environment

- Plug USB and reboot
- Select "Boot with Open Source Drivers" (or proprietary if needed)

## 4.2 Explore Garuda Features

- Test network, sound, graphics
- Try tools like Garuda Welcome, Btrfs Assistant, Garuda Gamer

---

# **Module 5: Installation Process**

## 5.1 Launch Installer

- Click on "Install Garuda Linux" from desktop

## 5.2 Set Language and Region

## 5.3 Keyboard Layout

## 5.4 Disk Partitioning

### Option 1: Erase Disk (Auto)

- Uses Btrfs with subvolume layout

### Option 2: Manual Partitioning

- `/boot/efi` (if UEFI) - 512MB FAT32
- `/` root - Btrfs - 30GB+
- `swap` - optional (or zram is used by default)

## 5.5 Create User

- Set username, password, hostname

## 5.6 Start Installation

- Click install and wait for process to complete

---

# **Module 6: First Boot and Post-Install Steps**

## 6.1 Remove USB and Reboot

## 6.2 Update System

```bash
sudo pacman -Syu
```

## 6.3 Use Garuda Assistant

- Perform tweaks, driver installs, maintenance tasks

## 6.4 Install Extra Software

```bash
sudo pacman -S firefox vlc steam
```

---

# **Module 7: Best Use Cases of Garuda Linux**

## 7.1 Gaming

- Built-in Steam, Wine, Proton, GameMode

## 7.2 Developers

- Out-of-the-box support for editors, Git, compilers

## 7.3 Desktop Enthusiasts

- Eye-candy with KDE Dragonized and animations

## 7.4 Rolling Release Lovers

- Always up-to-date with Arch base and Zen kernel

---

# **Module 8: System Maintenance and Tools**

## 8.1 Updating

```bash
sudo pacman -Syu
```

## 8.2 Snapshots with Timeshift

- Integrated with Btrfs automatic snapshots

## 8.3 Garuda Tools

- Garuda Assistant, Garuda Gamer, Btrfs Assistant

---

# **Course Summary**

✅ You’ve learned:

- How to install and configure Garuda Linux
- How to use built-in tools for gaming, development, maintenance
- How to optimize and update your system regularly

📥 Download Garuda: [https://garudalinux.org/downloads.html](https://garudalinux.org/downloads.html)

📺 **Course by EFXTv YouTube**

