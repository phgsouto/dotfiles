" My vim configuration.
" phsouto <github.com/phsouto>

" Essential
filetype on
filetype plugin on
filetype indent on
set visualbell
set hidden
set laststatus=2
set showcmd
set showmode
set ruler
set number
set backspace=eol,start,indent

" Tabs = 4 spaces 
set tabstop=4
set shiftwidth=4 
set softtabstop=4
set expandtab
set autoindent
set smartindent

" Textwidth = 79 chars
set textwidth=79
set wrap

" Make 'cw' and like commands put a $ at the end instead of deleting stuff
set cpoptions=ces$

" Better cmd completion
set wildmenu

" Highlight the search
set hlsearch

" Leave 5 lines for scope
set scrolloff=5

" 100 lines of history
set history=100

" Syntax Highlight
syntax on

" Ignore case when searching
set ignorecase
set smartcase
set incsearch

" Automatically read a file thad has changed on disk
set autoread

" No backups or swapfiles
set nobackup
set nowritebackup
set noswapfile

" Add the system's clipboard to vim's clipboard
set clipboard+=unnamed

" Statusline

" ['/path/to/file']['buffer number']['current line number'/'number of lines in
" the file':'column number'][location in the file in %]['decimal and hex codes
" of the char under the cursor']['file has changed?']['file is
" read-only?']['file type']

set stl=
set stl+=[%f]
set stl+=[%n]
set stl+=[%l/%L:%c][%p%%]
set stl+=[%b\ 0x%B]
set stl+=%m
set stl+=%r 
set stl+=[%{&fileformat} 
set stl+=\ %{&fileencoding}]
set stl+=%y

colorscheme slate

" Mappings
" Remove the '^M' crap Windows puts in sometimes.
noremap <Leader>m mmHmt:%s/ <C-V><CR>//ge<CR>'tzt'm

" Switch between colorcolumn 'on'or 'off'
nmap <F2> :let &colorcolumn = (&colorcolumn == 80 ? 0 : 80)<CR>

" Clear the search highlight
nmap <F3> :let @/ = ""<CR>

" Fast edit and source this file
nnoremap <Leader>ev :edit $MYVIMRC<CR>
nnoremap <Leader>sv :source $MYVIMRC<CR>

" Fast switch to last buffer
nnoremap <Leader>bb :b#<CR>

