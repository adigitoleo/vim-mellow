
let s:black     = ['#0F0908', 0]
let s:red       = ['#AF0032', 1]
let s:green     = ['#4C6E25', 2]
let s:yellow    = ['#A67458', 3]
let s:blue      = ['#573E55', 4]
let s:magenta   = ['#66292F', 5]
let s:cyan      = ['#BF472C', 6]
let s:white     = ['#E0CCAE', 7]
let s:brblack   = ['#3D241F', 8]
let s:brred     = ['#FF7477', 9]
let s:brgreen   = ['#84BF40', 10]
let s:bryellow  = ['#F5BB89', 11]
let s:brblue    = ['#8A7B85', 12]
let s:brmagenta = ['#8A4B53', 13]
let s:brcyan    = ['#D47D49', 14]
let s:brwhite   = ['#F2DDBC', 15]

let s:p = {'normal': {}, 'inactive': {}, 'insert': {}, 'replace': {}, 'visual': {}, 'tabline': {}}

let s:p.normal.left = [[ s:bryellow, s:brmagenta ], [ s:brmagenta, s:bryellow ]]
let s:p.normal.right = [[ s:bryellow, s:brmagenta ], [ s:bryellow, s:blue ], [ s:brmagenta, s:bryellow ]]
let s:p.normal.middle = [[ s:brmagenta, s:bryellow ]]
let s:p.normal.error = [[ s:bryellow, s:red ]]
let s:p.normal.warning = [[ s:bryellow, s:yellow ]]

let s:p.insert.left = [[ s:bryellow, s:green ], [ s:brmagenta, s:bryellow ]]
let s:p.insert.right = [[ s:bryellow, s:green ], [ s:bryellow, s:blue ], [ s:brmagenta, s:bryellow ]]

let s:p.visual.left = [[ s:bryellow, s:brcyan ], [ s:brmagenta, s:bryellow ]]
let s:p.visual.right = [[ s:bryellow, s:brcyan ], [ s:bryellow, s:blue ], [ s:brmagenta, s:bryellow ]]

let s:p.inactive.left = [[ s:brmagenta, s:white ], [ s:brmagenta, s:white ]]
let s:p.inactive.middle = [[ s:brmagenta, s:white ], [ s:brmagenta, s:white ]]
let s:p.inactive.right = [[ s:brmagenta, s:white  ], [ s:brmagenta, s:white ]]

let s:p.replace.left = [[ s:bryellow, s:red ], [ s:brmagenta, s:bryellow ]]
let s:p.replace.right = [[ s:bryellow, s:red ], [ s:bryellow, s:blue ], [ s:brmagenta, s:bryellow ]]

let s:p.tabline.left = [[ s:bryellow, s:brmagenta ]]
let s:p.tabline.right = [[ s:bryellow, s:red ]]
let s:p.tabline.tabsel = [[ s:bryellow, s:blue ]]

let g:lightline#colorscheme#mellow#palette = lightline#colorscheme#flatten(s:p)
