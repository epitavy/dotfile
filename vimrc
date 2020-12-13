" Basic option"
syntax on
set ruler
set showcmd
set number
set showmatch
set cc=100

" Searching option "
set smartcase
set hlsearch

" Tab option : 1 tab is 4 spaces "
set expandtab
set smarttab
set shiftwidth=4
set tabstop=4

" Indent option "
set autoindent
set smartindent

" Display trailing spaces "
set list listchars=trail:.

" Map Q to I "
nnoremap Q I

" Map nh to :nohl "
nnoremap nh :nohl<CR>

" Recursive search "
set path+=**

function SetHTMLOptions()
    set cc=0
    set shiftwidth=2
    set tabstop=2
endfunction

autocmd BufRead,BufNewFile *.html call SetHTMLOptions()
