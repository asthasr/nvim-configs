local fn = vim.fn

local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'

local packer_bootstrap = nil

if fn.empty(fn.glob(install_path)) > 0 then
  packer_bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.vim', install_path})
end

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'

  use 'neovim/nvim-lspconfig'
  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
  use {
    'folke/trouble.nvim',
    requires = 'kyazdani42/nvim-web-devicons',
    config = function()
      require('trouble').setup()
    end
  }

  -- use 'flazz/vim-colorschemes'
  use 'folke/tokyonight.nvim'
  use 'foxbunny/vim-amber'
  --use { 'phha/zenburn.nvim', config = function() require('zenburn').setup() end }

  use 'justinmk/vim-sneak'
  use 'tpope/vim-fugitive'
  use 'tpope/vim-surround'

  use 'tpope/vim-sexp-mappings-for-regular-people'
  use 'guns/vim-sexp'

  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  -- use 'hrsh7th/cmp-cmdline'
  use 'hrsh7th/nvim-cmp'

  use 'L3MON4D3/LuaSnip'
  use 'saadparwaiz1/cmp_luasnip'

  use 'junegunn/limelight.vim'
  use 'junegunn/goyo.vim'
  use 'preservim/vim-pencil'

  use 'junegunn/fzf'
  use 'junegunn/fzf.vim'

  use 'Vimjas/vim-python-pep8-indent'

  use 'BurntSushi/ripgrep'
  use 'nvim-lua/plenary.nvim'
  use { 'nvim-telescope/telescope.nvim', tag = '0.1.5' }
  use 'nvim-telescope/telescope-ui-select.nvim'

  if packer_bootstrap then
    require('packer').sync()
  end
end)
