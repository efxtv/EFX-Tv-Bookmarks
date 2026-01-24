**Course: Complete Guide to Installing and Using Kali Linux (2025 Edition)**

---

# **Module 1: Introduction to Kali Linux**

## 1.1 What is Kali Linux?

Kali Linux is a Debian-based Linux distribution developed by Offensive Security, designed primarily for digital forensics, penetration testing, and ethical hacking. It comes pre-installed with hundreds of powerful security tools and is widely used by security professionals.

## 1.2 Homepage and Download Link

- Homepage: [https://www.kali.org](https://www.kali.org)
- Download: [https://www.kali.org/get-kali/](https://www.kali.org/get-kali/)

---

# **Module 2: System Requirements**

## 2.1 Minimum Requirements

- CPU: 64-bit processor
- RAM: 2 GB minimum (4 GB recommended)
- Storage: 20 GB minimum (30+ GB recommended)
- USB Drive: At least 4 GB (8 GB preferred)

---

# **Module 3: Preparing Installation Media**

## 3.1 Download ISO Image

- Choose from Installer, Live, or NetInstaller ISO (Installer is recommended for most users)

## 3.2 Create Bootable USB

### On Windows:

- Use [Rufus](https://rufus.ie)

### On Linux/macOS:

```bash
sudo dd if=kali-linux.iso of=/dev/sdX bs=4M status=progress && sync
```

## 3.3 BIOS/UEFI Configuration

- Enable USB boot
- Disable Secure Boot (recommended)
- Set USB as first boot device

---

# **Module 4: Booting and Live Environment**

## 4.1 Boot from USB

- Insert USB and reboot
- Select "Graphical Install" or "Install"

## 4.2 Test System Compatibility

- Try the Live version if unsure about hardware compatibility

---

# **Module 5: Installation Steps**

## 5.1 Choose Language and Location

## 5.2 Set Hostname and Domain

## 5.3 Create User and Set Password

## 5.4 Disk Partitioning

### Option A: Guided - Use entire disk

- Automatically sets up partitions

### Option B: Manual

- `/boot/efi` (FAT32, 512MB)
- `/` (ext4, 20-30GB)
- `swap` (optional, size depends on RAM)

## 5.5 Configure Package Manager

- Use default network mirror

## 5.6 Software Selection

- Default selection includes top security tools

## 5.7 Install GRUB Bootloader

- Select your primary drive

## 5.8 Finish Installation

- Reboot when complete

---

# **Module 6: First Boot and Post-Install Setup**

## 6.1 Login to Kali Desktop

## 6.2 Update System

```bash
sudo apt update && sudo apt upgrade -y
```

## 6.3 Install Additional Tools

```bash
sudo apt install kali-tools-top10
```

## 6.4 Configure Network, Firewall, and SSH

```bash
sudo ufw enable
sudo systemctl enable ssh && sudo systemctl start ssh
```

---

# **Module 7: Best Use Cases for Kali Linux**

## 7.1 Penetration Testing

- Tools: Metasploit, Nmap, Burp Suite, Aircrack-ng

## 7.2 Ethical Hacking & CTFs

- Participate in Capture The Flag competitions

## 7.3 Cybersecurity Training

- Ideal for labs, certification practice (e.g., OSCP, CEH)

## 7.4 Digital Forensics

- Sleuth Kit, Autopsy, Volatility, and more

---

# **Module 8: Tools and Maintenance**

## 8.1 Package Management

```bash
sudo apt install <package-name>
sudo apt remove <package-name>
```

## 8.2 Use Kali Metapackages

```bash
sudo apt install kali-linux-all
```

## 8.3 System Cleanup and Updates

```bash
sudo apt autoremove && sudo apt clean
```

---

# **Course Summary**

✅ You’ve learned:

- How to install and configure Kali Linux
- Essential tools for penetration testing and cybersecurity
- Best practices for maintaining a secure ethical hacking environment

📥 Download Kali Linux: [https://www.kali.org/get-kali/](https://www.kali.org/get-kali/)

📺 **Course by EFXTv YouTube**

