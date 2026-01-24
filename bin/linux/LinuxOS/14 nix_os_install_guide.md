**Course: Complete Guide to Installing and Using NixOS (2025 Edition)**

---

# **Module 1: Introduction to NixOS**

## 1.1 What is NixOS?

NixOS is a powerful and flexible Linux distribution built around the Nix package manager. Unlike traditional distros, it uses declarative configuration and atomic upgrades. It is ideal for developers, sysadmins, and advanced users who seek reproducibility and a consistent environment.

## 1.2 Homepage and Download Links

- Homepage: [https://nixos.org](https://nixos.org)
- Download: [https://nixos.org/download.html](https://nixos.org/download.html)

---

# **Module 2: System Requirements**

## 2.1 Minimum Requirements

- CPU: 64-bit processor
- RAM: Minimum 2 GB (4 GB+ recommended)
- Storage: 15 GB minimum (SSD recommended)
- UEFI or BIOS boot supported
- Internet access recommended for full installation

---

# **Module 3: Preparing for Installation**

## 3.1 Download ISO

- Visit: [https://nixos.org/download.html](https://nixos.org/download.html)
- Choose between Graphical ISO or Minimal ISO

## 3.2 Create a Bootable USB Drive

### Tools You Can Use:

- **balenaEtcher** (Cross-platform)
- **dd** (Linux/macOS):

```bash
sudo dd if=nixos.iso of=/dev/sdX bs=4M status=progress && sync
```

## 3.3 BIOS/UEFI Setup

- Disable Secure Boot (if needed)
- Enable UEFI or Legacy Boot
- Set USB boot as first priority

---

# **Module 4: Booting into NixOS Live Environment**

## 4.1 Insert USB and Boot

- Choose "Graphical NixOS Installer" or Minimal depending on ISO type

## 4.2 Internet Setup (for Minimal ISO)

- Wired: Automatically connects
- WiFi:

```bash
nmtui
```

Select **Activate a Connection** > Your WiFi

---

# **Module 5: Partitioning the Disk**

## 5.1 Using GParted (Graphical ISO) or Manual (CLI)

### Example Partition Layout (UEFI):

- `/boot` (FAT32): 512 MB
- `/` (ext4 or btrfs): 15 GB or more
- `swap`: Optional

### Using CLI:

```bash
cfdisk /dev/sdX
```

Format partitions:

```bash
mkfs.fat -F32 /dev/sdX1   # Boot
mkfs.ext4 /dev/sdX2       # Root
mkswap /dev/sdX3          # Swap
```

Mount them:

```bash
mount /dev/sdX2 /mnt
mkdir -p /mnt/boot
mount /dev/sdX1 /mnt/boot
swapon /dev/sdX3
```

---

# **Module 6: Install NixOS**

## 6.1 Generate Configuration

```bash
nixos-generate-config --root /mnt
```

## 6.2 Edit Configuration

Open `/mnt/etc/nixos/configuration.nix`:

```bash
nano /mnt/etc/nixos/configuration.nix
```

Set:

```nix
{ config, pkgs, ... }:
{
  imports = [ ./hardware-configuration.nix ];
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;
  networking.hostName = "my-nixos";
  time.timeZone = "Asia/Kolkata";
  users.users.yourname = {
    isNormalUser = true;
    extraGroups = [ "wheel" ];
    password = "yourpassword";
  };
  services.sshd.enable = true;
  environment.systemPackages = with pkgs; [ vim git wget curl firefox ];
}
```

## 6.3 Install

```bash
nixos-install
```

Set root password when prompted.

## 6.4 Reboot

```bash
reboot
```

---

# **Module 7: Post-Install Configuration**

## 7.1 Logging in

Login with your user account created in configuration.nix.

## 7.2 Updating the System

```bash
sudo nixos-rebuild switch --upgrade
```

## 7.3 Installing Packages

Edit `configuration.nix` and run:

```bash
sudo nixos-rebuild switch
```

---

# **Module 8: Desktop Environments**

## 8.1 Install GNOME (example):

Add in configuration.nix:

```nix
services.xserver.desktopManager.gnome.enable = true;
services.xserver.displayManager.gdm.enable = true;
services.xserver.enable = true;
```

Rebuild:

```bash
sudo nixos-rebuild switch
```

---

# **Module 9: Best Use Cases**

## 9.1 Developers

- Fully reproducible development environments
- Isolated builds and environments

## 9.2 System Administrators

- Rollbacks for updates/config
- System state stored as code

## 9.3 Tinkerers & Power Users

- Control every part of the system

---

# **Module 10: Maintenance and Updates**

## 10.1 Rebuild with Config Changes

```bash
sudo nixos-rebuild switch
```

## 10.2 Upgrade All Packages

```bash
sudo nixos-rebuild switch --upgrade
```

## 10.3 Rollback

```bash
sudo nixos-rebuild switch --rollback
```

---

# **Course Summary**

✅ You have learned:

- Step-by-step installation of NixOS
- Configuring system using declarative files
- Managing and maintaining a NixOS system

📥 Download NixOS: [https://nixos.org/download.html](https://nixos.org/download.html)

📺 **Course by EFXTv YouTube**

