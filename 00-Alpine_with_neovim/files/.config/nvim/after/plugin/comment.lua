local status, comment = pcall(require, "Comment")
if (not status) then
	vim.notify('Erreur lors du chargement de comment')
	return
end

comment.setup {
	padding = true,
	sticky = true,
	ignore = '^$',
	toggler = {
		line = '<Leader>cc',
		block = '<Leader>cb',
	},
	opleader = {
		line = '<Leader>cC',
		block = '<Leader>cB',
	},
	extra = {
		below = '<Leader>cj',
		above = '<Leader>ck',
		eol = '<Leader>cl',
	},
	mappings = {
		basic = true,
		extra = true,
	},
	pre_hook = nil,
	post_hook = nil,
}
