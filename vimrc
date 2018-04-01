" Note: Skip initialization for vim-tiny or vim-small.
if 0 | endif
 
if &compatible
  set nocompatible               " Be iMproved
endif
 
" Required:
set runtimepath+=~/.vim/bundle/neobundle.vim/

" Required:
call neobundle#begin(expand('~/.vim/bundle/'))
 
" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'
 
" My Bundles here:
" Refer to |:NeoBundle-examples|.
" Note: You don't set neobundle setting in .gvimrc!
 
NeoBundle 'vim-airline/vim-airline'
NeoBundle 'altercation/vim-colors-solarized' 
NeoBundle 'lifepillar/vim-mucomplete'
NeoBundle 'othree/html5.vim'
NeoBundle 'davidhalter/jedi-vim'
NeoBundle 'gko/vim-coloresque'
NeoBundle 'hail2u/vim-css3-syntax'
NeoBundle 'Yggdroot/indentLine'
NeoBundle 'Raimondi/delimitMate'

call neobundle#end()
 
" Required:
filetype plugin indent on
 
" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck

" tab highlight
let g:indentLine_char = '┆'

" my settings
set nu
syntax enable
colorscheme solarized
set background=dark
set tabstop=4
set shiftwidth=4
set expandtab
let &t_SI = "\<Esc>[6 q"
let &t_SR = "\<Esc>[4 q"
let &t_EI = "\<Esc>[2 q"
set backspace=indent,eol,start
set cursorline

" autocomplete
set completeopt+=menuone
set completeopt+=noselect
set completeopt+=noinsert
set shortmess+=c   " Shut off completion messages
set belloff+=ctrlg " If Vim beeps during completion
set showmode shortmess-=c
set completeopt+=menuone,noinsert,noselect
let g:mucomplete#user_mappings = { 'sqla' : "\<c-c>a" }
let g:mucomplete#chains = { 'sql' : ['file', 'sqla', 'keyn'] }
let g:mucomplete#enable_auto_at_startup = 1

" python
set completeopt-=preview
set completeopt+=longest,menuone,noselect
let g:jedi#popup_on_dot = 0  " It may be 1 as well
let g:mucomplete#enable_auto_at_startup = 1

" css
augroup VimCSS3Syntax
  autocmd!

  autocmd FileType css setlocal iskeyword+=-
augroup END
