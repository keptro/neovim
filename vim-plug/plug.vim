call plug#begin('~/.vim/plugged')

"----other useful plugin----""
Plug 'vim-airline/vim-airline'
Plug 'w0rp/ale'
Plug 'mhinz/vim-startify'
Plug 'jiangmiao/auto-pairs'

Plug 'mbbill/undotree/'
Plug 'preservim/nerdtree'
Plug 'tpope/vim-surround'
Plug 'scrooloose/nerdcommenter'
Plug 'liuchengxu/vim-which-key'
Plug 'liuchengxu/vim-which-key', { 'on': ['WhichKey', 'WhichKey!'] }
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'voldikss/vim-floaterm'

"----fzf----"
Plug 'junegunn/fzf.vim'
Plug 'junegunn/fzf', { 'do': './install --bin' }
Plug 'luochen1990/rainbow'
Plug 'godlygeek/tabular'

"----vim colorscheme----"
Plug 'connorholyday/vim-snazzy'
Plug 'gruvbox-material/vim', {'as': 'gruvbox-material'}
Plug 'sheerun/vim-polyglot'
Plug 'ajmwagar/vim-deus'
Plug 'rakr/vim-one/'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'arcticicestudio/nord-vim'

"----代码片段----"
Plug 'honza/vim-snippets'

"----markdown----"
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() } }
Plug 'dhruvasagar/vim-table-mode', { 'on': 'TableModeToggle' }
Plug 'vimwiki/vimwiki'
call plug#end()
