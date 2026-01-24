**Course: Complete Guide to Installing and Using AlmaLinux (2025 Edition)**

---

# **Module 1: Introduction to AlmaLinux**

## 1.1 What is AlmaLinux?

AlmaLinux is a free, open-source, and community-driven Linux distribution designed to be a binary-compatible replacement for CentOS. Maintained by the AlmaLinux OS Foundation, it's used in enterprise, cloud, and server environments.

## 1.2 Homepage and Download Link

- Homepage: [https://almalinux.org](https://almalinux.org)
- Download: [https://almalinux.org/download.html](https://almalinux.org/download.html)

---

# **Module 2: System Requirements**

## 2.1 Minimum Requirements

- CPU: 64-bit x86\_64 processor
- RAM: 2 GB minimum (4 GB recommended)
- Storage: 20 GB (minimum), 40+ GB recommended
- USB/DVD for bootable media

---

# **Module 3: Preparing Installation Media**

## 3.1 Download ISO Image

- Choose a version (most users select the latest Stable x86\_64 ISO)

## 3.2 Create Bootable Media

### On Windows:

- Use [Rufus](https://rufus.ie) to flash ISO to USB

### On Linux/macOS:

```bash
sudo dd if=almalinux.iso of=/dev/sdX bs=4M status=progress && sync
```

## 3.3 BIOS/UEFI Setup

- Enable USB boot
- Disable Secure Boot (if necessary)
- Choose UEFI or Legacy based on ISO and system

---

# **Module 4: Live Boot and Initial Setup**

## 4.1 Boot from USB/DVD

- Select USB as boot device
- Choose "Install AlmaLinux" from the boot menu

## 4.2 Check Compatibility

- Confirm display, keyboard, and mouse responsiveness

---

# **Module 5: Installation Steps**

## 5.1 Language and Region Selection

## 5.2 Disk Partitioning

### Option A: Automatic Partitioning

- Recommended for beginners

### Option B: Manual Partitioning

- `/boot/efi` (FAT32, 512MB)
- `/` root (xfs or ext4, 30GB+)
- `swap` (based on RAM: 2-4GB)

## 5.3 Set Timezone and NTP

## 5.4 Network Configuration

- Auto-detect DHCP or set static IP if needed

## 5.5 Set User Account and Password

## 5.6 Begin Installation

- Click "Begin Installation" and wait
- Set root password during process

---

# **Module 6: Post-Installation Setup**

## 6.1 Reboot and Login

- Remove installation media

## 6.2 System Update

```bash
sudo dnf update -y
```

## 6.3 Install Common Utilities

```bash
sudo dnf install epel-release -y
sudo dnf install nano wget curl net-tools htop -y
```

## 6.4 Enable Firewall

```bash
sudo systemctl enable --now firewalld
```

---

# **Module 7: Best Use Cases for AlmaLinux**

## 7.1 Server Environments

- Web servers, database servers, FTP, NFS

## 7.2 Cloud Deployments

- Compatible with AWS, Azure, Google Cloud

## 7.3 Secure Workstations

- Used by sysadmins who prefer RHEL-based environments

## 7.4 Enterprise Applications

- Seamless compatibility with RHEL software stacks

---

# **Module 8: Tools and Maintenance**

## 8.1 System Monitoring

```bash
htop
free -h
df -h
```

## 8.2 Creating Users and Permissions

```bash
sudo useradd newuser
sudo passwd newuser
sudo usermod -aG wheel newuser
```

## 8.3 Backups

- Use `rsync`, `tar`, or third-party tools for backups

---

# **Course Summary**

✅ You’ve learned:

- What AlmaLinux is and its use cases
- How to install it on physical or virtual machines
- Post-install tools, configurations, and maintenance tips

📥 Download AlmaLinux: [https://almalinux.org/download.html](https://almalinux.org/download.html)

📺 **Course by EFXTv YouTube**

