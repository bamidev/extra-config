debug.disable_logs = false

require('lua.binds')
require('lua.plugin.hy3')



hl.config({
	general = {
		border_size = 2,
		gaps_in = 2,
		gaps_out = 7,
		layout = 'hy3',
		resize_on_border = true,
	},

	input = {
		touchpad = {
			natural_scroll = true,
		},
	},

	misc = {
		disable_hyprland_logo = true,
	},

	plugin = {
		hy3 = {
			autotile = {
				enable = true
			},

			tab_first_window = true,

			tabs = {
				blur = false,
				border_width = 1,
				radius = 4,
			},
		}
	},
})


--hl.on('hyprland.start', function()
	hl.exec_cmd(
		"swayidle -w " ..
		"timeout 300 'swaylock -f -c " .. _G.background_color .. "' " ..
		"timeout 600 'swaymsg \"output * dpms off\"' resume 'swaymsg \"output * dpms on\"' " ..
		"before-sleep 'swaylock -f -c " .. _G.background_color .. "'"
	)
--end)
