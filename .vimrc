colorscheme evening

" enables better command line completion
set wildmenu

" format the status lines to have a fixed status line
set laststatus=2

" show the function name being edited in the status line in longer files
fun! ShowFuncName()
    let lnum = line(".")
    let col = col(".")
    echohl ModeMsg
    echo getline(search("^[^ \t#/]\\{2}.*[^:]\s*$", 'bW'))
    echohl None
    call search("\\%" . lnum . "l" . "\\%" . col . "c")
endfun
map f :call ShowFuncName() <CR>

" displays bad whitespace
highlight BadWhitespace ctermbg=red guibg=red

" displays tabs at the beginning of a line in Python mode
au BufRead,BufNewFile *.py,*.pyw match BadWhitespace /^\t\+/
" displays trailing whitespace as bad
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

" wrap text after 79 characters
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h set textwidth=79

" helps VIM in dentifying the file type and other such information by peeking in to the file
filetype on
" Automatically indent based on file type: 
filetype indent on

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

" CSCOPE related
if has('cscope')
      " set cscopetag cscopeverbose
      set cscopetag
endif

"shorcut
map g<C-]> :cs find 3 <C-R>=expand("<cword>")<CR><CR>
map g<C-\> :cs find 0 <C-R>=expand("<cword>")<CR><CR>i

"key mappings for cscope
nmap <C-\>s :cs find s <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>g :cs find g <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>c :cs find c <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>t :cs find t <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>e :cs find e <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>f :cs find f <C-R>=expand("<cfile>")<CR><CR>
nmap <C-\>i :cs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
nmap <C-\>d :cs find d <C-R>=expand("<cword>")<CR><CR>

" above commands with scs gives the horizontal split
"key mappings for vertical split vert scs give vertical splt

