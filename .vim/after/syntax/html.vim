" new html 5 tags
syn keyword htmlTagName contained article aside audio canvas command datalist
syn keyword htmlTagName contained details embed figcaption figure footer header
syn keyword htmlTagName contained hgroup keygen mark meter nav output progress
syn keyword htmlTagName contained rp rt ruby section source summary time video

:syntax include @CSS syntax/css.vim
:syntax region cssSnip matchgroup=Snip start="#{{{css" end="#css}}}" contains=@CSS keepend
:hi link Snip SpecialComment

:syntax include @JS syntax/javascript.vim
:syntax region cssSnip matchgroup=Snip start="#{{{javascript" end="#javascript}}}" contains=@JS keepend
:hi link Snip SpecialComment
