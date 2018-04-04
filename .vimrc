syntax enable           " enable syntax processing
set number              " show line numbers
set cursorline          " highlight current line
set wildmenu            " visual autocomplete for command menu
set showmatch           " highlight matching [{()}]
set incsearch           " search as characters are entered
set hlsearch            " highlight matches

set t_Co=256
set term=xterm-256color
colorscheme grb256 

"CtrlP plugin
set runtimepath^=/home/ama29/.vim/bundle/ctrlp.vim

call plug#begin('~/.vim/plugged')
Plug 'junegunn/vim-easy-align'
Plug 'scrooloose/nerdtree'

" Initialize plugin system
call plug#end()

