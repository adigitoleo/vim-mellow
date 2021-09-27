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
    let s:p.normal.left = [s:hi(11, 13, 'bold'), s:hi(15, 3), s:hi(13, 11)]
    let s:p.normal.right = [s:hi(11, 13, 'bold'), s:hi(15, 3), s:hi(13, 11)]
    let s:p.normal.middle = [s:hi(13, 11)]
    let s:p.normal.error = [s:hi(11, 1)]
    let s:p.normal.warning = [s:hi(11, 3)]

    let s:p.insert.left = [s:hi(11, 2, 'bold'), s:hi(15, 3), s:hi(13, 11)]
    let s:p.insert.right = [s:hi(11, 2, 'bold'), s:hi(15, 3), s:hi(13, 11)]

    let s:p.visual.left = [s:hi(11, 14, 'bold'), s:hi(15, 3), s:hi(13, 11)]
    let s:p.visual.right = [s:hi(11, 14, 'bold'), s:hi(15, 3), s:hi(13, 11)]

    let s:p.inactive.left = [s:hi(13, 11, 'bold'), s:hi(13, 11)]
    let s:p.inactive.middle = [s:hi(13, 11), s:hi(13, 11)]
    let s:p.inactive.right = [s:hi(13, 11 , 'bold'), s:hi(13, 11)]

    let s:p.replace.left = [s:hi(11, 1, 'bold'), s:hi(15, 3), s:hi(13, 11)]
    let s:p.replace.right = [s:hi(11, 1, 'bold'), s:hi(15, 3), s:hi(13, 11)]

    let s:p.tabline.left = [s:hi(11, 13)]
    let s:p.tabline.right = [s:hi(11, 1)]
    let s:p.tabline.tabsel = [s:hi(15, 3, 'bold')]

else
    let s:p.normal.left = [s:hi(8, 12, 'bold'), s:hi(15, 13), s:hi(11, 5)]
    let s:p.normal.right = [s:hi(8, 12, 'bold'), s:hi(15, 13), s:hi(11, 5)]
    let s:p.normal.middle = [s:hi(11, 5)]
    let s:p.normal.error = [s:hi(11, 1)]
    let s:p.normal.warning = [s:hi(11, 3)]

    let s:p.insert.left = [s:hi(8, 2, 'bold'), s:hi(15, 13), s:hi(11, 5)]
    let s:p.insert.right = [s:hi(8, 2, 'bold'), s:hi(15, 13), s:hi(11, 5)]

    let s:p.visual.left = [s:hi(8, 14, 'bold'), s:hi(15, 13), s:hi(11, 5)]
    let s:p.visual.right = [s:hi(8, 14, 'bold'),s:hi(15, 13), s:hi(11, 5)]

    let s:p.inactive.left = [s:hi(11, 5, 'bold'), s:hi(11, 5)]
    let s:p.inactive.middle = [s:hi(11, 5), s:hi(11, 5)]
    let s:p.inactive.right = [s:hi(11, 5 , 'bold'), s:hi(11, 5)]

    let s:p.replace.left = [s:hi(8, 1, 'bold'), s:hi(15, 13), s:hi(11, 5)]
    let s:p.replace.right = [s:hi(8, 1, 'bold'), s:hi(15, 13), s:hi(11, 5)]

    let s:p.tabline.left = [s:hi(8, 12)]
    let s:p.tabline.right = [s:hi(11, 1)]
    let s:p.tabline.tabsel = [s:hi(11, 13, 'bold')]
endif

let g:lightline#colorscheme#mellow#palette = lightline#colorscheme#flatten(s:p)

" See https://github.com/itchyny/lightline.vim/issues/424#issuecomment-590058820
autocmd OptionSet background
    \ runtime autocmd/lightline/colorscheme/mellow.vim
    \ | call lightline#colorscheme()
    \ | call lightline#update()
