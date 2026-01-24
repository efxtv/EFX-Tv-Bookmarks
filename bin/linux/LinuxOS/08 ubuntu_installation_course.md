**Course: Complete Guide to Installing and Using Ubuntu Linux (2025 Edition)**

---

# **Module 1: Introduction to Ubuntu**

## 1.1 What is Ubuntu?

Ubuntu is one of the most popular Linux distributions, based on Debian. It is maintained by Canonical and is well-known for its ease of use, regular updates, and strong community support.

## 1.2 Key Features

- Based on Debian
- GNOME desktop environment by default
- Large software repository
- Long-Term Support (LTS) releases
- Extensive community and documentation

## 1.3 Homepage and Downloads

- Homepage: [https://ubuntu.com](https://ubuntu.com)
- Download ISO: [https://ubuntu.com/download/desktop](https://ubuntu.com/download/desktop)

---

# **Module 2: System Requirements**

## 2.1 Minimum Requirements

- CPU: 2 GHz dual-core processor or better
- RAM: 4 GB (8 GB recommended)
- Storage: 25 GB free space
- Internet connection for updates and downloads

---

# **Module 3: Preparing for Installation**

## 3.1 Backup Your Data

Back up all important data before installation, especially when dual-booting.

## 3.2 Download the ISO File

Choose the LTS version for stability and long-term support.

## 3.3 Create Bootable USB

- **Windows**: Use Rufus
- **Linux/macOS**:

```bash
sudo dd if=ubuntu-*.iso of=/dev/sdX bs=4M status=progress && sync
```

## 3.4 BIOS/UEFI Settings

- Disable Secure Boot (if necessary)
- Enable UEFI or Legacy mode as needed
- Set USB as the primary boot device

---

# **Module 4: Installation Process**

## 4.1 Boot into USB

- Insert bootable USB and boot into the Ubuntu Live environment
- Select "Try Ubuntu" to test, or "Install Ubuntu" to begin setup

## 4.2 Select Language and Region

Choose the appropriate language and keyboard layout

## 4.3 Connect to Network

Optional but recommended for downloading updates during installation

## 4.4 Installation Type

- **Erase disk and install Ubuntu** (fresh install)
- **Install alongside existing OS** (dual boot)
- **Manual (Something Else)** (for advanced users)

### Recommended Partitions:

- EFI (FAT32, 300MB, /boot/efi)
- root (/): 30 GB+, ext4
- swap: Equal to RAM or use swapfile
- home (/home): Remaining space

## 4.5 User Configuration

- Set username, password, and computer name
- Choose to log in automatically or require a password

## 4.6 Final Setup

- Review all settings
- Click Install
- Wait 10–15 minutes

## 4.7 Reboot System

Remove USB when prompted and boot into Ubuntu

---

# **Module 5: First Boot and Updates**

## 5.1 Login

Enter your password and log in to your Ubuntu desktop

## 5.2 Run System Updates

```bash
sudo apt update && sudo apt upgrade
```

## 5.3 Install Additional Drivers

Go to Software & Updates → Additional Drivers

## 5.4 Install Snap and Flatpak (Optional)

```bash
sudo apt install snapd
sudo apt install flatpak
```

---

# **Module 6: Essential Applications**

## 6.1 Software Center

Use Ubuntu Software Center to install apps like:

- Firefox
- VLC
- GIMP
- LibreOffice

## 6.2 Terminal Installation

```bash
sudo apt install gnome-tweaks neofetch htop curl
```

---

# **Module 7: Best Usage Scenarios**

## 7.1 Beginners

- Great UI, simple navigation, safe default environment

## 7.2 Students and Office Work

- Pre-installed office suite, browser, PDF viewer

## 7.3 Developers

- Install VS Code, Docker, Git
- Access to huge package repositories

## 7.4 Media and Creativity

- Install tools like Kdenlive, Audacity, Blender

---

# **Module 8: Maintenance & Tips**

## 8.1 Keep System Updated

```bash
sudo apt update && sudo apt full-upgrade
```

## 8.2 Enable Firewall

```bash
sudo ufw enable
```

## 8.3 Use Timeshift for Backups

```bash
sudo apt install timeshift
```

## 8.4 Clean Up Unused Packages

```bash
sudo apt autoremove && sudo apt clean
```

---

# **Course Completion**

You’ve now mastered:

- Installing Ubuntu from scratch
- Post-installation essentials
- Practical usage and maintenance

📥 Download Ubuntu: [https://ubuntu.com/download/desktop](https://ubuntu.com/download/desktop)

📺 **Course by EFXTv YouTube**

