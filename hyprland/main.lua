

hl.on('hyprland.start', function()
	require('lua.plugin.hy3')
	require('lua.binds')
	hl.exec_cmd(
		"swayidle -w " ..
		"timeout 300 'swaylock -f -c " .. _G.background_color .. "' " ..
		"timeout 600 'swaymsg \"output * dpms off\"' resume 'swaymsg \"output * dpms on\"' " ..
		"before-sleep 'swaylock -f -c " .. _G.background_color .. "'"
	)
end)
