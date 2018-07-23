call plug#begin('~/.local/share/nvim/plugged')

Plug 'junegunn/vim-easy-align'
Plug 'flazz/vim-colorschemes'
Plug 'ervandew/supertab'        " <Tab> behaves like <CTRL+n>
Plug 'thaerkh/vim-workspace'    " Vim session; auto-save(better then `vim-scripts/vim-auto-save`)
Plug 'tpope/vim-endwise'
Plug 'Raimondi/delimitMate'
Plug 'zhou13/vim-easyescape'
Plug '907th/vim-auto-save'

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
"============================================================
" Color scheme
"============================================================
" colors fix for custom colors
if has('termguicolors')
  set termguicolors " 24-bit terminal
endif

set background=dark " dark or light
colorscheme rootwater
let g:seoul256_background = 233

source /home/virt/.vimrc
