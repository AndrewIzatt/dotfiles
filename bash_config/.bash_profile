# Detect Platform
case "$OSTYPE" in
    darwin*) export HOST_OS="macOS";;
    linux*) export HOST_OS="linux";;
    *)	export HOST_OS="unknown";;
esac
# ---------------
# PATH Setup
# ---------------
# Linux-only paths
if [[ "$HOST_OS" == "linux" ]]; then
    # Shared user bin
    export PATH="$PATH:$HOME/.local/bin"
    # Add zig to path
    export PATH="$HOME/repos/zig:$PATH"
    # Add mssql-tools to path
    export PATH="$PATH:/opt/mssql-tools18/bin"
    # Homebrew
    eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"  # Linuxbrew
fi

# macOS-only paths
if [[ "$HOST_OS" == "macOS" ]]; then
    # Add Applications folder to PATH
    export PATH=$PATH:/Applications/
    # Homebrew
    eval "$(/opt/homebrew/bin/brew shellenv)"  # macOS Homebrew
    # Add dotnet to PATH
    export PATH="$PATH:$HOME/.dotnet/tools"
    source /opt/homebrew/opt/chruby/share/chruby/auto.sh
    source /opt/homebrew/opt/chruby/share/chruby/chruby.sh
    chruby ruby-3.4.7
fi

# -------------------------------
# MySQL Setup
export MYSQLSH_PROMPT_THEME=~/.mysqlsh/prompt.json
# export MYSQLSH_PROMPT_THEME=/usr/share/mysqlsh/prompt/prompt_256inv.json
# export MYSQLSH_PROMPT_THEME=/usr/share/mysqlsh/prompt/prompt_256pl.json
# export MYSQLSH_PROMPT_THEME=/usr/share/mysqlsh/prompt/prompt_256pl+aw.json
# export MYSQLSH_PROMPT_THEME=/usr/share/mysqlsh/prompt/prompt_dbl_256.json
# export MYSQLSH_PROMPT_THEME=/usr/share/mysqlsh/prompt/prompt_dbl_256pl.json
#-------------------------------

# -----------------------------
# Neovim Setup
# ------------------------------
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

#Set Neovim Config
# export NVIM_APPNAME="nvim-andrew"
# CURRENT CONFIG
# export NVIM_APPNAME="nvim"
# export NVIM_APPNAME="lvim nvim"
# export NVIM_APPNAME="nvim.orig"
# export NVIM_APPNAME="nvim-custom"
# switch to Kickstart Configuration
# NVIM Alias

alias nvim-mod='NVIM_APPNAME="kickmod" nvim'
# adds a blank line before prompt
precmd() { print "" }
# ---------------------------------------
# Global Homebrew Settings
export HOMEBREW_ACCEPT_EULA=Y
export HOMEBREW_NO_ANALYTICS=1
export HOMEBREW_NO_ENV_HINTS=1
export HOMEBREW_BUNDLE_FILE=/Users/$USER/.config/brewfile/Brewfile
export DOTNET_CLI_TELEMETRY_OPTOUT=1
