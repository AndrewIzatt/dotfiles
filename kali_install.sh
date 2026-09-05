#!/usr/bin/env bash
set -e

DOTFILES_DIR="$HOME/dotfiles"

echo "🚀 Starting Dedicated Kali Linux VM Setup..."

# 1. Verify environment is Debian/Kali
if [ ! -f /etc/debian_version ]; then
    echo "❌ Error: This installer is strictly for Kali Linux / Debian VMs."
    exit 1
fi

# 2. Update APT & Install Core Tools, VM Drivers, and CLI Utilities
echo "📦 Updating repositories and installing packages..."
sudo apt update
sudo apt install -y \
    stow git zsh tmux neovim curl build-essential \
    spice-vdagent x11-xserver-utils \
    fzf zoxide ripgrep bat

# 3. Bootstrap Oh My Zsh
if [ ! -d "$HOME/.oh-my-zsh" ]; then
    echo "✨ Installing Oh My Zsh..."
    RUNZSH=no KEEP_ZSHRC=yes sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
fi

# 4. Bootstrap Tmux Plugin Manager (TPM)
if [ ! -d "$HOME/.tmux/plugins/tpm" ]; then
    echo "🔌 Installing Tmux Plugin Manager..."
    git clone https://github.com/tmux-plugins/tpm "$HOME/.tmux/plugins/tpm"
fi

# 5. Backup default config files to avoid Stow symlink conflicts
echo "🧹 Cleaning up default shell files..."
mkdir -p "$HOME/dotfiles_old_backup"
mv "$HOME/.zshrc" "$HOME/.bashrc" "$HOME/.profile" "$HOME/dotfiles_old_backup/" 2>/dev/null || true

# 6. Generate VM Autostart & Resizer Scripts within Dotfiles Modules
echo "🖥️ Generating VM Auto-Resize & Natural Scroll autostart files..."
mkdir -p "$DOTFILES_DIR/bin/.local/bin"
mkdir -p "$DOTFILES_DIR/kali/.config/autostart"

cat << 'EOF' > "$DOTFILES_DIR/bin/.local/bin/autostart-resizer.sh"
#!/bin/bash
sleep 5
xrandr --output Virtual-1 --auto
xinput set-prop "QEMU QEMU USB Mouse" "libinput Natural Scrolling Enabled" 1
EOF

chmod +x "$DOTFILES_DIR/bin/.local/bin/autostart-resizer.sh"

cat << 'EOF' > "$DOTFILES_DIR/kali/.config/autostart/autostart-resizer.desktop"
[Desktop Entry]
Type=Application
Name=VM Auto-Resize & Scroll
Exec=sh -c "$HOME/.local/bin/autostart-resizer.sh"
X-GNOME-Autostart-enabled=true
EOF

# 7. Stow terminal-focused Kali modules
echo "🔗 Symlinking Kali terminal modules..."
cd "$DOTFILES_DIR"

KALI_MODULES="zsh bash git nvim tmux bin misc kali"

for module in $KALI_MODULES; do
    if [ -d "$module" ]; then
        echo "   -> Stowing $module..."
        stow -R "$module"
    else
        echo "   -> Skipping missing module: $module"
    fi
done

# 8. Apply XFCE Desktop Settings (Natural Scrolling fallback)
echo "🖱️ Applying Natural Scrolling preferences..."
xfconf-query -c pointers -p /libinput_Natural_Scrolling_Enabled -n -t bool -s true 2>/dev/null || true
xfconf-query -c pointers -p /QEMU_QEMU_USB_Mouse/Properties/libinput_Natural_Scrolling_Enabled -n -t int -s 1 2>/dev/null || true

# 9. Set Zsh as default shell
if [ "$SHELL" != "$(which zsh)" ]; then
    echo "🐚 Changing default shell to Zsh..."
    chsh -s "$(which zsh)" || true
fi

echo "✅ Kali VM setup complete! Restart your terminal or log out to apply desktop preferences."
