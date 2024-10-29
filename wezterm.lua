-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This will hold the configuration.
local config = wezterm.config_builder()
local act = wezterm.action

config.enable_scroll_bar = true

-- This tells wezterm to look first for fonts in the directory named
-- `fonts` that is found alongside your `wezterm.lua` file.
-- As this option is an array, you may list multiple locations if
-- you wish.
config.font_dirs = { 'fonts' }


-- This is where you actually apply your config choices

config.keys = {
  -- This will create a new split and run your default program inside it
  {
    key = 'h',
    mods = 'ALT',
    action = wezterm.action.SplitHorizontal { domain = 'CurrentPaneDomain' },
  },
  -- This will create a new split and run your default program inside it
  {
    key = 'v',
    mods = 'ALT',
    action = wezterm.action.SplitVertical { domain = 'CurrentPaneDomain' },
  },
  {
    key = 'LeftArrow',
    mods = 'ALT',
    action = act.ActivatePaneDirection 'Left',
  },
  {
    key = 'RightArrow',
    mods = 'ALT',
    action = act.ActivatePaneDirection 'Right',
  },
  {
    key = 'UpArrow',
    mods = 'ALT',
    action = act.ActivatePaneDirection 'Up',
  },
  {
    key = 'DownArrow',
    mods = 'ALT',
    action = act.ActivatePaneDirection 'Down',
  },
	-- ChangeWindowKeys
  { key = 'RightArrow', mods = 'CTRL', action = act.ActivateTabRelative(1) },
  { key = 'LeftArrow', mods = 'CTRL', action = act.ActivateTabRelative(-1) },

}



-- For example, changing the color scheme:
config.color_scheme = 'Purpledream (base16)'
config.font = wezterm.font 'MesloLGS NF'
config.window_background_opacity = 0.98
config.text_background_opacity = 1

-- and finally, return the configuration to wezterm
return config
