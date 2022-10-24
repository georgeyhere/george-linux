" Options
set clipboard=unnamedplus
set completeopt=noinsert,menuone,noselect
set cursorline
set hidden
set inccommand=split
set mouse=a
set number
set relativenumber
set splitbelow splitright
set title
set ttimeoutlen=0
set wildmenu

" Tab Config
set expandtab
set shiftwidth=4
set tabstop=4

" Syntax
filetype plugin indent on
syntax on

" Color support
set t_Co=256

" Plugins
call plug#begin()
    " Appearance
    Plug 'vim-airline/vim-airline'
    Plug 'ryanoasis/vim-devicons'
    Plug 'sainnhe/sonokai'

    " Utilities 
    Plug 'sheerun/vim-polyglot'
    Plug 'jiangmiao/auto-pairs'
    Plug 'ap/vim-css-color'
    Plug 'preservim/nerdtree'
    Plug 'ervandew/supertab'
    Plug 'godlygeek/tabular'
    Plug 'Yggdroot/indentLine'

    " Completion / linters / formatters
    Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}    

    " Git
    Plug 'airblade/vim-gitgutter'

call plug#end()

" Plugin Config

"---> Theme Config 
let g:sonokai_style='atlantis'
let g:sonokai_better_performance=1
"let g:sonokai_transparent_background=1
colorscheme sonokai

"---> Airline 
let g:airline_theme='sobrio'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1 

"---> NERDTree
let NERDTreeShowHidden = 1


