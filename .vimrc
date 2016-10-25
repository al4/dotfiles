set guifont=Monaco:h12
syntax on

set expandtab
set tabstop=4
set shiftwidth=4
set hlsearch
set list
set colorcolumn=120
set listchars=tab:>.,trail:.,extends:#,nbsp:.
set hidden
set foldmethod=indent
set foldnestmax=1


filetype plugin indent on
set number
set background=dark
let g:solarized_termtrans = 1
colorscheme solarized

set history=1000
set undolevels=1000
"set title
set visualbell
let g:terraform_fmt_on_save=1
autocmd FileType terraform setlocal sw=2 ts=2 et

" minibuf functionality
"let g:miniBufExplMapWindowNavVim = 1
"let g:miniBufExplMapWindowNavArrows = 1
"let g:miniBufExplMapCTabSwitchBufs = 1
"let g:miniBufExplModSelTarget = 1 

" Open tree on start
" autocmd vimenter * NERDTree

" Ctrl+N shortcut for tree
"map <C-n> :NERDTreeToggle<CR>

" Close if nerdtree is only open window
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

set omnifunc=syntaxcomplete#Complete
nnoremap <C-c> :bp\|bd #<CR>
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

nnoremap <space> za
vnoremap <space> zf

" Use ctrl-[hjkl] to select the active split!
nmap <silent> <c-k> :wincmd k<CR>
nmap <silent> <c-j> :wincmd j<CR>
nmap <silent> <c-h> :wincmd h<CR>
nmap <silent> <c-l> :wincmd l<CR>

imap jj <ESC>


let g:syntastic_always_populate_loc_list = 1

let g:syntastic_python_checkers=["flake8"]
let g:syntastic_python_flake8_args="--ignore=E501,W601"

execute pathogen#infect()
