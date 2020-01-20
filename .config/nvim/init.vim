call plug#begin('~/.vim/plugged')

" Appearance

Plug 'arzg/vim-substrata'
Plug 'AlessandroYorba/Alduin'
Plug 'Rigellute/rigel'
Plug 'Rigellute/shades-of-purple.vim'
Plug 'TroyFletcher/vim-colors-synthwave'
Plug 'aonemd/kuroi.vim'
Plug 'artanikin/vim-synthwave84'
Plug 'arzg/vim-corvine'
Plug 'challenger-deep-theme/vim', { 'as': 'challenger-deep' }
Plug 'danilo-augusto/vim-afterglow'
Plug 'flrnd/candid.vim'
Plug 'mhartington/oceanic-next'
Plug 'nightsense/cosmic_latte'
Plug 'rakr/vim-two-firewatch'
Plug 'sainnhe/edge'
Plug 'sainnhe/gruvbox-material'
Plug 'sainnhe/vim-color-forest-night'
Plug 'whatyouhide/vim-gotham'

Plug 'itchyny/lightline.vim'
Plug 'sainnhe/artify.vim'

" Tools

Plug '907th/vim-auto-save'
Plug 'ctrlpvim/ctrlp.vim'
" Plug 'ervandew/supertab'        " <Tab> behaves like <CTRL+n>
Plug 'junegunn/vim-easy-align'
Plug 'majutsushi/tagbar'
Plug 'thaerkh/vim-workspace'    " Vim session; auto-save(better then `vim-scripts/vim-auto-save`)
Plug 'Raimondi/delimitMate'     " auto-completion for quotes, parens, brackets, etc. aka auto-pairs
Plug 'tpope/vim-endwise'
Plug 'w0rp/ale'                 " async linter
Plug 'yuttie/comfortable-motion.vim'
Plug 'editorconfig/editorconfig-vim'
Plug 'junegunn/goyo.vim'
Plug 'janko-m/vim-test'

" Languages support

Plug 'elixir-editors/vim-elixir'
" Plug 'gabrielelana/vim-markdown'

" Ruby language support

Plug 'vim-ruby/vim-ruby'
Plug 'tpope/vim-rails'

" JavaScript

" Plug 'pangloss/vim-javascript'
" Plug 'othree/yajs.vim' " Yet Another JavaScript Syntax, is not good on performance
" Plug 'mxw/vim-jsx'
Plug 'neoclide/vim-jsx-improve'
Plug 'elzr/vim-json'
Plug 'prettier/vim-prettier', { 'do': 'npm install' }

" HTML5 CSS3

Plug 'othree/html5.vim'
Plug 'mattn/emmet-vim'

" Autocompletion, Intellisense

Plug 'neoclide/coc.nvim', {'tag': '*', 'do': { -> coc#util#install()}}
Plug 'xolox/vim-misc'
Plug 'xolox/vim-easytags'
Plug 'ipod825/vim-tagjump'     " open a new tab when you jump with tags

call plug#end()

" Plugin vim-easytags
let g:easytags_async=1 " enable asynchronous tags file updates in background, fixes 'ruler disappearing'

autocmd FileType ruby,eruby let g:rubycomplete_buffer_loading = 1
autocmd FileType ruby,eruby let g:rubycomplete_classes_in_global = 1
autocmd FileType ruby,eruby let g:rubycomplete_rails = 1
let ruby_spellcheck_strings = 1
let ruby_space_errors = 1
let ruby_operators = 1
set completeopt+=longest

" Plugin ale
let g:ale_sign_column_always = 1
let g:ale_set_highlights = 0    " disabling highlighting
let g:ale_linters = { 'javascript': ['eslint'] }
 
" Plugin vim-easy-align
" Start interactive EasyAlign in visual mode (e.g. `vipga`)
xmap ga <Plug>(EasyAlign)

" Plugin vim-workspace
" run `ToggleWorkspace` command to enable workspace in current directory
let g:workspace_autosave = 0

" Plugin vim-auto-save
let g:auto_save = 1             " enable AutoSave on Vim startup
let g:auto_save_silent = 1      " do not display the auto-save notification
let g:auto_save_events = ["InsertLeave", "TextChanged"]

" Plugin vim-test
nmap <Leader>s :TestNearest<CR>
nmap <Leader>l :TestLast<CR>
nmap <Leader>f :TestFile<CR>

" Plugin Tagbar
nmap <F8> :TagbarToggle<CR>

" Plugin emmet
let g:user_emmet_install_global = 1
" autocmd FileType erb.html,html,css EmmetInstall

"============================================================
" File navigation
"============================================================
set wildmenu
" set wildmode=list:longest,full  " hit `Tab` twice in command mode
set path=**
set wildignore+=*/tmp/*,*/vendor/*,*/node_modules/*,*/.git/*,*/.idea/*
set viminfo='5                  " browse oldfiles, display N-last opened
let g:netrw_list_hide= '^\.\w'  " hide '.*' entytly in file-navigator

"============================================================
" Misc
"============================================================
syntax enable
set nocompatible                " choose no compatibility with legacy vi
set cursorline
set noswapfile
set encoding=utf-8
filetype plugin indent on       " load file type plugins + indentation
set hlsearch
set incsearch
set iskeyword+=-                " treat dash separated words as a word text-object
set nowrapscan

set title
set titlestring=Vim\ -\ %t
" set titlestring=Vim:\ %f\ %h%r%m
" set ttimeoutlen=10

set noswapfile
set encoding=utf-8

"" Whitespace & Indentation
set nowrap                      " don't wrap lines
set autoindent
set smartindent
set shiftround
set shiftwidth=2                " number of spaces when shift indenting
set tabstop=2                   " number of visual spaces per tab
set softtabstop=2               " number of spaces in tab when editing
set expandtab                   " use spaces, not tabs (optional)
set list
set listchars=tab:>-

"============================================================
" Spell checking
"============================================================

autocmd FileType gitcommit set spell
" hi SpellBad ctermfg=015 ctermbg=000 cterm=none guifg=#00FF00 guibg=#FF0000 gui=none
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
nmap <Leader>bb Obinding.pry<Esc>
" Quit with not closing tabs
nmap <Leader>q :quitall<CR>
" :set nowrap/wrap
nmap <F2> :set wrap!<CR>
" :Explore
nmap <F4> :Explore<CR>
" Spell-check set to F6:
map <F6> :setlocal spell!<CR>
" <Del> removes text wihtout putting it to register
map <Del> "_x
" Jump to between tabs
nmap <C-Down> gT
nmap <C-Up> gt
" Command :noh
nmap <Leader><Leader> :nohlsearch<CR>
nmap <Leader>] :

" open TODO-file in current project
nmap <Space> :tabe TODO.md<CR>

" :bw - buffer wipe
nmap <Leader>x :bw<CR>

"============================================================
" Color scheme
"============================================================
source ~/.config/nvim/color.vim
