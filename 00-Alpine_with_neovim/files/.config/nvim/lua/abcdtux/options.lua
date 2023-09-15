-- Table containing options
local options = {
	fileencoding = "utf-8",
	-- Display
	termguicolors = true,
	scrolloff = 8,
	sidescrolloff = 8,
	colorcolumn = "80",
	-- Line numbers and current line
	numberwidth = 6,
	number = true,
	relativenumber = true,
	cursorline = false,
	-- Indentation
	shiftwidth = 4,
	tabstop = 4,
	softtabstop = 4,
	signcolumn = "yes",
	smartindent = true,
	-- Command line and status line
	cmdheight = 2,
	showmode = false,
	laststatus = 2,
	-- Location of splits
	splitbelow = true,
	splitright = true,
	-- Mouse management
	mouse = "a",
	clipboard = "unnamedplus",
	-- Speed
	updatetime = 1000,
	-- Errors
	visualbell = true,
	errorbells = false,
	-- Research
	hlsearch = true,
	-- Special plugin
	completeopt = { "menu", "menuone", "noselect" },
	-- Language for spell
	spelllang = {"en", "fr"}
}

-- Creating options
for key, value in pairs(options) do
	vim.opt[key] = value
end

