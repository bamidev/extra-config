-- blink.cmp may not be available yet because at this point it may not have been installed yet.
local success, blink = pcall(require, 'blink.cmp')
if success then
	return blink.get_lsp_capabilities()
else
	print('Unable to load blink.cmp (yet).')
	return {}
end
