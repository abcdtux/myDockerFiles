local status, dracula = pcall(require, "dracula")
if (not status) then
	vim.notify('Erreur lors du chargement de dracula')
	return
end

-- Configuration du plugin
dracula.setup({
	show_end_of_buffer = true,
	transparent_bg = false,
	lualine_bg_color = "#44475a",
	italic_comment = true
})

vim.cmd [[ colorscheme dracula-soft ]]
