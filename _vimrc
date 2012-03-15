" add line numbers
set number

" show position numbers and info
set ruler

" turn on syntax highlighting
syntax on

" set color scheme
color twilight

" Set the font to inconsolata size 12
set guifont=Inconsolata:h12

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

" Set a print margin at 85
set colorcolumn=85

" add json syntax highlighting
au BufNewFile,BufRead *.json set ft=javascript

" Hightlight trailing whitespace
highlight ExtraWhitespace ctermbg=red guibg=red

" this will pick up the trailing white space as long as we aren't typing on the line
match ExtraWhitespace /\s\+\%#\@<!$/

" highlight the current line
set cursorline

" make backspace work like most other things
set backspace=2

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

" Function for tab complete from vim wiki.  There is one minor change that
" lets me tab at the beginning of a line right next to a word
" http://vim.wikia.com/wiki/Smart_mapping_for_tab_completion
function! Smart_TabComplete()
    let line = getline('.')

    let substr = strpart(line, -1, col('.'))
    let substr = matchstr(substr, "[^ \t]*$")
    if (strlen(substr)==0)
        return "\<tab>"
    endif
    let has_period = match(substr, '\.') != -1
    let has_slash = match(substr, '\/') != -1
    if (!has_period && !has_slash)
        return "\<C-X>\<C-P>"
    elseif ( has_slash )
        return "\<C-X>\<C-F>"
    else
        return "\<C-X>\<C-O>"
    endif
endfunction
" remap for tab completion
inoremap <tab> <c-r>=Smart_TabComplete()<CR>

" Setup indenation
if has("autocmd")
    filetype plugin indent on
endif





"""""""""""""""""""""""""""""""""""
" Key remappings
"""""""""""""""""""""""""""""""""""
" cut
vnoremap <C-X> "+x
" copy
vnoremap <C-C> "+y
" paste
map <C-V> "+gP:
exe 'inoremap <script> <C-V>' paste#paste_cmd['i']
exe 'vnoremap <script> <C-V>' paste#paste_cmd['v']
map <C-A>   ggVG

" remap tab to allow for visual mode adjustments in indentation
vmap <Tab> >gv
vmap <S-Tab> <gv
