"curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim


call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'Valloric/YouCompleteMe'
Plug 'ConradIrwin/vim-bracketed-paste'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-git'
Plug 'tpope/vim-fugitive'
Plug 'hashivim/vim-terraform'
Plug 'juliosueiras/vim-terraform-completion'
Plug 'fatih/vim-go'
Plug 'vim-scripts/groovy.vim'

Plug '0054/vim-colors-paramountblue'
Plug 'morhetz/gruvbox'
Plug 'cocopon/iceberg.vim'
Plug 'NLKNguyen/papercolor-theme' "colorscheme
Plug 'romainl/flattened'
Plug 'vim-scripts/rdark-terminal2.vim'

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
"au BufNewFile,BufRead Jenkinsfile setf groovy



let g:ctrlp_show_hidden = 1

"snipets
"set runtimepath+=~/.vim/UltiSnips/
"let g:UltiSnipsSnippetsDir = "~/.vim/UltiSnips/"
"let g:UltiSnipsSnippetDirectories = ["~/.vim/UltiSnips/"]
let g:UltiSnipsExpandTrigger="<c-j>"
let g:UltiSnipsJumpForwardTrigger= '<c-j>'
let g:UltiSnipsBackwardTrigger = '<c-k>'


" set t_Co=256

" set termguicolors
" colorscheme paramountblue
" colorscheme iceberg
colorscheme PaperColor
" colorscheme rdark-terminal2
" colorscheme flattened_dark
" colorscheme gruvbox
set background=dark



let g:go_fmt_command = "goimports"
let g:go_def_mapping_enabled = 0
au FileType go nmap <leader>r <Plug>(go-run)
au FileType go nmap <leader>i <Plug>(go-info)
au FileType go nmap <leader>d :GoIfErr<CR>

"airline
"let g:airline#extensions#tabline#enabled = 1  "show tabs
let g:airline_powerline_fonts = 1 "apt install fonts-powerline
" let g:airline_theme='gruvbox'
" let g:airline_theme='iceberg'
let g:airline_theme='papercolor'
" let g:airline_theme='simple'


" terraform
let g:terraform_align=1
let g:terraform_fmt_on_save=1
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0



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
set colorcolumn=120
"set mouse=a
autocmd FileType yaml setlocal et ts=2 ai sw=2 nu sts=0 indentkeys-=<:>
autocmd FileType groovy setlocal et ts=4 ai sw=4 nu sts=0 indentkeys-=<:>


"mappings
" nnoremap J :m .+1<CR>==
" nnoremap K :m .-2<CR>==
" nnoremap <C-j> <C-e>
" nnoremap <C-k> <C-y>

" map <ScrollWheelUp> <C-Y>
" map <ScrollWheelDown> <C-E>
let g:user_emmet_leader_key='<C-X>'


noremap <leader>1 1gt
noremap <leader>2 2gt
noremap <leader>3 3gt
noremap <leader>4 4gt
noremap <leader>5 5gt
noremap <leader>6 6gt
noremap <leader>7 7gt
noremap <leader>8 8gt
noremap <leader>9 9gt

nnoremap <C-h> :tabprevious<CR>
nnoremap <C-l> :tabnext<CR>
nmap ,t :tabnew<CR>
nmap tl :tabn<CR>
nmap th :tabp<CR>
map <F2> :NERDTreeToggle<CR>
" nnoremap <Leader>f :NERDTreeToggle<CR>
" map <Leader> <Plug>(easymotion-prefix)
map <Leader> <Plug>(easymotion-prefix)
map <F5> :w\|!/usr/bin/env python3 %<CR>
map <F6> :w\|!/usr/bin/env python3 -m pytest -v %<CR>
map <F7> :w\|!/usr/bin/env python3 -m pdb3 %<CR>

