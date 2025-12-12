return {

	{ "catppuccin/nvim", name = "catppuccin", priority = 1000 },
	"nvim-lua/plenary.nvim",
	"ThePrimeagen/harpoon",
	{'nvim-telescope/telescope.nvim', tag = 'v0.2.0', dependencies = { 'nvim-lua/plenary.nvim' }},
	"nvim-tree/nvim-tree.lua",
	"nvim-tree/nvim-web-devicons",
	"mason-org/mason.nvim",
	'numToStr/Comment.nvim',
	{'nvim-lualine/lualine.nvim', dependencies = { 'nvim-tree/nvim-web-devicons' }},
	{ 'nvim-treesitter/nvim-treesitter', build = ':TSUpdate' },
  	{
	    "baliestri/aura-theme",
	    lazy = false,
	    priority = 1000,
	    config = function(plugin)
	      vim.opt.rtp:append(plugin.dir .. "/packages/neovim")
	      vim.cmd([[colorscheme aura-dark]])
	    end
  	},
	"xiyaowong/transparent.nvim",
}
