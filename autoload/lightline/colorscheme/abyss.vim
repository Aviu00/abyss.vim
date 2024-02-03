let s:white  = [ '#DDDDDD', 255 ]
let s:black  = [ '#000000', 0 ]
let s:red  = [ '#FE0000', 196 ]
let s:cyan  = [ '#00AFFF', 39 ]
let s:darkcyan = [ '#005FFF', 27 ]
let s:darkpurple  = [ '#5F0087', 54 ]

let s:lightblue = [ '#5FAFFF', 75 ]
let s:blue  = [ '#0000C8', 21 ]
let s:darkblue  = [ '#00014E', 17 ]

let s:lightgray  = [ '#808080', 235 ]
let s:gray  = [ '#4C4C4C', 240 ]
let s:darkgray   = [ '#303030', 236 ]

let s:none  = [ 'NONE', 'NONE' ]

let s:p = {
\   'normal':   {},
\   'inactive': {},
\   'insert':   {},
\   'replace':  {},
\   'visual':   {},
\   'tabline':  {}
\ }

let s:p.normal.middle = [[s:white, s:none]]
let s:p.normal.left = [[s:white, s:darkblue], [s:white, s:blue]]
let s:p.normal.right = [[s:white, s:darkblue], [s:white, s:blue], [s:white, s:darkcyan]]

let s:p.normal.error = [[ s:red, s:black ]]

let s:p.inactive.middle = [[s:white, s:none]]
let s:p.inactive.right = [[s:darkcyan, s:black]]
let s:p.inactive.left = [[s:darkcyan, s:black]]

let s:p.insert.left = [[s:white, s:darkcyan], s:p.normal.left[1]]
let s:p.replace.left = [[s:darkblue, s:lightblue], s:p.normal.left[1]]
let s:p.visual.left = [[s:darkblue, s:white], s:p.normal.left[1]]

let s:p.tabline.middle = [[s:white, s:none]]
let s:p.tabline.right = [[s:white, s:darkblue], [s:darkblue, s:none]]
let s:p.tabline.left = [[s:white, s:darkblue]]
let s:p.tabline.tabsel = [[s:white, s:blue]]
let g:lightline#colorscheme#abyss#palette = lightline#colorscheme#flatten(s:p)
