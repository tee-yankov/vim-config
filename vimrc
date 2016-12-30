" Pathogen infect
execute pathogen#infect()

" Otherings
filetype on
filetype indent on
syntax on
colorscheme dracula

" Settings
set wildmenu
set number
set hidden
set history=100
set nowrap
set tabstop=2
set shiftwidth=2
set expandtab
set smartindent
set autoindent
set hlsearch " highlight words when searching
set showmatch " shows matching parentheses

" Lettings
let mapleader=" "
let g:NERDTreeWinPos = "right"
let NERDTreeShowHidden=1
let NERDTreeIgnore=['\.DS_Store', '\~$', '\.swp']
let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ }

" Mappings
map <leader>s :source ~/.vimrc<CR>
map <leader>w :w<CR>
map <leader><Enter> :nohlsearch<CR>
map <leader>pp :setlocal paste!<CR>
nmap <leader>nn :NERDTreeToggle<CR>
nmap <leader>nf :NERDTreeFind<CR>

" Cool shit
autocmd BufWritePre * :%s/\s\+$//e " remove whitespace on save
