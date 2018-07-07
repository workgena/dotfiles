"============================================================
" File navigation
"============================================================
set wildmenu
set wildmode=list:longest,full  " hit `Tab` twice in command mode
set path=**
set viminfo='8                  " browse oldfiles, display N-last opened

"============================================================
" Misc
"============================================================
syntax on
set nocompatible                " choose no compatibility with legacy vi
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

" Trim trailing spaces on Save
autocmd BufWritePre * :%s/\s\+$//e
autocmd FileType markdown set wrap linebreak

" Spell check highlight
highlight SpellBad ctermfg=009 ctermbg=011 guifg=#FC7675 guibg=#FED7D7
set spellfile=$HOME/.vim/spell/en.utf-8.add

"============================================================
" Status line
"============================================================
set ruler                       " Show the line and column number of the cursor position
set laststatus=0                " never show file name in status - save edit workspace area

"============================================================
" Mappings
"============================================================
map <Leader>bb Obyebug<Esc>     " type 'byebug' before current line
