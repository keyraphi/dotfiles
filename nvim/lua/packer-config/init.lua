return require("packer").startup(function()
	-- Packer can manage itself
	use("wbthomason/packer.nvim")
	use("EdenEast/nightfox.nvim") -- colorscheme
	use("kyazdani42/nvim-tree.lua") -- file editor
	use("neovim/nvim-lspconfig") -- Collection of configurations for the built-in LSP client
	use("hrsh7th/nvim-cmp") -- Autocompletion plugin
	use("hrsh7th/cmp-nvim-lsp") -- LSP source for nvim-cmp
	use("saadparwaiz1/cmp_luasnip") -- Snippets source for nvim-cmp
	use("L3MON4D3/LuaSnip") -- Snippets plugin
	use("onsails/lspkind-nvim") -- pictograms for completion plugin
	use("rcarriga/nvim-notify") -- notify plugin
	use("kyazdani42/nvim-web-devicons")
	use("nvim-lualine/lualine.nvim")
	use("romgrk/barbar.nvim") -- buffers as "tabs"
	use({ "nvim-treesitter/nvim-treesitter", run = ":TSUpdate" }) -- treesitter
	use("nvim-treesitter/nvim-treesitter-refactor")
	use("nvim-treesitter/nvim-treesitter-textobjects")
	use("andymass/vim-matchup")
	use("mfussenegger/nvim-ts-hint-textobject")
	use("lewis6991/spellsitter.nvim")
	use("SmiteshP/nvim-gps") -- context in status-line
	use({
		"nvim-telescope/telescope.nvim",
		requires = { { "nvim-lua/plenary.nvim" } },
	})
	use("williamboman/nvim-lsp-installer")
	use("jose-elias-alvarez/null-ls.nvim")
	use("sunjon/shade.nvim")
	use("psliwka/vim-smoothie")
	use("tpope/vim-surround") -- surround stuff or remove surrounding stuff
	use("tpope/vim-fugitive") -- git plugin
    use("tpope/vim-repeat") -- make things like surround repeatable via "."
    use("tommcdo/vim-lion") -- alignment via 'gl<motion><character>'
    use("unblevable/quick-scope")  -- highlight convenient targets for 't' and 'f'
    use("airblade/vim-rooter")
    use("tpope/vim-commentary")
    use("JoosepAlviste/nvim-ts-context-commentstring")
end)
