**Course: Complete Guide to Installing and Using AnduinOS (2025 Edition)**

---

# **Module 1: Introduction to AnduinOS**

## 1.1 What is AnduinOS?

AnduinOS is a modern, user-friendly Linux distribution that blends performance, gaming, and usability. Built on Fedora and enhanced with custom kernels, drivers, and optimizations, it's a popular choice among gamers, content creators, and advanced Linux users.

## 1.2 Homepage and Download Links

- Homepage: [https://anduin.dev](https://anduin.dev)
- Download: [https://anduin.dev/download](https://anduin.dev/download)

---

# **Module 2: System Requirements**

## 2.1 Minimum Requirements

- CPU: 64-bit processor (Intel or AMD)
- RAM: Minimum 4 GB (8 GB+ recommended)
- Disk Space: 20 GB minimum
- GPU: Integrated or dedicated GPU (NVIDIA/AMD)
- Internet: Required for updates and drivers

---

# **Module 3: Preparing for Installation**

## 3.1 Download ISO

- Go to: [https://anduin.dev/download](https://anduin.dev/download)
- Choose the latest stable ISO version

## 3.2 Create Bootable USB

### Tools to use:

- **balenaEtcher** (Windows/macOS/Linux)
- **Rufus** (Windows)
- **dd** (Linux/macOS):

```bash
sudo dd if=AnduinOS.iso of=/dev/sdX bs=4M status=progress && sync
```

## 3.3 BIOS/UEFI Setup

- Disable Secure Boot (if necessary)
- Enable USB Boot
- Set USB as the first boot device

---

# **Module 4: Boot into Live Environment**

## 4.1 Boot from USB

- Select "AnduinOS Live" from the boot menu
- Wait for the desktop environment to load

## 4.2 Explore the Live System

- Test your hardware compatibility
- Ensure WiFi, keyboard, mouse, and display are functioning

---

# **Module 5: Begin Installation**

## 5.1 Launch Installer

- On the desktop, double-click **Install AnduinOS**

## 5.2 Choose Language & Keyboard

- Select your preferred language and keyboard layout

## 5.3 Partitioning the Disk

### Automatic (Recommended):

- Select "Erase disk and install AnduinOS"
- Choose encryption if desired

### Manual (Advanced):

- Set up:
  - `/boot` (FAT32): 512 MB
  - `/` (ext4 or btrfs): Remaining space
  - `swap` (Optional): 2 GB or more

## 5.4 Create User Account

- Set a username, password, and computer name
- Optionally enable auto-login

## 5.5 Begin Installation

- Click **Install Now**
- Wait for the process to complete

---

# **Module 6: Post-Installation Setup**

## 6.1 Reboot

- Remove the USB drive
- Boot into the newly installed AnduinOS

## 6.2 System Update

```bash
sudo dnf update
```

## 6.3 Install Additional Software

```bash
sudo dnf install vlc gimp steam obs-studio
```

---

# **Module 7: Best Use Cases**

## 7.1 Gaming

- Built-in support for Steam and Proton
- Latest kernel and GPU drivers

## 7.2 Content Creation

- Tools for streaming, editing, and recording
- Performance-tuned for high-resource applications

## 7.3 General Desktop Use

- Stable and responsive desktop environment
- Ideal for daily productivity and web usage

---

# **Module 8: Maintenance and Updates**

## 8.1 Update System

```bash
sudo dnf upgrade
```

## 8.2 Manage Software

- Use GNOME Software (GUI) or `dnf` in terminal

## 8.3 Enable Flatpak (Optional)

```bash
sudo flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
```

---

# **Course Summary**

✅ You have learned:

- How to install and set up AnduinOS
- How to create bootable media and configure BIOS
- Best tools and commands for software management

📥 Download AnduinOS: [https://anduin.dev/download](https://anduin.dev/download)

📺 **Course by EFXTv YouTube**

