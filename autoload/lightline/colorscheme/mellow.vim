" Lightline themes for Mellow:
" <https://github.com/adigitoleo/vim-mellow>

let s:p = {'normal': {}, 'inactive': {}, 'insert': {}, 'replace': {}, 'visual': {}, 'tabline': {}}

if lightline#colorscheme#background() ==# 'light'
    let s:red        = ['#AF0032', 01]
    let s:green      = ['#4C6E25', 02]
    let s:yellow     = ['#A67458', 03]
    let s:blue       = ['#573E55', 04]
    let s:white      = ['#E0CCAE', 07]
    let s:bryellow   = ['#F5BB89', 11]
    let s:cordovan   = ['#8A4B53', 13]
    let s:orange     = ['#D47D49', 14]

    let s:p.normal.left = [[ s:bryellow, s:cordovan, 'bold' ], [ s:bryellow, s:blue ], [ s:cordovan, s:bryellow ]]
    let s:p.normal.right = [[ s:bryellow, s:cordovan, 'bold' ], [ s:bryellow, s:blue ], [ s:cordovan, s:bryellow ]]
    let s:p.normal.middle = [[ s:cordovan, s:bryellow ]]
    let s:p.normal.error = [[ s:bryellow, s:red ]]
    let s:p.normal.warning = [[ s:bryellow, s:yellow ]]

    let s:p.insert.left = [[ s:bryellow, s:green, 'bold' ], [ s:bryellow, s:blue ], [ s:cordovan, s:bryellow ]]
    let s:p.insert.right = [[ s:bryellow, s:green, 'bold' ], [ s:bryellow, s:blue ], [ s:cordovan, s:bryellow ]]

    let s:p.visual.left = [[ s:bryellow, s:orange, 'bold' ], [ s:bryellow, s:blue ], [ s:cordovan, s:bryellow ]]
    let s:p.visual.right = [[ s:bryellow, s:orange, 'bold' ], [ s:bryellow, s:blue ], [ s:cordovan, s:bryellow ]]

    let s:p.inactive.left = [[ s:cordovan, s:white, 'bold' ], [ s:cordovan, s:white ]]
    let s:p.inactive.middle = [[ s:cordovan, s:white ], [ s:cordovan, s:white ]]
    let s:p.inactive.right = [[ s:cordovan, s:white , 'bold' ], [ s:cordovan, s:white ]]

    let s:p.replace.left = [[ s:bryellow, s:red, 'bold' ], [ s:bryellow, s:blue ], [ s:cordovan, s:bryellow ]]
    let s:p.replace.right = [[ s:bryellow, s:red, 'bold' ], [ s:bryellow, s:blue ], [ s:cordovan, s:bryellow ]]

    let s:p.tabline.left = [[ s:bryellow, s:cordovan ]]
    let s:p.tabline.right = [[ s:bryellow, s:red ]]
    let s:p.tabline.tabsel = [[ s:bryellow, s:blue ]]
else
    let s:red        = ['#AF0032', 01]
    let s:green      = ['#577E2A', 02]
    let s:yellow     = ['#BF9169', 03]
    let s:blue       = ['#896186', 04]
    let s:magenta    = ['#66292F', 05]
    let s:brblack    = ['#3D241F', 10]
    let s:bryellow   = ['#F5BB89', 11]
    let s:brblue     = ['#9F939B', 12]
    let s:cordovan   = ['#8A4B53', 13]
    let s:orange     = ['#D47D49', 14]


    let s:p.normal.left = [[ s:bryellow, s:cordovan, 'bold' ], [ s:bryellow, s:blue ], [ s:bryellow, s:magenta ]]
    let s:p.normal.right = [[ s:bryellow, s:cordovan, 'bold' ], [ s:bryellow, s:blue ], [ s:bryellow, s:magenta ]]
    let s:p.normal.middle = [[ s:bryellow, s:magenta ]]
    let s:p.normal.error = [[ s:bryellow, s:red ]]
    let s:p.normal.warning = [[ s:bryellow, s:yellow ]]

    let s:p.insert.left = [[ s:bryellow, s:green, 'bold' ], [ s:bryellow, s:blue ], [ s:bryellow, s:magenta ]]
    let s:p.insert.right = [[ s:bryellow, s:green, 'bold' ], [ s:bryellow, s:blue ], [ s:bryellow, s:magenta ]]

    let s:p.visual.left = [[ s:bryellow, s:orange, 'bold' ], [ s:bryellow, s:blue ], [ s:bryellow, s:magenta ]]
    let s:p.visual.right = [[ s:bryellow, s:orange, 'bold' ],[ s:bryellow, s:blue ], [ s:bryellow, s:magenta ]]

    let s:p.inactive.left = [[ s:bryellow, s:cordovan, 'bold' ], [ s:bryellow, s:cordovan ]]
    let s:p.inactive.middle = [[ s:bryellow, s:cordovan ], [ s:bryellow, s:cordovan ]]
    let s:p.inactive.right = [[ s:bryellow, s:cordovan , 'bold' ], [ s:bryellow, s:cordovan ]]

    let s:p.replace.left = [[ s:bryellow, s:red, 'bold' ], [ s:bryellow, s:blue ], [ s:bryellow, s:magenta ]]
    let s:p.replace.right = [[ s:bryellow, s:red, 'bold' ], [ s:bryellow, s:blue ], [ s:bryellow, s:magenta ]]

    let s:p.tabline.left = [[ s:bryellow, s:cordovan, 'bold' ]]
    let s:p.tabline.right = [[ s:bryellow, s:red, 'bold' ]]
    let s:p.tabline.tabsel = [[ s:bryellow, s:blue ]]
endif

let g:lightline#colorscheme#mellow#palette = lightline#colorscheme#flatten(s:p)
