# alias vim="nvim"

# apt packages
alias nalaup="sudo nala update && sudo nala upgrade"
alias aptup="sudo apt update && sudo apt upgrade"
alias nalaupd="sudo nala update"
alias aptupd="sudo apt update"
alias nalaupg="sudo nala upgrade"
alias aptupg="sudo apt upgrade"
alias nalain="sudo nala install"
alias aptin="sudo apt install"
alias nalarm="sudo apt remove"
alias aptrm="sudo apt remove"

#cd aliases
alias ..="cd .."
alias ...="cd ../../../"
alias ....="cd ../../../../"
alias .....="cd ../../../../.."
alias .1="cd .."
alias .2="cd ../.."
alias .3="cd ../../../"
alias .4="cd ../../../../"
alias .5="cd ../../../../.."

# Coding
alias rc="nvim ~/.bashrc"
alias zrc="nvim ~/.zshrc"
alias vrc="nvim ~/.vimrc"
alias nvrc="nvim ~/.config/nvim/init.vim"
alias fishrc="nvim ~/.config/fish/config.fish"
alias aled="nvim ~/bash_config/.bash_aliases"
alias nand="nvim ~/Documents/Coding/nand2tetris/"
alias nvimconf="nvim ~/.config/nvim/"
alias i3stat="nvim ~/.i3status.conf"
alias i3conf="nvim ~/.config/i3/config"
alias roficonf="nvim ~/.config/rofi/config.rasi"
alias polyconf="nvim ~/.config/polybar/config"
alias polylaunch="nvim ~/.config/polybar/launch.sh"

# Tmux Aliases
alias tconf="nvim ~/.tmux.conf"
# Returns a list of all active tmux sessions
alias tls="tmux ls"
# Attach to a named session. Type `tas foo`
# to attach to a session named "foo"
alias tas="tmux attach -t"
# Create a new named session. Type `tns foo`
# to create a session named "foo"
# alias tns="tmux new-session -s"
# Creates a new session and automatically names it after current directory
# The way it works is by utilizing the –A flag for the new-session command. The –A flag
# makes new-session behave like attach-session, if the specified session name already
# exists. From there, instead of hard-coding in a session name (which wouldn’t be very useful),
# we use the shell’s $() command substitution feature, which evaluates the commands
# specified within the parentheses before the main/containing command is run. The returned
# value from the subshell commands is what is used for the session name.

# To get the folder name, we use the basename command and pass it the current
# working directory name ($PWD). So if $PWD returned /Users/markmcdonnell, the basename
# for that path would be markmcdonnell.
# Finally, we pipe (|) the folder name through to the translate (tr) command, which
# converts any dots (.) into hyphens, to ensure the session name is valid. This avoids issues
# wherein the folder name is x.y.z, by converting it int
alias tns='tmux new-session -As $(basename $PWD | tr . -)'

# Kill a named session. Type `tks foo`
# to kill session "foo"
alias tks="tmux kill-session -t"

# See ch. 3 of Tmux Taster by Mark McDonnell
alias tkall='tmux ls | cut -d : -f 1 | xargs -I {} tmux kill-session -t {}'

# Neovim config and plugins
alias nvrc="nvim ~/.config/nvim/init.vim"
alias commands_nvim="nvim ~/.config/nvim/lua/commands.lua"
alias keymaps_nvim="nvim ~/.config/nvim/lua/keymaps.lua"
alias options_nvim="nvim ~/.config/nvim/lua/options.lua"
alias lazy_nvim="nvim ~/.config/nvim/lua/custom/lazy.lua"
alias lsp_nvim="nvim ~/.config/nvim/lua/custom/plugins/lsp/lspconfig.lua"
alias mason="nvim ~/.config/nvim/lua/custom/plugins/lsp/mason.lua"
alias autopairs="nvim ~/.config/nvim/lua/custom/plugins/autopairs.lua"
alias autosession="nvim ~/.config/nvim/lua/custom/plugins/auto-session.lua"
alias bufferline="nvim ~/.config/nvim/lua/custom/plugins/bufferline.lua"
alias colorscheme_flow="nvim ~/.config/nvim/lua/custom/plugins/colorscheme_flow.lua"
alias colorscheme_tokyonight="nvim ~/.config/nvim/lua/custom/plugins/colorscheme_tokyonight.lua"
alias copilot_nvim="nvim ~/.config/nvim/lua/custom/plugins/copilot.lua"
alias copilotchat_nvim="nvim ~/.config/nvim/lua/custom/plugins/copilotchat.lua"
alias copilotcmp_nvim="nvim ~/.config/nvim/lua/custom/plugins/copilot-cmp.lua"
alias disabled="nvim ~/.config/nvim/lua/custom/plugins/disabled.lua"
alias dressing="nvim ~/.config/nvim/lua/custom/plugins/dressing.lua"
alias formatting="nvim ~/.config/nvim/lua/custom/plugins/formatting.lua"
alias blankline="nvim ~/.config/nvim/lua/custom/plugins/indent-blankline.lua"
alias initplug_nvim="nvim ~/.config/nvim/lua/custom/plugins/init.lua"
alias linting="nvim ~/.config/nvim/lua/custom/plugins/liniting.lua"
alias lspconfig="nvim ~/.config/nvim/lua/custom/plugins/lspconfig.lua"
alias lualine="nvim ~/.config/nvim/lua/custom/plugins/lualine.lua"
alias cmp_nvim="nvim ~/.config/nvim/lua/custom/plugins/nvim-cmp.lua"
alias tree_nvim="nvim ~/.config/nvim/lua/custom/plugins/nvim-tree.lua"
alias substitute="nvim ~/.config/nvim/lua/custom/plugins/substitute.lua"
alias surround="nvim ~/.config/nvim/lua/custom/plugins/surround.lua"
alias telescope="nvim ~/.config/nvim/lua/custom/plugins/telescope.lua"
alias todo_nvim="nvim ~/.config/nvim/lua/custom/plugins/todo-comments.lua"
alias treesitter="nvim ~/.config/nvim/lua/custom/plugins/treesitter.lua"
alias trouble="nvim ~/.config/nvim/lua/custom/plugins/trouble.lua"
alias vim-max="nvim ~/.config/nvim/lua/custom/plugins/vim-maximizer.lua"
alias which-key="nvim ~/.config/nvim/lua/custom/plugins/which-key.lua"

# Handy short cuts #
alias c="clear"
alias h="history"
alias j="jobs -l"

# Handy flags
alias cp="cp -iv"	# confirm before overwriting something
alias df="df -h"	# human-readable sizes
alias free="free -m:"	# show sizes in MB
alias mkdir="mkdir -pv" # Create directory including specified-parents
alias mkd="mkdir -pv"
alias mv="mv -i" # confirm before moving something
alias rm="rm -i" # confirm before deleting something
alias ln="ln -i" # confirm before creating a shortcut to something

#python
alias python="python3"
# Create python virtual envs in current directory
alias ve="python -m virtualenv ./venv"
alias va="source ./venv/bin/activate"

# Run custom scripts
alias cd_scripts="cd ~/Documents/scripts"
alias cd_nvim="cd ~/.config/nvim"
alias cd_ftp="cd ~/.config/nvim/after/ftplugin"
alias cd_vim="cd ~/vim"
alias cdc="cd ~/Documents/Coding"
alias cddot="cd ~/dotfiles"

# Restart Services
# alias restart_sound="pulseaudio -D"
alias restart_bluetooth="sudo systemctl restart bluetooth.service"

# Reboot/Restart Computer
alias reboot="sudo reboot"
alias suspend="sudo systemctl suspend"

# Service Status
# alias get_pulseaudio="pulseaudio --check" # Should have nothing
alias get_bluetooth="sudo systemctl status bluetooth.service"

# change ls to exa aliases
alias ls="eza -alh --color=always --group-directories-first" # preferred listing
alias la="eza -ah --color=always --group-directories-first" # all files and directories
alias ll="eza -lh --color=always --group-directories-first" # long format
alias lt="eza -aTh --color=always --group-directories-first" # tree format
alias l.='eza -ah | egrep "^\."' # Only returns hidden files

# Colorize grep output (good for log files)
alias grep="grep -i --color=auto"
alias egrep="grep -iE --color=auto"
alias fgrep="grep -iF --color=auto"


# Print my public IP address
alias myip="curl ipinfo.io/ip; echo"

# Show open ports
alias ports="netstat -tulanp"

# git
alias addall="git add ."
alias addup="git add -u"
alias branch="git branch"
alias checkout="git checkout"
alias clone="git clone"
alias commit="git commit -m"
alias fetch="git fetch"
alias pull="git pull origin"
alias push="git push origin"
alias stat="git status -uno" # automatically hides untracked files #'status is protected name so using stat instead'
alias statun="git status"
alias tag="git tag"
alias newtag="git tag -a"
alias remote="git remote"
alias reset="git reset --hard"

# use different browser for testing websites (haven't tried)
alias ff="firefox"
alias ffp="firefox --private-window"
# alias ff4="/opt/firefox4/firefox"
# alias ff13="/opt/firefox13/firefox"
alias chrome="/opt/google/chrome/chrome"
alias chromep="/opt/google/chrome/chrome --incognito"
alias brave="brave-browser"

# Websites
alias browser="firefox"
alias gpt="browser https://chat.openai.com/"
alias gh="browser https://github.com/AndrewIzatt"

#Backup
alias idrive="cd /opt/IDriveForLinux/bin && ./idrive"

# App Images
alias fritz="~/appimages/fritzing-1.0.1-l1653-8d480a18-qt6.AppImage"

# Flatpaks
alias signal="flatpak run org.signal.Signal"

#MySQL
alias mysql="mysqlsh -u root -h localhost"
