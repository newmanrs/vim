" Move viminfo from ${HOME}.viminfo to .vim
set viminfo+=n~/.vim/viminfo

" Shift tabs
nnoremap <S-Tab> <<
inoremap <S-tab> <C-d>
nnoremap <Tab> >>

syntax on
filetype plugin indent on

colorscheme torte

"Standard QoL
set backspace=indent,eol,start
set number
set ruler
set encoding=utf-8
set expandtab
set shiftwidth=4
set tabstop=4

set list listchars=tab:→\ ,trail:·
let g:solarized_termcolors=256

set smartcase
set smarttab
set smartindent
set incsearch
set history=5000

" F5 Write and execute current file in python interpreter
autocmd FileType python map <buffer> <F5> :w<CR>
    \ :exec '!clear; time python3' shellescape(@%, 1)<CR>

autocmd FileType python imap <buffer> <F5> <esc> :w<CR>
    \ :exec '!clear; time python3' shellescape(@%, 1)<CR>

" F7 - hopefully doesn't conflict with vsstudio
autocmd FileType python map <buffer> <F7> :w<CR>
    \ :exec '!clear; time python3' shellescape(@%, 1)<CR>

autocmd FileType python imap <buffer> <F7> <esc> :w<CR>
    \ :exec '!clear; time python3' shellescape(@%, 1)<CR>



" Makefiles require tabs
autocmd FileType make set noexpandtab

" CLIPBOARDS
set clipboard=unnamedplus

" Windows support
func! GetSelectedText()
    normal gv"xy
    let result = getreg("x")
    return result
endfunc

if system("uname -a | grep -i Microsoft | wc -l")
    noremap <C-C> :call system('clip.exe', GetSelectedText())<CR>
    " noremap <C-X> :call system('clip.exe', GetSelectedText())<CR>gvx
endif

" Vim syntax plugin submodule
let g:python_highlight_all = 1
