-- Location C:\Users\user\.config\wezterm\wezterm.lua
local wezterm = require("wezterm")

return {
	default_prog = { "pwsh.exe" },
	default_domain = "WSL:NixOS",
	default_cursor_style = "BlinkingBar",

	wsl_domains = {
		{
			name = "WSL:NixOS",
			distribution = "NixOS",
			default_cwd = "~/",
		},
	},

	color_scheme_dirs = { "C:/Users/efzrbhc/.config/wezterm/colors" },
	-- color_scheme = "tokyonight-storm",
	-- color_scheme = "Gruvbox Dark (Gogh)",
	-- color_scheme = "Custom",
	-- color_scheme = "Oceanic Next (Gogh)",
	-- color_scheme = "Neofusion",
	-- color_scheme = "AlienBlood",
	-- color_scheme = "Panda (Gogh)",
	-- color_scheme = "Vs Code Dark+ (Gogh)",
	-- color_scheme = "X::DotShare (terminal.sexy)",

	font = wezterm.font({ family = "JetBrains Mono" }, { weight = "Regular" }),
	font_size = 11,

	window_background_opacity = 1,
	window_padding = {
		left = 0,
		right = 0,
		top = 0,
		bottom = 0,
	},
	enable_tab_bar = false,
}
