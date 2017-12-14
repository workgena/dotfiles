"============================================================
" Plugins
"============================================================

" Plugins will be downloaded under the specified directory.
call plug#begin('~/.vim/plugged')

" Declare the list of plugins.
Plug 'ctrlpvim/ctrlp.vim'

" List ends here. Plugins become visible to Vim after this call.
call plug#end()


"============================================================
" Settings
"============================================================
syntax on
set nocompatible                " choose no compatibility with legacy vi
set clipboard=unnamed           " use os clipboard
set encoding=utf-8
set ruler
set showcmd                     " display incomplete commands
filetype plugin indent on       " load file type plugins + indentation

"" Whitespace & Indentation
set smartindent
set nowrap                      " don't wrap lines
set shiftwidth=2                " number of spaces when shift indenting
set tabstop=2                   " number of visual spaces per tab
set softtabstop=2               " number of spaces in tab when editing
set expandtab                   " use spaces, not tabs (optional)

"" Searching
set hlsearch                    " highlight matches
set incsearch                   " incremental searching

"" File naviagation
set wildmenu
set path=**
set viminfo='10
set stl+=%{expand('%:~:.')}

" write the current buffer automatically on each <Esc> in INSERT mode.
" inoremap <Esc> <Esc>:w<CR>    " this will broke arraw-keys in INSERT mode

" Show @@@ in the last line if it is truncated.
set display=truncate
set scrolloff=3
