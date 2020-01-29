colorscheme xoria256
set background=dark

" Custom
nmap ,n :nohlsearch<cr>

"Save file after focus lost
:au FocusLost * :wa
:au BufLeave * :wa

:nmap ,b :BufExplorer<CR>
:nmap <C-b> :Buffers<CR>

:nmap ,p :NERDTreeFind<CR>
:nmap ,P :NERDTreeClose<CR>

" Return to last edit position when opening files (You want this!)
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
" Do not reset cursor position on each buffer switching
set nostartofline

" performance
set lazyredraw
set ttyfast

set noswapfile

set wrap
set linebreak   "wrap lines at convenient points
set showbreak=+++


"vertical/horizontal scroll off settings
set scrolloff=3
set sidescrolloff=7
set sidescroll=1

"load ftplugins and indent files
filetype plugin on
filetype indent on

" highlight search results
set hlsearch


" autoread updated files
set number

" Configure backspace so it acts as it should act
set backspace=eol,start,indent
set whichwrap+=<,>,h,l


set magic
set exrc
set secure

set autowriteall
set hidden " do not lose undo history when switching
