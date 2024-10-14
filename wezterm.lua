-- Location C:\Users\user\.config\wezterm\wezterm.lua
local wezterm = require("wezterm")

-- DevOS is name WSL distro
return {
	default_prog = { "pwsh.exe" },
	default_cursor_style = "BlinkingBar",
	color_scheme_dirs = { 'C:/Users/efzrbhc/.config/wezterm/colors' },

	-- color_scheme = "tokyonight-storm",
	-- color_scheme = "Gruvbox Dark (Gogh)",
	-- color_scheme = "hardhacker",
	color_scheme = "Custom",

	font = wezterm.font({
		family = "JetBrains Mono",
		-- family = "Monaspace Neon",
		-- weight = "Regular",
		-- weight = "Regular",
	} , { weight = "Bold" }),
	font_size = 9,
	window_background_opacity = 0.98,
	window_padding = {
		left = 0,
		right = 0,
		top = 0,
		bottom = 0,
	},
	enable_tab_bar = false,
	keys = {
		{
			key = ":",
			mods = "CTRL|SHIFT|ALT",
			action = wezterm.action.SplitHorizontal({ domain = "CurrentPaneDomain" }),
		},
		{
			key = '"',
			mods = "CTRL|SHIFT|ALT",
			action = wezterm.action.SplitVertical({ domain = "CurrentPaneDomain" }),
		},
		-- { key = "h", mods = "CTRL|SHIFT|ALT", action = wezterm.action.ActivateTabRelative(-1) },
		-- { key = "l", mods = "CTRL|SHIFT|ALT", action = wezterm.action.ActivateTabRelative(1) },
		{ key = "h", mods = "SHIFT|ALT", action = wezterm.action.ActivateTabRelative(-1) },
		{ key = "l", mods = "SHIFT|ALT", action = wezterm.action.ActivateTabRelative(1) },
		{ key = "{", mods = "CTRL|SHIFT|ALT", action = wezterm.action.MoveTabRelative(-1) },
		{ key = "}", mods = "CTRL|SHIFT|ALT", action = wezterm.action.MoveTabRelative(1) },
		{ key = "UpArrow", mods = "CTRL|SHIFT", action = wezterm.action.ScrollByPage(-1) },
		{ key = "DownArrow", mods = "CTRL|SHIFT", action = wezterm.action.ScrollByPage(1) },
		{ key = "f", mods = "CTRL|SHIFT|ALT", action = wezterm.action.ToggleFullScreen },
		{
			key = "LeftArrow",
			mods = "ALT",
			action = wezterm.action.ActivatePaneDirection("Left"),
		},
		{
			key = "RightArrow",
			mods = "ALT",
			action = wezterm.action.ActivatePaneDirection("Right"),
		},
		{
			key = "UpArrow",
			mods = "ALT",
			action = wezterm.action.ActivatePaneDirection("Up"),
		},
		{
			key = "DownArrow",
			mods = "ALT",
			action = wezterm.action.ActivatePaneDirection("Down"),
		},
		{
			key = "w",
			mods = "CTRL|SHIFT|ALT",
			action = wezterm.action.AdjustPaneSize({ "Up", 1 }),
		},
		{
			key = "s",
			mods = "CTRL|SHIFT|ALT",
			action = wezterm.action.AdjustPaneSize({ "Down", 1 }),
		},
		{
			key = "a",
			mods = "CTRL|SHIFT|ALT",
			action = wezterm.action.AdjustPaneSize({ "Left", 1 }),
		},
		{
			key = "d",
			mods = "CTRL|SHIFT|ALT",
			action = wezterm.action.AdjustPaneSize({ "Right", 1 }),
		},
		{
			key = "F11",
			action = wezterm.action.ToggleFullScreen,
		},
		{ key = "l", mods = "ALT", action = wezterm.action.ShowLauncher },
	},
}
