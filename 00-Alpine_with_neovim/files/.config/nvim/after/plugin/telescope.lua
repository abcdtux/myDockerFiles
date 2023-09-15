local status, telescope = pcall(require, "telescope")
if (not status) then
	vim.notify('Erreur lors du chargement de telescope')
	return
end

telescope.setup({
})
