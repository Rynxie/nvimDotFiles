return {

	{ "catppuccin/nvim", name = "catppuccin", priority = 1000 },
	{ "bluz71/vim-nightfly-colors", name = "nightfly", lazy = false, priority = 1000 },
	"nvim-lua/plenary.nvim",
	"ThePrimeagen/harpoon",
	{'nvim-telescope/telescope.nvim', tag = 'v0.2.0', dependencies = { 'nvim-lua/plenary.nvim' }},
	"nvim-tree/nvim-tree.lua",
	"nvim-tree/nvim-web-devicons",
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
	{'akinsho/toggleterm.nvim', version = "*", config = true},
	{
		'goolord/alpha-nvim',
		config = function ()
			require'alpha'.setup(require'alpha.themes.dashboard'.config)
		end
	},
	{
		"mason-org/mason-lspconfig.nvim",
		opts = {},
		dependencies = {
			{ "mason-org/mason.nvim", opts = {} },
			"neovim/nvim-lspconfig",
		},
	},
	{
		"hrsh7th/nvim-cmp",
		dependencies = {
			"hrsh7th/cmp-nvim-lsp",
			"L3MON4D3/LuaSnip",
			"saadparwaiz1/cmp_luasnip",
		},
		config = function()
			local cmp = require("cmp")
			cmp.setup({
				snippet = {
					expand = function(args)
						require("luasnip").lsp_expand(args.body)
					end,
				},
				mapping = cmp.mapping.preset.insert({
					["<C-b>"] = cmp.mapping.scroll_docs(-4),
					["<C-f>"] = cmp.mapping.scroll_docs(4),
					["<C-Space>"] = cmp.mapping.complete(),
					["<CR>"] = cmp.mapping.confirm({ select = true }),
					["<Tab>"] = cmp.mapping(function(fallback)
						if cmp.visible() then cmp.select_next_item()
						else fallback() end
					end, { "i", "s" }),
				}),
				sources = cmp.config.sources({
					{ name = "nvim_lsp" },
					{ name = "luasnip" },
				}),
			})
		end,
	},
}
