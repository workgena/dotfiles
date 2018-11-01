source ~/.vimrc

call plug#begin('~/.local/share/nvim/plugged')

Plug 'junegunn/vim-easy-align'
Plug 'ervandew/supertab'        " <Tab> behaves like <CTRL+n>
Plug 'tpope/vim-endwise'
Plug 'thaerkh/vim-workspace'    " Vim session; auto-save(better then `vim-scripts/vim-auto-save`)
Plug '907th/vim-auto-save'
Plug 'terryma/vim-smooth-scroll'
Plug 'w0rp/ale'                 " async linter
Plug 'majutsushi/tagbar'
Plug 'bilalq/lite-dfm'          " :LiteDFMToggle / let g:lite_dfm_keep_ruler=1

Plug 'vim-ruby/vim-ruby'
Plug 'tpope/vim-rails'
Plug 'thoughtbot/vim-rspec'
Plug 'janko-m/vim-test'
Plug 'pangloss/vim-javascript'

call plug#end()

" Plugin ale
let g:ale_set_highlights = 0    " disabling highlighting

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

" Pluging smooth_scroll
nnoremap <silent> <c-u> :call smooth_scroll#up(&scroll, 30, 2)<CR>
nnoremap <silent> <c-d> :call smooth_scroll#down(&scroll, 30, 2)<CR>

" Plugin Tagbar
nmap <F8> :TagbarToggle<CR>

"============================================================
" Color scheme
"============================================================
syntax on
if has('termguicolors')
  set termguicolors " 24-bit terminal
endif

color blue
