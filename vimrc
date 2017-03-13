"http://marcgg.com/blog/2016/03/01/vimrc-example/

execute pathogen#infect()

let mapleader=" "
map <leader>s :source ~/.vimrc<CR>

filetype on
filetype plugin on
syntax on

set laststatus=2

colorscheme Tomorrow-Night-Eighties
set guifont=Inconsolata\-g\ Medium\ 13

set number
set lines=90 columns=150
set colorcolumn=90

set hidden
set history=100

filetype indent on
set nowrap
set tabstop=2
set shiftwidth=2
set expandtab
set smartindent
set autoindent

autocmd BufWritePre * :%s/\s\+S//e

set hlsearch

nnoremap <silent> <Esc> :nohlsearch<Bar>:echo<CR>

map <D-A-RIGHT> <C-w>l
map <D-A-LEFT <C-w>h
map <D-A-DOWN> <C-w><C-w>
map <D-A-UP> <C-w>W

nnoremap <Leader><Leader> :e#<CR>

set showmatch

let NERDTreeMapActivateNode='<right>'
let NERDTreeShowHidden=1
nmap <leader>n :NERDTreeToggle<CR>
nmap <leader>j :NERDTreeFind<CR>
autocmd VimEnter * NERDTree
autocmd VimEnter * wincmd p
let NERDTreeIgnore=['\.DS_Store', '\~$', '\.swp']

let g:gitgutter_sign_column_always=1
