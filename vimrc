

" - PATHOGEN SETUP

execute pathogen#infect()


" - DISPLAY
syntax on
filetype plugin indent on
set number " line numbers PWN!
colorscheme jellybeans


" - TEXT

set expandtab
set smarttab
set shiftwidth=2
set softtabstop=2


" - INTERFACE

set mouse=a
set incsearch
set wildmenu
set hid
set smartcase
set lazyredraw
set magic
set noerrorbells
set novisualbell
set nobackup
set nowb
set noswapfile


" - FUNCTIONS
"
" Return to last edit position when opening files (You want this!)
autocmd BufReadPost *
     \ if line("'\"") > 0 && line("'\"") <= line("$") |
     \   exe "normal! g`\"" |
     \ endif
" Remember info about open buffers on close
set viminfo^=%


" Delete trailing white space on save, useful for Python and CoffeeScript ;)
 func! DeleteTrailingWS()
   exe "normal mz"
     %s/\s\+$//ge
       exe "normal `z"
       endfunc
       autocmd BufWrite *.py :call DeleteTrailingWS()
       autocmd BufWrite *.coffee :call DeleteTrailingWS()


" - PLUGIN - CTRLP
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'
set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " MacOSX/Linux
set wildignore+=*\\tmp\\*,*.swp,*.zip,*.exe  " Windows
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'




