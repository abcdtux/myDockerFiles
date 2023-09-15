-- Auto-installation de packer
local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
	fn.system({
		'git', 'clone', '--depth', '1',
		'https://github.com/wbthomason/packer.nvim',
		install_path
	})
	vim.cmd [[packadd packer.nvim]]
end

-- Resynchronisation à l'enregistrement du packer.lua
local packer_group = vim.api.nvim_create_augroup("Packer", {clear = true})
vim.api.nvim_create_autocmd("BufWritePost", {
	command = "source <afile> | PackerSync",
	group = packer_group,
	pattern = vim.fn.expand("packer.lua")
})

-- Gestion des packages
local status, packer = pcall(require, "packer")
if not status then
	vim.notify("Error lors du chargement de packer.")
	return
end
return packer.startup({
	function(use)
		-- Auto gestion de packer
		use { 'wbthomason/packer.nvim' }

		-- ------------
		-- begin plugin
		-- ------------

		-- Theme
		use { 'Mofiqul/dracula.nvim', as = 'dracula' }
		-- Tab, space, return
		use { 'fraso-dev/nvim-listchars' }
		-- Barre
		use {
			'nvim-lualine/lualine.nvim',
			requires = {
				{ 'nvim-tree/nvim-web-devicons', opt = true },
				{ 'archibate/lualine-time' },
			},
		}
		-- Tree-sitter
		use {
			'nvim-treesitter/nvim-treesitter',
			run =  ":TSUpdate",
			requires = {
				{ 'windwp/nvim-ts-autotag' }
			},
		}
		-- Files explorer
		use { 'nvim-tree/nvim-web-devicons' }
		use {
			'nvim-tree/nvim-tree.lua',
			requires = {
				{ 'nvim-tree/nvim-web-devicons', opt = true }
			},
		}
		-- Search
		use {
			'nvim-telescope/telescope.nvim',
			requires = {
				{ 'nvim-lua/plenary.nvim' },
				{ 'sharkdp/fd' },
				{ 'nvim-treesitter/nvim-treesitter' },
				{ 'nvim-tree/nvim-web-devicons', opt = true },
			}
		}
		-- Comment
		use {
			'numToStr/Comment.nvim'
		}
		-- Snippet
		use { 'SirVer/ultisnips' }
		-- LSP
		use {
			'VonHeikemen/lsp-zero.nvim',
			branch = 'v2.x',
			requires = {
				-- LSP Support
				{ 'neovim/nvim-lspconfig' },
				{ 'williamboman/mason.nvim' },
				{ 'williamboman/mason-lspconfig.nvim' },
				-- Autocompletion
				{ 'hrsh7th/nvim-cmp' },
				{ 'hrsh7th/cmp-nvim-lsp' },
				{ 'hrsh7th/cmp-buffer'},
				{ 'hrsh7th/cmp-path'},
				{ 'hrsh7th/cmp-nvim-lua'},
				{ 'saadparwaiz1/cmp_luasnip'},
				-- Snippet
				{ 'SirVer/ultisnips' },
				{ 'quangnguyen30192/cmp-nvim-ultisnips' },
			}
		}
		-- Marks
		use { 'kshenoy/vim-signature' }

		-- ------------
		-- Latex plugin
		-- ------------
		
		use { 'matze/vim-tex-fold' }


		-- ----------
		-- end plugin
		-- ----------
	end,
	config = {
		display = {
			open_fn = function()
				local status_util, util = pcall(require, "packer.util")
				if (not status_util) then
					vim.notify('Erreur lors du chargement de packer.util')
					return
				end
				return util.float({
					border = 'double'
				})
			end
		}
	}
})

