" %f name
" %F path
" %y type
" %Y TYPE
" %m modified
" %c column
" %l current line
" %L total lines
" %= right side
" .20 characters (truncate)
set stl=%.20F\ %c\ %m%=%y
" press ^g for name, total lines
" set rnum to see the current line

set sc ml ls=2 " stl+=%F
