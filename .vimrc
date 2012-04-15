" this seems like something i should set.  Still not completely sure about
" what it does haha
" http://vimdoc.sourceforge.net/htmldoc/starting.html#compatible-default
set nocompatible

" add line numbers
set number

" show position numbers and info
set ruler

" make sure that buffers get hidden, this will help hold on to undo histoory
" when switching buffers
set hidden

" Start pathogen
call pathogen#infect()

" turn on syntax highlighting
syntax on

" I usually use a dark background
set background=dark


" set color scheme
color Sunburst

" Don't bother with font options and stuff unless we're in the gui
if has("gui_running")
    " Set the font to inconsolata size 12
    if has("gui_gtk2")
        set guifont=Inconsolata\ 12
    elseif has("gui_photon")
        set guifont=Inconsolata:s12
    elseif has("gui_kde")
        set guifont=Inconsolata/12/-1/5/50/0/0/0/1/0
    else
        set guifont=Inconsolata:h12:cDEFAULT
    endif
endif

" do not wrap long lines by default
set nowrap

" show tabs as 4 spaces
set tabstop=4

" number of spaces to use for each step of auto indent
set shiftwidth=4

" use spaces instead of tabs
set expandtab

" number of spaces to use when pressing the tab key
set softtabstop=4

" show tabs as >...
set list listchars=tab:>.

" highlight the search
set hlsearch

" incremental search
set incsearch

" ignore case when searching
set ignorecase

" if the search string has an upper case letter in it, the search will be case sensitive
set smartcase

" allow for tab completion in the command line
set wildmode=list:longest

" filetypes to ignore when auto completeing
set wildignore+=*.o,*.obj,.git,*.rbc,*.class,.svn

" always show the status bar
set laststatus=2

" put more information in the status line
set statusline=%F%m%r%h%w\ [format=%{&ff}]\ [type=%Y]\ [ascii=\%03.3b]\ [hex=\%02.2B]\ [len=%L]\ [enc=%{strlen(&fenc)?&fenc:&enc}]\ [pos=%04l,%04v][%p%%]

" Set a print margin at 85
set colorcolumn=85

" add json syntax highlighting
au BufNewFile,BufRead *.json set ft=javascript

" add markdown syntax highlighting
au BufNewFile,BufRead *.md set ft=mkd

" Add less syntax highighting
au BufNewFile,BufRead *.less set filetype=less

" stop making any noise and don't flash the screen...
" For some reason this has to be set like this..
au BufNewFile,BufRead * set vb t_vb="<Esc>|0f"

" Hightlight trailing whitespace
highlight ExtraWhitespace ctermbg=red guibg=red

" this will pick up the trailing white space as long as we aren't typing on the line
match ExtraWhitespace /\s\+\%#\@<!$/

" highlight the current line
set cursorline

" make backspace work like most other things
set backspace=2

" set the fold method as using text markers
set foldmethod=marker

" A little snippet that should help with encoding
if has("multi_byte")
    if &termencoding == ""
        let &termencoding = &encoding
    endif
    set encoding=utf-8
    setglobal fileencoding=utf-8
    "setglobal bomb
    set fileencodings=ucs-bom,utf-8,latin1
endif

" Setup indenation
if has("autocmd")
    filetype plugin indent on
endif

" Turn on backups
set backup

" Keep the backup and swap files out of the working directory
" Forward slashes seem to work in window.  The trailing double slash
" makes the file name unique
set directory=c:/tmp//,/tmp//,.
set backupdir=c:/tmp//,/tmp//,.

" Set a global variable for authors.  I use this in templates
let g:author = "John Hilliard"

" Try to stop it from using strange characters
let g:NERDTreeDirArrows = 0

" make sure the default file format is unix
set ff=unix

" Set the mouse mode to be a so that everything works nicely on the terminal
set mouse=a

" include my mappings file
if has("win32")
    source $HOME/vimfiles/mappings.vim
else
    source $HOME/.vim/mappings.vim
endif

