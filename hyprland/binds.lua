-- TODO: Take from environment variables
local browser = 'librewolf'
local file_browser = 'nautilus'
local menu = 'wofi -n --show run'
local shutdown = 'hyprshutdown'
local terminal = 'alacritty'


local hy3 = hl.plugin.hy3
hl.bind('SUPER + LEFT', hy3.move_focus('left'))
hl.bind('SUPER + RIGHT', hy3.move_focus('right'))
hl.bind('SUPER + UP', hy3.move_focus('up'))
hl.bind('SUPER + DOWN', hy3.move_focus('down'))
hl.bind('SUPER + SHIFT + LEFT', hl.dsp.group.prev())
hl.bind('SUPER + SHIFT + RIGHT', hl.dsp.group.next())
--hl.bind('SUPER + SHIFT + UP', hl.dsp.group.next())
--hl.bind('SUPER + SHIFT + DOWN', hl.dsp.group.next())
--
hl.bind('SUPER + B', hy3.make_group('h', { toggle = true }))
hl.bind('SUPER + V', hy3.make_group('v', { toggle = true }))
hl.bind('SUPER + SHIFT + Q', hy3.kill_active())
hl.bind('SUPER + SHIFT + SPACE', hl.float({ action = 'toggle' }))

hl.bind('SUPER + ENTER', hl.dsp.exec_cmd(terminal))
hl.bind('SUPER + W', hl.dsp.exec_cmd(browser))
hl.bind('SUPER + D', hl.dsp.exec_cmd(menu))
hl.bind('SUPER + F', hl.dsp.exec_cmd(file_browser))
hl.bind('SUPER + SHIFT + E', hl.dsp.exec_cmd(shutdown))
hl.bind('PRINT', hl.dsp.exec_cmd(print_screen))
hl.bind('SUPER + SHIFT + PRINT', hl.dsp.exec_cmd(print_window))

for i = 1, 10 do
	hl.bind('SUPER + ' .. i, hl.dsp.workspace.move({ workspace = i }))
end
