-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices

-- For example, changing the color scheme:
-- config.color_scheme = 'AdventureTime'
-- config.color_scheme = 'Gruvbox Material (Gogh)'
config.color_scheme = 'Galaxy'
config.font_size = 13.0
config.font = wezterm.font('RobotoMono Nerd Font Mono')

config.window_decorations = "RESIZE"
config.enable_tab_bar = false

-- and finally, return the configuration to wezterm
return config
