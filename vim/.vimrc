call plug#begin('~/.vim/plugged')
  Plug 'kien/ctrlp.vim'
  Plug 'vim-syntastic/syntastic'
  Plug 'tpope/vim-fugitive'
  Plug 'mattn/emmet-vim'
  Plug 'ludovicchabant/vim-gutentags'
  Plug 'skywind3000/gutentags_plus'
call plug#end()

set encoding=UTF-8

"" ctrlp
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*



"" Gutentags
" enable gtags module
let g:gutentags_modules = ['ctags', 'gtags_cscope']

" config project root markers.
let g:gutentags_project_root = ['.root']

" generate datebases in my cache directory, prevent gtags files polluting my project
let g:gutentags_cache_dir = expand('~/.cache/tags')

" change focus to quickfix window after search (optional).
let g:gutentags_define_advanced_commands = 1
