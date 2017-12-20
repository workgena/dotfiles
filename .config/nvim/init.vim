"============================================================
" Plugins
"
" vim-plug
" Minimalist Vim Plugin Manager
" https://github.com/junegunn/vim-plug
"============================================================
call plug#begin('~/.local/share/nvim/plugged')

Plug 'ctrlpvim/ctrlp.vim'
Plug 'flazz/vim-colorschemes'

call plug#end()                 " Initialize plugin system


"============================================================
" Color scheme
"============================================================
" colors fix for custom colors
if has('termguicolors')
  set termguicolors " 24-bit terminal
endif

set bg=dark
colorscheme gruvbox


"============================================================
" File navigation
"============================================================
set wildmenu
set path=**
set viminfo='10                 " browse oldfiles, display N-last opened


"============================================================
" Misc
"============================================================
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

" Highlight trailing whitespace
highlight ExtraWhitespace ctermbg=red guibg=red
autocmd ColorScheme * highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/

" Spell check highlight
highlight SpellBad ctermfg=009 ctermbg=011 guifg=#FC7675 guibg=#FED7D7
set spellfile=$HOME/.vim/spell/en.utf-8.add


"============================================================
" Status line
"============================================================
set ruler
set laststatus=0
"let g:airline#extensions#tabline#fnamemod = ':t' " Just show the filename (no path) in the tab
"let g:airline#extensions#tabline#enabled = 1
"let g:airline#extensions#tabline#buffer_nr_show = 1 " https://github.com/bling/vim-bufferline/issues/20


"============================================================
" Mappings
"============================================================
"https://stackoverflow.com/a/1416584
" You can map using :mksession and :source to a set of keys for easy saving and restoring.
" uses F2 and F3
map <F2> :mksession! ~/vim_session <cr>  " Quick write session with F2
map <F3> :source ~/vim_session <cr>      " And load session with F3
map <C-Left> <Esc>:bprev<CR>    " previous buffer
map <C-Right> <Esc>:bnext<CR>   " next buffer
map <Leader>bb Obyebug<Esc>     " type 'byebug' before current line

