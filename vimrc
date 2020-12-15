" Basic config"
syntax on
set ruler
set showcmd
set number
set showmatch
set cc=100

" Search config "
set smartcase
set hlsearch

" Tab config : 1 tab is 4 spaces "
set expandtab
set smarttab
set shiftwidth=4
set tabstop=4

" Indent config "
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
autocmd BufNewFile,BufRead *.py :set cc=120
