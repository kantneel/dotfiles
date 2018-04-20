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

" Colors
if (has("termguicolors"))
  set termguicolors                " enable 24 bit colors
endif
if !has('nvim')                   " needed to make 24 bit color work with  vim
  set t_8b=[48;2;%lu;%lu;%lum
  set t_8f=[38;2;%lu;%lu;%lum
endif

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
