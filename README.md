# 💻 rsync-manager

**rsync-manager** is a lightweight project that simplifies remote backups using `rsync` by wrapping common operations in easy-to-use CLI scripts. This branch focuses on shell-based **backup and restore functionality** as the foundation for a future web interface.

## ⚙️ Overview

This tool helps you:

- Save and reuse your server IP
- Select files or directories to back up
- Define remote destinations
- Use `rsync` efficiently without repeating setup steps every time

## 🖥️ Supported Operating Systems

- **Linux**
  Fully supported. Make sure your system uses `bash` or adjust the shebang (`#!/bin/bash`) if needed.

- **macOS**
  Fully supported. macOS includes `rsync` by default, though upgrading via Homebrew is recommended.

- **Windows** (via **WSL2** only)
  Native Windows support is **not recommended** due to `rsync` limitations. Use WSL2 with a Linux distro installed to run these scripts.

## 📦 Installation

1. **Clone the repository**

   ```bash
   git clone -b scripts git@github.com:msh31/rsync-manager.git
   cd rsync-manager
   ```

2. **Make the script executable**

   ```bash
   chmod +x backup.sh restore.sh
   ```

3. **Run the script**

   ```bash
   ./backup.sh
   or
   ./restore.sh
   ```

## 🚀 Usage

- On first run, you'll be prompted to enter some basic setup and inputs

```bash
Enter your server IP: xx.xxx.xxx.xx
Enter your server username: root
Enter your ssh key file location (e.g. ~/.ssh/backup_rsync): ~/.ssh/backup_rsync
```

- Your server information (IP, username, SSH key path) will be saved in a local config file:
  `~/rsync-manager.conf` (used by both backup.sh and restore.sh)

- Subsequent runs will load this config automatically.

- The script then uses `rsync` over SSH to perform a fast, secure backup.

> 🗂️ The config file uses a simple `key=value` format and can be edited manually if needed.

## 📄 License

This project is licensed under the [MIT License](LICENSE).

---

Built with ❤️ by [Marco](https://github.com/msh31)
