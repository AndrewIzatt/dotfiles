```markdown
# 💻 My Dotfiles

A modular, cross-platform dotfile architecture managed by [GNU Stow](https://www.gnu.org/software/stow/).

## 🚀 Quickstart (Plug-and-Play)

To set up a brand-new machine (Kali Linux, Debian/Ubuntu, or macOS), just clone this repository and run the automated bootstrap script. 

The script will automatically install core dependencies, set up frameworks like Oh My Zsh and TPM, handle default file conflicts, and symlink the correct configurations for your operating system.

```bash
git clone [https://github.com/AndrewIzatt/dotfiles.git](https://github.com/AndrewIzatt/dotfiles.git) ~/dotfiles
cd ~/dotfiles
./install.sh

```

## 📦 Architecture & Modules

These dotfiles use a **modular package approach**. Instead of stowing the entire directory at once, each application has its own dedicated folder.

* **Cross-Platform Modules:** `zsh`, `bash`, `vim`, `ideavim`, `nvim`, `tmux`, `git`, `mysql`, `misc`, `bin`
* **macOS Only:** `aerospace`, `ghostty`, `wezterm`
* **Linux (Kali/Debian) Only:** `i3`

---

## 🛠️ Manual Install Instructions

If you prefer to bypass the `install.sh` script and set up manually, ensure you have the core tools installed on your system first:

**Debian / Ubuntu / Kali:**

```bash
sudo apt update
sudo apt install -y git stow zsh tmux neovim

```

**macOS:**

```bash
brew install git stow zsh tmux neovim

```

## ⚙️ Manual Usage (Stow Commands)

If you are managing packages manually, ensure you run these commands from inside the `~/dotfiles` directory.

**1. Stow a single package (Create symlinks):**

```bash
stow -v <package_name>
# Example: stow -v wezterm

```

**2. Refresh a package:**
Use this if you add new files or rename existing ones inside a package folder. It removes the old links and recreates them automatically.

```bash
stow -R -v <package_name>

```

**3. Unstow a package (Remove symlinks):**

```bash
stow -D -v <package_name>

```

---

## 📚 More Help & Managing Dotfiles

If you experience any problems or want to understand the core GNU Stow symlink strategy that powers this repository, check out the original video that inspired this setup:

* **[Managing Dotfiles with GNU Stow (YouTube)](https://youtu.be/y6XCebnB9gs?si=9UNCt7R2t8VOgjTw)**

```

```
