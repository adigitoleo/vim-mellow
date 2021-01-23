"  __  __      _ _
" |  \/  | ___| | | _____      __
" | |\/| |/ _ \ | |/ _ \ \ /\ / /
" | |  | |  __/ | | (_) \ V  V /
" |_|  |_|\___|_|_|\___/ \_/\_/
"
" Maintainer: adigitoleo <adigitoleo@protonmail.com>
" Version: 1.3.0
" Description: A warm, minimalist colorscheme for (neo)vim
" Homepage: https://github.com/adigitoleo/vim-mellow


let s:script_name = expand("<sfile>:t:r")

" Clear highlights and set options. {{{1

hi clear

if v:version > 580
    if exists("g:syntax_on")
        syntax reset
    endif
endif

let g:colors_name = s:script_name

" By default, DO define colors for :terminal.
let s:opt_terminal_colors = get(g:, s:script_name .. "_terminal_colors", 1)

" By default, DO NOT define User1-9 colors for statusline.
let s:opt_user_colors = get(g:, s:script_name .. "_user_colors", 0)

" By default, DO NOT use ANSI colors as a fallback (uses 256 colors instead).
let s:opt_cterm_ansi = get(g:, s:script_name .. "_cterm_ansi", 0)

" Load color palette. {{{1

if &background ==# 'light'
    let s:colors = mellow_palette#Light()
    let s:colors_fallback = s:opt_cterm_ansi ?
                \ range(16) : mellow_palette#Light("256")
else
    let s:colors = mellow_palette#Dark()
    let s:colors_fallback = s:opt_cterm_ansi ?
                \ range(16) : mellow_palette#Dark("256")
endif

" Define highlight setter function. {{{1

function! s:hi(group, bg, fg, ...) abort
    " Parse bg and fg strings, e.g. 'NONE', or integers in the range [0,15].
    let l:guibg = type(a:bg) == type('') ? a:bg : s:colors[a:bg]
    let l:guifg = type(a:fg) == type('') ? a:fg : s:colors[a:fg]
    " Set cterm fallback colors.
    let l:ctermbg = type(a:bg) == type('') ? a:bg : s:colors_fallback[a:bg]
    let l:ctermfg = type(a:fg) == type('') ? a:fg : s:colors_fallback[a:fg]

    let l:colors = printf(
                \ "hi %s ctermbg=%s guibg=%s ctermfg=%s guifg=%s",
                \ a:group, l:ctermbg, l:guibg, l:ctermfg, l:guifg
                \)

    " By default, set special attributes to 'NONE'.
    let l:options = 'NONE'

    for l:opt in a:000
        if type(l:opt) == type('')
            " Parse special attribute string.
            let l:options = l:opt
        elseif type(l:opt) == type(0)
            " Parse guisp color integer in the range [0,15].
            let l:colors .= printf(" guisp=%s", s:colors[l:opt])
        endif
    endfor

    return printf("%s cterm=%s gui=%s", l:colors, l:options, l:options)
endfunction

" Set main colors. {{{1

if &background ==# 'light'
    " -------- group ------------ bg--------- fg ------- special -------
    exe s:hi('Comment',         'NONE',     14)
    exe s:hi('Constant',        'NONE',     0)
    exe s:hi('Cursor',          0,          15)
    exe s:hi('CursorLine',      7,          'NONE')
    exe s:hi('CursorLineNr',    7,          6,          'bold')
    exe s:hi('DiffAdd',         10,         'NONE')
    exe s:hi('DiffChange',      'NONE',     6)
    exe s:hi('DiffDelete',      'NONE',     9,          'bold')
    exe s:hi('EndOfBuffer',     7,          12)
    exe s:hi('ErrorMsg',        1,          15)
    exe s:hi('Function',        'NONE',     5)
    exe s:hi('Identifier',      'NONE',     13)
    exe s:hi('Ignore',          'NONE',     'NONE')
    exe s:hi('IncSearch',       11,         0)
    exe s:hi('LineNr',          7,          14)
    exe s:hi('ModeMsg',         'NONE',     6,          'bold')
    exe s:hi('MoreMsg',         'NONE',     3,          'bold')
    exe s:hi('NonText',         7,          9)
    exe s:hi('Normal',          15,         0)
    exe s:hi('Pmenu',           7,          3)
    exe s:hi('PmenuSel',        11,         6)
    exe s:hi('PmenuThumb',      13,         11)
    exe s:hi('Special',         'NONE',     12)
    exe s:hi('SpellBad',        15,         1,          'underline', 9)
    exe s:hi('SpellCap',        15,         4,          'underline', 12)
    exe s:hi('SpellLocal',      15,         6,          'underline', 14)
    exe s:hi('SpellRare',       15,         3,          'underline', 11)
    exe s:hi('Statement',       'NONE',     1)
    exe s:hi('StatusLine',      11,         13,         'bold')
    exe s:hi('StatusLineNC',    7,          3,          'bold,underline')
    exe s:hi('String',          'NONE',     4)
    exe s:hi('Todo',            'NONE',     12,         'bold')
    exe s:hi('Underlined',      'NONE',     'NONE',     'underline')
    exe s:hi('VertSplit',       7,          3,          'bold')
    exe s:hi('Visual',          11,         'NONE')
    exe s:hi('WildMenu',        7,          6)

else
    " -------- group ------------ bg--------- fg ------- special -------
    exe s:hi('Comment',         'NONE',     13)
    exe s:hi('Constant',        'NONE',     15)
    exe s:hi('Cursor',          7,          0)
    exe s:hi('CursorLine',      8,          'NONE')
    exe s:hi('CursorLineNr',    8,          14,         'bold')
    exe s:hi('DiffAdd',         2,          'NONE')
    exe s:hi('DiffChange',      'NONE',     14)
    exe s:hi('DiffDelete',      'NONE',     9,          'bold')
    exe s:hi('EndOfBuffer',     8,          12)
    exe s:hi('ErrorMsg',        1,          15)
    exe s:hi('Function',        'NONE',     3)
    exe s:hi('Identifier',      'NONE',     11)
    exe s:hi('Ignore',          'NONE',     'NONE')
    exe s:hi('IncSearch',       5,          15)
    exe s:hi('LineNr',          8,          13)
    exe s:hi('ModeMsg',         'NONE',     14,         'bold')
    exe s:hi('MoreMsg',         'NONE',     3,          'bold')
    exe s:hi('NonText',         8,          9)
    exe s:hi('Normal',          0,          15)
    exe s:hi('Pmenu',           8,          13)
    exe s:hi('PmenuSel',        5,          9)
    exe s:hi('PmenuThumb',      13,         5)
    exe s:hi('Special',         'NONE',     12)
    exe s:hi('SpellBad',        0,          1,          'underline', 9)
    exe s:hi('SpellCap',        0,          7,          'underline', 12)
    exe s:hi('SpellLocal',      0,          14,         'underline', 14)
    exe s:hi('SpellRare',       0,          4,          'underline', 4)
    exe s:hi('Statement',       'NONE',     6)
    exe s:hi('StatusLine',      5,          11,         'bold')
    exe s:hi('StatusLineNC',    8,          13,         'bold,underline')
    exe s:hi('String',          'NONE',     7)
    exe s:hi('Todo',            'NONE',     12,         'bold')
    exe s:hi('Underlined',      'NONE',     'NONE',     'underline')
    exe s:hi('VertSplit',       8,          13,         'bold')
    exe s:hi('Visual',          5,          'NONE')
    exe s:hi('WildMenu',        8,          14)
endif

" Set linked groups. {{{1

hi! link ColorColumn CursorLine
hi! link Error DiffDelete
hi! link Conceal Special
hi! link CursorColumn CursorLine
hi! link CursorIM Cursor
hi! link DiffText Visual
hi! link Directory DiffChange
hi! link FoldColumn EndOfBuffer
hi! link Folded EndOfBuffer
hi! link MatchParen PmenuSel
hi! link Number Constant
hi! link PmenuSbar Pmenu
hi! link PreProc Identifier
hi! link Question ModeMsg
hi! link QuickFixLine Underlined
hi! link Search IncSearch
hi! link SignColumn CursorLine
hi! link SpecialKey Special
hi! link StatusLineTerm StatusLine
hi! link StatusLineTermNC StatusLineNC
hi! link TabLine StatusLineNC
hi! link TabLineFill StatusLineNC
hi! link TabLineSel StatusLine
hi! link Terminal Normal
hi! link Title Ignore
hi! link Type Function
hi! link VisualNOS Error
hi! link WarningMsg Error
hi! link helpLeadBlank StatusLineNC
hi! link helpNormal StatusLineNC

" Set terminal colors. {{{1

if s:opt_terminal_colors
    if has("nvim")
        for idx in range(16)
            call nvim_set_var("terminal_color_" .. idx, s:colors[idx])
        endfor
    elseif has("terminal")
        let g:terminal_ansi_colors = s:colors
    endif
endif

" Set optional statusline groups, see :h hl-User1 {{{1

if s:opt_user_colors
    if &background ==# 'light'
        " Colors for statusline diagnostics: red (1) and green (2).
        exe s:hi('default User1',   11, 1,  'bold')
        exe s:hi('default User2',   11, 2,  'bold')
        " Subtle colors for miscellaneous indicators: sand (3) and orange (4).
        exe s:hi('default User3',   11, 13)
        exe s:hi('default User4',   11, 14)
        " Inverse colors for mode indicators:
        " cordovan (5), green (6), orange (7), red (8) and blue (9)
        exe s:hi('default User5',   13, 11, 'bold')
        exe s:hi('default User6',   2,  11, 'bold')
        exe s:hi('default User7',   14, 11, 'bold')
        exe s:hi('default User8',   1,  11, 'bold')
        exe s:hi('default User9',   4,  11, 'bold')

    else
        " Colors for statusline diagnostics: red (1) and green (2).
        exe s:hi('default User1',   5,  9,  'bold')
        exe s:hi('default User2',   5,  10, 'bold')
        " Subtle colors for miscellaneous indicators: sand (3) and orange (4).
        exe s:hi('default User3',   5,  13)
        exe s:hi('default User4',   5,  14)
        " Inverse colors for mode indicators:
        " cordovan (5), green (6), orange (7), red (8) and blue (9)
        exe s:hi('default User5',   13, 11, 'bold')
        exe s:hi('default User6',   2,  11, 'bold')
        exe s:hi('default User7',   6,  11, 'bold')
        exe s:hi('default User8',   1,  11, 'bold')
        exe s:hi('default User9',   4,  11, 'bold')
    endif
endif

" }}}
