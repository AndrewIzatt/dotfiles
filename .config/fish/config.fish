### ADDING TO THE PATH
# First line removes the path; second line sets it.  Without the first line,
# your path gets massive and fish becomes very slow.
# set -e fish_user_paths
# set -U fish_user_paths /usr/local/bin $fish_user_paths
# set -U fish_user_paths $HOME/.bin  $HOME/.local/bin $HOME/.config/emacs/bin $HOME/Applications /var/lib/fla

# set -x NVIM_APPNAME nvim-kickstart
# set -x NVIM_APPNAME nvim-custom
fish_default_key_bindings
set -x NVIM_APPNAME nvim
set -g theme_nerd_fonts yes
set -g fish_term24bit 1
# set -gx PATH $HOME/.rbenv/bin $PATH
# set -gx PATH $HOME/.rbenv/plugins/ruby-build/bin $PATH
### EXPORT ###
set fish_greeting # Suppresses fish's intro message

### SET MANPAGER
### Uncomment only one of these!

### "nvim" as manpager
# set -x MANPAGER "nvim +Man!"

### "less" as manpager
set -x MANPAGER "less"

# rvm default

if test -f ~/bash_config/.bash_aliases
    source ~/bash_config/.bash_aliases
end

if test -f ~/.config/fish/functions.fish
    source ~/.config/fish/functions.fish
end

fastfetch
