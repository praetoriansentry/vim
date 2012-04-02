:syntax include @CSS syntax/css.vim
:syntax region cssSnip matchgroup=Snip start="#{{{css" end="#css}}}" contains=@CSS keepend
:hi link Snip SpecialComment
