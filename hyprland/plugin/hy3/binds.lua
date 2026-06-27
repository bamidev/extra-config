local hy3 = hl.plugin.hy3


hl.bind('SUPER + LEFT', hy3.move_focus('left'))
hl.bind('SUPER + RIGHT', hy3.move_focus('right'))
hl.bind('SUPER + UP', hy3.move_focus('up'))
hl.bind('SUPER + DOWN', hy3.move_focus('down'))

hl.bind('SUPER + B', hy3.make_group('h', { toggle = true }))
hl.bind('SUPER + V', hy3.make_group('v', { toggle = true }))
hl.bind('SUPER + SHIFT + Q', hy3.kill_active())
