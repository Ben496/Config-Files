" options required by vundle {{{1
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" init plugins {{{2
Plugin 'unblevable/quick-scope'
Plugin 'rust-lang/rust.vim'
Plugin 'tpope/vim-sleuth'
Plugin 'airblade/vim-gitgutter'
Plugin 'tpope/vim-surround'
" }}}

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" }}}

" My options {{{1
" inoremap jk <ESC>
set smartindent
set number
set relativenumber
set hid
syntax on
colorscheme default
set cursorline
set colorcolumn=80
highlight colorcolumn ctermbg=black
highlight cursorline cterm=NONE ctermbg=black "ctermfg=darkred
let g:gitgutter_enabled = 1
" }}}

" Custom Keybinds {{{1

" custom patterns {{{2
inoremap "" ""<left>
inoremap '' ''<left>
inoremap ( ()<left>
inoremap () ()
inoremap (; ();<left><left>
" complete function definition in rust
inoremap ({ () {<cr>}<esc>k$ba
" complete function definition in rust with return type
inoremap (<tab> () -> {<cr>}<esc>k$2ba
inoremap [ []<left>
inoremap { {}<left>
inoremap {<cr> {<cr>}<esc>O
inoremap {;<cr> {<cr>};<esc>O
inoremap <> <><left>
" }}}

" navigate windows from any mode {{{2
tnoremap <A-h> <C-\><C-N><C-w>h
tnoremap <A-j> <C-\><C-N><C-w>j
tnoremap <A-k> <C-\><C-N><C-w>k
tnoremap <A-l> <C-\><C-N><C-w>l
inoremap <A-h> <C-\><C-N><C-w>h
inoremap <A-j> <C-\><C-N><C-w>j
inoremap <A-k> <C-\><C-N><C-w>k
inoremap <A-l> <C-\><C-N><C-w>l
nnoremap <A-h> <C-w>h
nnoremap <A-j> <C-w>j
nnoremap <A-k> <C-w>k
nnoremap <A-l> <C-w>l
" }}}

" shortcut to escape terminal mode easier
tnoremap <C-n> <C-\><C-n>

" hot editing of this file
nnoremap <space>ev :split ~/.vimrc<cr>
nnoremap <space>sv :source %<cr>

" misc
nnoremap <C-q> :set textwidth=80<cr>
nnoremap <C-s> :set textwidth=0<cr>
" }}}

" Vimscript folding {{{
augroup filetype_vim
	autocmd!
	autocmd FileType vim setlocal foldmethod=marker
augroup END
" }}}
