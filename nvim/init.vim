" Options
set clipboard=unnamedplus
set completeopt=noinsert,menuone,noselect
set cursorline
set hidden
set inccommand=split
"set mouse=a
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

" Keybind
inoremap jk <esc>

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

    " ALE
    Plug 'dense-analysis/ale'

    " Markdown
    Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}    

    " Git
    Plug 'airblade/vim-gitgutter'

    " C 
    Plug 'deoplete-plugins/deoplete-clang'   

call plug#end()

" Plugin Config

"---> Theme Config 
let g:sonokai_style='atlantis'
let g:sonokai_better_performance=1
"let g:sonokai_transparent_background=1
colorscheme sonokai

"---> MarkdownPreview
let g:mkdp_auto_start=0
let g:mkdp_auto_close=1
let g:mkdp_refresh_slow=0
let g:mkdp_command_for_global=0
let g:mkdp_echo_preview_url=0
let g:mkdp_theme='light'

"---> Airline 
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1 

"---> NERDTree
let NERDTreeShowHidden = 1

"---> ALE 
let g:ale_linters = {
    \'python' : ['pylint'],
    \ 'vim' : ['vint'],
    \ 'cpp' : ['clang'],
    \ 'c' : ['clang']
\}
