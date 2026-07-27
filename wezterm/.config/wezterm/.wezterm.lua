-- Pull in the wezterm API
local wezterm = require("wezterm")

-- Check if the operating system is macOS
local is_mac = wezterm.target_triple:find("darwin") ~= nil

-- This will hold the configuration.
local config = wezterm.config_builder()

local act = wezterm.action

-- This is where you actually apply your config choices

if is_mac then
  config.window_decorations = "RESIZE | MACOS_FORCE_SQUARE_CORNERS"
else
  -- On Linux, keep TITLE enabled so the tab bar is allowed to hide
  config.window_decorations = "RESIZE | TITLE"
  -- Disable the fancy tab bar so WezTerm doesn't put window controls in it.
  -- This allows the tab bar to safely hide when only 1 tab is open.
  config.use_fancy_tab_bar = false
end
config.automatically_reload_config = true
config.use_dead_keys = false
config.scrollback_lines = 5000
config.audible_bell = "Disabled"
config.hide_tab_bar_if_only_one_tab = true
config.window_close_confirmation = 'NeverPrompt'

-- Scroll by line and page
config.keys = {
  -- { key = 'UpArrow', mods = 'SHIFT|CTRL', action = act.ScrollByLine(-1) },
  { key = "k", mods = "SHIFT|CTRL", action = act.ScrollByLine(-1) },
  { key = "j", mods = "SHIFT|CTRL", action = act.ScrollByLine(1) },
  -- { key = "DownArrow", mods = "SHIFT|CTRL", action = act.ScrollByLine(1) },
  -- { key = "u", mods = "SHIFT|CTRL", action = act.ScrollByPage(-1) },
  -- { key = "PageUp",    mods = "SHIFT|CTRL", action = act.ScrollByPage(-1) },
  -- { key = "d", mods = "SHIFT|CTRL", action = act.ScrollByPage(1) },
  -- { key = "PageDown",  mods = "SHIFT|CTRL", action = act.ScrollByPage(1) },
}

-- For example, changing the color scheme:
-- config.color_scheme = 'AdventureTime'
-- config.color_scheme = 'Gruvbox Material (Gogh)'
-- config.color_scheme = "Galaxy"
config.color_scheme = 'Oxocarbon Dark (Gogh)'
-- config.color_scheme = 'Classic Dark (base16)'

-- or, changing the font size and color scheme.
-- config.font = wezterm.font("JetBrainsMono Nerd Font")
config.font = wezterm.font("RobotoMono Nerd Font Mono")
config.font_size = 16.0

-- config.enable_kitty_keyboard = true

-- and finally, return the configuration to wezterm
return config
