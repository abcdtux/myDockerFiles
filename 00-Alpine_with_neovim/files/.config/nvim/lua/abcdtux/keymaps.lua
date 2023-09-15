-- Remap Leader at <space>
vim.g.mapleader = ' '

-- Elements de configuration
local full_options = { noremap = true, silent = true }

local keyset = function(mo, to, co, op)
	vim.keymap.set(mo, to, co, op)
end

local nkeysetfull = function(touche, commande)
	keyset("n", touche, commande, full_options)
end

local ikeysetfull = function(touches, commande)
	vim.api.nvim_set_keymap( "i", touches, commande, full_options )
end

local nkeys = function(touches, commande)
	vim.api.nvim_set_keymap( "n", touches, commande, full_options )
end




-- --------------
-- En mode Normal
-- --------------

-- F1 : help

-- F2 : save session
local repSession = "~/.sessionNeoVim"
local nameSession = "nvim"
local pathSession = repSession .. "/" .. nameSession
os.execute("mkdir -p " .. repSession .. " >> /dev/null")
nkeysetfull ( "<F2>", ":NvimTreeClose<cr>:wall<cr>:mksession! " .. pathSession .. "<cr>" )

-- F3 : make
nkeysetfull ( "<F3>", ":wall<cr>:make<cr>" )

-- F4 : toggle spell
nkeysetfull ( "<F4>", ":set spell!<cr>" )

-- F5 : toggle listchars
nkeysetfull ( "<F5>", ":ListcharsToggle<cr>" )

-- F6 : toggle nvim-tree
nkeysetfull ( "<F6>", ":NvimTreeToggle<cr>" )

-- F7 : toggle long line
nkeysetfull ( "<F7>", ":set colorcolumn=80<cr>" )

-- F8 :

-- F9 : 

-- F10 :

-- F11 : 

-- F12 : 
nkeysetfull ( "<F12>", ":so ~/.sessionNeoVim/nvim<cr>" )

-- NVimTree : Tree
nkeys ( "<Leader>tf", ":NvimTreeFindFile<cr>" )
nkeys ( "<Leader>tg", ":NvimTreeFocus<cr>" )

-- ultisnips
ikeysetfull ( "<tab>", ":UltiSnipsExpandTrigger" )
ikeysetfull ( "<c-j>", ":UltiSnipsJumpBackwardTrigger" )
ikeysetfull ( "<c-k>", ":UltiSnipsJumpForwardTrigger" )

-- Telescope : Find
nkeys ( "<Leader>ff", ":Telescope find_files<cr>" )
nkeys ( "<Leader>fg", ":Telescope live_grep<cr>" )
nkeys ( "<Leader>fb", ":Telescope buffers<cr>" )
nkeys ( "<Leader>fh", ":Telescope help_tags<cr>" )
