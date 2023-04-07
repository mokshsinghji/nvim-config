-- This file can be loaded by calling `lua require('plugins')` from your init.vim
-- v

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require("packer").startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.1',
    -- or                            , branch = '0.1.x',
    requires = { {'nvim-lua/plenary.nvim'} }
  }
  use {
    'rose-pine/neovim',
    as = 'rose-pine',
    config = function()
      vim.cmd('colorscheme rose-pine')
    end
  }
  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate'
  }
  use {
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v1.x',
    requires = {
      -- LSP Support
      {'neovim/nvim-lspconfig'},             -- Required
      {                                      -- Optional
      'williamboman/mason.nvim',
      run = function()
        pcall(vim.cmd, 'MasonUpdate')
      end }
    },
    {'williamboman/mason-lspconfig.nvim'}, -- Optional

    -- Autocompletion
    {'hrsh7th/nvim-cmp'},         -- Required
    {'hrsh7th/cmp-nvim-lsp'},     -- Required
    {'hrsh7th/cmp-buffer'},       -- Optional
    {'hrsh7th/cmp-path'},         -- Optional
    {'saadparwaiz1/cmp_luasnip'}, -- Optional
    {'hrsh7th/cmp-nvim-lua'},     -- Optional

    -- Snippets
    {'L3MON4D3/LuaSnip'},             -- Required
    {'rafamadriz/friendly-snippets'} -- Optional
  }
  -- use {
    --   'nvim-tree/nvim-tree.lua',
    --   requires = {
      --     'nvim-tree/nvim-web-devicons', -- optional
      --   }
      -- }
      use {
        'numToStr/Comment.nvim',
        config = function()
          require('Comment').setup()
        end
      }
      use {
        "zbirenbaum/copilot.lua",
        config = function ()
          require("copilot").setup({
            suggestion = {
              auto_trigger = true,
              keymap = {
                accept = "<C-a>",
              },
            },
          })
        end
      }
      use({
        "Pocco81/auto-save.nvim",
        config = function()
          require("auto-save").setup {
            -- your config goes here
            -- or just leave it empty :)
          }
        end,
      })
      use { 'mhartington/formatter.nvim' }
      use { 'williamboman/mason.nvim' }
      use	{'neovim/nvim-lspconfig'}             -- Required
      use {
        "nvim-neo-tree/neo-tree.nvim",
        branch = "v2.x",
        requires = {
          "nvim-lua/plenary.nvim",
          "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
          "MunifTanjim/nui.nvim",
        }
      }
      use 'mfussenegger/nvim-dap-python'
      use 'mfussenegger/nvim-dap'
      -- use { 'sakhnik/nvim-gdb', run = '!./install.sh' 
      -- }
      use 'ThePrimeagen/harpoon'
      use 'ThePrimeagen/vim-be-good'
      -- use 'SirVer/ultisnips'
      -- use 'mlaursen/vim-react-snippets'
      use({
        "L3MON4D3/LuaSnip",
        -- follow latest release.
        tag = "v<CurrentMajor>.*",
        -- install jsregexp (optional!:).
        run = "make install_jsregexp",
        requires = {
          "rafamadriz/friendly-snippets",
          "luasnip_snippets.nvim",
        },
      })
      use {'romgrk/barbar.nvim', requires = 'nvim-web-devicons'}
      use {
        "windwp/nvim-autopairs",
        config = function() require("nvim-autopairs").setup {} end
      }
      use {'tpope/vim-fugitive'}
      use {'APZelos/blamer.nvim'}
    end)
