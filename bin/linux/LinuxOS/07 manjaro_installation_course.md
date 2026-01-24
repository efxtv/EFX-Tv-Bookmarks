**Course: Complete Guide to Installing and Using Manjaro Linux (2025 Edition)**

---

# **Module 1: Introduction to Manjaro**

## 1.1 What is Manjaro?

Manjaro is a beginner-friendly Linux distribution based on Arch Linux. It provides all the power of Arch with a more accessible and user-focused experience.

## 1.2 Key Features

- Based on Arch Linux
- Rolling release system
- Multiple desktop environments (Xfce, GNOME, KDE Plasma)
- Built-in hardware detection and driver management
- Pamac: graphical package manager

## 1.3 Homepage and Downloads

- Homepage: [https://manjaro.org](https://manjaro.org)
- Download ISO: [https://manjaro.org/download/](https://manjaro.org/download/)

---

# **Module 2: System Requirements**

## 2.1 Minimum Requirements

- CPU: 1 GHz 64-bit processor
- RAM: 2 GB (4 GB recommended)
- Storage: 30 GB free space
- UEFI or Legacy BIOS support
- Internet connection for updates

---

# **Module 3: Preparing for Installation**

## 3.1 Backup Your Data

Always back up your important files before installing a new OS.

## 3.2 Download the ISO

- Choose your preferred desktop edition: Xfce (lightweight), GNOME, KDE (feature-rich)

## 3.3 Create Bootable USB

- **Windows**: Use [Rufus](https://rufus.ie)
- **Linux/macOS**:

```bash
sudo dd if=manjaro-*.iso of=/dev/sdX bs=4M status=progress && sync
```

## 3.4 Configure BIOS/UEFI

- Disable Secure Boot
- Enable UEFI or Legacy mode (based on your choice)
- Set USB as the first boot device

---

# **Module 4: Installation Process**

## 4.1 Boot From USB

- Select "Boot with Open Source Drivers" or "Boot with Proprietary Drivers" (for NVIDIA users)

## 4.2 Launch Installer

- Open "Install Manjaro" from desktop

## 4.3 Select Language and Region

- Choose language, location, and timezone

## 4.4 Keyboard Layout

- Confirm or adjust keyboard layout

## 4.5 Partition Disk

- **Erase Disk**: Auto partitioning (recommended for new users)
- **Manual Partitioning**: For advanced users or dual booting

### Recommended Manual Partitions:

- EFI System Partition (300MB, FAT32, mount: /boot/efi)
- root (ext4, 30 GB+, mount: /)
- swap (equal to RAM or use a swapfile)
- home (remaining space, ext4, mount: /home)

## 4.6 User Account Setup

- Create your username, password, and computer name

## 4.7 Start Installation

- Confirm settings and click Install
- Installation takes about 10–15 minutes

## 4.8 Reboot

- Remove USB when prompted and boot into Manjaro

---

# **Module 5: Post-Installation Setup**

## 5.1 First Boot

- Log in with your credentials

## 5.2 Update System

```bash
sudo pacman -Syu
```

## 5.3 Pamac GUI Setup

- Open Add/Remove Software to install Flatpaks, AUR packages, and updates

## 5.4 Enable AUR and Flatpak

- Go to Preferences → Third Party → Enable AUR and Flatpak

## 5.5 Essential Software

```bash
sudo pacman -S firefox vlc gimp gparted
```

---

# **Module 6: Best Use Cases**

## 6.1 For Beginners

- Easy graphical installer, GUI package manager

## 6.2 For Developers

- Rolling release keeps you on latest versions
- Access to AUR for cutting-edge tools

## 6.3 For Power Users

- Arch base with custom kernel and tweaks
- Tiling WMs and custom DEs easily available

## 6.4 Gaming

- Steam, Proton, and gaming tools via pamac/AUR
- Optimized proprietary GPU support

---

# **Module 7: Maintenance and Troubleshooting**

## 7.1 Update System Regularly

```bash
sudo pacman -Syu
```

## 7.2 Install TLP for Power Saving (laptops)

```bash
sudo pacman -S tlp && sudo systemctl enable tlp --now
```

## 7.3 Remove Orphans

```bash
sudo pacman -Rns $(pacman -Qtdq)
```

## 7.4 Fix Boot Issues

- Boot into live USB and chroot into system

```bash
manjaro-chroot -a
```

- Reinstall bootloader if needed

---

# **Module 8: Advanced Tips**

## 8.1 Use Timeshift for Backups

```bash
sudo pacman -S timeshift
```

## 8.2 Use BTRFS with Snapshots

- Use BTRFS during install for rollback features
- Pair with Timeshift for system protection

## 8.3 Install Custom Kernels

```bash
mhwd-kernel -li     # List installed
mhwd-kernel -i linuxX   # Install another (e.g., linux61)
```

---

# **Course Completion**

You've learned:

- How to install Manjaro step by step
- Post-installation best practices
- Useful commands and desktop tips
- Ideal use cases and customization

📥 Download Manjaro: [https://manjaro.org/download/](https://manjaro.org/download/)

📺 **Course by EFXTv YouTube**

