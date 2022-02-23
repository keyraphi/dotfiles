return require("packer").startup(function()
	-- Packer can manage itself
	use("wbthomason/packer.nvim")
	use("EdenEast/nightfox.nvim") -- colorscheme
	use("kyazdani42/nvim-tree.lua") -- file editor
	use("neovim/nvim-lspconfig") -- Collection of configurations for the built-in LSP client
	use("hrsh7th/nvim-cmp") -- Autocompletion plugin
	use("hrsh7th/cmp-nvim-lsp") -- LSP source for nvim-cmp
	use("hrsh7th/cmp-buffer") -- complete words in buffer
	use("hrsh7th/cmp-path") -- complete paths
	use("hrsh7th/cmp-cmdline") -- complete command line
	use("L3MON4D3/LuaSnip") -- Snippets source for nvim-cmp
	use("saadparwaiz1/cmp_luasnip") -- Snippets plugin
    use("rafamadriz/friendly-snippets") -- snippet db
	use({ "tzachar/cmp-tabnine", run = "./install.sh", requires = "hrsh7th/nvim-cmp" }) -- tabnine
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
	use("williamboman/nvim-lsp-installer")  -- install lsps via :LspInstallInfo
	use("jose-elias-alvarez/null-ls.nvim")  -- formatting/diagnostics/actions added to lsp
	use("sunjon/shade.nvim")  -- shade inactive windows slightly (strg+up/down)
	use("psliwka/vim-smoothie")  -- smooth scroll 
	use("tpope/vim-sensible")
	use("tpope/vim-unimpaired")
	use("tpope/vim-surround") -- surround stuff or remove surrounding stuff
	use("tpope/vim-fugitive") -- git plugin
    use("lewis6991/gitsigns.nvim") -- indicate which lines have changed since commit
	use("tpope/vim-repeat") -- make things like surround repeatable via "."
	use("tommcdo/vim-lion") -- alignment via 'gl<motion><character>'
	use("jedi2610/nvim-rooter.lua")  -- automatically set root directory
	use("tpope/vim-commentary")
	use("JoosepAlviste/nvim-ts-context-commentstring") -- comment stuff out via gc
	use("ray-x/lsp_signature.nvim")  -- show function signature in completion window
    use("ggandor/lightspeed.nvim") -- fast navigation with s or S
    use("lervag/vimtex") -- latex stuff
    use("lukas-reineke/indent-blankline.nvim")  -- Show indent level
end)
