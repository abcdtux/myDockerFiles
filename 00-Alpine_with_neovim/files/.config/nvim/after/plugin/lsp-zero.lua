local status, lsp = pcall(require, "lsp-zero")
if (not status) then
	vim.notify('Erreur lors du chargement de lsp-zero')
	return
end

local statusconfig, lspconfig = pcall(require, "lspconfig")
if (not statusconfig) then
	vim.notify('Erreur lors du chargement de lspconfig')
	return
end

lsp.preset('recommended')

lspconfig.lua_la.setup {
  settings = {
    Lua = {
      diagnostics = {
        globals = {'vim'},
      },
    },
  },
}


lsp.set_sign_icons({
	error = '✘',
	warn = '▲',
	hint = '⚑',
	info = '»'
})

lsp.setup()
