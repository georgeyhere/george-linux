
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

" Keybinds
imap jj <Esc>
noremap! <C-?> <C-h>

"vnoremap :w !cp /dev/null ~/temp.txt && cat > ~/temp.txt
"noremap :r !cat ~/temp.txt

" 
set mouse=v

"
set undolevels=1000

"------------------------- UI ------------------------ "
set wildmenu
set ruler
set number
set relativenumber
set cursorline

syntax enable


set wildignore=*.o,*~,*.pyc
if has("win16") || has("win32")
    set wildignore+=.git\*,.hg\*,.svn\*
else
    set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,.DS_Store
endif

"------------------------ SYNTAX --------------------- "
au BufRead,BufNewFile *.sv,*.svh,*.svi,*.sva,*.v,*.log,*.log.*,*.txt set filetype=systemverilog
au! Syntax systemverilog source ~/.vim/syntax/systemverilog.vim
au BufRead,BufNewFile *.h,*.cpp set filetype=cpp                                                                                                             
au! Syntax cpp source ~/.vim/syntax/cpp.vim
au BufRead,BufNewFile *.csh set filetype=csh  
  
"------------------------ COLOR ---------------------- "
set regexpengine=0
let g:rainbow_active = 1

if has('termuicolors')
    set termguicolors
endif
let g:sonokai_style='atlantis'
let g:sonokai_better_performance = 1
colorscheme sonokai
