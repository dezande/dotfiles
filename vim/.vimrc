call plug#begin('~/.vim/plugged')
  Plug 'kien/ctrlp.vim'
  Plug 'vim-syntastic/syntastic'
  Plug 'tpope/vim-fugitive'
  Plug 'mattn/emmet-vim'
  Plug 'ludovicchabant/vim-gutentags'
  Plug 'skywind3000/gutentags_plus'
call plug#end()

" Use Vim settings, rather then Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible

set encoding=UTF-8
set number
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

" ================ General Config ====================

set number                      "Line numbers are good
set backspace=indent,eol,start  "Allow backspace in insert mode
set history=1000                "Store lots of :cmdline history
set showcmd                     "Show incomplete cmds down the bottom
set showmode                    "Show current mode down the bottom
set gcr=a:blinkon0              "Disable cursor blink
set visualbell                  "No sounds
set autoread                    "Reload files changed outside vim
set clipboard=unnamed

" turn on syntax highlighting
syntax on

" ================ Indentation ======================

set autoindent
set smartindent
set smarttab
set shiftwidth=2
set softtabstop=2
set tabstop=2
set expandtab

" ================ CtrlP ======================

let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

" ================ Gutentags ========================

let g:gutentags_modules = ['ctags', 'gtags_cscope'] " enable gtags module
let g:gutentags_project_root = ['.root'] " config project root markers.
let g:gutentags_cache_dir = expand('~/.cache/tags') " generate datebases in my cache directory, prevent gtags files polluting my project
let g:gutentags_define_advanced_commands = 1 " change focus to quickfix window after search (optional).
