if empty(glob("~/.vim/autoload/plug.vim"))
  execute '!mkdir -p ~/.vim/plugged'
  execute '!mkdir -p ~/.vim/autoload'
  execute '!curl -fLo ~/.vim/autoload/plug.vim https://raw.github.com/junegunn/vim-plug/master/plug.vim'
endif

call plug#begin('~/.vim/plugged')

  " Navigation
  Plug 'ctrlpvim/ctrlp.vim'

  " Filetype specific plugins
  Plug 'mattn/emmet-vim'
  Plug 'elixir-editors/vim-elixir'

  " Theming
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'

  " Tag management
  Plug 'ludovicchabant/vim-gutentags'
  Plug 'skywind3000/gutentags_plus'

  " Elixir
  Plug 'elixir-editors/vim-elixir'

  " Git
  Plug 'tpope/vim-fugitive'

call plug#end()

set noerrorbells
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab

set relativenumber

set background=dark

" gutentags_plus
let g:gutentags_modules = ['ctags', 'gtags_cscope']
let g:gutentags_project_root = ['.root']
let g:gutentags_cache_dir = expand('~/.cache/tags')
let g:gutentags_plus_switch = 1

" CtrlP
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

" Display whitespace characters
set list
set listchars=tab:>─,eol:¬,trail:\ ,nbsp:¤

set fillchars=vert:│

