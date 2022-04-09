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

  use 'flazz/vim-colorschemes'
  use 'folke/tokyonight.nvim'

  use 'justinmk/vim-sneak'
  use 'tpope/vim-fugitive'
  use 'tpope/vim-surround'

  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-cmdline'
  use 'hrsh7th/nvim-cmp'
  use 'hrsh7th/cmp-vsnip'
  use 'hrsh7th/vim-vsnip'

  use 'junegunn/goyo.vim'
  use 'junegunn/fzf'
  use 'junegunn/fzf.vim'

  use 'Vimjas/vim-python-pep8-indent'

  if packer_bootstrap then
    require('packer').sync()
  end
end)