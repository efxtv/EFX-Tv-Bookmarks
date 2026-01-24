**Course: Complete Guide to Installing and Using elementary OS (2025 Edition)**

---

# **Module 1: Introduction to elementary OS**

## 1.1 What is elementary OS?

elementary OS is a beautiful, fast, and privacy-respecting replacement for Windows and macOS. Built on Ubuntu LTS, it offers a clean and user-friendly interface known as Pantheon. It is ideal for both beginners and experienced users who prefer simplicity and elegance.

## 1.2 Homepage and Download Links

- Homepage: [https://elementary.io](https://elementary.io)
- Download: [https://elementary.io/get-involved#download](https://elementary.io/get-involved#download)

---

# **Module 2: System Requirements**

## 2.1 Minimum Requirements

- CPU: 64-bit Dual-core 1.6GHz
- RAM: 4 GB minimum (8 GB recommended)
- Storage: 15 GB (SSD recommended)
- UEFI Boot Mode preferred
- Internet access for updates

---

# **Module 3: Preparing for Installation**

## 3.1 Download ISO

- Visit the [Download page](https://elementary.io/get-involved#download)
- Choose your contribution (pay what you want) or download for free
- Select the correct version for your hardware

## 3.2 Create a Bootable USB Drive

### Tools You Can Use:

- **balenaEtcher** (Windows/macOS/Linux)
- **Rufus** (Windows)
- **Ventoy** or **dd** command:

```bash
sudo dd if=elementary.iso of=/dev/sdX bs=4M status=progress && sync
```

## 3.3 BIOS/UEFI Configuration

- Enable UEFI boot mode
- Disable Secure Boot (if facing issues)
- Enable USB boot and set USB to first priority

---

# **Module 4: Installation (Step-by-Step)**

## 4.1 Boot into Live Environment

- Plug in USB
- Boot the system and select "Try or Install elementary OS"

## 4.2 Try Mode (Optional)

- Use the live desktop to test compatibility
- Click **Install elementary OS** to begin

## 4.3 Choose Language & Keyboard Layout

- Select your preferred language
- Set keyboard layout (default is English-US)

## 4.4 Prepare Installation

- Choose to erase disk and install elementary OS
- Manual partitioning (optional for advanced users)

### Partition Scheme (UEFI):

- `/boot/efi` (FAT32): 300 MB
- `/` (ext4): Minimum 15 GB
- `swap`: Optional (equal to RAM or 2 GB)
- `/home`: Optional (rest of the disk for user files)

## 4.5 Set Time Zone

- Select your region and city

## 4.6 User Setup

- Enter your name, computer name, and password
- Choose automatic login (optional)

## 4.7 Begin Installation

- Review summary and click **Install Now**
- Wait for the installation to complete

## 4.8 Reboot System

- Remove USB and reboot into your new OS

---

# **Module 5: Post-Installation Setup**

## 5.1 First Boot

- Login to your account
- Complete welcome screen settings

## 5.2 System Update

```bash
sudo apt update && sudo apt upgrade -y
```

## 5.3 Enable Flatpak Support

```bash
sudo apt install flatpak gnome-software-plugin-flatpak
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
```

## 5.4 Additional AppCenter Apps

- Use AppCenter to install:
  - Epiphany (Browser)
  - Geary (Email)
  - Code (Text Editor)
  - Eddy (App Installer)

---

# **Module 6: Recommended Software**

## 6.1 Productivity

- LibreOffice (via Flatpak)
- OnlyOffice
- Evolution Mail

## 6.2 Multimedia

- VLC Media Player
- GIMP (Graphics)
- Kdenlive (Video Editing)

## 6.3 Development

- VS Code (via Flatpak)
- Git, curl, build-essential

---

# **Module 7: Best Use Cases**

## 7.1 Beginners

- Ideal for new Linux users
- Simple and intuitive interface

## 7.2 Privacy-conscious users

- Open-source, no data collection

## 7.3 Developers

- Ubuntu base makes development easy

## 7.4 Writers and Creatives

- Beautiful UI + distraction-free experience

---

# **Module 8: System Maintenance**

## 8.1 Regular Updates

```bash
sudo apt update && sudo apt upgrade -y
```

## 8.2 System Cleanup

```bash
sudo apt autoremove && sudo apt clean
```

## 8.3 Backup Tool

- Use **Timeshift** for system snapshots

```bash
sudo apt install timeshift
```

---

# **Course Summary**

✅ You’ve learned:

- How to install elementary OS step-by-step
- Post-installation configurations
- Best use cases for various users

📥 Download elementary OS: [https://elementary.io](https://elementary.io)

📺 **Course by EFXTv YouTube**

