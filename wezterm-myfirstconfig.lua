-- Location C:\Users\user\.config\wezterm\wezterm.lua
local wezterm = require("wezterm")

-- DevOS is name WSL distro
return {
	default_prog = { "pwsh.exe" },
	default_cursor_style = "BlinkingBar",
	color_schemes = {
		["tokyonight-storm"] = {
			background = "#1F2335",
			foreground = "#c0caf5",
			cursor_bg = "#c0caf5",
			cursor_border = "#c0caf5",
			cursor_fg = "#1d202f",
			selection_bg = "#a9b1d6",
			selection_fg = "#c0caf5",

			-- selection_bg = "#364a82",
			-- #1d202f  #a9b1d6
			ansi = { "#414868", "#f7768e", "#9ece6a", "#e0af68", "#7aa2f7", "#bb9af7", "#7dcfff", "#c0caf5" },
			brights = { "#414868", "#f7768e", "#9ece6a", "#e0af68", "#7aa2f7", "#bb9af7", "#7dcfff", "#c0caf5" },
		},
		["Gruvbox Dark (Gogh)"] = {
			background = "#1e1f22",
			foreground = "#ebdbb2",
			cursor_bg = "#ebdbb2",
			cursor_border = "#ebdbb2",
			cursor_fg = "#282828",
			selection_bg = "#ebdbb2",
			selection_fg = "#282828",

			ansi = { "#282828", "#cc241d", "#98971a", "#d79921", "#458588", "#b16286", "#689d6a", "#a89984" },
			brights = { "#928374", "#fb4934", "#b8bb26", "#fabd2f", "#83a598", "#d3869b", "#8ec07c", "#ebdbb2" },
		},
	},
	-- color_scheme = "tokyonight-storm",
	color_scheme = "Gruvbox Dark (Gogh)",
	font = wezterm.font({
		family = "JetBrains Mono",
		-- family = "Monaspace Neon",
		-- weight = "Regular",
		-- weight = "Regular",
	}),
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
