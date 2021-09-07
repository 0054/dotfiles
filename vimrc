"curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim


call plug#begin('~/.vim/plugged')


" Autocomplete
" Plug 'codota/tabnine-vim'
Plug 'Valloric/YouCompleteMe'

Plug 'junegunn/vim-plug'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'jistr/vim-nerdtree-tabs'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'ConradIrwin/vim-bracketed-paste'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-git'
Plug 'tpope/vim-fugitive'
Plug 'hashivim/vim-terraform'
Plug 'juliosueiras/vim-terraform-completion'
Plug 'fatih/vim-go'
Plug 'vim-scripts/groovy.vim'

" syntax highlighting
Plug 'vim-python/python-syntax'
Plug 'elzr/vim-json'
Plug 'plasticboy/vim-markdown'
Plug 'ekalinin/Dockerfile.vim'
Plug 'pearofducks/ansible-vim'
Plug 'lepture/vim-jinja'

Plug 'sbdchd/neoformat' "formanner
Plug 'vim-vdebug/vdebug' "debugger

Plug '0054/vim-colors-paramountblue'
Plug 'crusoexia/vim-monokai'
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


let g:mapleader=',' " setup learder key 
set packpath+=$HOME/.vim/plugged
let g:python_highlight_all = 1



"highlight
syntax enable
"au BufNewFile,BufRead Jenkinsfile setf groovy
" set packpath



let g:ctrlp_show_hidden = 1

"snipets
"set runtimepath+=~/.vim/UltiSnips/
"let g:UltiSnipsSnippetsDir = "~/.vim/UltiSnips/"
"let g:UltiSnipsSnippetDirectories = ["~/.vim/UltiSnips/"]
let g:UltiSnipsExpandTrigger="<c-j>"
let g:UltiSnipsJumpForwardTrigger= '<c-j>'
let g:UltiSnipsBackwardTrigger = '<c-k>'


" set termguicolors
" colorscheme paramountblue
" colorscheme iceberg
" colorscheme monokai
" colorscheme rdark-terminal2
" colorscheme flattened_dark
" colorscheme gruvbox
set t_Co=256
colorscheme PaperColor
let g:PaperColor_Theme_Options = {
  \   'theme': {
  \     'default.dark': {
  \       'transparent_background': 0
  \     }
  \   },
  \   'language': {
  \     'python': {
  \       'highlight_builtins' : 1
  \     },
  \     'cpp': {
  \       'highlight_standard_library': 1
  \     },
  \     'c': {
  \       'highlight_builtins' : 1
  \     }
  \   }
  \ }
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


" markdown
let g:vim_markdown_folding_disabled = 1


" terraform
let g:terraform_align=1
let g:terraform_fmt_on_save=1
set statusline+=%#warningmsg#
" set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

" let g:syntastic_always_populate_loc_list = 1
" let g:syntastic_auto_loc_list = 1
" let g:syntastic_check_on_open = 1
" let g:syntastic_check_on_wq = 0



"indentLine
"let g:indentLine__setColors = 0

"YouCompleteMe
let g:ycm_complete_in_comments = 1
let g:ycm_complete_in_strings = 1
let g:ycm_use_ultisnips_completer = 1
let g:ycm_add_preview_to_completeopt = 1
let g:ycm_autoclose_preview_window_after_completion = 0
let g:ycm_autoclose_preview_window_after_insertion = 1
let g:ycm_python_binary_path = 'python3'
nnoremap <leader>g :YcmCompleter GoToDefinitionElseDeclaration<CR>


" debugger
" let g:vimspector_enable_mappings = 'HUMAN'
" let &runtimepath = &runtimepath . ',' . g:vimspector_test_plugin_path
" set runtimepath+=~/.vim/plugged/vimspector
" packadd! vimspector


au BufNewFile,BufRead *.Jenkinsfile setf groovy
au BufNewFile,BufRead *.jenkinsfile setf groovy
au BufNewFile,BufRead *.py set 
    \ tabstop=4 
    \ softtabstop=4 
    \ shiftwidth=4 
    \ textwidth=119 
    \ expandtab 
    \ autoindent 
    \ fileformat=unix


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
" set mouse=a
autocmd FileType yaml setlocal et ts=2 ai sw=2 nu sts=0 indentkeys-=<:>
autocmd FileType groovy setlocal et ts=4 ai sw=4 nu sts=0 indentkeys-=<:>


" NEOFORMAT
let g:neoformat_enabled_python = ['autopep8']
let g:shfmt_opt="-ci" " for bash formatting


"mappings
" nnoremap J :m .+1<CR>==
" nnoremap K :m .-2<CR>==
" nnoremap <C-j> <C-e>
" nnoremap <C-k> <C-y>

" map <ScrollWheelUp> <C-Y>
" map <ScrollWheelDown> <C-E>
let g:user_emmet_leader_key='<C-X>'
set splitbelow
set splitright


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

map <Leader>b :call InsertLine()<CR>

function! InsertLine()
  let trace = expand("import ipdb; ipdb.set_trace()")
  execute "normal o".trace
endfunction

" nnoremap <silent> <Leader>+ :exe "resize " . (winheight(0) * 3/2)<CR>
" nnoremap <silent> <Leader>- :exe "resize " . (winheight(0) * 2/3)<CR>


nmap ,t :tabnew<CR>
nmap tl :tabn<CR>
nmap th :tabp<CR>
nmap ,t :tabp<CR>
map <F1> :botright terminal ++rows=14<CR>
map <F2> :NERDTreeToggle<CR>
map <F3> :Neoformat<CR>
map <F4> :w\|bo terminal python3 -m ipdb 
" nnoremap <Leader>f :NERDTreeToggle<CR>
" map <Leader> <Plug>(easymotion-prefix)
" map <Leader> <Plug>(easymotion-prefix)
" map <F5> :w\|!/usr/bin/env python3 %<CR>
" map <F6> :w\|!/usr/bin/env python3 -m pytest -v %<CR>
" map <F7> :w\|!/usr/bin/env python3 -m pdb3 %<CR>

