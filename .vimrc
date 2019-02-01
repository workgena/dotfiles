call plug#begin('~/.vim/plugged')

" Appearance
Plug 'rakr/vim-one'

" Tools
Plug '907th/vim-auto-save'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'ervandew/supertab'        " <Tab> behaves like <CTRL+n>
Plug 'junegunn/vim-easy-align'
Plug 'majutsushi/tagbar'
Plug 'thaerkh/vim-workspace'    " Vim session; auto-save(better then `vim-scripts/vim-auto-save`)
Plug 'tpope/vim-endwise'
Plug 'w0rp/ale'                 " async linter
Plug 'yuttie/comfortable-motion.vim'
Plug 'editorconfig/editorconfig-vim'
Plug 'andymass/vim-matchup'     " Fixes JSX <tag> matching

" Languages support
Plug 'elixir-editors/vim-elixir'
Plug 'gabrielelana/vim-markdown'
Plug 'janko-m/vim-test'
Plug 'sheerun/vim-polyglot'
Plug 'thoughtbot/vim-rspec'
Plug 'tpope/vim-rails'
Plug 'vim-ruby/vim-ruby'
Plug 'othree/html5.vim'

" JavaScript
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'elzr/vim-json'

call plug#end()

" nnoremap <Space> :CtrlPBuffer<CR>

autocmd FileType ruby,eruby let g:rubycomplete_buffer_loading = 1
autocmd FileType ruby,eruby let g:rubycomplete_classes_in_global = 1
autocmd FileType ruby,eruby let g:rubycomplete_rails = 1
let ruby_spellcheck_strings = 1
let ruby_space_errors = 1
let ruby_operators = 1
set completeopt+=longest

" Plugin ale
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

" Plugin vim-rspec
"map <Leader>s :call RunNearestSpec()<CR>
"map <Leader>l :call RunLastSpec()<CR>

" Plugin vim-test
nmap <Leader>s :TestNearest<CR>
nmap <Leader>l :TestLast<CR>
nmap <Leader>f :TestFile<CR>

" Plugin Tagbar
nmap <F8> :TagbarToggle<CR>




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
set hlsearch
set incsearch
set iskeyword+=-                " treat dash separated words as a word text-object

set guicursor=
set cursorline
set showmatch                   " highlight matching [{()}]
set noswapfile
set encoding=utf-8

"" Whitespace & Indentation
set nowrap                      " don't wrap lines
set shiftwidth=2                " number of spaces when shift indenting
set tabstop=2                   " number of visual spaces per tab
set softtabstop=2               " number of spaces in tab when editing
set expandtab                   " use spaces, not tabs (optional)
set list
set listchars=tab:>-

" Trim trailing spaces on Save
" autocmd BufLeave * :%s/\s\+$//e

autocmd FileType markdown set linebreak
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
" :set nowrap/wrap
nmap <F2> :set wrap!<CR>
" :Explore
nmap <F4> :Explore<CR>
" Spell-check set to F6:
map <F6> :setlocal spell!<CR>
" <Del> removes text wihtout putting it to register
map <Del> "_x
" Jump to tab 1/2/3
nmap <C-Down> gT
nmap <C-Up> gt
" Command :noh
nmap <Leader><Leader> :noh<CR>

" open TODO-file in current project
nmap <Space> :tabe TODO.md<CR>

"============================================================
" Color scheme
"============================================================
if has('termguicolors')
  set termguicolors " 24-bit terminal
endif

set bg=light
let g:one_allow_italics = 1
colo one
