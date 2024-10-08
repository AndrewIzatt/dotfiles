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
alias vrc="vim ~/.vimrc"
alias fishrc="nvim ~/.config/fish/config.fish"
alias aled="nvim ~/bash_config/.bash_aliases"
alias cdc="nvim ~/Documents/Coding"
alias nand="nvim ~/Documents/Coding/nand2tetris/"
alias nvimconf="nvim ~/.config/nvim/"
alias i3stat="nvim ~/.i3status.conf"
alias i3conf="nvim ~/.config/i3/config"
alias roficonf="nvim ~/.config/rofi/config.rasi"
alias polyconf="nvim ~/.config/polybar/config"
alias polylaunch="nvim ~/.config/polybar/launch.sh"

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
alias grep="grep --color=auto"
alias egrep="grep -E --color=auto"
alias fgrep="grep -F --color=auto"


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
alias stat="git status" # 'status is protected name so using stat instead'
alias tag="git tag"
alias newtag="git tag -a"
alias remote="git remote"

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


