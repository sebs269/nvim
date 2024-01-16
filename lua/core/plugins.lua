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

  -- VSCode like icons
  use 'nvim-tree/nvim-web-devicons'

  -- Color Schemes
  use 'Shatur/neovim-ayu'
  use 'Mofiqul/dracula.nvim'
  use 'rebelot/kanagawa.nvim'
  use { 'catppuccin/nvim', as = 'catppuccin' }
  use 'EdenEast/nightfox.nvim'
  use 'folke/tokyonight.nvim'

  -- Status Line
  use 'nvim-lualine/lualine.nvim'
  -- use 'feline-nvim/feline.nvim'

  -- Syntax Highlighting?
  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate'
  }

  -- Fuzzy Finder
  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.4',
    requires = { {'nvim-lua/plenary.nvim'} }
  }

  -- Language Server Manager
  use {
    'williamboman/mason.nvim',
    'williamboman/mason-lspconfig.nvim',
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
