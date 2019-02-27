" vim: noet ci pi sts=0 sw=4 ts=4

if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" ----------------------------------------------
" Load plugins
" ----------------------------------------------
call plug#begin('~/.vim/plugged')
Plug 'itchyny/lightline.vim'
Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'
Plug 'terryma/vim-multiple-cursors'
Plug 'tpope/vim-eunuch'
Plug 'tpope/vim-surround'
Plug 'scrooloose/nerdtree'
Plug 'mattn/emmet-vim'
Plug 'w0rp/ale'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'
Plug 'scrooloose/syntastic'
Plug 'scrooloose/nerdcommenter'
call plug#end()

" ----------------------------------------------
" General
" ----------------------------------------------
syntax on
filetype plugin indent on

set history=10000

let mapleader = ","

" ----------------------------------------------
" VIM user interface
" ----------------------------------------------
set so=7

set ruler
set hid

set backspace=eol,start,indent
set whichwrap+=<,>,h,l

set ignorecase
set smartcase
set hlsearch
set incsearch
set lazyredraw
set magic
set showmatch
set mat=2
set mouse=a
set number

" No annoying sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500

set foldcolumn=1
set laststatus=2
set noshowmode

set noexpandtab
set copyindent
set preserveindent
set softtabstop=0
set shiftwidth=4
set tabstop=4

" ----------------------------------------------
" Colours and Fonts
" ----------------------------------------------
syntax enable
set background=dark
colorscheme flattened_dark

" ----------------------------------------------
" Turn on persistent undo
" ----------------------------------------------
try
    set undodir=~/.vim/undo
    set undofile
catch
endtry

" ----------------------------------------------
" Plugin Configuration
" ----------------------------------------------
" lightline
let g:lightline = { 'colorscheme': 'solarized' }

" ----------------------------------------------
" Splits
" ----------------------------------------------
" More natural split navigation
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

set splitbelow
set splitright

" ----------------------------------------------
" Keymaps
" ----------------------------------------------
noremap <M-r> :source ~/.vimrc<CR>

nnoremap <silent> <M-F4> :BufExplorer<CR>
nnoremap <silent> <F4> :bn<CR>
nnoremap <silent> <S-F4> :bp<CR>

" ----------------------------------------------
" file types
" ----------------------------------------------
autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab indentkeys-=<:>

" ----------------------------------------------
" Auto reload .vimrc
" ----------------------------------------------
if has ('autocmd') " Remain compatible with earlier versions
 augroup vimrc     " Source vim configuration upon save
    autocmd! BufWritePost $MYVIMRC source % | echom "Reloaded " . $MYVIMRC | redraw
    autocmd! BufWritePost $MYGVIMRC if has('gui_running') | so % | echom "Reloaded " . $MYGVIMRC | endif | redraw
  augroup END
endif " has autocmd

