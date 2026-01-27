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
require("mason-lspconfig").setup()
require("nvim-tree").setup({
	hijack_netrw = true,
	  hijack_directories = {
		enable = false,
	  },
	  view = {
		width = 30,
		side = "left",
	  },
})
require('Comment').setup()


vim.cmd("TransparentEnable")


vim.api.nvim_create_autocmd("VimEnter", {
    callback = function()
        if vim.fn.argc() > 0 and vim.fn.isdirectory(vim.fn.argv(0)) == 1 then
            require("alpha").start(false)
            require("nvim-tree.api").tree.open()
            vim.cmd("wincmd l")
        end
    end,
})
