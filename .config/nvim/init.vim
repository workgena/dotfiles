call plug#begin('~/.local/share/nvim/plugged')

Plug 'junegunn/vim-easy-align'
Plug 'flazz/vim-colorschemes'
Plug 'ervandew/supertab'        " <Tab> behaves like <CTRL+n>
Plug 'thaerkh/vim-workspace'    " Vim session; auto-save(better then `vim-scripts/vim-auto-save`)
Plug 'tpope/vim-endwise'
Plug 'Raimondi/delimitMate'
Plug 'zhou13/vim-easyescape'
Plug '907th/vim-auto-save'
Plug 'luochen1990/rainbow'
Plug 'thoughtbot/vim-rspec'
Plug 'fenetikm/falcon'
Plug 'terryma/vim-smooth-scroll'
Plug 'w0rp/ale'                 " async linter

call plug#end()

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

" Plugin rainbow
let g:rainbow_active = 1        " 0 if you want to enable it later via :RainbowToggle

" Plugin vim-rspec
map <Leader>s :call RunNearestSpec()<CR>
map <Leader>l :call RunLastSpec()<CR>

" Pluging smooth_scroll
nnoremap <silent> <c-u> :call smooth_scroll#up(&scroll, 30, 2)<CR>
nnoremap <silent> <c-d> :call smooth_scroll#down(&scroll, 30, 2)<CR>

"============================================================
" Color scheme
"============================================================
" colors fix for custom colors
if has('termguicolors')
  set termguicolors " 24-bit terminal
endif

set background=dark " dark or light
colorscheme falcon

source /home/virt/.vimrc
