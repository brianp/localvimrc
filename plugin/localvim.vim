let s:path = expand('%')

" Use cwd instead if vim was not started editing a file or dir
if len(s:path) == 0
  let s:path = getcwd()
endif

" I never open a dir with a trailing slash but some people might
if s:path[-1:] == '/'
  let s:path = s:path[0:-2]
endif

let s:vimrc_path = s:path . '/.vimrc'

" Avoid re-sourcing ~/.vimrc
if (s:vimrc_path != $HOME . '/.vimrc') && filereadable(s:vimrc_path)
  exec 'source ' . s:vimrc_path
endif
