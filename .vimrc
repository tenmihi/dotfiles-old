"
" generics
"

" enable syntax highlight
syntax on

" show command on status-line
set showcmd

" show line number
set number 

" show cursorline
set cursorline

" show current line and corumn number
set ruler

" enable realtime search
set incsearch

" enable search highlight
set hlsearch

" enable line warp
" set nowrap

" show pair braces
set showmatch

" auto move to next line when reached line head or tail.
" set whichwrap=h,l

" enable warp scan
set wrapscan

" ignore case
set ignorecase

" inore case (smart)
set smartcase

" can switch other file without saving (?)
set hidden

" max history
set history=2000

" show edit filename
set statusline+=%<%F

" show change 
set statusline+=%m

"
" tabs,indents
"

" enable auto indent
set autoindent

" transfer tab to space
set expandtab

" spaces per a tab
set tabstop=2

" indent shortcut
set shiftwidth=2

" enable paste mode
" set paste

"
" syntax highlight
"

" enable markdown syntax highlight
set syntax=markdown
au BufRead,BufNewFile *.md set filetype=markdown

"
" teaching method
"

fun! TeachKey(message)
    let summon = join(["echo '", a:message, "を使いましょねー'"])
    exec summon
endfun
nnoremap <buffer> <Left> <Esc>:call TeachKey('h')<CR>
nnoremap <buffer> <Right> <Esc>:call TeachKey('l')<CR>
nnoremap <buffer> <Up> <Esc>:call TeachKey('k')<CR>
nnoremap <buffer> <Down> <Esc>:call TeachKey('j')<CR>
nnoremap <buffer> <PageUp> <Esc>:call TeachKey('Ctrl+B')<CR>
nnoremap <buffer> <PageDown> <Esc>:call TeachKey('Ctrl+F')<CR>
inoremap <buffer> <Left> <Esc>:call TeachKeyBi)ding('h')<CR>
inoremap <buffer> <Right> <Esc>:call TeachKey('l')<CR>
inoremap <buffer> <Up> <Esc>:call TeachKey('k')<CR>
inoremap <buffer> <Down> <Esc>:call TeachKey('j')<CR>
inoremap <buffer> <PageUp> <Esc>:call TeachKey('Ctrl+B')<CR>
inoremap <buffer> <PageDown> <Esc>:call TeachKey('Ctrl+F')<CR>
vnoremap <buffer> <Left> <Esc>:call TeachKeyBi)ding('h')<CR>
vnoremap <buffer> <Right> <Esc>:call TeachKey('l')<CR>
vnoremap <buffer> <Up> <Esc>:call TeachKey('k')<CR>
vnoremap <buffer> <Down> <Esc>:call TeachKey('j')<CR>
vnoremap <buffer> <PageUp> <Esc>:call TeachKey('Ctrl+B')<CR>
vnoremap <buffer> <PageDown> <Esc>:call TeachKey('Ctrl+F')<CR>
