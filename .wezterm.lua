-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices.

-- For example, changing the initial geometry for new windows:
config.initial_cols = 120
config.initial_rows = 28
-- config.enable_tab_bar = false
config.hide_tab_bar_if_only_one_tab = true
config.window_close_confirmation = 'NeverPrompt'
config.window_decorations = "RESIZE | MACOS_FORCE_SQUARE_CORNERS"

-- or, changing the font size and color scheme.
-- config.font = wezterm.font("JetBrainsMono Nerd Font")
config.font = wezterm.font("RobotoMono Nerd Font Mono")
config.font_size = 19
config.color_scheme = 'Classic Dark (base16)'

-- Finally, return the configuration to wezterm:
return config
