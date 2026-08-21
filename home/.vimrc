set nu rnu ai si ci ar et ts=4 sts=4 sw=4 mouse=a bs=eol,start,indent cb=unnamedplus hls is nows ttymouse=sgr
filetype plugin indent on
syntax on

map <C-h> :wincmd h<CR>
map <C-j> :wincmd j<CR>
map <C-k> :wincmd k<CR>
map <C-l> :wincmd l<CR>

inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
inoremap ' ''<left>
inoremap " ""<left>

map <F5> :vnew %:r.log<CR>:wincmd L<CR>:50wincmd <<CR>:w<CR>:new %:r.out<CR>:w<CR>:new %:r.in<CR>:w<CR>:wincmd h<CR>
map <F9> :!clear<CR>:!g++ -std=c++20 -O2 -Wall -Wextra -Wshadow -Wfatal-errors -static -DLOCAL %:r.cpp -o %:r
map <F10> :!time ./%:r 2> %:r.log
map <F11> :!time ./%:r < %:r.in > %:r.out 2> %:r.log
