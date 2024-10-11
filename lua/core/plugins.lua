local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'

  -- **************************
  -- My plugins here
  -- **************************

  -- File Explorer
  use 'nvim-tree/nvim-tree.lua'

  -- Pretty icons
  use 'nvim-tree/nvim-web-devicons'

  -- Color Schemes
  use 'EdenEast/nightfox.nvim'
  use 'folke/tokyonight.nvim'
  use { 'catppuccin/nvim', as = 'catppuccin' }
  use 'rebelot/kanagawa.nvim'
  use 'rmehri01/onenord.nvim'
  use 'Shatur/neovim-ayu'
  use 'ellisonleao/gruvbox.nvim'
  --[[
  use 'Mofiqul/dracula.nvim'
  use 'bluz71/vim-nightfly-colors'
  use 'challenger-deep-theme/vim'
  use 'olimorris/onedarkpro.nvim'
  use 'navarasu/onedark.nvim'
  use 'rose-pine/neovim'
  use 'jacoborus/tender.vim'
  use 'tomasr/molokai'
  ]]

  -- Greeter
  use 'goolord/alpha-nvim'

  -- Status Line
  use 'nvim-lualine/lualine.nvim'

  -- Git
  --use 'tpope/vim-fugitive'

  -- Syntax Highlighting?
  --[[
  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate'
  }
  ]]

  -- Fuzzy Finder
  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.8',
    requires = {
      {'nvim-lua/plenary.nvim'},
      {'nvim-telescope/telescope-live-grep-args.nvim'},
      {'aaronhallaert/advanced-git-search.nvim'},
    }
  }

  -- Language Server Manager
  use {
    'williamboman/mason.nvim',
    'williamboman/mason-lspconfig.nvim',
  }

  use {
    'neovim/nvim-lspconfig',
  }

  -- **************************
  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  -- **************************
  if packer_bootstrap then
    require('packer').sync()
  end
end)
