# Created by `pipx` on 2024-12-08 23:59:18
# setopt verbose
# If you come from bash you might have to change your $PATH.
# PATH stuff
# export PATH=$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH
#
# Created by `pipx` on 2024-12-08 23:59:18
export PATH="$PATH:/home/gnarwal/.local/bin"
# Add zig to path
export PATH="$HOME/repos/zig:$PATH"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

#Set Neovim Config
# export NVIM_APPNAME="nvim-andrew"
# CURRENT CONFIG
# export NVIM_APPNAME="nvim"
# export NVIM_APPNAME="lvim nvim"
# export NVIM_APPNAME="nvim.orig"
# export NVIM_APPNAME="nvim-custom"
# switch to Kickstart Configuration

export MYSQLSH_PROMPT_THEME=~/.mysqlsh/prompt.json
# export MYSQLSH_PROMPT_THEME=/usr/share/mysqlsh/prompt/prompt_256inv.json
# export MYSQLSH_PROMPT_THEME=/usr/share/mysqlsh/prompt/prompt_256pl.json
# export MYSQLSH_PROMPT_THEME=/usr/share/mysqlsh/prompt/prompt_256pl+aw.json
# export MYSQLSH_PROMPT_THEME=/usr/share/mysqlsh/prompt/prompt_dbl_256.json
# export MYSQLSH_PROMPT_THEME=/usr/share/mysqlsh/prompt/prompt_dbl_256pl.json

alias nvim-mod='NVIM_APPNAME="kickmod" nvim'

# history setup
# HISTFILE=$HOME/.zhistory
# SAVEHIST=1000
# HISTSIZE=999
# setopt share_history
# setopt hist_expire_dups_first
# setopt hist_ignore_dups
# setopt hist_verify
setopt HIST_IGNORE_SPACE

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
# ZSH_THEME="agnoster"
ZSH_THEME="custom_agnoster"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Configure eza 'https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/eza'
# zstyle ':omz:plugins:eza' 'dirs-first' yes
# zstyle ':omz:plugins:eza' 'git-status' yes
# # Note: If yes, always add --git flag to indicate git status (if tracked / in a git repo).
# zstyle ':omz:plugins:eza' 'header' yes
# # Note: If yes, always add -h flag to add a header row for each column.
# zstyle ':omz:plugins:eza' 'icons' yes
#
# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
colored-man-pages
fzf
git
sudo
zsh-autosuggestions
shrink-path
# zsh-history-substring-search
zsh-syntax-highlighting # must be last plugin sourced
)

# Adding zsh-completions as regular OhMyZsh plug won't work properly
fpath+=${ZSH_CUSTOM:-${ZSH:-~/.oh-my-zsh}/custom}/plugins/zsh-completions/src
source $ZSH/oh-my-zsh.sh
# see shrink-path plugin docs
setopt prompt_subst

# User configuration
ZSH_AUTOSUGGEST_STRATEGY=(history completion)
# https://github.com/zsh-users/zsh-autosuggestions?tab=readme-ov-file
# :Set ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE to configure the style that the suggestion is shown with. The default is fg=8,
# which will set the foreground color to color 8 from the 256-color palette. If your terminal only supports 8 colors,
# you will need to use a number between 0 and 7."
# For list of numbers 0-255:
# https://upload.wikimedia.org/wikipedia/commons/1/15/Xterm_256color_chart.svg
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=241'
bindkey '^a' autosuggest-accept

# export MANPATH="/usr/local/man:$MANPATH"
#
# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
alias ohmyzsh="nvim ~/.oh-my-zsh"
# unalias run-help
# autoload run-help
# HELPDIR=/usr/share/zsh/"${ZSH_VERSION}"/help
# alias help=run-help
source ~/bash_config/.bash_aliases
source ~/bash_config/.functions


fastfetch

# Created by `pipx` on 2025-01-16 21:51:25
export PATH="$PATH:~/.local/bin"
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
eval "$(zoxide init zsh)"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export PATH="$PATH:/opt/mssql-tools18/bin"
