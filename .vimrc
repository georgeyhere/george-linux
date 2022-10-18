
" ---------------------- GENERAL -------------------- "
filetype plugin on
filetype indent on

" Set auto read when a file is changed externally
set autoread
au FocusGained,BufEnter * checktime

" :W sudo saves the file
command! W execute 'w !sudo tee % > /dev/null' <bar> edit!

" tabs to 4 spaces
set autoindent
set smartindent
set expandtab
set tabstop=4
set shiftwidth=4

"------------------------- UI ------------------------ "
set wildmenu
set ruler
set number

set wildignore=*.o,*~,*.pyc
if has("win16") || has("win32")
    set wildignore+=.git\*,.hg\*,.svn\*
else
    set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,.DS_Store
endif

"------------------------ COLOR ---------------------- "
syntax enable
set regexpengine=0
let g:rainbow_active = 1


