set ts=4 sts=4 sw=4 expandtab clipboard=unnamedplus backspace=eol,start,indent mouse=a
set autoread autoindent smartindent cindent nu rnu
syntax on
filetype plugin indent on

map <C-h> :wincmd h<CR>
map <C-j> :wincmd j<CR>
map <C-k> :wincmd k<CR>
map <C-l> :wincmd l<CR>

inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
inoremap ' ''<left>
inoremap " ""<left>

map <F9> :call File()<CR>
map <F11> :call Run()<CR>

func! File()
	exec ":vnew %<.out"
	exec ":wincmd L"
	exec ":50wincmd <"
	exec ":w"
	exec ":new %<.in"
	exec ":w"
	exec ":wincmd h"
endfunc

func! Run()
	exec ":wa"
	exec ":!g++ -DLOCAL -std=c++23 -Ofast -Wall -static % -o %<"
	exec ":!./%<"
endfunc
