" Standard key mappings for cut/copy/paste
vnoremap <C-X> "+x
vnoremap <C-C> "+y
map <C-V> "+gP:
exe 'inoremap <script> <C-V>' paste#paste_cmd['i']
exe 'vnoremap <script> <C-V>' paste#paste_cmd['v']
map <C-A>   ggVG

" remap tab to allow for visual mode adjustments in indentation
vmap <Tab> >gv
vmap <S-Tab> <gv

" Remap the space bar to open and close folds
nnoremap <silent> <Space> @=(foldlevel('.')?'za':"\<Space>")<CR>
vnoremap <Space> zf

" faster buffer cyling
map <C-right> <ESC>:bn<CR>
map <C-left> <ESC>:bp<CR>
map \l <ESC>:bn<CR>
map \h <ESC>:bp<CR>

" use f1/f2 to set to unix/dos format
map <F1> :set fileformat=unix<CR>
map <F2> :set fileformat=dos<CR>

"use f3 to set wrap/nowrap
map <F3> :set wrap!<CR>

" use \m for pandoc
map <Leader>m :!pandoc -s -f markdown -t html % > %.html<CR>

" use \nt for nerd tree
map <Leader>nt :NERDTree<CR>
