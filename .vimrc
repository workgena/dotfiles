"============================================================
" File navigation
"============================================================
set wildmenu
set wildmode=list:longest,full  " hit `Tab` twice in command mode
set path=**
set viminfo='5                  " browse oldfiles, display N-last opened
let g:netrw_list_hide= '^\.\w'  " hide '.*' entytly in file-navigator

"============================================================
" Misc
"============================================================
syntax on
set nocompatible                " choose no compatibility with legacy vi
set guicursor=
set cursorline
set showmatch                   " highlight matching [{()}]
set noswapfile
set encoding=utf-8
filetype plugin indent on       " load file type plugins + indentation

"" Whitespace & Indentation
set nowrap                      " don't wrap lines
set shiftwidth=2                " number of spaces when shift indenting
set tabstop=2                   " number of visual spaces per tab
set softtabstop=2               " number of spaces in tab when editing
set expandtab                   " use spaces, not tabs (optional)
set list
set listchars=tab:>-

autocmd FileType markdown set wrap linebreak
autocmd FileType gitcommit set spell

" Spell check highlight
highlight SpellBad ctermfg=009 ctermbg=011 guifg=#FC7675 guibg=#FED7D7
set spellfile=$HOME/.vim/spell/en.utf-8.add

"============================================================
" Status line
"============================================================
set laststatus=0                " never show file name in status(save edit workspace area)

" autofixes
iab bb byebug
iab cl console.log();
ia edn end

"============================================================
" Mappings
"============================================================
" type 'byebug' before current line:
nmap <Leader>bb Obyebug<Esc>
" Quit with not closing tabs
nmap <Leader>q :quitall<CR>
" Space == Enter key in NORMAL mode:
map <Space> <CR>
" :Explore
nmap <F4> :Ex<CR>
" Spell-check set to F6:
map <F6> :setlocal spell!<CR>
" <Del> key work like 'x' without putting removed text into register
map <Del> "_x
" Jump to next/prev tab's
nmap <C-Down> gT
nmap <C-Up> gt
" Command :noh
nmap <Leader><Leader> :noh<CR>
