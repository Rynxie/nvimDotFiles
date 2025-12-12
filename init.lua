require("config.keymap")
require("config.lazy")


vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.opt.number = true
vim.opt.termguicolors = true


require('lualine').setup{
	options = {
		theme = "nightfly"

	}

}
require("mason").setup()
require("nvim-tree").setup()
require('Comment').setup()
