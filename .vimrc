" options required by vundle
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" init plugins
"Plugin 'Valloric/YouCompleteMe'
Plugin 'scrooloose/nerdtree'
Plugin 'idanarye/vim-vebugger'
Plugin 'unblevable/quick-scope'
Plugin 'rust-lang/rust.vim'
Plugin 'tpope/vim-sleuth'
Plugin 'airblade/vim-gitgutter'

" Python2 path
let g:ycm_path_to_python_interpreter = '/usr/bin/python2'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" Nerdtree options
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" My options
" inoremap jk <ESC>
set smartindent
set number
set relativenumber
syntax on
colorscheme default
set cursorline
set colorcolumn=80
highlight colorcolumn ctermbg=black
highlight cursorline cterm=NONE ctermbg=black ctermfg=darkred
let NERDTreeShowHidden=1 " Show dotfiles in NERDTree
let g:gitgutter_enabled = 1

" Custom Keybinds
map <C-n> :NERDTreeToggle<CR>
