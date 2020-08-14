"----打开plug---"
filetype on
filetype indent on
filetype plugin on
filetype plugin indent on

"----设置行号----"
set number
set relativenumber

"----打开语法高亮----"
syntax on
syntax enable
"----vim的基本键位配置----"
set nocompatible
set tabstop=4
set shiftwidth=4
set softtabstop=4
set autoindent
set smartindent
set cindent
set novisualbell
set encoding=utf-8
set scrolloff=5
let mapleader=" "
set wildmenu
set wildmode=longest:list,full
set wrap
set cursorline
"----显示结束符，tab和trail
set list
set listchars=tab:\ \ ,trail:▫
map <LEADER>sr :%s/
vnoremap <LEADER>sr :s/
vnoremap <LEADER>t= :Tabularize /= <CR>
"----改变光标样式----"
let &t_SI = "\<Esc>]50;CursorShape=1\x7"
let &t_SR = "\<Esc>]50;CursorShape=2\x7"
let &t_EI = "\<Esc>]50;CursorShape=0\x7"
"----敲击%%会显示你的当前的路径----"
cnoremap <expr> %% getcmdtype() == ':' ? expand('%:h').'/' :'%%'
"----重新进入时直接到上次编辑的地方----"
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
map Q :q<CR>
map S :w<CR>
map s <nop>
map K 5k
map J 5j
map <LEADER><CR> :nohlsearch<CR>
noremap = nzz
noremap - Nzz
noremap > >>
noremap < <<
"----search <--> and change the content in <-->
map <LEADER><LEADER> <Esc>/<--><CR>:nohlsearch<CR>c4l
"----分屏的操作----"
map sl :set splitright<CR>:vsplit<CR>
map sh :set nosplitright<CR>:vsplit<CR>
map sk :set nosplitbelow<CR>:split<CR>
map sj :set splitbelow<CR>:split<CR>
map sv <C-w>t<C-w>H
map sh <C-w>t<C-w>K

"----分屏后移动光标的操作----"
map<LEADER>l <C-w>l
map<LEADER>h <C-w>h
map<LEADER>j <C-w>j
map<LEADER>k <C-w>k

"----调整屏幕的距离大小----"
map <up> :res -5<CR>
map <down> :res +5<CR>
map <left> :vertical resize-5<CR>
map <right> :vertical resize+5<CR>

"----分页的操作----"
map tk :tabe<CR>
map th :-tabnext<CR>
map tl :tabnext<CR>

"----FZF and search command----"
noremap <C-f> :FZF<CR>
set hlsearch
set incsearch
set ignorecase 
set smartcase


" set Vim-specific sequences for RGB colors 让st终端显示vim配色
"let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
"let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
