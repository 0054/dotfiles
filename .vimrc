"curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
"    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim


call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'easymotion/vim-easymotion' 
Plug 'jiangmiao/auto-pairs'
Plug 'Valloric/YouCompleteMe'
Plug 'Yggdroot/indentLine'
Plug 'ConradIrwin/vim-bracketed-paste' "cp
Plug 'cocopon/iceberg.vim' "colorscheme
Plug 'NLKNguyen/papercolor-theme' "colorscheme
"Plug 'fortes/vim-escuro' "colorscheme
Plug 'hdima/python-syntax' 
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
call plug#end()


"highlight
syntax enable
let g:python_highlight_space_errors = 1
let g:python_higtlight_all = 1

"colorscheme iceberg
colorscheme PaperColor
set background=dark

"airline
"let g:airline#extensions#tabline#enabled = 1  "show tabs
let g:airline_powerline_fonts = 1 "apt install fonts-powerline
"let g:airline_theme='iceberg'
let g:airline_theme='papercolor'

"indentLine
let g:indentLine__setColors = 0

"YouCompleteMe
let g:ycm_add_preview_to_completeopt = 1
let g:ycm_autoclose_preview_window_after_completion = 0
let g:ycm_autoclose_preview_window_after_insertion = 1
let g:ycm_python_binary_path = '/usr/bin/python3.6'
"общие настройки

let g:mapleader=','
set number      
set expandtab   "replace '\t' ' '
set tabstop=4
set smarttab
set hlsearch
set incsearch 
set cursorline
set mouse=a

"mappings
nnoremap J :m .+1<CR>==
nnoremap K :m .-2<CR>==
nnoremap <C-j> <C-e>
nnoremap <C-k> <C-y>

map <ScrollWheelUp> <C-Y>
map <ScrollWheelDown> <C-E>

map <F2> :NERDTreeToggle<CR>
map <Leader> <Plug>(easymotion-prefix)
map <F5> :w\|!python3.6 %<CR>
map <F6> :w\|!python3.6 -m pytest -v %<CR>

