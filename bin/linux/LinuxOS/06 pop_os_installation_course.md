**Course: Complete Guide to Installing and Using Pop!\_OS (2025 Edition)**

---

# **Module 1: Introduction to Pop!\_OS**

## 1.1 What is Pop!\_OS?

Pop!\_OS is a modern, user-friendly Linux distribution developed by System76. It's based on Ubuntu and tailored for STEM, creators, and professionals.

## 1.2 Key Features

- Elegant GNOME-based desktop (Cosmic DE)
- Optimized for NVIDIA/AMD GPUs
- Out-of-the-box productivity tools
- Full-disk encryption by default
- Designed for both new and advanced Linux users

## 1.3 Homepage and Downloads

- Homepage: [https://pop.system76.com](https://pop.system76.com)
- Download ISO: [https://pop.system76.com/download/](https://pop.system76.com/download/)

---

# **Module 2: System Requirements**

## 2.1 Minimum Requirements

- CPU: 64-bit processor
- RAM: 4 GB minimum (8 GB recommended)
- Storage: 20 GB (SSD preferred)
- UEFI firmware with Secure Boot disabled
- Optional: NVIDIA/AMD dedicated GPU for performance boost

---

# **Module 3: Preparing for Installation**

## 3.1 Backup Data

Back up all important files before installation.

## 3.2 Download the Correct ISO

- Standard ISO for Intel/AMD
- NVIDIA ISO for systems with NVIDIA GPUs

## 3.3 Create Bootable USB

- **Windows**: Use [Rufus](https://rufus.ie)
- **Linux/macOS**:

```bash
sudo dd if=pop-os_*.iso of=/dev/sdX bs=4M status=progress && sync
```

## 3.4 Configure BIOS/UEFI

- Enter BIOS/UEFI settings (F2/DEL during boot)
- Disable Secure Boot
- Enable UEFI mode
- Set USB as the first boot option

---

# **Module 4: Booting and Installation**

## 4.1 Boot Into Live USB

- Insert USB and boot from it
- Select "Try or Install Pop!\_OS"

## 4.2 Start Installation

- Click "Install Pop!\_OS"

## 4.3 Choose Language and Keyboard Layout

- Select preferred language and keyboard

## 4.4 Installation Type

- **Clean Install**: Erases the whole disk
- **Custom (Advanced)**: Manual partitioning (for dual boot or advanced users)

### Advanced Partitioning Scheme:

- EFI (300MB, FAT32, mount: /boot/efi)
- root (30GB+, ext4, mount: /)
- swap (equal to RAM)
- home (remaining space, ext4, mount: /home)

## 4.5 Drive Encryption

- Enable full disk encryption
- Set a strong password

## 4.6 Create User

- Enter username, password, and computer name

## 4.7 Begin Installation

- Wait 10–20 mins for install to complete
- Reboot and remove USB when prompted

---

# **Module 5: Post-Installation Setup**

## 5.1 First Boot

- Log in with your new credentials
- Finish welcome setup (location, theme, updates)

## 5.2 Update System

```bash
sudo apt update && sudo apt upgrade
```

## 5.3 Install Essential Apps

```bash
sudo apt install gnome-tweaks vlc gimp flatpak
```

## 5.4 Enable Flatpak & Flathub

```bash
sudo flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
```

---

# **Module 6: Best Use Cases**

## 6.1 For Developers

- Pre-installed build tools
- Git, Python, VSCode, Docker-friendly

## 6.2 For Gamers

- Optimized for NVIDIA/AMD drivers
- Steam and Lutris compatible

## 6.3 For Creative Professionals

- Blender, GIMP, DaVinci Resolve ready
- High performance multitasking

## 6.4 For Students and Daily Users

- Elegant UI with easy app management
- Reliable performance and privacy

---

# **Module 7: Maintenance & Tips**

## 7.1 System Cleanup

```bash
sudo apt autoremove && sudo apt clean
```

## 7.2 Power Management

```bash
sudo apt install tlp && sudo tlp start
```

## 7.3 Backup Tool

Use `deja-dup` for automatic backups.

```bash
sudo apt install deja-dup
```

## 7.4 Keyboard Shortcuts

- Super + Space: Switch keyboard layout
- Super + /: App search
- Super + H: Hide window

---

# **Module 8: Troubleshooting**

## 8.1 Boot Issues

- Check UEFI settings
- Use Live USB to repair bootloader

## 8.2 Display or Graphics Issues

- Use the correct NVIDIA ISO version
- Run:

```bash
sudo apt install system76-driver-nvidia
```

## 8.3 Wi-Fi Not Working

- Try:

```bash
sudo apt install linux-firmware
```

---

# **Course Completion**

Congratulations! You’ve learned:

- How to install and set up Pop!\_OS securely
- How to configure software and updates
- Best practices and use cases
- System maintenance and recovery

📥 Download Pop!\_OS: [https://pop.system76.com/download/](https://pop.system76.com/download/)

📺 **Course by EFXTv YouTube**

