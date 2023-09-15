local status, nvim_tree = pcall(require, "nvim-tree")
if (not status) then
	vim.notify('Erreur lors du chargement de nvim-tree')
	return
end
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1


-- Configuration du plugin
nvim_tree.setup({
	sort_by = "case_sensitive",
	view = {
		adaptive_size = true,
		side = "right"
	},
	renderer = {
	   group_empty = true,
	},
	filters = {
	   dotfiles = false,
	},
})

vim.cmd [[ NvimTreeToggle ]]
