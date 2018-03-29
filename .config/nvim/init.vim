call plug#begin('~/.local/share/nvim/plugged')

Plug 'junegunn/vim-easy-align'
Plug 'flazz/vim-colorschemes'
Plug 'ervandew/supertab' " `Tab`-button behaves like `C+n`
Plug 'vim-scripts/vim-auto-save'

call plug#end()

" Start interactive EasyAlign in visual mode (e.g. `vipga`)
xmap ga <Plug>(EasyAlign)

" vim-auto-save
let g:auto_save = 1                " enable AutoSave on Vim startup
let g:auto_save_in_insert_mode = 0 " do not save while in insert mode
let g:auto_save_no_updatetime = 1  " do not change the 'updatetime' option

"============================================================
" Color scheme
"============================================================
" colors fix for custom colors
if has('termguicolors')
  set termguicolors " 24-bit terminal
endif

set background=dark " dark or light
colorscheme railscasts

source /home/virt/.vimrc
