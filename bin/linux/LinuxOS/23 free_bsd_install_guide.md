**Course: Complete Guide to Installing and Using FreeBSD (2025 Edition)**

---

# **Module 1: Introduction to FreeBSD**

## 1.1 What is FreeBSD?

FreeBSD is a free and open-source Unix-like operating system derived from BSD (Berkeley Software Distribution). It is known for its performance, security, scalability, and advanced networking features. FreeBSD is widely used in web servers, firewalls, storage systems, and embedded platforms.

## 1.2 Homepage and Download Link

- Homepage: [https://www.freebsd.org](https://www.freebsd.org)
- Download: [https://www.freebsd.org/where/](https://www.freebsd.org/where/)

---

# **Module 2: System Requirements**

## 2.1 Minimum Requirements

- CPU: x86-64 or ARM64 processor
- RAM: 512 MB (1 GB or more recommended)
- Storage: 5 GB minimum (20+ GB recommended)
- USB/DVD bootable media

---

# **Module 3: Preparing Installation Media**

## 3.1 Download ISO Image

- Choose the appropriate architecture (e.g., amd64 for 64-bit systems)
- Use the "memstick" installer image for USB installation

## 3.2 Create Bootable Media

### On Windows:

- Use [Rufus](https://rufus.ie) to write the image to USB

### On Linux/macOS:

```bash
sudo dd if=FreeBSD-13.3-RELEASE-amd64-memstick.img of=/dev/sdX bs=4M status=progress && sync
```

## 3.3 BIOS/UEFI Setup

- Enable USB boot in BIOS/UEFI
- Disable Secure Boot if needed
- Select UEFI or Legacy based on system support

---

# **Module 4: Booting and Installation Menu**

## 4.1 Boot from USB/DVD

- Choose "Install FreeBSD" from the boot menu

## 4.2 Language and Keyboard Layout

- Choose preferred language and keyboard

---

# **Module 5: Installation Steps**

## 5.1 Set Hostname

## 5.2 Partitioning the Disk

### Option A: Auto (UFS Guided)

- Recommended for beginners

### Option B: Manual Partitioning (UFS/ZFS)

- `/boot`, `/`, `swap` partitions can be set

## 5.3 Select Distribution Components

- Base System
- Kernel
- Ports Tree (Optional)

## 5.4 Configure Network

- DHCP or Static IP

## 5.5 Set Root Password

## 5.6 Create User Account

- Add non-root user

## 5.7 Choose Services

- Enable SSH, dumpdev (crash dump), etc.

## 5.8 Choose System Hardening Options

- Disable Sendmail, Enable secure console, etc.

## 5.9 Install Bootloader

## 5.10 Final Confirmation and Reboot

---

# **Module 6: Post-Installation Setup**

## 6.1 Login and Update

```bash
freebsd-update fetch install
pkg update && pkg upgrade
```

## 6.2 Install Essential Packages

```bash
pkg install sudo nano bash git htop
```

## 6.3 Configure Sudo

- Add user to `wheel` group

## 6.4 Enable Services at Boot

```bash
echo 'sshd_enable="YES"' >> /etc/rc.conf
```

## 6.5 Enable Firewall (Optional)

```bash
echo 'firewall_enable="YES"' >> /etc/rc.conf
```

---

# **Module 7: Best Use Cases for FreeBSD**

## 7.1 High-Performance Web Servers

- Nginx, Apache, PHP-FPM

## 7.2 Routers and Firewalls

- pfSense is based on FreeBSD

## 7.3 NAS/Storage Servers

- FreeNAS/TrueNAS built on FreeBSD

## 7.4 Custom Kernel Builds and Embedded Systems

---

# **Module 8: Tools and Maintenance**

## 8.1 System Monitoring

```bash
top
vmstat
systat
```

## 8.2 Building from Ports (Optional)

```bash
cd /usr/ports/category/port
make install clean
```

## 8.3 Backups

- Use `dump`, `rsync`, or ZFS snapshots

---

# **Course Summary**

✅ You’ve learned:

- What FreeBSD is and who it's for
- How to install and configure it for real-world use
- Post-installation security and tool setups

📥 Download FreeBSD: [https://www.freebsd.org/where/](https://www.freebsd.org/where/)

📺 **Course by EFXTv YouTube**

