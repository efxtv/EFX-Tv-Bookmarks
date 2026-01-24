**Course: Complete Guide to Installing and Using Fedora Linux (2025 Edition)**

---

# **Module 1: Introduction to Fedora**

## 1.1 What is Fedora?

Fedora is a cutting-edge Linux distribution developed by the Fedora Project and sponsored by Red Hat. Known for its innovation, stability, and developer-focused ecosystem, Fedora serves as the upstream source of RHEL (Red Hat Enterprise Linux).

## 1.2 Key Features

- Backed by Red Hat
- GNOME desktop environment by default
- Frequent, modern release cycles
- Excellent hardware support
- First to adopt new Linux technologies (e.g., Wayland, PipeWire)

## 1.3 Homepage and Downloads

- Homepage: [https://getfedora.org](https://getfedora.org)
- Download ISO: [https://getfedora.org/en/workstation/download/](https://getfedora.org/en/workstation/download/)

---

# **Module 2: System Requirements**

## 2.1 Minimum Requirements

- CPU: 2 GHz dual-core
- RAM: 4 GB (8 GB recommended)
- Storage: 20 GB minimum (50+ GB recommended)
- UEFI/BIOS support

---

# **Module 3: Preparing for Installation**

## 3.1 Backup Your Data

Create backups of all important files before continuing.

## 3.2 Download Fedora Workstation ISO

Use the official link above and choose the Workstation edition for general use.

## 3.3 Create Bootable USB

- **Windows**: Use tools like Rufus
- **Linux/macOS**:

```bash
sudo dd if=fedora-workstation.iso of=/dev/sdX bs=4M status=progress && sync
```

## 3.4 BIOS/UEFI Configuration

- Disable Secure Boot if it causes issues
- Set USB device as the primary boot option

---

# **Module 4: Installing Fedora**

## 4.1 Boot from USB

Insert the bootable USB and select it from the boot menu. Choose "Start Fedora-Workstation-Live".

## 4.2 Try or Install Fedora

- You can try Fedora without installing
- Click on "Install to Hard Drive" to begin setup

## 4.3 Select Language & Region

Choose language, time zone, and keyboard layout.

## 4.4 Installation Destination

Select the disk where Fedora should be installed.

- **Automatic partitioning** is recommended for beginners.
- **Custom partitioning** (advanced):
  - `/boot/efi`: 300MB (FAT32)
  - `/`: 30+ GB (ext4 or Btrfs)
  - `swap`: 2–4 GB
  - `/home`: remaining space

## 4.5 User Configuration

Set:

- Root password (optional)
- Create new user with admin privileges

## 4.6 Begin Installation

Click "Begin Installation" and wait for 10–15 minutes.

## 4.7 Reboot and Login

After installation, remove USB and reboot into your new Fedora system.

---

# **Module 5: First Boot and Updates**

## 5.1 Welcome Wizard

Complete initial setup with user login and online account options.

## 5.2 Run System Updates

```bash
sudo dnf update
```

## 5.3 Install Codecs and Additional Software

```bash
sudo dnf groupupdate multimedia --setop="install_weak_deps=False" --exclude=PackageKit-gstreamer-plugin
```

---

# **Module 6: Software Management**

## 6.1 GNOME Software Center

Use the Software Center to install apps like Firefox, VLC, and GIMP.

## 6.2 Terminal Installations

```bash
sudo dnf install vlc gnome-tweaks neofetch htop
```

## 6.3 Enable RPM Fusion Repositories

```bash
sudo dnf install https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm
```

---

# **Module 7: Best Usage Scenarios**

## 7.1 Developers

- Up-to-date compiler and libraries
- Flatpak/Snap/Docker support

## 7.2 Office & Productivity

- LibreOffice, PDF readers, browser pre-installed

## 7.3 Multimedia

- GStreamer codecs, Kdenlive, Audacity support

## 7.4 Advanced Users

- Custom kernel, Btrfs snapshotting, SELinux

---

# **Module 8: Maintenance & Security**

## 8.1 Keep System Updated

```bash
sudo dnf upgrade
```

## 8.2 Enable Firewall

```bash
sudo systemctl enable --now firewalld
```

## 8.3 Use Timeshift or Btrfs Snapshots

Install Timeshift for ext4 users or use native Btrfs snapshots.

## 8.4 Clean Cache

```bash
sudo dnf clean all
```

---

# **Course Completion**

You’ve learned:

- How to install Fedora from scratch
- Software setup and system updates
- Best use cases and customization tips

📅 Fedora ISO Download: [https://getfedora.org/en/workstation/download/](https://getfedora.org/en/workstation/download/)

📺 **Course by EFXTv YouTube**

