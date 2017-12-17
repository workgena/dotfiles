"============================================================
" Plugins
"
" vim-plug
" Minimalist Vim Plugin Manager
" https://github.com/junegunn/vim-plug
"============================================================
call plug#begin('~/.vim/plugged')

Plug 'ctrlpvim/ctrlp.vim'
Plug 'vim-airline/vim-airline'

" Themes
"Plug 'jacoborus/tender.vim'
"Plug 'jpo/vim-railscasts-theme'
"Plug 'vim-scripts/turbo.vim'
"Plug 'rhysd/vim-color-spring-night'
"Plug 'cocopon/iceberg.vim'
"Plug 'fcpg/vim-farout'
"Plug 'fcpg/vim-fahrenheit'
"Plug 'fcpg/vim-orbital'
"Plug 'NLKNguyen/papercolor-theme'
"Plug 'dracula/vim'
"Plug 'sjl/badwolf'
"Plug 'chriskempson/base16-vim'  " many good colors
Plug 'flazz/vim-colorschemes'   " many many colors

" Initialize plugin system
call plug#end()


"============================================================
" Settings
"============================================================
" colr fix for custom colors
if (has("termguicolors"))
  set termguicolors
endif


" Color & Theme
syntax enable

"colorscheme corporation
"set bg=dark
colorscheme jelleybeans         " looks like RailsCasts, event better
"colorscheme oceanblack
"colorscheme transparent
"colorscheme rootwater
"colorscheme moria              " marshmallow colors, good with dark and light backgdound
"colorscheme railscasts         " RailsCasts like colors
"colorscheme neon               " looks good, but it is not neon
"colorscheme no_quarter
"colorscheme molokai            " calm colors, pleasant marshmallow
"colorscheme matrix             " 'The Matrix' movie
"colorscheme lightcolors        " paper style
"colorscheme laederon           " not bad, with green background
"colorscheme gor                " not bad, with green background
"colorscheme golden             " testing now
"colorscheme freya              " calm colors
"colorscheme eclipse            " Ecliple IDE colors
"colorscheme dw_green           " deep green and black
"colorscheme desertEx           " nice green and yellow
"colorscheme darker-born        " nice colors
"colorscheme cloudy             " Turbo Paclas, calm colors
"colorscheme chlordane          " only green shades
"colorscheme candy              " dark pleasend theme
"colorscheme breeze             " reminds of Windows 95 green background
"colorscheme borlabd            " vert blue...
"colorscheme black_angus        " green and gray colors
"colorscheme bensday            " nice purpul and yellow colors
"color base16-classic-dark      " good dark with green colors
"color dracula
"colorscheme badwolf            " high contrast theme
"colorscheme PaperColor         " nice when background=light
"colorscheme tender             " good, nice and clear
"colorscheme turbo
"colorscheme spring-night       " good, nice and clear
"colorscheme iceberg
"colorscheme farout
"colorscheme fahrenheit         " very dark, unclear
"colorscheme orbital

"" Misc
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

"" File navigation
set wildmenu
set path=**
set viminfo='10
set stl+=%{expand('%:~:.')}


"============================================================
" Misc
"============================================================

" Highlight trailing whitespace
highlight ExtraWhitespace ctermbg=red guibg=red
autocmd ColorScheme * highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/

" vim-airline
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_nr_show = 1 " https://github.com/bling/vim-bufferline/issues/20

set scrolloff=3                 " scrolls the text so that (when possible) there are always at least five lines visible above the curso


"============================================================
" Use persistent history.
"============================================================
if !isdirectory("/tmp/.vim-undo-dir")
  call mkdir("/tmp/.vim-undo-dir", "", 0700)
endif
set undodir=/tmp/.vim-undo-dir
set undofile


"============================================================
" Key mappings
"============================================================
"https://stackoverflow.com/a/1416584
" You can map using :mksession and :source to a set of keys for easy saving and restoring.
" uses F2 and F3
map <F2> :mksession! ~/vim_session <cr>  " Quick write session with F2
map <F3> :source ~/vim_session <cr>      " And load session with F3

