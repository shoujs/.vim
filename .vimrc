colorscheme molokai
set guifont=Consolas:h14

let Tlist_Ctags_Cmd='/usr/local/Cellar/ctags/5.8/bin/ctags' 

let g:Tlist_Ctags_Cmd='/usr/local/Cellar/ctags/5.8/bin/ctags' 

fu! CTagGen()
    :execute "!" . g:Tlist_Ctags_Cmd .  " -R ."
endfunction

nmap <silent> :ctg :call CTagGen()

let Tlist_Use_Right_Window = 1

syntax on
filetype on
filetype indent plugin on
autocmd FileType python setlocal et sta sw=4 sts=4
set expandtab
set tabstop=4
set shiftwidth=4


let g:pydiction_location = '~/.vim/pydiction/complete-dict' 

set number
augroup vimrc
    au BufReadPre * setlocal foldmethod=indent
    au BufWinEnter * if &fdm == 'indent' | setlocal foldmethod=manual | endif
augroup END

