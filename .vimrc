"============================================================
" Plugins
"============================================================
call plug#begin('~/.vim/plugged')

Plug 'ctrlpvim/ctrlp.vim'
Plug 'vim-airline/vim-airline'
Plug 'jacoborus/tender.vim'

call plug#end()


"============================================================
" Settings
"============================================================

" Color & Theme
if (has("termguicolors"))
  set termguicolors
endif

" Theme
syntax enable
colorscheme tender

" Misc

set nocompatible                " choose no compatibility with legacy vi
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


"============================================================
" Misc
"============================================================
highlight ExtraWhitespace ctermbg=red guibg=red
autocmd ColorScheme * highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/


" vim-airline
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_nr_show = 1 " https://github.com/bling/vim-bufferline/issues/20
"let g:airline_theme='luna'
"let g:airline_powerline_fonts = 1

" write the current buffer automatically on each <Esc> in INSERT mode.
" inoremap <Esc> <Esc>:w<CR>    " this will broke arraw-keys in INSERT mode

" Show @@@ in the last line if it is truncated.
set display=truncate
set scrolloff=3
