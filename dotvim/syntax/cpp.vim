" Vim syntax file
" Language:	C++
" Maintainer:	Ken Shan <ccshan@post.harvard.edu>
" Last Change:	2002 Jul 15

" For version 5.x: Clear all syntax items
" For version 6.x: Quit when a syntax file was already loaded
if version < 600
  syntax clear
elseif exists("b:current_syntax")
  finish
endif

" Read the C syntax to start with
if version < 600
  so <sfile>:p:h/c.vim
else
  runtime! syntax/c.vim
  unlet b:current_syntax
endif

" C++ extentions
syn keyword cppStatement	new delete this friend using
syn keyword cppAccess		public protected private
syn keyword cppType		inline virtual explicit export bool wchar_t
syn keyword cppExceptions	throw try catch
syn keyword cppOperator		operator typeid
syn keyword cppOperator		and bitor or xor compl bitand and_eq or_eq xor_eq not not_eq
syn match   cppCast		"\<\(const\|static\|dynamic\|reinterpret\)_cast\s*<"me=e-1
syn match   cppCast		"\<\(const\|static\|dynamic\|reinterpret\)_cast\s*$"
syn keyword cppStorageClass	mutable
syn keyword cppStructure	class typename template namespace
syn keyword cppNumber		NPOS
syn keyword cppBoolean		true false

" The minimum and maximum operators in GNU C++
syn match cppMinMax "[<>]?"

"######################################
" Added By Ashwin Vaghasia - START
"######################################
syn match cppUserConstant "\<[A-Z][A-Z0-9_]\+\>"
syn match cppClass "\zs\w\+\ze::"
syn match cppClass "\zs\w\+\ze\s\+\w\+\s*[=;,)\[]" contains=cppConstant,cppUserConstant
syn match cppClass "\zs\w\+\ze\s\+\w\+\s*$" contains=cppConstant,cppUserConstant
syn match cppUserMethod "\zs\w\+\ze\s*(" contains=cppConstant,cppUserConstant
syn match cppObject "\zs\w\+\ze\.\$\w"
syn match cppObject "\zs\w\+\ze\->\w"
syn match cppObject "\zs\w\+\ze\.\w"
syn match cppObject "\zs\w\+\ze\[\w\+\]\.\w"
syn match cppTemplate "\zs\w\+\ze<"
syn match cppPointer "\zs\w\+\ze\s\+\*\w\+\s*[=;,)\[]" contains=cppConstant,cppUserConstant
"######################################
" Added By Ashwin Vaghasia - END
"######################################

" Default highlighting
if version >= 508 || !exists("did_cpp_syntax_inits")
  if version < 508
    let did_cpp_syntax_inits = 1
    command -nargs=+ HiLink hi link <args>
  else
    command -nargs=+ HiLink hi def link <args>
  endif
  "######################################
  " Added By Ashwin Vaghasia - START
  "######################################
    hi cppUserMethod      term=italic,underline gui=italic,underline  cterm=italic,underline ctermfg=5 guifg=#00d800
    hi cppClass           term=italic gui=italic  cterm=italic ctermfg=5 guifg=#00d800
    hi cppObject          term=italic gui=italic  cterm=italic ctermfg=5 guifg=DarkOrange 
    hi cppTemplate        term=italic gui=italic  cterm=italic ctermfg=5 guifg=Yellow 
    hi cppPointer         term=italic gui=italic  cterm=italic ctermfg=5 guifg=DarkYellow 
    HiLink cppUserConstant	 Constant
  "######################################
  " Added By Ashwin Vaghasia - END
  "######################################

  HiLink cppAccess		cppStatement
  HiLink cppCast		cppStatement
  HiLink cppExceptions		Exception
  HiLink cppOperator		Operator
  HiLink cppStatement		Statement
  HiLink cppType		Type
  HiLink cppStorageClass	StorageClass
  HiLink cppStructure		Structure
  HiLink cppNumber		Number
  HiLink cppBoolean		Boolean
  delcommand HiLink
endif

"######################################
" Added By Ashwin Vaghasia - START
"######################################
" Adding Matchit extension
" Pattern Matching charater in System Verilog
let b:match_words = '\<begin\>:\<end\>,'
                   \ . '\<\(ifdef\|ifndef\)\>:\<endif\>,'
                   \ . '\<module\>:\<endmodule\>,'
                   \ . '\<interface\>:\<endinterface\>,'
                   \ . '\<task\>:\<endtask\>,'
                   \ . '\<generate\>:\<endgenerate\>,'
                   \ . '\<function\>:\<endfunction\>,'
                   \ . '\<class\>:\<endclass\>,'
                   \ . '\<program\>:\<endprogram\>,'
                   \ . '\<clocking\>:\<endclocking\>,'
                   \ . '\<\(case\|casez\)\>:\<endcase\>,'
                   \ . '\<do\>:\<while\>,'
                   \ . '\<fork\>:\<\(join_any\|join_none\|join\)\>'
"######################################
" Added By Ashwin Vaghasia - END
"######################################

let b:current_syntax = "cpp"

" vim: ts=8
