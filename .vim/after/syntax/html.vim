:syntax include @CSS syntax/css.vim
:syntax region cssSnip matchgroup=Snip start="#{{{css" end="#css}}}" contains=@CSS keepend
:hi link Snip SpecialComment

:syntax include @JS syntax/javascript.vim
:syntax region cssSnip matchgroup=Snip start="#{{{javascript" end="#javascript}}}" contains=@JS keepend
:hi link Snip SpecialComment
