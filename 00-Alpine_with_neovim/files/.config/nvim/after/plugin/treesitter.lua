local status, treesitter = pcall(require, "nvim-treesitter")
if (not status) then
	vim.notify('Erreur lors du chargement de nvim-treesitter')
	return
end

local status_cfg, treesitter_cfg = pcall(require, "nvim-treesitter.configs")
if (not status_cfg) then
	vim.notify('Erreur lors du chargement de treesitter.configs')
	return
end

treesitter_cfg.setup({
	ensure_installed = {
		"c", "lua", "vim",
		"markdown", "bash",
	},
	 autotag = { enable = true },
	highlight = {
		enable = true,
		additional_vim_regex_highlighting = false,
	},
	indent = { enable = true },
})
