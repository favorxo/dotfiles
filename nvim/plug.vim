if has("nvim")
  let g:plug_home = stdpath('data') . '/plugged'
endif


call plug#begin()

" Git/Github  
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'

if has("nvim")
  " File explorer
  Plug 'hoob3rt/lualine.nvim'
  Plug 'akinsho/bufferline.nvim', { 'tag': 'v2.*' }
  Plug 'kyazdani42/nvim-tree.lua'
  
  " LSP stuff
  Plug 'neovim/nvim-lspconfig'
  Plug 'williamboman/nvim-lsp-installer'
  Plug 'glepnir/lspsaga.nvim', { 'branch': 'main' }
  Plug 'folke/lsp-colors.nvim'
  
  " Completion stuff
  Plug 'L3MON4D3/LuaSnip'
  Plug 'hrsh7th/cmp-nvim-lsp'
  Plug 'hrsh7th/cmp-buffer'
  Plug 'hrsh7th/nvim-cmp'
  Plug 'onsails/lspkind-nvim'
  
  " Parsing langs, :TSInstall
  Plug 'nvim-treesitter/nvim-treesitter', { 'do': ':TSUpdate' }

  " Telescope (file search)
  Plug 'nvim-lua/popup.nvim'
  Plug 'nvim-lua/plenary.nvim'
  Plug 'nvim-telescope/telescope.nvim'
  
  " Quality of life 
  Plug 'kyazdani42/nvim-web-devicons'
  Plug 'windwp/nvim-autopairs'
  Plug 'windwp/nvim-ts-autotag'
  Plug 'Pocco81/AutoSave.nvim'
  
  " Themes
  Plug 'ayu-theme/ayu-vim'

endif

call plug#end()

