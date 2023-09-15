local status, lualine = pcall(require, "lualine")
if (not status) then
	vim.notify('Erreur lors du chargement de lualine')
	return
end

local function abcdtux()
  return [[ abcdtux ]]
end

lualine.setup {
	options = {
		icons_enabled = true,
		theme = 'jellybeans',
		section_separators = { left = '', right = '' },
		component_separators = '',
		disabled_filetypes = {
			statusline = { 'NvimTree' },
			winbar = { 'NvimTree' },
		},
		ignore_focus = {},
		always_divide_middle = true,
		globalstatus = false,
		refresh = {
			statusline = 1000,
			tabline = 1000,
			winbar = 1000,
		},
	},
	-- Barre Générale en haut
	tabline = {
		lualine_a = {'tabs'},
		lualine_b = {},
		lualine_c = {},
		lualine_x = {},
		lualine_y = {'ctime','cdate'},
		lualine_z = { abcdtux },
	},
	-- Barre du haut par fichier
	winbar = {
		lualine_a = { { 'filename', path = 1 } },
		lualine_b = {},
		lualine_c = {},
		lualine_x = {},
		lualine_y = {},
		lualine_z = {},
	},
	inactive_winbar = {
		lualine_a = { { 'filename', path = 1 } },
		lualine_b = {},
		lualine_c = {},
		lualine_x = {},
		lualine_y = {},
		lualine_z = {},
	},
	-- Barre du bas par fichier
	sections = {
		lualine_a = {'mode'},
		lualine_b = {'branch', 'diff', 'diagnostics'},
		lualine_c = {'filename'},
		lualine_x = {'encoding', 'fileformat', 'filetype'},
		lualine_y = {'progress'},
		lualine_z = {'location'},
	},
	inactive_sections = {
		lualine_a = {'mode'},
		lualine_b = {'branch', 'diff', 'diagnostics'},
		lualine_c = {'filename'},
		lualine_x = {'encoding', 'fileformat', 'filetype'},
		lualine_y = {'progress'},
		lualine_z = {'location'},
	},
	-- Pour des extensions
	extensions = {},
}
