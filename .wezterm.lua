local wezterm = require("wezterm")
local config = wezterm.config_builder()

config.window_close_confirmation = "NeverPrompt"
config.window_decorations = "INTEGRATED_BUTTONS|RESIZE"
config.window_background_opacity = 0.9

config.default_domain = "WSL:archlinux"

config.font = wezterm.font_with_fallback({ "Maple Mono NF CN" })
config.font_size = 13
config.color_scheme = "Everforest Dark Medium (Gogh)"

config.use_fancy_tab_bar = false
config.enable_tab_bar = true
config.show_tab_index_in_tab_bar = true

return config
