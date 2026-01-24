**Course: Complete Guide to Installing and Using antiX Linux (2025 Edition)**

---

# **Module 1: Introduction to antiX**

## 1.1 What is antiX?

antiX is a fast, lightweight, and systemd-free Linux distribution based on Debian. It is ideal for older hardware and users who prefer a minimalist yet powerful operating system. antiX uses the IceWM window manager by default but offers several lightweight options.

## 1.2 Homepage and Download Link

- Homepage: [https://antixlinux.com](https://antixlinux.com)
- Download: [https://antixlinux.com/download](https://antixlinux.com/download)

---

# **Module 2: System Requirements**

## 2.1 Minimum Requirements

- CPU: Intel/AMD 32-bit or 64-bit
- RAM: 256 MB (512 MB or more recommended)
- Disk: 5 GB free space minimum
- USB: 2 GB USB drive or CD/DVD

---

# **Module 3: Preparing Installation Media**

## 3.1 Download the ISO

- Choose the appropriate ISO (Full, Base, Core, Net) from the antiX download page.

## 3.2 Create Bootable USB

### On Windows:

- Use Rufus: [https://rufus.ie](https://rufus.ie)

### On Linux/macOS:

```bash
sudo dd if=antix.iso of=/dev/sdX bs=4M status=progress && sync
```

## 3.3 BIOS/UEFI Setup

- Enable USB boot
- Disable Secure Boot (if needed)
- Use Legacy Boot for better compatibility

---

# **Module 4: Live Session and Compatibility Check**

## 4.1 Boot Into antiX Live

- Plug USB and boot from it
- Select "antiX Live" mode

## 4.2 Check Compatibility

- Test Wi-Fi, sound, display, input devices
- Explore tools like Control Centre, File Manager

---

# **Module 5: Installation Process**

## 5.1 Start Installer

- On desktop, click on "Install antiX"

## 5.2 Select Language and Keyboard Layout

## 5.3 Choose Disk for Installation

### Options:

- Auto Install: Erase entire disk and install antiX
- Custom Install: Partition manually

Suggested Layout:

- `/` root - ext4 - 5GB+
- `swap` - (optional, based on RAM)

## 5.4 User Setup

- Set your username, password, computer name

## 5.5 Begin Installation

- Click Install and wait for completion

---

# **Module 6: Post-Installation Setup**

## 6.1 First Boot

- Remove USB and boot into installed antiX

## 6.2 Update the System

```bash
sudo apt update && sudo apt upgrade -y
```

## 6.3 Install Common Software

```bash
sudo apt install firefox libreoffice vlc
```

---

# **Module 7: Best Use Cases**

## 7.1 Reviving Old Computers

- Works great on PCs with low RAM and CPU

## 7.2 Privacy and Simplicity

- Uses sysvinit (not systemd), fast and secure

## 7.3 Minimalism and Speed

- Great for minimal setups and scripting

## 7.4 Rescue and Troubleshooting Tool

- Live USB includes tools for system recovery

---

# **Module 8: Maintenance and Tips**

## 8.1 System Updates

```bash
sudo apt update && sudo apt upgrade
```

## 8.2 Using antiX Control Centre

- Configure appearance, network, system services

## 8.3 Backup Tools

- Use antiX Snapshot or other tools for backup

---

# **Course Summary**

✅ You have learned:

- What antiX is and who it's for
- How to install and configure it step-by-step
- How to maintain and best utilize the OS

📥 Download antiX: [https://antixlinux.com/download](https://antixlinux.com/download)

📺 **Course by EFXTv YouTube**

