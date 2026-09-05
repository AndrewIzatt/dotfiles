#!/usr/bin/env bash
set -e

DOTFILES_DIR="$HOME/dotfiles"

echo "🚀 Starting Dotfiles Bootstrap..."

# 1. Detect OS & Install Core Dependencies (Kali / Debian / Ubuntu)
if [ -f /etc/debian_version ]; then
    echo "📦 Updating apt and installing core dependencies..."
    sudo apt update
    sudo apt install -y stow git zsh tmux neovim curl eza build-essential

elif [[ "$OSTYPE" == "darwin"* ]]; then
    echo "🍏 macOS detected. Bootstrapping via Homebrew & Brewfile..."
    
    # Install Homebrew if not already installed
    if ! command -v brew >/dev/null 2>&1; then
        echo "🍺 Installing Homebrew..."
        /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
        
        # Add brew to PATH for Apple Silicon Mac default location
        if [[ -f /opt/homebrew/bin/brew ]]; then
            eval "$(/opt/homebrew/bin/brew shellenv)"
        fi
    fi

    # Bundle install from your Brewfile module
    BREWFILE_PATH="$DOTFILES_DIR/brewfile/Brewfile"
    if [ -f "$BREWFILE_PATH" ]; then
        echo "📦 Installing Homebrew formulae, casks, and apps from $BREWFILE_PATH..."
        brew bundle --file="$BREWFILE_PATH"
    else
        echo "⚠️ Brewfile not found at $BREWFILE_PATH, installing core fallback packages..."
        brew install stow git zsh tmux neovim fzf zoxide ripgrep bat eza
    fi
fi

# 2. Bootstrap Oh My Zsh if missing
if [ ! -d "$HOME/.oh-my-zsh" ]; then
    echo "✨ Installing Oh My Zsh..."
    RUNZSH=no KEEP_ZSHRC=yes sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
fi

# 3. Bootstrap Tmux Plugin Manager (TPM) if missing
if [ ! -d "$HOME/.tmux/plugins/tpm" ]; then
    echo "🔌 Installing Tmux Plugin Manager..."
    git clone https://github.com/tmux-plugins/tpm "$HOME/.tmux/plugins/tpm"
fi

# 4. Clear conflicting default files on a fresh OS install
echo "🧹 Cleaning up potential conflicting default files in ~..."
mkdir -p "$HOME/dotfiles_old_backup"
mv "$HOME/.zshrc" "$HOME/.bashrc" "$HOME/.profile" "$HOME/dotfiles_old_backup/" 2>/dev/null || true

# 5. Run Stow on all modules
echo "🔗 Symlinking dotfile modules..."
cd "$DOTFILES_DIR"

# Common cross-platform packages
MODULES="zsh bash vim ideavim git nvim tmux mysql misc bin ghostty wezterm"

# OS-specific packages
if [[ "$OSTYPE" == "linux-gnu"* ]]; then
    MODULES="$MODULES i3"
elif [[ "$OSTYPE" == "darwin"* ]]; then
    MODULES="$MODULES aerospace"
fi

for module in $MODULES; do
    if [ -d "$module" ]; then
        echo "   -> Stowing $module..."
        stow -R "$module"
    fi
done

# 6. Change default shell to Zsh if needed
if [ "$SHELL" != "$(which zsh)" ]; then
    echo "🐚 Changing default shell to Zsh..."
    chsh -s "$(which zsh)" || true
fi

echo "✅ Setup complete! Restart your shell or log out and back in."
