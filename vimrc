colorscheme ron
set nocompatible
set shiftwidth=2
set softtabstop=2
set number
syntax on
"set foldmethod=syntax
filetype plugin on
filetype plugin indent on
autocmd FileType ruby,eruby,yaml set ai sw=2 sts=2
autocmd FileType ruby map <C-r> <Esc>:!ruby %
set autoread
set showcmd
set ruler
set incsearch
set hlsearch
:map <F5> i{<Esc>ea}<Esc>
:map \p i(<Esc>ea)<Esc>
:map <C-f> :%s/
:map <C-c> y
:map <C-v> p
set fileencodings=ucs-bom,utf-8,gbk,cp936,gb18030,big5,euc-jp,euc-kr,latin1

set cursorline
highlight Cursorline guibg=lightblue ctermbg=lightgray
set cursorcolumn

set guifont=Menlo\ Regular:h12
set guioptions-=T

autocmd vimenter * NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

"key map for js
autocmd FileType javascript set ai sw=4 sts=4
autocmd FileType javascript set syntax=jquery
autocmd FileType javascript set fileencoding=GBK
autocmd FileType javascript imap JS_nfile /*<CR>@author: bo.jiangb<CR>@date:<Esc>:read !date<CR>kJA<CR>@description:<CR>/<Esc>kA
autocmd FileType javascript imap JS_nimport (function(){<CR>ImportJavscript={<CR>url:function(url){<CR>document.write("<script type=\"text/javascript\" src=\"" + url + "\"></script>");<CR>}<CR>}<CR>})();<CR> 
autocmd FileType javascript imap JS_newready (fuction($){<CR>$(document).ready(function(){<CR>});<CR>})(jQuery);<Esc>kO
autocmd FileType javascript imap JS_nfunc  funtion (){<CR><CR>}<Esc>kkwi
autocmd FileType javascript imap JS_nstyle http://style.china.alibaba.com
autocmd FileType javascript imap ( ()<Esc>i
autocmd FileType javascript imap [ []<Esc>i
autocmd FileType javascript imap { {}<Esc>i

au BufRead,BufNewFile *.vm set ft=html fileencoding=gbk syntax=velocity

autocmd FileType css set omnifunc=csscomplete#CompleteCSS 

call pathogen#infect()
"powerline{
set guifont=PowerlineSymbols\ for\ Powerline
set nocompatible
set t_Co=256
"let g:Powerline_symbols = 'fancy'
"}

:map <C-t> :CommandT<CR>
set tags=~/.tags
:map <C-e> :NERDTree<CR>
:map <F8> :TagbarToggle<CR>
