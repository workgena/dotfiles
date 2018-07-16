call plug#begin('~/.local/share/nvim/plugged')

Plug 'junegunn/vim-easy-align'
Plug 'flazz/vim-colorschemes'
Plug 'ervandew/supertab'        " <Tab> behaves like <CTRL+n>
Plug 'thaerkh/vim-workspace'    " Vim session; auto-save(better then `vim-scripts/vim-auto-save`)
Plug 'tpope/vim-endwise'
Plug 'Raimondi/delimitMate'
Plug 'zhou13/vim-easyescape'

call plug#end()

" Start interactive EasyAlign in visual mode (e.g. `vipga`)
xmap ga <Plug>(EasyAlign)

" vim-workspace
" run `ToggleWorkspace` command to enable workspace in current directory
let g:workspace_autosave_always = 1

"============================================================
" Color scheme
"============================================================
" colors fix for custom colors
if has('termguicolors')
  set termguicolors " 24-bit terminal
endif

set background=dark " dark or light
colorscheme moria

source /home/virt/.vimrc
