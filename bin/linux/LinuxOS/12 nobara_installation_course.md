**Course: Complete Guide to Installing and Using Nobara Linux (2025 Edition)**

---

# **Module 1: Introduction to Nobara Linux**

## 1.1 What is Nobara Linux?

Nobara Linux is a user-friendly, performance-optimized Linux distribution based on Fedora, primarily aimed at gamers and content creators. It includes pre-installed tools, performance tweaks, and ease-of-use features out of the box.

## 1.2 Homepage and Download Links

- Homepage: [https://nobaraproject.org](https://nobaraproject.org)
- Download: [https://nobaraproject.org/download/](https://nobaraproject.org/download/)

---

# **Module 2: System Requirements**

## 2.1 Minimum Requirements

- CPU: 64-bit Dual-core
- RAM: 4 GB minimum (8 GB recommended)
- Storage: 20 GB minimum (50 GB recommended for creators/gamers)
- GPU: Integrated or dedicated GPU
- UEFI Boot Mode preferred

---

# **Module 3: Preparing for Installation**

## 3.1 Download ISO

Visit the [Downloads page](https://nobaraproject.org/download/) and choose the suitable edition:

- Official Edition (Vanilla Gnome)
- KDE Edition
- GNOME Full (with tools for gaming/content creation)

## 3.2 Create a Bootable USB Drive

Use tools like:

- **balenaEtcher** (Windows/Linux/macOS)
- **Rufus** (Windows)
- **Ventoy** or **dd** command:

```bash
sudo dd if=nobara.iso of=/dev/sdX bs=4M status=progress && sync
```

## 3.3 BIOS/UEFI Configuration

- Enable UEFI boot mode
- Disable Secure Boot if installation fails
- Set USB as the first boot device

---

# **Module 4: Installation (Step-by-Step)**

## 4.1 Boot into Live Environment

- Insert bootable USB
- Select "Start Nobara Linux" from GRUB menu

## 4.2 Launch Installer

- On the desktop, open the **Anaconda Installer** (Fedora-based GUI installer)

## 4.3 Choose Language & Keyboard

Select your preferred language and keyboard layout.

## 4.4 Set Time Zone

Select the appropriate region and city.

## 4.5 Installation Destination

- Choose your drive
- **Automatic partitioning** is fine for beginners
- For manual partitioning (UEFI):
  - `/boot/efi` (FAT32) – 300 MB
  - `/` (ext4 or Btrfs) – 30+ GB
  - `swap` – 2 to 4 GB or use zRAM
  - `/home` – remaining space

## 4.6 Network Configuration (optional)

Ensure you are connected to the internet during install.

## 4.7 User Creation

Set a root password, and create your primary user.

## 4.8 Begin Installation

Click **Begin Installation** and wait for it to finish.

## 4.9 Reboot

After installation, reboot and remove USB.

---

# **Module 5: Post-Installation Setup**

## 5.1 Initial Updates

```bash
sudo dnf update -y
```

## 5.2 NVIDIA Driver Support (Optional)

Nobara includes an NVIDIA driver switch tool, run:

```bash
sudo nobara-controller
```

Enable proprietary drivers if needed.

## 5.3 Flatpak & RPM Fusion

Flatpak is pre-configured:

```bash
flatpak install flathub com.obsproject.Studio
```

---

# **Module 6: Essential Tools & Gaming Support**

## 6.1 GameLaunchers

Pre-installed support for:

- Steam
- Lutris
- Heroic Games Launcher

## 6.2 OBS Studio & Content Tools

- OBS pre-installed in Full Edition
- Kdenlive, Blender, GIMP available from Flathub

## 6.3 Wine/Proton Support

Install via:

```bash
sudo dnf install wine winetricks protontricks
```

---

# **Module 7: Ideal Users & Use Cases**

## 7.1 Gamers

- Out-of-box performance tweaks
- Native support for gaming tools

## 7.2 Content Creators

- OBS Studio, DaVinci Resolve (Flatpak), Kdenlive

## 7.3 Beginners

- Easy installer, pre-tuned Fedora base

## 7.4 Power Users

- Full Fedora compatibility and customization

---

# **Module 8: Maintenance & Tips**

## 8.1 System Cleanup

```bash
sudo dnf autoremove && sudo dnf clean all
```

## 8.2 Performance Monitoring

Use `gnome-system-monitor` or `htop`:

```bash
sudo dnf install htop
```

## 8.3 Backups

Install Timeshift:

```bash
sudo dnf install timeshift
```

---

# **Course Summary**

✅ You’ve learned:

- How to install Nobara Linux in detail
- Post-install tweaks and usage
- Ideal tools for gamers and creators

📥 Download Nobara: [https://nobaraproject.org/download/](https://nobaraproject.org/download/)

📺 **Course by EFXTv YouTube**

