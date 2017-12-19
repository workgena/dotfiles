"============================================================
" Plugins
"
" vim-plug
" Minimalist Vim Plugin Manager
" https://github.com/junegunn/vim-plug
"============================================================
call plug#begin('~/.local/share/nvim/plugged')

Plug 'ctrlpvim/ctrlp.vim'
Plug 'vim-airline/vim-airline'

" Themes
"Plug 'fcpg/vim-farout'
"Plug 'fcpg/vim-fahrenheit'
"Plug 'fcpg/vim-orbital'
"Plug 'chriskempson/base16-vim'  " collection of colors
Plug 'flazz/vim-colorschemes'

" Initialize plugin system
call plug#end()


"============================================================
" Settings
"============================================================
" colors fix for custom colors
if (has("termguicolors"))
  set termguicolors
endif


" Color & Theme
syntax enable

colorscheme gruvbox
set bg=dark

"" Misc
set nocompatible                " choose no compatibility with legacy vi
set encoding=utf-8
set showcmd                     " display incomplete commands
filetype plugin indent on       " load file type plugins + indentation

"" Whitespace & Indentation
set nowrap                      " don't wrap lines
set shiftwidth=2                " number of spaces when shift indenting
set tabstop=2                   " number of visual spaces per tab
set softtabstop=2               " number of spaces in tab when editing
set expandtab                   " use spaces, not tabs (optional)

"" Searching
set incsearch                   " incremental searching

"" File navigation
set wildmenu
set path=**
set viminfo='10                 " browse oldfiles, display N-last opened
set stl+=%{expand('%:~:.')}


"============================================================
" Misc
"============================================================

" Highlight trailing whitespace
highlight ExtraWhitespace ctermbg=red guibg=red
autocmd ColorScheme * highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/

" Spell check highlight
highlight SpellBad ctermfg=009 ctermbg=011 guifg=#FC7675 guibg=#FED7D7
set spellfile=$HOME/.vim/spell/en.utf-8.add
" vim-airline
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_nr_show = 1 " https://github.com/bling/vim-bufferline/issues/20


"============================================================
" Key mappings
"============================================================
"https://stackoverflow.com/a/1416584
" You can map using :mksession and :source to a set of keys for easy saving and restoring.
" uses F2 and F3
map <F2> :mksession! ~/vim_session <cr>  " Quick write session with F2
map <F3> :source ~/vim_session <cr>      " And load session with F3

:map <Leader>bb Obyebug<Esc>    " Insert 'byebug' before current line
