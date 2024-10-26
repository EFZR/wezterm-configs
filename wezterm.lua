-- Location C:\Users\user\.config\wezterm\wezterm.lua
local wezterm = require("wezterm")

-- DevOS is name WSL distro
return {
	default_prog = { "pwsh.exe" },

	wsl_domains = {
		{
			name = "WSL:NixOS",
			distribution = "NixOS"
		}
	},
	default_domain = 'WSL:NixOS',

	default_cursor_style = "BlinkingBar",
	color_scheme_dirs = { "C:/Users/efzrbhc/.config/wezterm/colors" },

	-- color_scheme = "tokyonight-storm",
	color_scheme = "Gruvbox Dark (Gogh)",
	-- color_scheme = "hardhacker",
	-- color_scheme = "Custom",
	-- color_scheme = "Oceanic Next (Gogh)",
	-- color_scheme = "Neofusion",

	font = wezterm.font({
		family = "JetBrains Mono",
		-- family = "Monaspace Neon",
		-- weight = "Regular",
		-- weight = "Regular",
	}, { weight = "Bold" }),
	font_size = 9,
	window_background_opacity = 0.98,
	window_padding = {
		left = 0,
		right = 0,
		top = 0,
		bottom = 0,
	},
	enable_tab_bar = false,
}
