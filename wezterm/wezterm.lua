local wezterm = require("wezterm")
local config = wezterm.config_builder()

--------------------------------------
-- launching programs
--------------------------------------
config.default_prog = { "pwsh.exe" }

--------------------------------------
-- fonts
--------------------------------------
config.font = wezterm.font_with_fallback({
	"Ubuntu Mono",
	"Maple Mono",
})
config.font_size = 12

--------------------------------------
-- ui
--------------------------------------
config.max_fps = 120
config.front_end = "WebGpu"
config.webgpu_power_preference = "HighPerformance"
config.color_scheme = "Ayu Mirage"
config.enable_tab_bar = false
config.window_padding = {
	left = 0,
	right = 0,
	top = 0,
	bottom = 0,
}
config.window_background_image = "./background.jpg"
config.default_cursor_style = "BlinkingBar"
config.animation_fps = 30
config.cursor_blink_rate = 1000
-- config.cursor_blink_ease_in = 'Linear'
-- config.cursor_blink_ease_out = 'Linear'

--------------------------------------
-- control
--------------------------------------
config.window_close_confirmation = "NeverPrompt"

--------------------------------------
-- keybinding
--------------------------------------
config.keys = {}

return config
