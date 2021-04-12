" -----  Vim Settings -----

set number

se tabstop=4

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

call plug#begin('~/.vim/plugged')

" Load plugins

" ayu color scheme https://github.com/ayu-theme/ayu-vim
Plug 'ayu-theme/ayu-vim'

call plug#end()

" Set the color scheme up
set termguicolors 		" enable true colors
let ayucolor="mirage"   	" for dark version of theme
colorscheme ayu
