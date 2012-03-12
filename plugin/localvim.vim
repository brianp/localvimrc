let s:path = expand('%')

" I never open a dir with a trailing slash but some people might
if s:path[-1:] == '/'
  let s:vimrc = '.vimrc'
else
  let s:vimrc = '/.vimrc'
endif

let s:vimrc_path = s:path . s:vimrc

if filereadable(s:vimrc_path)
  exec 'source ' . s:vimrc_path
endif
