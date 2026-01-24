**Course: Complete Guide to Installing and Using Bluestar Linux (2025 Edition)**

---

# **Module 1: Introduction to Bluestar Linux**

## 1.1 What is Bluestar Linux?

Bluestar Linux is an Arch-based distribution designed for desktop users who seek performance, customization, and modern aesthetics. It includes the latest KDE Plasma desktop and is preconfigured with multimedia, development, and productivity software.

## 1.2 Homepage and Download Links

- Homepage: [https://bluestarlinux.org](https://bluestarlinux.org)
- Download: [https://bluestarlinux.org/downloads.html](https://bluestarlinux.org/downloads.html)

---

# **Module 2: System Requirements**

## 2.1 Minimum Requirements

- CPU: 64-bit Intel or AMD
- RAM: 4 GB minimum (8 GB recommended)
- Storage: 30 GB of free disk space
- GPU: Integrated or Dedicated GPU
- USB: 4 GB+ USB drive
- Internet: Required for updates

---

# **Module 3: Preparing for Installation**

## 3.1 Download Bluestar ISO

- Visit: [https://bluestarlinux.org/downloads.html](https://bluestarlinux.org/downloads.html)
- Select your preferred ISO (Desktop or Developer edition)

## 3.2 Create Bootable USB

### Windows:

- Use Rufus [https://rufus.ie](https://rufus.ie)

### Linux/macOS:

```bash
sudo dd if=bluestar-linux.iso of=/dev/sdX bs=4M status=progress && sync
```

## 3.3 BIOS/UEFI Setup

- Enable USB boot
- Disable Secure Boot (if necessary)
- Set USB as first boot device

---

# **Module 4: Booting into Bluestar Linux**

## 4.1 Boot from USB

- Select "Start Bluestar Linux Live"
- Wait for KDE Plasma desktop to load

## 4.2 Explore Live Session

- Verify hardware: Wi-Fi, touchpad, display, audio
- Try preinstalled applications and KDE features

---

# **Module 5: Installing Bluestar Linux**

## 5.1 Start the Installer

- Double-click **Install Bluestar Linux**

## 5.2 Choose Language, Region & Keyboard

- Select your locale settings

## 5.3 Partitioning Options

### Automatic:

- Select "Erase disk and install Bluestar"

### Manual (Advanced Users):

- `/boot` (512 MB, FAT32)
- `/` (ext4 or btrfs): Root partition
- `swap` (optional): 2 GB or more

## 5.4 User Configuration

- Create username and password
- Set computer name
- Enable auto-login (optional)

## 5.5 Begin Installation

- Click Install and wait for completion

---

# **Module 6: Post-Installation Tasks**

## 6.1 First Boot

- Remove USB
- Boot into your new Bluestar Linux system

## 6.2 Update System

```bash
sudo pacman -Syu
```

## 6.3 Install Popular Software

```bash
sudo pacman -S firefox vlc libreoffice gimp steam
```

## 6.4 Enable AUR (Optional)

```bash
yay -S package-name
```

---

# **Module 7: Best Use Cases for Bluestar Linux**

## 7.1 Daily Driver

- Stable and responsive KDE desktop
- Regular package updates from Arch

## 7.2 Multimedia and Productivity

- Comes with audio/video editing tools pre-installed

## 7.3 Development Work

- Suitable for coding and compiling
- Developer edition includes extra tools

---

# **Module 8: Maintenance and Tips**

## 8.1 Keep Your System Updated

```bash
sudo pacman -Syu
```

## 8.2 Backup Your System

- Use `Timeshift` or `rsync`

## 8.3 Use KDE Settings for Personalization

- Appearance > Themes, Icons, Fonts
- Configure shortcuts, workspaces, widgets

---

# **Course Summary**

✅ You have learned:

- How to install Bluestar Linux
- Post-installation tips and system maintenance
- Best use cases and software for performance

📥 Download Bluestar Linux: [https://bluestarlinux.org/downloads.html](https://bluestarlinux.org/downloads.html)

📺 **Course by EFXTv YouTube**

