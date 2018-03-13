"    ██╗   ██╗██╗███╗   ███╗██████╗  ██████╗
"    ██║   ██║██║████╗ ████║██╔══██╗██╔════╝
"    ██║   ██║██║██╔████╔██║██████╔╝██║     
"    ╚██╗ ██╔╝██║██║╚██╔╝██║██╔══██╗██║     
" ██╗ ╚████╔╝ ██║██║ ╚═╝ ██║██║  ██║╚██████╗
" ╚═╝  ╚═══╝  ╚═╝╚═╝     ╚═╝╚═╝  ╚═╝ ╚═════╝

" ===============================================
" =============PLUGINS===========================

call plug#begin('~/.local/share/nvim/plugged')

Plug 'flazz/vim-colorschemes'
Plug 'jdkanani/vim-material-theme'
Plug 'ap/vim-buftabline'
Plug 'fatih/vim-go'
Plug 'scrooloose/nerdtree'
Plug 'kien/ctrlp.vim'
Plug 'Shougo/deoplete.nvim'
Plug 'zchee/deoplete-go'
Plug 'nsf/gocode', { 'rtp': 'nvim', 'do': '~/.config/nvim/plugged/gocode/nvim/symlink.sh' }
Plug 'SirVer/ultisnips'

call plug#end()
call deoplete#enable()

" =================================================
" ===================SETTINGS======================

set termguicolors
set number
set background=dark
colo gruvbox

set autowrite
set tabstop=4
autocmd BufNewFile,BufRead *.go setlocal noexpandtab tabstop=4 shiftwidth=4 

" ====================GOLANG=======================

let g:deoplete#sources#go#gocode_binary = '~/go/bin/gocode'
let g:go_auto_sameids = 1
let g:go_highlight_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_operators = 1
let g:go_highlight_extra_types = 1

" =================================================
" ====================KEYMAPS====================== 

nnoremap <C-h> :bp <CR>
nnoremap <C-l> :bn <CR>
nnoremap <F2> :e ~/.config/nvim/init.vim <CR>
nnoremap <F3> :NERDTreeToggle <CR>
nnoremap <C-I> :GoRun <CR>
nnoremap <M-I> :GoBuild <CR>
nnoremap <F8> :colo gruvbox <CR>
nnoremap <F9> :colo molokai <CR>
nnoremap <C-U> :GoBuild <CR>
