# 💻 syncman

syncman is a lightweight desktop app that simplifies remote backups using **rsync** by providing a clean and intuitive GUI. This tool wraps complex rsync operations in an easy-to-use desktop application, allowing you to perform file synchronizations with just a few clicks.

## ⚙️ Overview

This application helps you:

- Select files & folders for synchronization using a simple drag-and-drop interface. *Specify a destination folder, including support for remote servers via IP.*
- View a summary of transfer flags (e.g., recursive, partial) before starting a sync.
- Monitor the transfer with a progress bar and a summary of transfer information like total size and estimated time.

## 🖥️ Supported Operating Systems

- **Linux**
- **macOS**

- **Windows** (via **WSL2** only)
  - Native Windows support is **not recommended** due to `rsync` limitations. Make sure to have WSL2 with a Linux distro installed.

## 📦 Installation

You can download the latest release from [here](https://github.com/msh31/syncman/releases)

## 📄 License

This project is licensed under the [MIT License](LICENSE).

---

Built with ❤️ by [Marco](https://github.com/msh31)
