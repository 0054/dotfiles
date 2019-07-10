"curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim


call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'easymotion/vim-easymotion' 
Plug 'jiangmiao/auto-pairs'
Plug 'Valloric/YouCompleteMe'
Plug 'Yggdroot/indentLine'
Plug 'ConradIrwin/vim-bracketed-paste'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-git'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-repeat'

Plug '0054/vim-colors-paramountblue'
Plug 'cocopon/iceberg.vim'
Plug 'NLKNguyen/papercolor-theme' "colorscheme

Plug 'kien/ctrlp.vim'
Plug 'NLKNguyen/copy-cut-paste.vim'
Plug 'terryma/vim-multiple-cursors'

Plug 'mattn/emmet-vim'
Plug 'sirver/ultisnips'
Plug 'honza/vim-snippets'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
call plug#end()
let g:mapleader=','


"highlight
syntax enable
" let g:python_highlight_space_errors = 1
" let g:python_higtlight_all = 1

"snipets
"set runtimepath+=~/.vim/UltiSnips/
"let g:UltiSnipsSnippetsDir = "~/.vim/UltiSnips/"
"let g:UltiSnipsSnippetDirectories = ["~/.vim/UltiSnips/"]
 let g:UltiSnipsExpandTrigger="<c-j>"
 let g:UltiSnipsJumpForwardTrigger= '<c-j>'
 let g:UltiSnipsBackwardTrigger = '<c-k>'

colorscheme paramountblue
"colorscheme iceberg
"colorscheme PaperColor
"set background=dark

"airline
"let g:airline#extensions#tabline#enabled = 1  "show tabs
let g:airline_powerline_fonts = 1 "apt install fonts-powerline
"let g:airline_theme='iceberg'
"let g:airline_theme='papercolor'



"indentLine
let g:indentLine__setColors = 0

"YouCompleteMe
let g:ycm_add_preview_to_completeopt = 1
let g:ycm_autoclose_preview_window_after_completion = 0
let g:ycm_autoclose_preview_window_after_insertion = 1
let g:ycm_python_binary_path = 'python3'
nnoremap <leader>g :YcmCompleter GoToDefinitionElseDeclaration<CR>

set number      
set expandtab   
set tabstop=4   
set shiftwidth=4
set smarttab
set hlsearch 
set incsearch 
set cursorline 
set clipboard=unnamed
"set mouse=a
autocmd FileType yaml setlocal et ts=2 ai sw=2 nu sts=0 indentkeys-=<:>


""mappings
"nnoremap J :m .+1<CR>==
"nnoremap K :m .-2<CR>==
"nnoremap <C-j> <C-e>
"nnoremap <C-k> <C-y>

" map <ScrollWheelUp> <C-Y>
" map <ScrollWheelDown> <C-E>

map <F2> :NERDTreeToggle<CR>
map <Leader> <Plug>(easymotion-prefix)
map <F5> :w\|!/usr/bin/env python3 %<CR>
map <F6> :w\|!/usr/bin/env python3 -m pytest -v %<CR>
map <F7> :w\|!/usr/bin/env python3 -m pdb3 %<CR>

