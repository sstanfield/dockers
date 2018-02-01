call plug#begin()
Plug 'jlanzarotta/bufexplorer'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'scrooloose/nerdtree'
Plug 'rking/ag.vim'
Plug 'vim-scripts/Smart-Tabs'
call plug#end()

"nnoremap <SPACE> <Nop>
let mapleader = "\<space>"

set backup		" keep a backup file
set history=50		" keep 50 lines of command line history
set ruler		" show the cursor position all the time
set showcmd		" display incomplete commands

map <C-e> <leader>be

set number

set backupdir=$HOME/.vimfiles
set directory=$HOME/.vimfiles

" Turn off the bloody beepin.
set vb

syntax on
"set t_Co=256
" Need this t_ut with xfce (and other terms) so the whole screen is correct
" background color.
"set t_ut=
let $NVIM_TUI_ENABLE_TRUE_COLOR=1
set termguicolors
set background=dark
"set background=light
let g:solarized_visibility="low"
"let g:solarized_termcolors=256
"let g:solarized_termtrans=1
colorscheme solarized
"highlight SpecialKey ctermfg=14 ctermbg=8

map <C-n> :NERDTreeToggle<CR>

" Take <Up>/<Down> away from ycm so it can be remapped.
let g:ycm_key_list_previous_completion = ['<S-TAB>']
let g:ycm_key_list_select_completion = ['<TAB>']
" YCM populate location list with errors.
let g:ycm_always_populate_location_list = 1

" For easy moving between pains.
nmap <silent> <leader><Up> :wincmd k<CR>
nmap <silent> <leader><Down> :wincmd j<CR>
nmap <silent> <leader><Left> :wincmd h<CR>
nmap <silent> <leader><Right> :wincmd l<CR>
nmap <silent> <leader>k :wincmd k<CR>
nmap <silent> <leader>j :wincmd j<CR>
nmap <silent> <leader>h :wincmd h<CR>
nmap <silent> <leader>l :wincmd l<CR>
"imap <silent> <C-k> <ESC>:wincmd k<CR>
"imap <silent> <C-j> <ESC>:wincmd j<CR>
"imap <silent> <C-h> <ESC>:wincmd h<CR>
"imap <silent> <C-l> <ESC>:wincmd l<CR>

" Get out of insert mode if leaving the current line.
inoremap <Up> <ESC>k
inoremap <Down> <ESC>j
inoremap <PageUp> <ESC><PageUp>
inoremap <PageDown> <ESC><PageDown>

" Jump by WORDS using C-Left/Right.
nmap <silent> <C-Right> W
nmap <silent> <C-Left> B
imap <silent> <C-Right> <ESC>lWi
imap <silent> <C-Left> <ESC>Bi

nnoremap <C-S> :wa<CR>
imap <C-S> <ESC>:wa<CR>

" Show whitespace
set listchars=eol:¬,tab:>\ ,trail:~,extends:>,precedes:<,space:·
set list
noremap <C-l> :set list!<CR>

" Use tabs as tabs and work with smart tabs plugin...
set noexpandtab
set copyindent
set preserveindent
set softtabstop=0
set shiftwidth=4
set tabstop=4

nnoremap <space>/ :Ag <c-r>=expand("<cword>")<cr>
nnoremap <C-X> :NERDTreeClose<CR>:mksession! .nvim-session<CR>:wa<CR>:qa<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" For more normal cut and paste.
vmap <C-c> "+yi
vmap <C-x> "+c
vmap <C-v> c<ESC>"+p
imap <C-v> <C-r><C-o>+



set scrolloff=3
set showcmd
set wildmenu
set ruler
set relativenumber
set undodir=$HOME/.vimfiles
set undofile

nnoremap / /\v
vnoremap / /\v
set ignorecase
set smartcase
set incsearch
set showmatch
set hlsearch
nnoremap <leader><space> :noh<cr>
set cc=80
nnoremap ; :
au FocusLost * :wa
" Strip trailing whitespace
nnoremap <leader>W :%s/\s\+$//<cr>:let @/=''<CR>

" Some stuff for myself.
nnoremap <leader>o :lopen<CR>
nnoremap <leader>c :lclose<CR>
nnoremap <leader>n :lnext<CR>
nnoremap <leader>p :lprevious<CR>

