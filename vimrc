" Plugins
call plug#begin('~/.local/share/nvim/plugged')

Plug 'tpope/vim-fugitive'
Plug 'scrooloose/nerdtree'
Plug 'airblade/vim-gitgutter'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'terryma/vim-expand-region'
Plug 'jiangmiao/auto-pairs'
Plug 'mileszs/ack.vim'
Plug 'yegappan/mru'
Plug 'tpope/vim-commentary'
Plug 'mattn/emmet-vim'
Plug 'jlanzarotta/bufexplorer'
Plug 'tpope/vim-surround'
Plug 'vim-airline/vim-airline'
Plug 'mhartington/oceanic-next'
Plug 'sheerun/vim-polyglot'
Plug 'edkolev/tmuxline.vim'
Plug 'sebastianmarkow/deoplete-rust'
Plug 'tpope/vim-repeat'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'carlitux/deoplete-ternjs', { 'do': 'npm i -g tern' }
Plug 'w0rp/ale'
Plug 'ryanoasis/vim-devicons'
Plug 'ervandew/supertab'

call plug#end()

" Colors
if (has("termguicolors"))
 set termguicolors
endif

" Otherings
filetype on
filetype plugin on
filetype indent on
syntax enable
colorscheme OceanicNext

" Settings
set wildmenu
set number
set relativenumber
set hidden
set history=500
set nowrap
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab
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
set wrap " wrap lines
try
  set switchbuf=useopen,usetab,newtab
  set stal=2
catch
endtry
set whichwrap+=<,>,h,l,[,]
set smartindent
set autoindent
set foldmethod=syntax

" Lettings
let mapleader=" "
let g:NERDTreeWinPos="right"
let NERDTreeShowHidden=1
let NERDTreeIgnore=['\.DS_Store', '\~$', '\.swp']
let NERDTreeQuitOnOpen=1
let g:ctrlp_map='<c-f>'
let g:ctrlp_custom_ignore='node_modules\|^\.DS_Store\|^\.git\|^\.coffee'
let g:multi_cursor_next_key="\<C-s>"
let g:jsx_ext_required=0
let g:user_emmet_settings = {
\  'javascript.jsx' : {
\      'extends' : 'jsx',
\      'quote_char': "'"
\  }
\}
let g:ycm_rust_src_path = '/usr/src/rust'
let g:airline_powerline_fonts = 1
let g:airline_theme='oceanicnext'
let g:deoplete#enable_at_startup = 1
let g:tern#filetypes = ['javascript.jsx', 'jsx', 'javascript']
let g:tern_request_timeout = 1
let g:tern_show_signature_in_pum = '0'
let g:tern#command = ['tern']
let g:deoplete#sources#ternjs#timeout = 1
let g:SuperTabClosePreviewOnPopupClose = 1
let g:SuperTabDefaultCompletionType = '<c-n>'
let g:used_javascript_libs = 'react'
let g:deoplete#sources#rust#racer_binary='/home/ted/.cargo/bin/racer'
let g:deoplete#sources#rust#rust_source_path='/usr/src/rust/src'
let g:deoplete#sources#ternjs#tern_bin = '/usr/bin/ternjs'
let g:ale_linters = {
\   'javascript': ['standard'],
\}
let g:ale_fixers = {
\   'javascript': [
\       'standard'
\   ],
\}
let g:ale_javascript_eslint_use_global = 1
let g:ale_javascript_eslint_executable = 'eslint_d'

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
map <leader>q :q<CR>
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
nnoremap <nowait> 0 ^

" tab completion
" inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"

" Cool shit
autocmd BufWritePre * :%s/\s\+$//e " remove whitespace on save

" Return to last edit position when opening files
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

" use ag with ack.vim
if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif

set undodir=~/.vim/temp_dirs/undodir
set undofile
set exrc
set secure

if has('nvim')
  let $NVIM_TUI_ENABLE_TRUE_COLOR=1
endif
