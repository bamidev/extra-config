vim.lsp.config('basedpyright', {
	settings = {
		basedpyright = {
			analysis = {
				-- Disable type checking by default.
				-- Many projects don't really always use types anyway.
				typeCheckingMode = "off";
			}
		}
	}
})
