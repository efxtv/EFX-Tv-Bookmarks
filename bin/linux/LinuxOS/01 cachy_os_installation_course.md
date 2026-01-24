**Course: Complete Guide to Installing and Using CachyOS (2025 Edition)**

---

# **Module 1: Introduction to CachyOS**

## 1.1 What is CachyOS?

CachyOS is a performance-focused Arch Linux-based distribution designed to deliver a fast, secure, and responsive Linux experience. It is particularly popular among gamers, developers, and power users who want a cutting-edge system with minimal configuration overhead. CachyOS aims to optimize desktop responsiveness and supports both X11 and Wayland environments.

## 1.2 Features of CachyOS

- Built on Arch Linux with rolling updates
- Performance-optimized kernels: Cachy, Zen, Hardened, LTS
- Btrfs filesystem with automatic snapshot capability
- Optimized for gaming and low-latency workloads
- AUR and CachyOS custom repos enabled by default
- User-friendly GUI installer
- Wayland (Hyprland) and X11 (KDE, GNOME, etc.) supported

## 1.3 Official Website & Download

- Homepage: [https://cachyos.org](https://cachyos.org)
- Direct ISO Download: [https://cachyos.org/download](https://cachyos.org/download)

---

# **Module 2: System Requirements**

## 2.1 Minimum Requirements

- Dual-core 64-bit processor (2 GHz)
- 2 GB RAM
- 20 GB disk space (SSD recommended)
- UEFI or Legacy BIOS
- Basic graphics support (Intel/AMD/NVIDIA)

## 2.2 Recommended Requirements

- Quad-core 64-bit CPU
- 8 GB RAM or more
- 40+ GB free SSD space
- UEFI firmware (Secure Boot can be disabled)
- Discrete GPU for better gaming or rendering performance

---

# **Module 3: Preparing for Installation**

## 3.1 Backup Your Existing Data

Back up important files to cloud storage, an external drive, or another computer before proceeding with installation.

## 3.2 Download the ISO File

- Navigate to: [https://cachyos.org/download](https://cachyos.org/download)
- Choose your preferred desktop ISO (e.g., KDE, GNOME, XFCE, Wayland options)
- Download the latest release (e.g., `CachyOS-KDE-2025.08.01-x86_64.iso`)

## 3.3 Create a Bootable USB

### Windows Users:

Use [Rufus](https://rufus.ie)

- Select ISO file
- Choose USB drive
- Write in DD mode (if prompted)

### Linux Users:

Use `dd`, `balenaEtcher`, or `ventoy`

```bash
sudo dd if=cachyos-*.iso of=/dev/sdX bs=4M status=progress && sync
```

Replace `/dev/sdX` with your USB device (e.g., `/dev/sdb`).

## 3.4 Boot From USB

- Insert USB and restart your computer
- Enter BIOS/UEFI settings (F2, F10, F12, ESC, or DEL key)
- Boot from USB
- Choose "Boot CachyOS Live Installer" from GRUB menu

---

# **Module 4: Installing CachyOS**

## 4.1 Start the Installer

CachyOS offers a Calamares-based GUI installer and a CLI option. Most users should use the GUI installer:

- Click "Install CachyOS" icon on the desktop
- Choose language, region, and keyboard layout

## 4.2 Disk Partitioning Options

### Option A: Erase Entire Disk

- Recommended for new users
- Creates EFI, root, swap (optional), and home partitions
- Btrfs is the default filesystem (with snapshot support)

### Option B: Manual Partitioning

- For dual-boot or advanced setups
- Create partitions for:
  - `/boot/efi` (FAT32, 300MB)
  - `/` (root - 20GB+)
  - `/home` (optional)
  - `swap` (optional, 2GB-4GB)

## 4.3 Choose Desktop Environment

CachyOS offers several DEs:

- KDE Plasma (best for general use)
- GNOME
- XFCE
- LXQt
- i3 (tiling)
- Hyprland (Wayland)

## 4.4 Select Kernel

- CachyOS Kernel (default, optimized for latency)
- Zen Kernel (good for desktops)
- Hardened Kernel (security-focused)
- LTS Kernel (long-term stability)

## 4.5 Add Optional Software

- Web browsers (Brave, Firefox, Chromium)
- Office suite (LibreOffice)
- Gaming packages (Steam, Wine, Lutris, Proton GE)
- Development tools (VSCode, Git, GCC, Python)

## 4.6 User Setup & Final Install

- Create a user
- Set passwords
- Review summary
- Begin installation
- Once finished, reboot and remove USB when prompted

---

# **Module 5: Post-Installation Essentials**

## 5.1 First Boot Checklist

- Ensure internet is connected
- Verify graphics driver installation
- Check for updates:

```bash
sudo pacman -Syu
```

## 5.2 Install Popular Software

```bash
sudo pacman -S vlc gimp steam libreoffice neofetch flatpak
```

## 5.3 Enable Btrfs Snapshots (Snapper)

```bash
sudo systemctl enable --now snapper-timeline.timer
sudo systemctl enable --now snapper-cleanup.timer
```

## 5.4 Add Flatpak and Flathub

```bash
sudo pacman -S flatpak
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
```

---

# **Module 6: Best Use Cases of CachyOS**

## 6.1 Gaming

- Uses performance kernels
- Steam and Proton integration
- NVIDIA and AMD drivers supported
- Low input latency

## 6.2 Software Development

- Full Arch Linux compatibility
- Great for web, Android, or system programming
- Easily install Node.js, Rust, Python, Java, Docker, etc.

## 6.3 Multimedia Production

- PipeWire for pro audio
- Kdenlive, Audacity, OBS available
- Hardware acceleration support for video editing

## 6.4 Secure & Private Computing

- Hardened kernel option
- Optional full disk encryption
- Firejail, AppArmor, UFW available

---

# **Module 7: System Maintenance & Tips**

## 7.1 Clean Cache

```bash
sudo paccache -r
```

## 7.2 List Available Snapshots

```bash
sudo snapper list
```

## 7.3 Restore from Snapshot (if needed)

```bash
sudo snapper rollback <snapshot-id>
```

## 7.4 Enable Firewall

```bash
sudo systemctl enable --now ufw
sudo ufw enable
```

---

# **Module 8: Troubleshooting**

## 8.1 Boot Issues

- If GRUB fails, boot with live USB and chroot to reinstall GRUB:

```bash
sudo arch-chroot /mnt
grub-install --target=x86_64-efi --efi-directory=/boot/efi --bootloader-id=GRUB
```

## 8.2 No Audio

- Make sure PipeWire is enabled:

```bash
systemctl --user enable --now pipewire pipewire-pulse
```

## 8.3 Network Not Working

- Try using `nmtui` to configure manually
- Or use `ip link`, `iwctl`, and `ping` to debug

---

# **Course Completion**

Congratulations! You've successfully completed the full course on installing and using CachyOS. Whether you're a gamer, developer, or daily Linux user, CachyOS offers high performance with minimal fuss.

🔗 Website: [https://cachyos.org](https://cachyos.org) 📦 Downloads: [https://cachyos.org/download](https://cachyos.org/download)

📺 **Course by EFXTv YouTube Channel** Be sure to subscribe and check out our other Linux tutorials on YouTube!

**Happy Hacking with CachyOS!**

