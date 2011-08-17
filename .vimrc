au!
set showcmd
set number
set nocompatible          " We're running Vim, not Vi!
syntax on                 " Enable syntax highlighting
set t_Co=256
set mouse=a
colorscheme railscasts
set ai ts=2 sw=2 sts=2 et " autoindent with two spaces, always expand tabs

set foldmethod=syntax
set foldlevel=10
set diffopt=foldcolumn:0

let NERDTreeIgnore=['\~$', '\.pyc$']
let NERDTreeQuitOnOpen=1
let Tlist_Use_Right_Window=1

set ttimeoutlen=200  " Make Esc work faster
set statusline=%<%f\ %h%m%r%{fugitive#statusline()}%=%-14.(%l,%c%V%)\ %P
set laststatus=2

"let mapleader = ","
nmap <silent> ,r :! ruby %<CR>
nmap <silent> ,d :!fri <cword><CR>
nmap <silent> ,f :set foldlevel=1<CR>
nmap <silent> ,b :NERDTreeToggle<CR>
nmap ,g <C-W><Bar>
nmap ,h <C-W>_
nmap ,t <C-w>=
nmap ,p <C-w>p
nmap <C-h> <C-w>c
map Y y$
" Omnicompletion map
inoremap <C-space> <C-x><C-o>
" capitalize 
map! <C-F> <Esc>gUiw`]a
"map! <C-V> <Esc>bi#{<Esc>ea}<Esc>a

nmap \\           <Plug>NERDCommenterInvert
xmap \\           <Plug>NERDCommenterInvert

set backup                     " Enable creation of backup file.
set backupdir=~/.vim/backups " Where backups will go.
set directory=~/.vim/tmp     " Where temporary files will go.

au FileType ruby set tags+=~/.vim/tags/ruby/ruby
au FileType ruby set tags+=~/.vim/tags/ruby/rails
au FileType ruby set tags+=~/.vim/tags/ruby/rubygems

autocmd FileType ruby,eruby set omnifunc=rubycomplete#Complete

let g:ruby_minlines = 500
let g:rubycomplete_buffer_loading = 1
let g:rubycomplete_rails = 1

augroup mkd
  autocmd BufRead *.mkd  set ai formatoptions=tcroqn2 comments=n:>
augroup END

filetype plugin indent off
setlocal noautoindent
setlocal nocindent
setlocal nosmartindent
set indentexpr=
