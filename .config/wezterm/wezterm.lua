-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This will hold the configuration.
local config = wezterm.config_builder()

local act = wezterm.action

-- This is where you actually apply your config choices

-- Scroll by line and page
config.keys = {
  -- { key = 'UpArrow',   mods = 'SHIFT', action = act.ScrollByLine(-1) },
  { key = 'k',        mods = 'SHIFT|CTRL', action = act.ScrollByLine(-1) },
  { key = 'j',        mods = 'SHIFT|CTRL', action = act.ScrollByLine(1) },
  { key = 'PageUp',   mods = 'SHIFT|CTRL', action = act.ScrollByPage(-1) },
  { key = 'PageDown', mods = 'SHIFT|CTRL', action = act.ScrollByPage(1) },
}

-- For example, changing the color scheme:
-- config.color_scheme = 'AdventureTime'
-- config.color_scheme = 'Gruvbox Material (Gogh)'
config.color_scheme = 'Galaxy'
config.font_size = 13.0
config.font = wezterm.font('RobotoMono Nerd Font Mono')

-- config.window_decorations = "RESIZE"
config.enable_tab_bar = false

config.use_dead_keys = false
config.scrollback_lines = 5000
config.audible_bell = "Disabled"

-- config.enable_kitty_keyboard = true

-- and finally, return the configuration to wezterm
return config
