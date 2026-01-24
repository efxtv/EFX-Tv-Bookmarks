**Course: Complete Guide to Installing and Using openSUSE (2025 Edition)**

---

# **Module 1: Introduction to openSUSE**

## 1.1 What is openSUSE?

openSUSE is a powerful, community-driven Linux distribution known for its flexibility, robust package management, and enterprise-grade features. It's ideal for developers, sysadmins, and advanced Linux users.

## 1.2 Key Variants

- **openSUSE Leap** – Stable release model, great for workstations and servers
- **openSUSE Tumbleweed** – Rolling release model for bleeding-edge software

## 1.3 Homepage and Download Links

- Homepage: [https://www.opensuse.org](https://www.opensuse.org)
- Download: [https://get.opensuse.org](https://get.opensuse.org)

---

# **Module 2: System Requirements**

## 2.1 Minimum Requirements

- CPU: 1.6 GHz dual-core or better
- RAM: 2 GB minimum (4 GB recommended)
- Storage: 16 GB minimum (40+ GB recommended)
- Display: 1024x768 resolution
- USB port or DVD drive

---

# **Module 3: Preparing for Installation**

## 3.1 Download the ISO

Visit [https://get.opensuse.org](https://get.opensuse.org) and choose:

- Leap (recommended for most users)
- Tumbleweed (rolling release)

## 3.2 Create Bootable USB Drive

Use balenaEtcher, Rufus, or command-line:

```bash
sudo dd if=opensuse.iso of=/dev/sdX bs=4M status=progress && sync
```

## 3.3 Configure BIOS/UEFI

- Enable USB boot
- Disable Secure Boot (if issues occur)
- Set USB as primary boot device

---

# **Module 4: openSUSE Installation (Detailed)**

## 4.1 Boot into Live Environment

Insert USB, boot, and select "Installation".

## 4.2 Select Language and Keyboard Layout

Choose your preferences and click Next.

## 4.3 Network and Online Repositories

- Connect to Wi-Fi or LAN
- Enable online repositories (recommended)

## 4.4 Partitioning Options

- **Guided**: Automatic partitioning (ideal for beginners)
- **Expert Partitioner**:
  - `/boot/efi` (FAT32) - 300MB (UEFI)
  - `/` (ext4/btrfs) - 20–30GB+
  - `swap` - 2–4GB
  - `/home` - remaining space

## 4.5 Select Desktop Environment

Choose from:

- KDE Plasma (default for openSUSE)
- GNOME
- XFCE, LXQt, etc.

## 4.6 Set Time Zone

Select time zone and region.

## 4.7 Create User

Set your full name, username, and password. Choose to use same password for root or set separately.

## 4.8 Review & Install

Review summary. Click Install. Confirm prompts.

## 4.9 Reboot

After installation completes, reboot and remove USB.

---

# **Module 5: Post-Installation Setup**

## 5.1 Update the System

```bash
sudo zypper refresh
sudo zypper update
```

## 5.2 Add Popular Applications

Install from YaST Software Manager or terminal:

```bash
sudo zypper install vlc gimp libreoffice
```

## 5.3 Enable Flatpak (optional)

```bash
sudo zypper install flatpak
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
```

---

# **Module 6: System Management Tools**

## 6.1 YaST Control Center

- Graphical system admin tool
- Manage users, partitions, services, firewalls, software

## 6.2 Snapper (for Btrfs Snapshots)

- Automatic rollback for updates and changes

## 6.3 zypper (CLI Package Manager)

```bash
sudo zypper install package-name
sudo zypper remove package-name
```

---

# **Module 7: Ideal Users & Use Cases**

## 7.1 Developers

- Powerful tools like OBS, Docker, Vagrant

## 7.2 Sysadmins

- openSUSE Leap matches SUSE Enterprise Linux (SLE)

## 7.3 Desktop Users

- Stable, modern KDE/GNOME interface

## 7.4 Rolling Release Fans

- Tumbleweed provides up-to-date packages with stability testing

---

# **Module 8: Maintenance and Tips**

## 8.1 System Cleanup

```bash
sudo zypper clean --all
```

## 8.2 Manage Services

```bash
sudo systemctl status
sudo systemctl enable service
sudo systemctl disable service
```

## 8.3 Backup with Timeshift

Install and configure to regularly back up your system.

---

# **Course Summary**

✅ You’ve learned:

- How to install both Leap and Tumbleweed versions of openSUSE
- How to configure, manage, and update the system
- Best tools and use cases for different users

📥 Download openSUSE: [https://get.opensuse.org](https://get.opensuse.org)

📺 **Course by EFXTv YouTube**

