vim.g.mapleader = " "
vim.g.maplocalleader = " "

require("config.lazy")
require("config.keymap")
require("config.options")
   

vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1



require('lualine').setup{
	options = {
		theme = "nightfly"

	}

}
require("mason").setup()
require("nvim-tree").setup()
require('Comment').setup()
