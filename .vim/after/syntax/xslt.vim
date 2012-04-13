unlet b:current_syntax
syntax include @CSS syntax/css.vim
syntax region cssSnip matchgroup=Snip start=+<style+ end=+</style>+ contains=@CSS keepend
hi link Snip SpecialComment
