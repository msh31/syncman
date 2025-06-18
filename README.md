# 📁 rsync-manager

A modern web-based GUI for managing rsync operations

## 🎯 What is this?

rsync-manager makes rsync accessible through a clean web interface. While rsync is battle-tested for file synchronization, remembering all those command-line flags shouldn't be necessary.

**Key Features:**
- 🌐 **Web-based interface** - Manage backups from any device.
- 🔒 **SSH encryption** - All transfers secured by default.  
- 🏠 **Self-hosted** - Your data, your server, your control.
- ⚡ **Efficient syncing** - Only transfers changed file parts.
- 🔄 **Cross-platform** - Works with any rsync-compatible system.
<!-- - 🎮 **Gaming-focused** - Seamless integration with [SaveManager](https://github.com/msh31/SaveManager) 👁️👁️-->

## 🚀 Quick Start

### Prerequisites
- Node.js 18+ and npm
- rsync installed on your system
- A VPS or server with SSH access

### Installation
```bash
# Clone the repository
git clone https://github.com/msh31/rsync-manager.git
cd rsync-manager

# Install dependencies
npm install

# Start development server
npm run dev
```

Open [http://localhost:3000](http://localhost:3000) to access the web interface.

### Basic Setup
1. **Configure your VPS** - Set up SSH key authentication
2. **Add sync folders** - Select local directories to backup
3. **Start syncing** - Monitor progress through the web interface

## 🏗️ Project Structure (To Be Expanded)

This repository contains multiple implementations of the same concept:

```
rsync-manager/
├── web-nextjs/             # Next.js web interface
└── docs/                   # Documentation and guides
```

<!-- 
├── cli-c/                  # High-performance C implementation (planned)
├── desktop-tauri/          # Cross-platform desktop app (planned)


## 🎮 Gaming Integration

rsync-manager integrates with [SaveManager](https://github.com/msh31/SaveManager) to provide:
- **Universal cloud saves** for any game (Steam, Epic, GOG, indie games)
- **Cross-platform sync** between Windows, Linux, and Steam Deck
- **Automatic backup** when games close
- **Conflict resolution** for multi-device gaming
 -->

## 🛠️ Tech Stack

**Web Version:**
- **Frontend:** Next.js, React, TypeScript, Tailwind CSS
- **Backend:** Node.js API routes
- **Sync Engine:** rsync over SSH
- **Security:** SSH key authentication, encrypted transport

<!-- **Planned C Version:**
- **Language:** C with system calls
- **Performance:** Optimized for large file operations
- **Integration:** Direct SSH and file system APIs -->

## 🤝 Contributing

This is primarily a learning project, but contributions are welcome!

1. Fork the repository
2. Create a feature branch (`git checkout -b feature/amazing-feature`)
3. Commit your changes (`git commit -m 'Add amazing feature'`)
4. Push to the branch (`git push origin feature/amazing-feature`)
5. Open a Pull Request

## 📚 Learning Goals

This project serves as a progression from web development to systems programming:

- **Web skills:** Modern React patterns, API design, responsive UI
- **Systems skills:** File operations, network protocols, performance optimization
- **Security skills:** SSH, encryption, secure file handling
- **DevOps skills:** VPS management, deployment, monitoring

## ⚠️ Current Status

**rsync-manager is in active development.** The web interface is as of ``18/06/2025`` in early stages of development.

**Use at your own risk** - Always test with non-critical data first and maintain separate backups of important files.

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

---

xBuilt with ❤️ by **[Marco](https://github.com/msh31)**