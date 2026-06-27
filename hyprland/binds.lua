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
	key = i % 10
	hl.bind('SUPER + ' .. key, hl.dsp.window.move({ workspace = key }))
end
