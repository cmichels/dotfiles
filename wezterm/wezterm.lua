-- Pull in the wezterm API
local wezterm = require 'wezterm'
local keybinds = require 'config.keybinds'
-- This will hold the configuration.
local config = {}

if wezterm.config_builder then config = wezterm.config_builder() end

-- config.color_scheme = 'Gogh (Gogh)'
-- config.color_scheme = 'Dark+'
config.color_scheme = 'Darktooth (base16)'
config.font = wezterm.font("MesloLGS Nerd Font Mono")


-- tabs
config.hide_tab_bar_if_only_one_tab = false
config.tab_bar_at_bottom = true
config.use_fancy_tab_bar = true
local bar = wezterm.plugin.require("https://github.com/adriankarlen/bar.wezterm")
bar.apply_to_config(config, {
  enable_modules = {
    username = false,
    hostname = false,
    clock = false
  }
})


config.inactive_pane_hsb = {
  saturation = 0.5,
  brightness = 0.5,
}

config.disable_default_key_bindings = true
config.send_composed_key_when_left_alt_is_pressed = true
config.send_composed_key_when_right_alt_is_pressed = true
config.keys = keybinds


-- window
config.window_decorations = "RESIZE"
config.window_padding = {
  left = 4,
  right = 4,
  top = 4,
  bottom = 4,
}
config.window_background_opacity = 0.85

-- Return the configuration to wezterm
return config
