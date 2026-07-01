
debug.disable_logs = false

require('lib.binds')
require('lib.plugin.hy3')


function color(rgb, a)
	return '#' .. rgb .. a
end


hl.config({
	debug = {
		disable_logs = false
	},

	decoration = {
		blur = {
			enabled = true,
			contrast = 0.4,
			noise = 0.15,
			size = 7,
			passes = 2,
			vibrancy = 0.2,
		},

		rounding = 5,

		shadow = {
			range = 4,
			render_power = 3,
		},
	},

	general = {
		border_size = 2,
		["col.active_border"] = color(theme.normal.blue, 'c0'),
		["col.inactive_border"] = color(theme.dim.blue, 'c0'),
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

				colors = {
					active = color(theme.bg.blue, 'c0'),
					active_border = color(theme.bright.blue, 'c0'),
					active_text = color(theme.foreground, 'c0'),

					inactive = color(theme.bg.black, '40'),
					inactive_border = color(theme.dim.black, '40'),
					inactive_text = color(theme.foreground, '40'),

					locked = color(theme.bg.green, '80'),
					locked_border = color(theme.dim.green, '80'),
					locked_text = color(theme.foreground, '80'),

					urgent = color(theme.bg.red, '80'),
					urgent_border = color(theme.normal.red, '80'),
					urgent_text = color(theme.foreground, '80'),
				},

				radius = 4,
			},
		}
	},
})


hl.on('hyprland.start', function()
	-- Lock screen
	hl.exec_cmd(
		"swayidle -w " ..
		"timeout 300 'swaylock -f -c " .. theme.background .. "' " ..
		"timeout 600 'swaymsg \"output * dpms off\"' resume 'swaymsg \"output * dpms on\"' " ..
		"before-sleep 'swaylock -f -c " .. theme.background .. "'"
	)

	-- Execute the startup commands from ~/.config/hypr/startup.lua, which has been generated from the NixOS config
	require('startup')
end)


-- Animations
hl.curve('easeInSine', {type = "bezier", points = {{0.12, 0}, {0.39, 0}}})

hl.animation({ enabled = true, leaf = 'global', speed = 1, bezier = 'easeInSine' })
hl.animation({ enabled = true, leaf = 'fade', speed = 1, bezier = 'easeInSine' })
hl.animation({ enabled = true, leaf = 'windows', speed = 0.35, bezier = 'easeInSine', style = 'slide' })
hl.animation({ enabled = true, leaf = 'workspaces', speed = 1.2, bezier = 'easeInSine', style = 'slidefade' })


-- Default monitor configuration
hl.monitor({ output = "", mode = "highres", position = "auto", scale = 1 })


require('lib.window_rules')



