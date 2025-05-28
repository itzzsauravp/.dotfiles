local wezterm = require("wezterm")

return {
	-- Appearance
	color_scheme = "Rosé Pine (base16)",
	font = wezterm.font("JetBrains Mono"),
	font_size = 14,

	enable_tab_bar = false,
	window_decorations = "RESIZE",
	window_background_opacity = 1,
	window_padding = { left = 0, right = 0, top = 0, bottom = 0 },

	-- Startup
	default_prog = { "wsl.exe", "~" },

	-- Cursor
	default_cursor_style = "BlinkingBlock",
	cursor_blink_rate = 500,
	-- cursor_blink_ease_in = "Constant",
	-- cursor_blink_ease_out = "Constant",
	animation_fps = 170, -- lower FPS = no smooth animation

	hide_mouse_cursor_when_typing = true,

	-- Scrollback
	scrollback_lines = 5000,
	enable_scroll_bar = false,

	-- -- Bells
	-- visual_bell = {
	--   fade_in_function = "EaseIn",
	--   fade_out_function = "EaseOut",
	--   fade_in_duration_ms = 75,
	--   fade_out_duration_ms = 75,
	-- },
	-- audible_bell = "Disabled",

	check_for_updates = false,
}
