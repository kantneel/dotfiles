call plug#begin()
Plug 'sheerun/vim-polyglot'
Plug 'scrooloose/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
call plug#end()

set mouse=a
set incsearch
set wildmenu
set backspace=indent,eol,start
set cursorline
set scrolloff=5
set sidescrolloff=5
set shiftwidth=4
set tabstop=4
set hlsearch
set expandtab
filetype plugin indent on

" set Vim-specific sequences for RGB colors
"let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
"#let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"

colorscheme onedark

map <C-n> :NERDTreeToggle<CR>

"" Airline Settings
set laststatus=2
set showtabline=2

" Strip Whitespace on Save
autocmd BufWritePre * :call StripTrailingWhitespaces()
function! StripTrailingWhitespaces()
    let _s=@/
    let l = line('.')
    let c = col('.')
    %s/\s\+$//e
    let @/=_s
    call cursor(l, c)
endfunction
