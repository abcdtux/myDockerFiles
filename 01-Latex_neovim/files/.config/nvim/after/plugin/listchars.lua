local status, listchars = pcall(require, "nvim-listchars")
if (not status) then
	vim.notify('Erreur lors du chargement de listchars')
	return
end

listchars.setup({
	save_state = false,
	listchars = {
		tab = "> ",
		trail = "-",
		eol = "↲",
		tab = "» ",
	},
	exclude_filetypes = {
	},
	lighten_step = 10,
})
