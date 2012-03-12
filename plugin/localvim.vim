let s:path = expand('%')
let s:vimrc = s:path . ".vimrc"

if filereadable(s:vimrc)
  exec 'source ' . s:vimrc
endif
