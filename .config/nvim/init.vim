" -----  Vim Settings -----

set number

set tabstop=4
set shiftwidth=4
set softtabstop=4
set showtabline=2

" Makes the background transparent
autocmd ColorScheme * hi Normal guibg=NONE ctermbg=NONE
autocmd ColorScheme * hi EndOfBuffer guibg=NONE ctermbg=NONE

" -----	 Plugin Stuff  -----
"
" VIM-plug Plugin mangager segment https://github.com/junegunn/vim-plug

let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/plugged')

" Load plugins

" ayu color scheme https://github.com/ayu-theme/ayu-vim
Plug 'ayu-theme/ayu-vim'
Plug 'jiangmiao/auto-pairs'

Plug 'lewis6991/impatient.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-lua/popup.nvim'
Plug 'nathom/filetype.nvim'
Plug 'antoinemadec/FixCursorHold.nvim'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'akinsho/bufferline.nvim'
Plug 'moll/vim-bbye'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'p00f/nvim-ts-rainbow'
Plug 'windwp/nvim-ts-autotag'
" this one needs checking
Plug 'JoosepAlviste/nvim-ts-context-commentstring'

Plug 'L3MON4D3/LuaSnip'
Plug 'rafamadriz/friendly-snippets'
Plug 'hrsh7th/nvim-cmp'
Plug 'saadparwaiz1/cmp_luasnip'
Plug 'hrsh7th/cmp-path'
Plug 'williamboman/nvim-lsp-installer'
Plug 'neovim/nvim-lspconfig'

" do research on these ones
Plug 'kyazdani42/nvim-tree.lua'
Plug 'nvim-lualine/lualine.nvim'
"

" This Plugin should be loaded last
Plug 'ryanoasis/vim-devicons'

call plug#end()

set encoding=UTF-8

" Set the color scheme up
set termguicolors 		" enable true colors
let ayucolor="mirage"   	" for dark version of theme
colorscheme ayu

" Plugin's config
let g:cursorhold_updatetime = 100


lua <<EOF
dofile 'cmp.lua'
dofile 'treesitter.lua'
dofile 'lsp.lua'
EOF
