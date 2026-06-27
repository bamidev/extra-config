debug.disable_logs = false

require('lua.binds')
require('lua.plugin.hy3')

--hl.on('hyprland.start', function()
	hl.exec_cmd(
		"swayidle -w " ..
		"timeout 300 'swaylock -f -c " .. _G.background_color .. "' " ..
		"timeout 600 'swaymsg \"output * dpms off\"' resume 'swaymsg \"output * dpms on\"' " ..
		"before-sleep 'swaylock -f -c " .. _G.background_color .. "'"
	)
--end)
