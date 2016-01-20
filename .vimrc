set nocompatible
filetype off
set hidden


if ! has("gui_running")
    set t_Co=256
    set background=dark
else
    set background=light
endif

syntax on
filetype plugin on
filetype plugin indent on
au BufNewFile,BufRead *.lmx set filetype=xml
au BufNewFile,BufRead *.dump set filetype=sql

verbose hi Visual term=reverse cterm=reverse guibg=Black

" enables :Paste to just do what you want
command Paste execute 'set noai | insert | set ai'

" Set 7 lines to the cursor - when moving vertically using j/k
set so=7

" Turn on the WiLd menu
set wildmenu

" Ignore compiled files
set wildignore=*.o,*~,*.pyc

"Always show current position
set ruler

" Height of the command bar
set cmdheight=2

" Configure backspace so it acts as it should act
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

" Ignore case when searching
set ignorecase

" When searching try to be smart about cases
set smartcase

" Highlight search results
set hlsearch

" Makes search act like search in modern browsers
set incsearch

" Don't redraw while executing macros (good performance config)
set lazyredraw

" For regular expressions turn magic on
set magic

" Show matching brackets when text indicator is over them
set showmatch
" How many tenths of a second to blink when matching brackets
set mat=2

" No annoying sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500


set showcmd
set autoindent
set autoread
set nostartofline
set confirm
set number
set softtabstop=2
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Colors and Fonts
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Enable syntax highlighting
syntax enable
colorscheme slate

" Set higlight color
"hi Search guibg=peru guifg=wheat
hi Search guibg=LightBlue guifg=LightBlue
hi Comment ctermfg=DarkGrey guifg=DarkGrey

" Set utf8 as standard encoding and en_US as the standard language
set encoding=utf8

" Use Unix as the standard file type
set ffs=unix,dos,mac

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Text, tab and indent related
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Use spaces instead of tabs
set expandtab

" Be smart when using tabs ;)
set smarttab

" 1 tab == 4 spaces
set shiftwidth=2
set tabstop=2

" Linebreak on 500 characters
set lbr
set tw=500

set ai "Auto indent
set si "Smart indent
set wrap "Wrap lines


""""""""""""""""""""""""""""""
" => Status line
""""""""""""""""""""""""""""""
" Always show the status line
set laststatus=2


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Editing mappings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Remap VIM 0 to first non-blank character
map 0 ^

" CHanges the mapleader char to something more usable
let mapleader=","

" Move a line of text using ALT+[jk] or Comamnd+[jk] on mac
nmap <M-j> mz:m+<cr>`z
nmap <M-k> mz:m-2<cr>`z
vmap <M-j> :m'>+<cr>`<my`>mzgv`yo`z
vmap <M-k> :m'<-2<cr>`>my`<mzgv`yo`z

if has("mac") || has("macunix")
  nmap <D-j> <M-j>
  nmap <D-k> <M-k>
  vmap <D-j> <M-j>
  vmap <D-k> <M-k>
endif

" Delete trailing white space on save
"func! DeleteTrailingWS()
"  exe "normal mz"
"  %s/\s\+$//ge
"  exe "normal `z"
"endfunc

"Web filetypes
autocmd BufWrite *.coffee :call DeleteTrailingWS()
autocmd BufWrite *.css :call DeleteTrailingWS()
autocmd BufWrite *.xhtml :call DeleteTrailingWS()
autocmd BufWrite *.htm* :call DeleteTrailingWS()
autocmd BufWrite *.wss :call DeleteTrailingWS()
autocmd BufWrite *.jsp* :call DeleteTrailingWS()
autocmd BufWrite *.action :call DeleteTrailingWS()
autocmd BufWrite *.php* :call DeleteTrailingWS()
autocmd BufWrite *.rb :call DeleteTrailingWS()
autocmd BufWrite *.rhtml :call DeleteTrailingWS()
autocmd BufWrite *.rss :call DeleteTrailingWS()
autocmd BufWrite *.svg :call DeleteTrailingWS()
autocmd BufWrite *.cgi :call DeleteTrailingWS()
autocmd BufWrite *.dll :call DeleteTrailingWS()
autocmd BufWrite *.atom :call DeleteTrailingWS()
autocmd BufWrite *.yaws :call DeleteTrailingWS()
autocmd BufWrite *.py :call DeleteTrailingWS()
autocmd BufWrite *.java :call DeleteTrailingWS()
autocmd BufWrite *.xml :call DeleteTrailingWS()
autocmd BufWrite *.ldap :call DeleteTrailingWS()
autocmd BufWrite *.ldif :call DeleteTrailingWS()
autocmd BufWrite *.cpp :call DeleteTrailingWS()
autocmd BufWrite *.h :call DeleteTrailingWS()
autocmd BufWrite *.pl :call DeleteTrailingWS()
autocmd BufWrite *.js :call DeleteTrailingWS()
autocmd BufWrite *.sql :call DeleteTrailingWS()
autocmd BufWrite *.sh :call DeleteTrailingWS()

noremap <leader>w :call DeleteTrailingWS()<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Spell checking
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Pressing ,ss will toggle and untoggle spell checking
map <leader>ss :setlocal spell!<cr>

" Shortcuts using <leader>
map <leader>sn ]s
map <leader>sp [s
map <leader>sa zg
map <leader>s? z=

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Show extra whitespace
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set list
set listchars=tab:>.,trail:.,extends:.,nbsp:.
