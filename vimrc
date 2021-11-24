"  Move viminfo from ${HOME}.viminfo to .vim
set viminfo+=n~/.vim/viminfo

"Shift tabs
nnoremap <S-Tab> <<
inoremap <S-tab> <C-d>
nnoremap <Tab> >>

syntax on
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

if system("uname -a | grep Microsoft | wc -l")
    " :echom "CONFIG WINDOWS CLIPBOARD"
    noremap <C-C> :call system('clip.exe', GetSelectedText())<CR>
    noremap <C-X> :call system('clip.exe', GetSelectedText())<CR>gvx
endif

