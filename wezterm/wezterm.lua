local wezterm = require("wezterm")
local gpu_adapters = require("utils\\gpu-adapter")
local config = wezterm.config_builder()

config.max_fps = 165
-- config.front_end = "WebGpu" ---@type 'WebGpu' | 'OpenGL' | 'Software'
-- config.webgpu_power_preference = "HighPerformance"
-- config.webgpu_preferred_adapter = gpu_adapters:pick_best()
-- config.webgpu_preferred_adapter = gpu_adapters:pick_manual('Dx12', 'IntegratedGpu'),
-- config.webgpu_preferred_adapter = gpu_adapters:pick_manual('Gl', 'Other'),
config.underline_thickness = "1pt"

config.window_close_confirmation = "NeverPrompt"
config.window_decorations = "INTEGRATED_BUTTONS|RESIZE"
config.window_background_opacity = 0.63
config.win32_system_backdrop = "Acrylic"

config.default_domain = "WSL:archlinux"

config.font = wezterm.font_with_fallback({ "Maple Mono NF CN" })
config.font_size = 12
config.color_scheme = "Everforest Dark Medium (Gogh)"

config.use_fancy_tab_bar = true
config.enable_tab_bar = true
config.show_tab_index_in_tab_bar = true

config.animation_fps = 165
config.cursor_blink_ease_in = "EaseOut"
config.cursor_blink_ease_out = "EaseOut"
config.default_cursor_style = "BlinkingBlock"
config.cursor_blink_rate = 650

return config

