" Lightline themes for Mellow:
" <https://github.com/adigitoleo/vim-mellow>

if lightline#colorscheme#background() ==# 'light'
    let s:colors = mellow_palette#Light()
else
    let s:colors = mellow_palette#Dark()
endif

function! s:hi(fg, bg, ...)
    let l:fg = [s:colors[a:fg], a:fg]
    let l:bg = [s:colors[a:bg], a:bg]
    return a:0 ? [l:fg, l:bg, a:1] : [l:fg, l:bg]
endfunction

let s:p = {'normal': {}, 'inactive': {}, 'insert': {}, 'replace': {}, 'visual': {}, 'tabline': {}}

if lightline#colorscheme#background() ==# 'light'
    let s:p.normal.left = [s:hi(11, 13, 'bold'), s:hi(11, 4), s:hi(13, 11)]
    let s:p.normal.right = [s:hi(11, 13, 'bold'), s:hi(11, 4), s:hi(13, 11)]
    let s:p.normal.middle = [s:hi(13, 11)]
    let s:p.normal.error = [s:hi(11, 1)]
    let s:p.normal.warning = [s:hi(11, 3)]

    let s:p.insert.left = [s:hi(11, 2, 'bold'), s:hi(11, 4), s:hi(13, 11)]
    let s:p.insert.right = [s:hi(11, 2, 'bold'), s:hi(11, 4), s:hi(13, 11)]

    let s:p.visual.left = [s:hi(11, 14, 'bold'), s:hi(11, 4), s:hi(13, 11)]
    let s:p.visual.right = [s:hi(11, 14, 'bold'), s:hi(11, 4), s:hi(13, 11)]

    let s:p.inactive.left = [s:hi(13, 7, 'bold'), s:hi(13, 7)]
    let s:p.inactive.middle = [s:hi(13, 7), s:hi(13, 7)]
    let s:p.inactive.right = [s:hi(13, 7 , 'bold'), s:hi(13, 7)]

    let s:p.replace.left = [s:hi(11, 1, 'bold'), s:hi(11, 4), s:hi(13, 11)]
    let s:p.replace.right = [s:hi(11, 1, 'bold'), s:hi(11, 4), s:hi(13, 11)]

    let s:p.tabline.left = [s:hi(11, 13)]
    let s:p.tabline.right = [s:hi(11, 1)]
    let s:p.tabline.tabsel = [s:hi(11, 4)]

else
    let s:p.normal.left = [s:hi(11, 13, 'bold'), s:hi(11, 4), s:hi(11, 5)]
    let s:p.normal.right = [s:hi(11, 13, 'bold'), s:hi(11, 4), s:hi(11, 5)]
    let s:p.normal.middle = [s:hi(11, 5)]
    let s:p.normal.error = [s:hi(11, 1)]
    let s:p.normal.warning = [s:hi(11, 3)]

    let s:p.insert.left = [s:hi(11, 2, 'bold'), s:hi(11, 4), s:hi(11, 5)]
    let s:p.insert.right = [s:hi(11, 2, 'bold'), s:hi(11, 4), s:hi(11, 5)]

    let s:p.visual.left = [s:hi(11, 14, 'bold'), s:hi(11, 4), s:hi(11, 5)]
    let s:p.visual.right = [s:hi(11, 14, 'bold'),s:hi(11, 4), s:hi(11, 5)]

    let s:p.inactive.left = [s:hi(11, 13, 'bold'), s:hi(11, 13)]
    let s:p.inactive.middle = [s:hi(11, 13), s:hi(11, 13)]
    let s:p.inactive.right = [s:hi(11, 13 , 'bold'), s:hi(11, 13)]

    let s:p.replace.left = [s:hi(11, 1, 'bold'), s:hi(11, 4), s:hi(11, 5)]
    let s:p.replace.right = [s:hi(11, 1, 'bold'), s:hi(11, 4), s:hi(11, 5)]

    let s:p.tabline.left = [s:hi(11, 13, 'bold')]
    let s:p.tabline.right = [s:hi(11, 1, 'bold')]
    let s:p.tabline.tabsel = [s:hi(11, 4)]
endif

let g:lightline#colorscheme#mellow#palette = lightline#colorscheme#flatten(s:p)
