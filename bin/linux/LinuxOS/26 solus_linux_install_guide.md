**Course: Complete Guide to Installing and Using Solus Linux (2025 Edition)**

---

# **Module 1: Introduction to Solus Linux**

## 1.1 What is Solus?

Solus is an independent, rolling-release Linux distribution built from scratch. It is designed for home computing with a focus on simplicity, elegance, and performance. Solus comes with curated software stacks and multiple desktop environments including Budgie (default), GNOME, MATE, and Plasma.

## 1.2 Homepage and Download Link

- Homepage: [https://getsol.us](https://getsol.us)
- Download: [https://getsol.us/download/](https://getsol.us/download/)

---

# **Module 2: System Requirements**

## 2.1 Minimum Requirements

- CPU: 64-bit processor
- RAM: 2 GB minimum
- Storage: 10 GB (20+ GB recommended)
- Display: 1024x768 resolution or higher

## 2.2 Recommended Requirements

- CPU: Dual-core 64-bit processor
- RAM: 4 GB or more
- Storage: 20 GB+ SSD
- Internet connection for updates and software

---

# **Module 3: Preparing Installation Media**

## 3.1 Download the ISO

- Choose your preferred desktop (Budgie, GNOME, MATE, or Plasma) from the [official download page](https://getsol.us/download/)

## 3.2 Create Bootable USB

### On Windows:

- Use [Rufus](https://rufus.ie) or [Balena Etcher](https://www.balena.io/etcher/)

### On Linux/macOS:

```bash
sudo dd if=Solus-*.iso of=/dev/sdX bs=4M status=progress && sync
```

## 3.3 Configure BIOS/UEFI

- Enable USB boot
- Disable Secure Boot if needed
- Use UEFI or Legacy depending on system

---

# **Module 4: Booting and Live Session**

## 4.1 Boot into Solus Live

- Insert USB and restart
- Choose the USB from boot menu
- Select "Start Solus" to enter live session

---

# **Module 5: Installation Process**

## 5.1 Launch Installer

- Double-click on "Install OS" icon on desktop

## 5.2 Select Language, Region, and Keyboard

## 5.3 Disk Setup

### Automatic Partitioning:

- Choose entire disk (Solus will auto-partition)

### Manual Partitioning (Advanced):

- `/boot/efi` – 512 MB FAT32 (for UEFI)
- `/` – ext4, 20+ GB
- `swap` – optional if <4GB RAM

## 5.4 Create User

- Set full name, username, password

## 5.5 Confirm and Install

- Review all settings and begin installation
- After install, remove USB and reboot

---

# **Module 6: First Boot and Post-Install Tasks**

## 6.1 Login to Desktop

## 6.2 Update the System

```bash
sudo eopkg up
```

## 6.3 Install Software via eopkg

```bash
sudo eopkg it vlc libreoffice gimp firefox
```

## 6.4 Enable Firewall (Optional)

```bash
sudo systemctl enable ufw --now
sudo ufw enable
```

---

# **Module 7: Best Use Cases for Solus**

## 7.1 Home Computing

- Stable, clean, user-friendly

## 7.2 Development

- Comes with many developer tools and editors

## 7.3 Content Creation

- Budgie + multimedia apps make it ideal

## 7.4 Daily Use

- Fast boot, responsive desktop, minimal bloat

---

# **Module 8: System Maintenance & Tools**

## 8.1 Solus Software Center

- GUI for installing/removing apps and updates

## 8.2 Manage Packages with eopkg

```bash
sudo eopkg it <package>
sudo eopkg rm <package>
```

## 8.3 Clean the System

```bash
sudo eopkg rmo
```

---

# **Course Summary**

✅ You’ve learned:

- How to install and configure Solus Linux
- Best uses for home, dev, and everyday tasks
- Tools like eopkg and Software Center

📥 Download Solus: [https://getsol.us/download/](https://getsol.us/download/)

📺 **Course by EFXTv YouTube**

