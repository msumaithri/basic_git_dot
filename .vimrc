" this a dark color theme. I like it :)

" helps VIM in dentifying the file type and other such information by peeking in to the file
filetype on

" enables better command line completion
set wildmenu

" yay line numbers!
set nu
set cursorline

" get to see partial commands!
set showcmd

" see them clear! highlight searches
set hlsearch

" case ignorance
set ignorecase
set smartcase

set incsearch

" end
" set ruler

" dialog for failed commands
set confirm

" no more beeeeps!
set visualbell

set nostartofline

" easy way to correct the mistakes!
command W w
command Wq wq
command WQ wq
command Q q

" adding some shortcuts to ease the use of tabs
map <C-Left> : tabp<CR>
map <C-Right> : tabn<CR>
map <C-n> : tabnew 

" allowing mouse usage - stop it if it is really annoying!
set mouse=a

" formatting options
set tabstop=4
set shiftwidth=4
set softtabstop=4

set autoindent
set smartindent

syntax enable
