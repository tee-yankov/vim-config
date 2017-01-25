" Pathogen infect
execute pathogen#infect()

" Otherings
filetype on
filetype plugin on
filetype indent on
syntax on
colorscheme dracula

" Settings
set wildmenu
set number
set hidden
set history=500
set nowrap
set tabstop=2
set shiftwidth=2
set expandtab
set smartindent
set autoindent
set hlsearch " highlight words when searching
set showmatch " shows matching parentheses
set laststatus=2 " always display status lines
set splitbelow
set splitright
set noswapfile
set autoread
set so=7
set ruler
set cmdheight=1
set hid " hide a buffer when it is abandoned
set ignorecase
set smartcase " be smart about searchin
set incsearch " move the search highlight as you add new characters
set magic " for more magic
set encoding=utf8
set nobackup
set nowb
set ai " audo indent
set si " smart indent
set wrap " wrap lines
try
  set switchbuf=useopen,usetab,newtab
  set stal=2
catch
endtry
set foldmethod=syntax
set whichwrap+=<,>,h,l,[,]

" Lettings
let mapleader=" "
let g:NERDTreeWinPos="right"
let NERDTreeShowHidden=1
let NERDTreeIgnore=['\.DS_Store', '\~$', '\.swp']
let g:lightline={
      \ 'colorscheme': 'wombat',
      \ }
let g:ctrlp_map='<c-f>'
let g:ctrlp_custom_ignore='node_modules\|^\.DS_Store\|^\.git\|^\.coffee'
let g:multi_cursor_next_key="\<C-s>"
let g:jsx_ext_required=0
let g:syntastic_javascript_checkers=['standard']
let g:syntastic_always_populate_loc_list=1
let g:user_emmet_settings = {
\  'javascript.jsx' : {
\      'extends' : 'jsx',
\      'quote_char': "'"
\  },
\  'html' : {
\    'quote_char': "'",
\  },
\}

" Mappings
map <leader>s :source ~/.vimrc<CR>
map <leader>w :w<CR>
map <silent> <leader><cr> :noh<cr>
map <leader>pp :setlocal paste!<CR>
map <leader>nn :NERDTreeToggle<CR>
map <leader>nf :NERDTreeFind<CR>
map <leader>bd :bd<cr>:tabclose<cr>gT
map <leader>ba :bufdo bd<cr>
map <leader>tn :tabnew<cr>
map <leader>to :tabonly<cr>
map <leader>tc :tabclose<cr>
map <leader>tm :tabmove
map <leader>t<leader> :tabnext
map <leader>g :Ack<Space>
map <leader>f :MRU<CR>
map <leader>o :BufExplorer<CR>
vmap v <Plug>(expand_region_expand)
vmap <C-v> <Plug>(expand_region_shrink)
vnoremap <silent> * :<C-u>call VisualSelection('', '')<CR>/<C-R>=@/<CR><CR>
vnoremap <silent> # :<C-u>call VisualSelection('', '')<CR>?<C-R>=@/<CR><CR>
noremap <Leader>y "+y
noremap <Leader>p "+p
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
nnoremap <F1> <nop>
nnoremap Q <nop>
nnoremap K <nop>


" Cool shit
autocmd BufWritePre * :%s/\s\+$//e " remove whitespace on save

" Return to last edit position when opening files (You want this!)
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

" use ag with ack.vim
if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif

try
  set undodir=~/.vim/temp_dirs/undodir
  set undofile
catch
endtry

