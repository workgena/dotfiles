call plug#begin('~/.local/share/nvim/plugged')

Plug 'junegunn/vim-easy-align'
Plug 'flazz/vim-colorschemes'
Plug 'ervandew/supertab'        " <Tab> behaves like <CTRL+n>
Plug 'thaerkh/vim-workspace'    " Vim session; auto-save(better then `vim-scripts/vim-auto-save`)
Plug 'tpope/vim-endwise'
Plug 'Raimondi/delimitMate'
Plug 'zhou13/vim-easyescape'
Plug '907th/vim-auto-save'
Plug 'thoughtbot/vim-rspec'
Plug 'janko-m/vim-test'
Plug 'fenetikm/falcon'
Plug 'terryma/vim-smooth-scroll'
Plug 'w0rp/ale'                 " async linter
Plug 'majutsushi/tagbar'
Plug 'vim-ruby/vim-ruby'
" Plug 'xolox/vim-misc'
" Plug 'xolox/vim-easytags' " Automated tag file generation and syntax highlighting of tags in Vim

call plug#end()

" Plugin ale
let g:ale_set_highlights = 0    " disabling highlighting

" Start interactive EasyAlign in visual mode (e.g. `vipga`)
xmap ga <Plug>(EasyAlign)

" Plugin vim-workspace
" run `ToggleWorkspace` command to enable workspace in current directory
let g:workspace_autosave = 0
" let g:workspace_autosave_always = 1
" let g:workspace_autosave_untrailspaces = 0 " https://github.com/thaerkh/vim-workspace/issues/9

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

" Pluging smooth_scroll
nnoremap <silent> <c-u> :call smooth_scroll#up(&scroll, 30, 2)<CR>
nnoremap <silent> <c-d> :call smooth_scroll#down(&scroll, 30, 2)<CR>

" Plugin Tagbar
nmap <F8> :TagbarToggle<CR>

"============================================================
" Color scheme
"============================================================
" colors fix for custom colors
if has('termguicolors')
  set termguicolors " 24-bit terminal
endif

set background=dark " dark or light
colorscheme falcon

source ~/.vimrc
