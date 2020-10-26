"                   _ _                      _
"    _ __ ___   ___| | | _____      ____   _(_)_ __ ___
"   | '_ ` _ \ / _ \ | |/ _ \ \ /\ / /\ \ / / | '_ ` _ \
"   | | | | | |  __/ | | (_) \ V  V /  \ V /| | | | | | |
"   |_| |_| |_|\___|_|_|\___/ \_/\_(_)  \_/ |_|_| |_| |_|
"
" Maintainer: adigitoleo <adigitoleo@protonmail.com>
" Version: 0.9.1
" Description: A warm, minimalist colorscheme for (neo)vim


let s:script_name = expand("<sfile>:t:r")

" Check requirements. {{{1

if !has("termguicolors") && !has("gui_running")
    throw "RGB colors unavailable"
elseif !&termguicolors
    throw "RGB colors are not enabled, see :h 'termguicolors'"
endif

" Initialize and set options. {{{1

hi clear

if v:version > 580
    if exists("g:syntax_on")
        syntax reset
    endif
endif

let g:colors_name = s:script_name

" By default, DO define colors for :terminal.
let s:opt_terminal_colors = get(g:, s:script_name . "_terminal_colors", 1)

" By default, DO NOT define User1-9 colors for statusline.
let s:opt_user_colors = get(g:, s:script_name . "_user_colors", 0)

" Define color palette. {{{1

if &background ==# 'light'
    let s:colors = [
                \ '#0F0908',
                \ '#AF0032',
                \ '#4C6E25',
                \ '#A67458',
                \ '#573E55',
                \ '#66292F',
                \ '#BF472C',
                \ '#E0CCAE',
                \ '#3D241F',
                \ '#FF7477',
                \ '#84BF40',
                \ '#F5BB89',
                \ '#8A7B85',
                \ '#8A4B53',
                \ '#D47D49',
                \ '#F2DDBC',
                \ ]

else  " Dark mode.
    let s:colors = [
                \ '#0F0908',
                \ '#AF0032',
                \ '#577E2A',
                \ '#BF9169',
                \ '#896186',
                \ '#66292F',
                \ '#BF472C',
                \ '#D3C1A6',
                \ '#3D241F',
                \ '#FF7477',
                \ '#84BF40',
                \ '#F5BB89',
                \ '#9F939B',
                \ '#8A4B53',
                \ '#D47D49',
                \ '#ECCD9D',
                \ ]
endif

" Set main colors. {{{1

if &background ==# 'light'
    exe "hi Comment         guibg=NONE guifg=".s:colors[14]." gui=NONE"
    exe "hi Constant        guibg=NONE guifg=".s:colors[0]." gui=NONE"
    exe "hi Cursor          guibg=".s:colors[0]." guifg=".s:colors[15]." gui=NONE"
    exe "hi CursorLine      guibg=".s:colors[7]." guifg=NONE gui=NONE"
    exe "hi CursorLineNr    guibg=".s:colors[7]." guifg=".s:colors[6]." gui=bold"
    exe "hi DiffAdd         guibg=".s:colors[10]." guifg=NONE gui=NONE"
    exe "hi DiffDelete      guibg=".s:colors[9]." guifg=NONE gui=NONE"
    exe "hi Directory       guibg=NONE guifg=".s:colors[6]." gui=NONE"
    exe "hi EndOfBuffer     guibg=".s:colors[7]." guifg=".s:colors[12]." gui=NONE"
    exe "hi Error           guibg=".s:colors[9]." guifg=".s:colors[0]." gui=NONE"
    exe "hi ErrorMsg        guibg=".s:colors[1]." guifg=".s:colors[15]." gui=NONE"
    exe "hi Function        guibg=NONE guifg=".s:colors[5]." gui=NONE"
    exe "hi Identifier      guibg=NONE guifg=".s:colors[13]." gui=NONE"
    exe "hi Ignore          guibg=NONE guifg=NONE gui=NONE"
    exe "hi IncSearch       guibg=".s:colors[11]." guifg=".s:colors[0]." gui=NONE"
    exe "hi LineNr          guibg=".s:colors[7]." guifg=".s:colors[14]." gui=NONE"
    exe "hi ModeMsg         guibg=NONE guifg=".s:colors[6]." gui=bold"
    exe "hi MoreMsg         guibg=NONE guifg=".s:colors[3]." gui=bold"
    exe "hi NonText         guibg=".s:colors[7]." guifg=".s:colors[9]." gui=NONE"
    exe "hi Normal          guibg=".s:colors[15]." guifg=".s:colors[0]." gui=NONE"
    exe "hi Pmenu           guibg=".s:colors[7]." guifg=".s:colors[3]." gui=NONE"
    exe "hi PmenuSel        guibg=".s:colors[11]." guifg=".s:colors[6]." gui=NONE"
    exe "hi PmenuThumb      guibg=".s:colors[13]." guifg=".s:colors[11]." gui=NONE"
    exe "hi Special         guibg=NONE guifg=".s:colors[12]." gui=NONE"
    exe "hi SpellBad        guibg=".s:colors[15]." guifg=".s:colors[1]." gui=underline guisp=".s:colors[9]
    exe "hi SpellCap        guibg=".s:colors[15]." guifg=".s:colors[4]." gui=underline guisp=".s:colors[12]
    exe "hi SpellLocal      guibg=".s:colors[15]." guifg=".s:colors[6]." gui=underline guisp=".s:colors[14]
    exe "hi SpellRare       guibg=".s:colors[15]." guifg=".s:colors[3]." gui=underline guisp=".s:colors[11]
    exe "hi Statement       guibg=NONE guifg=".s:colors[1]." gui=NONE"
    exe "hi StatusLine      guibg=".s:colors[11]." guifg=".s:colors[13]." gui=bold"
    exe "hi StatusLineNC    guibg=".s:colors[7]." guifg=".s:colors[3]." gui=bold,underline"
    exe "hi String          guibg=NONE guifg=".s:colors[4]." gui=NONE"
    exe "hi Todo            guibg=NONE guifg=".s:colors[12]." gui=bold"
    exe "hi Underlined      guibg=NONE guifg=NONE gui=underline"
    exe "hi VertSplit       guibg=".s:colors[7]." guifg=".s:colors[3]." gui=bold"
    exe "hi Visual          guibg=".s:colors[11]." guifg=NONE gui=NONE"
    exe "hi WildMenu        guibg=".s:colors[7]." guifg=".s:colors[6]." gui=NONE"

else
    exe "hi Comment         guibg=NONE guifg=".s:colors[13]." gui=NONE"
    exe "hi Constant        guibg=NONE guifg=".s:colors[15]." gui=NONE"
    exe "hi Cursor          guibg=".s:colors[7]." guifg=".s:colors[0]." gui=NONE"
    exe "hi CursorLine      guibg=".s:colors[8]." guifg=NONE gui=NONE"
    exe "hi CursorLineNr    guibg=".s:colors[8]." guifg=".s:colors[14]." gui=bold"
    exe "hi DiffAdd         guibg=".s:colors[2]." guifg=NONE gui=NONE"
    exe "hi DiffDelete      guibg=NONE guifg=".s:colors[9]." gui=NONE"
    exe "hi Directory       guibg=NONE guifg=".s:colors[14]." gui=NONE"
    exe "hi EndOfBuffer     guibg=".s:colors[8]." guifg=".s:colors[12]." gui=NONE"
    exe "hi Error           guibg=NONE guifg=".s:colors[9]." gui=NONE"
    exe "hi ErrorMsg        guibg=".s:colors[1]." guifg=".s:colors[15]." gui=NONE"
    exe "hi Function        guibg=NONE guifg=".s:colors[3]." gui=NONE"
    exe "hi Identifier      guibg=NONE guifg=".s:colors[11]." gui=NONE"
    exe "hi Ignore          guibg=NONE guifg=NONE gui=NONE"
    exe "hi IncSearch       guibg=".s:colors[5]." guifg=".s:colors[15]." gui=NONE"
    exe "hi LineNr          guibg=".s:colors[8]." guifg=".s:colors[13]." gui=NONE"
    exe "hi ModeMsg         guibg=NONE guifg=".s:colors[14]." gui=bold"
    exe "hi MoreMsg         guibg=NONE guifg=".s:colors[3]." gui=bold"
    exe "hi NonText         guibg=".s:colors[8]." guifg=".s:colors[9]." gui=NONE"
    exe "hi Normal          guibg=".s:colors[0]." guifg=".s:colors[15]." gui=NONE"
    exe "hi Pmenu           guibg=".s:colors[8]." guifg=".s:colors[13]." gui=NONE"
    exe "hi PmenuSel        guibg=".s:colors[5]." guifg=".s:colors[9]." gui=NONE"
    exe "hi PmenuThumb      guibg=".s:colors[13]." guifg=".s:colors[5]." gui=NONE"
    exe "hi Special         guibg=NONE guifg=".s:colors[12]." gui=NONE"
    exe "hi SpellBad        guibg=".s:colors[0]." guifg=".s:colors[1]." gui=underline guisp=".s:colors[9]
    exe "hi SpellCap        guibg=".s:colors[0]." guifg=".s:colors[7]." gui=underline guisp=".s:colors[12]
    exe "hi SpellLocal      guibg=".s:colors[0]." guifg=".s:colors[14]." gui=underline guisp=".s:colors[14]
    exe "hi SpellRare       guibg=".s:colors[0]." guifg=".s:colors[4]." gui=underline guisp=".s:colors[4]
    exe "hi Statement       guibg=NONE guifg=".s:colors[6]." gui=NONE"
    exe "hi StatusLine      guibg=".s:colors[5]." guifg=".s:colors[11]." gui=bold"
    exe "hi StatusLineNC    guibg=".s:colors[8]." guifg=".s:colors[13]." gui=bold,underline"
    exe "hi String          guibg=NONE guifg=".s:colors[7]." gui=NONE"
    exe "hi Todo            guibg=NONE guifg=".s:colors[12]." gui=bold"
    exe "hi Underlined      guibg=NONE guifg=NONE gui=underline"
    exe "hi VertSplit       guibg=".s:colors[8]." guifg=".s:colors[13]." gui=bold"
    exe "hi Visual          guibg=".s:colors[5]." guifg=NONE gui=NONE"
    exe "hi WildMenu        guibg=".s:colors[8]." guifg=".s:colors[14]." gui=NONE"
endif

" Set linked groups. {{{1

hi! link ColorColumn CursorLine
hi! link Conceal Special
hi! link CursorColumn CursorLine
hi! link CursorIM Cursor
hi! link DiffChange CursorLine
hi! link DiffText Visual
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
            call nvim_set_var("terminal_color_" . idx, s:colors[idx])
        endfor
    elseif has("terminal")
        let g:terminal_ansi_colors = s:colors
    endif
endif

" Set optional statusline groups, see :h hl-User1 {{{1

if s:opt_user_colors
    if &background ==# 'light'
        " Colors for statusline diagnostics: red (1) and green (2).
        exe "hi default User1 guibg=".s:colors[11]." guifg=".s:colors[1]." gui=bold"
        exe "hi default User2 guibg=".s:colors[11]." guifg=".s:colors[2]." gui=bold"
        " Subtle colors for miscellaneous indicators: sand (3) and orange (4).
        exe "hi default User3 guibg=".s:colors[11]." guifg=".s:colors[13]
        exe "hi default User4 guibg=".s:colors[11]." guifg=".s:colors[14]
        " Inverse colors for mode indicators: cordovan (5), green (6), orange (7), red (8) and blue (9)
        exe "hi default User5 guibg=".s:colors[13]." guifg=".s:colors[11]." gui=bold"
        exe "hi default User6 guibg=".s:colors[2]." guifg=".s:colors[11]." gui=bold"
        exe "hi default User7 guibg=".s:colors[14]." guifg=".s:colors[11]." gui=bold"
        exe "hi default User8 guibg=".s:colors[1]." guifg=".s:colors[11]." gui=bold"
        exe "hi default User9 guibg=".s:colors[4]." guifg=".s:colors[11]." gui=bold"

    else
        " Colors for statusline diagnostics: red (1) and green (2).
        exe "hi default User1 guibg=".s:colors[5]." guifg=".s:colors[9]." gui=bold"
        exe "hi default User2 guibg=".s:colors[5]." guifg=".s:colors[10]." gui=bold"
        " Subtle colors for miscellaneous indicators: sand (3) and orange (4).
        exe "hi default User3 guibg=".s:colors[5]." guifg=".s:colors[13]
        exe "hi default User4 guibg=".s:colors[5]." guifg=".s:colors[14]
        " Inverse colors for mode indicators: cordovan (5), green (6), orange (7), red (8) and blue (9)
        exe "hi default User5 guibg=".s:colors[13]." guifg=".s:colors[11]." gui=bold"
        exe "hi default User6 guibg=".s:colors[2]." guifg=".s:colors[11]." gui=bold"
        exe "hi default User7 guibg=".s:colors[6]." guifg=".s:colors[11]." gui=bold"
        exe "hi default User8 guibg=".s:colors[1]." guifg=".s:colors[11]." gui=bold"
        exe "hi default User9 guibg=".s:colors[4]." guifg=".s:colors[11]." gui=bold"
    endif
endif

" }}}
