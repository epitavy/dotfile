" Basic config"
colorscheme solarized
let g:solarized_termcolors=256

syntax on
set ruler
set showcmd
set number
set showmatch
set cc=100

" Search config "
set smartcase
set hlsearch

" git grep
command! -nargs=+ Ggr execute 'silent Ggrep!' <q-args> | cw | redraw!

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

" Remove :Explore top banner
let g:netrw_banner = 0

" ---- Mappings ----

" Map Q to I "
nnoremap Q I
" Map nh to :nohl "
nnoremap nh :nohl<CR>
" Unmap directional keys
inoremap <Left> <nop>
nnoremap <Left> <nop>
inoremap <Right> <nop>
nnoremap <Right> <nop>
inoremap <Up> <nop>
nnoremap <Up> <nop>
inoremap <Down> <nop>
nnoremap <Down> <nop>
" Map CTRL-P to :Explore
nnoremap <C-p> :Vexplore<CR><C-w>r
" Map µ to <Esc>
inoremap µ <Esc>
vnoremap µ <Esc>

" Recursive search "
set path+=**

function SetHTMLOptions()
    set cc=0
    set shiftwidth=2
    set tabstop=2
endfunction

function SetCXXOptions()
    set shiftwidth=2
    set tabstop=2
endfunction

autocmd BufRead,BufNewFile *.html call SetHTMLOptions()
autocmd BufNewFile,BufRead *.cxx,*.cpp,*.hh,*.h call SetCXXOptions()
autocmd BufNewFile,BufRead *.py :set cc=120
