vim.lsp.config('ruff', {
	cmd = {'ruff', 'server'},
	init_options = {
		settings = {
			configuration = '~/.config/ruff.toml',
			configurationPreference = 'filesystemFirst',
	  },
	},
	capabilities = require('lsp.capabilities')
})
