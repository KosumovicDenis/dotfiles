-- Pull in the wezterm API
local wezterm = require 'wezterm'
-- local act = wezterm.action

-- This will hold the configuration.
local config = wezterm.config_builder()

-- Settings
-- Color & Window conf
config.color_scheme = 'MaterialDesignColors'
config.window_background_opacity = 0.9
config.window_decorations = 'RESIZE'
config.window_close_confirmation = 'AlwaysPrompt'
config.scrollback_lines = 3000
config.default_workspace = 'home'
-- Font
config.font = wezterm.font('Hack Nerd Font Mono')
config.font_size = 15
config.line_height = 1.05
-- Keys
-- config.leader = { key = 'a', mods = 'CTRL', timeout_milliseconds = 1000 }

return config

