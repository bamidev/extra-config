-- TODO: Take from environment variables
local browser = os.getenv('BROWSER')
local file_browser = 'nautilus'
local menu = 'wofi -n --show run'
local shutdown = 'hyprshutdown'
local terminal = os.getenv('TERMINAL')
local print_screen = 'echo screen'
local print_window = 'echo window'


hl.bind('SUPER + SHIFT + LEFT', hl.dsp.group.prev())
hl.bind('SUPER + SHIFT + RIGHT', hl.dsp.group.next())
--hl.bind('SUPER + SHIFT + UP', hl.dsp.group.next())
--hl.bind('SUPER + SHIFT + DOWN', hl.dsp.group.next())
--
hl.bind('SUPER + SHIFT + SPACE', hl.dsp.window.float())

hl.bind('SUPER + RETURN', hl.dsp.exec_cmd(terminal))
hl.bind('SUPER + W', hl.dsp.exec_cmd(browser))
hl.bind('SUPER + D', hl.dsp.exec_cmd(menu))
hl.bind('SUPER + F', hl.dsp.exec_cmd(file_browser))
hl.bind('SUPER + SHIFT + E', hl.dsp.exec_cmd(shutdown))
hl.bind('PRINT', hl.dsp.exec_cmd(print_screen))
hl.bind('SUPER + SHIFT + PRINT', hl.dsp.exec_cmd(print_window))

for i = 1, 10 do
	local key = i % 10
	hl.bind('SUPER + ' .. key, hl.dsp.focus({ workspace = key }))
	hl.bind('SUPER + SHIFT + ' .. key, hl.dsp.window.move({ workspace = key, follow = false }))
end


-- Brightness & audio keys
hl.bind('XF86MonBrightnessDown', hl.dsp.exec_cmd('sudo-brightness-down'))
hl.bind('XF86MonBrightnessUp', hl.dsp.exec_cmd('sudo-brightness-up'))
hl.bind('XF86AudioLowerVolume', hl.dsp.exec_cmd('pactl set-sink-volume @DEFAULT_SINK@ -1%'))
hl.bind('XF86AudioRaiseVolume', hl.dsp.exec_cmd('pactl set-sink-volume @DEFAULT_SINK@ +1%'))
hl.bind('XF86AudioMute', hl.dsp.exec_cmd('pactl set-sink-mute @DEFAULT_SINK@ toggle'))

hl.bind('PRINT', hl.dsp.exec_cmd('hyprshot -m region'))
hl.bind('SHIFT + PRINT', hl.dsp.exec_cmd('hyprshot -m window'))
