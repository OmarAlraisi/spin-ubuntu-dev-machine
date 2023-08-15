-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	-- Packer can manage itself
	use ('wbthomason/packer.nvim')

    -- Key binding suggestions (popup)
    use {
        "folke/which-key.nvim",
        config = function()
            vim.o.timeout = true
            vim.o.timeoutlen = 300
        end
    }

    -- For file finding
	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.1',
		-- or                            , branch = '0.1.x',
		requires = { {'nvim-lua/plenary.nvim'} }
	}

    -- Theme
	use({ 
		'folke/tokyonight.nvim', 
		as = 'tokyonight',
		config = function()
			vim.cmd('colorscheme tokyonight')
		end
	})

    -- For text highlighting
	use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
	use('nvim-treesitter/playground')

    -- For fast file accessing
	use('theprimeagen/harpoon')

    -- For git integration
	use('tpope/vim-fugitive')

    -- For LSP support
	use {
		'VonHeikemen/lsp-zero.nvim',
		branch = 'v2.x',
		requires = {
			    -- LSP Support
			    {'neovim/nvim-lspconfig'},             -- Required
			    {                                      -- Optional
			    'williamboman/mason.nvim',
			    run = function()
				    pcall(vim.cmd, 'MasonUpdate')
			    end,
		    },
		    {'williamboman/mason-lspconfig.nvim'}, -- Optional

		    -- Autocompletion
		    {'hrsh7th/nvim-cmp'},     -- Required
		    {'hrsh7th/cmp-nvim-lsp'}, -- Required
		    {'L3MON4D3/LuaSnip'},     -- Required
	    }
    }
    use('simrat39/inlay-hints.nvim')
    use('simrat39/rust-tools.nvim')
    use('p00f/clangd_extensions.nvim')

    -- For git highlighting when file is modified
    use("lewis6991/gitsigns.nvim")

    -- For auto closing pair characters
    use("m4xshen/autoclose.nvim")

    -- Prettier
    -- use('jose-elias-alvarez/null-ls.nvim')
    -- use('MunifTanjim/prettier.nvim')

    -- Commentary
    use('tpope/vim-commentary')

    -- Lualine
    use({
        'nvim-lualine/lualine.nvim',
        requires = { 'nvim-tree/nvim-web-devicons', opt = true }
    })

    -- Vim navigator
    use('christoomey/vim-tmux-navigator')
end)
