" Enable true colors if available
set termguicolors
" Enable italics, Make sure this is immediately after colorscheme
" https://stackoverflow.com/questions/3494435/vimrc-make-comments-italic
highlight Comment cterm=italic gui=italic

set nu
set ruler
syntax on

set visualbell 
set autoindent
set hlsearch
set incsearch 
set ignorecase 
set smartindent

set background=dark
colorscheme spacemacs-theme 

highlight LineNr ctermbg=black

" turn hybrid line numbers on
:set number relativenumber
:set nu rnu

:augroup numbertoggle
:  autocmd!
:  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
:  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
:augroup END
set splitright           " create vertical splits to the right
set splitbelow           " create horizontal splits below
" Normal mode
nnoremap <C-j> :m .+1<CR>==
nnoremap <C-k> :m .-2<CR>==

" Insert mode
inoremap <C-j> <ESC>:m .+1<CR>==gi
inoremap <C-k> <ESC>:m .-2<CR>==gi

" Visual mode
vnoremap <C-j> :m '>+1<CR>gv=gv
vnoremap <C-k> :m '<-2<CR>gv=gv
