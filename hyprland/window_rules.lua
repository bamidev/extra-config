hl.window_rule({
	match = { class = 'Alacritty' },
	opacity = 0.85,
})
hl.window_rule({
	match = { class = 'wofi' },
	opacity = 0.85,
})
hl.window_rule({
	match = { class = 'Element' },
	opacity = 0.9,
})
hl.window_rule({
	match = { class = 'Session' },
	opacity = 0.9,
})
hl.window_rule({
	match = { class = 'signal' },
	opacity = 0.9,
})
hl.window_rule({
	match = { class = 'thunderbird' },
	opacity = 0.9,
})
hl.window_rule({
	match = {
		class = 'thunderbird',
		title = 'Add Security Exception',
	},
	pin = true,
	size = {800, 300}
})
hl.window_rule({
	match = { class = 'qemu' },
	workspace = "1 silent",
})
