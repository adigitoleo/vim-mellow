"                   _ _                      _
"    _ __ ___   ___| | | _____      ____   _(_)_ __ ___
"   | '_ ` _ \ / _ \ | |/ _ \ \ /\ / /\ \ / / | '_ ` _ \
"   | | | | | |  __/ | | (_) \ V  V /  \ V /| | | | | | |
"   |_| |_| |_|\___|_|_|\___/ \_/\_(_)  \_/ |_|_| |_| |_|
"
" Maintainer: adigitoleo <adigitoleo@protonmail.com>
" Version: 0.6
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
let g:mellow_terminal_colors = get(g:, "mellow_terminal_colors", 1)

" By default, DO NOT define User1-9 colors for statusline.
let g:mellow_user_colors = get(g:, "mellow_user_colors", 0)

" Define main colors. {{{1

if &background ==# 'light'
    hi Comment          guibg=NONE guifg=#D47D49 gui=NONE
    hi Constant         guibg=NONE guifg=#0F0908 gui=NONE
    hi Cursor           guibg=#0F0908 guifg=#F2DDBC gui=NONE
    hi CursorLine       guibg=#E0CCAE guifg=NONE gui=NONE
    hi CursorLineNr     guibg=#E0CCAE guifg=#BF472C gui=bold
    hi DiffAdd          guibg=#84BF40 guifg=NONE gui=NONE
    hi DiffDelete       guibg=#FF7477 guifg=NONE gui=NONE
    hi Directory        guibg=NONE guifg=#BF472C gui=NONE
    hi EndOfBuffer      guibg=#E0CCAE guifg=#8A7B85 gui=NONE
    hi Error            guibg=#FF7477 guifg=#0F0908 gui=NONE
    hi ErrorMsg         guibg=#AF0032 guifg=#F2DDBC gui=NONE
    hi Function         guibg=NONE guifg=#66292F gui=NONE
    hi Identifier       guibg=NONE guifg=#8A4B53 gui=NONE
    hi Ignore           guibg=NONE guifg=NONE gui=NONE
    hi IncSearch        guibg=#F5BB89 guifg=#0F0908 gui=NONE
    hi LineNr           guibg=#E0CCAE guifg=#D47D49 gui=NONE
    hi ModeMsg          guibg=NONE guifg=#BF472C gui=bold
    hi MoreMsg          guibg=NONE guifg=#A67458 gui=bold
    hi NonText          guibg=#E0CCAE guifg=#FF7477 gui=NONE
    hi Normal           guibg=#F2DDBC guifg=#0F0908 gui=NONE
    hi Pmenu            guibg=#E0CCAE guifg=#A67458 gui=NONE
    hi PmenuSel         guibg=#F5BB89 guifg=#BF472C gui=NONE
    hi PmenuThumb       guibg=#8A4B53 guifg=#F5BB89 gui=NONE
    hi Special          guibg=NONE guifg=#8A7B85 gui=NONE
    hi SpellBad         guibg=#F2DDBC guifg=#AF0032 gui=underline guisp=#FF7477
    hi SpellCap         guibg=#F2DDBC guifg=#573E55 gui=underline guisp=#8A7B85
    hi SpellLocal       guibg=#F2DDBC guifg=#BF472C gui=underline guisp=#D47D49
    hi SpellRare        guibg=#F2DDBC guifg=#A67458 gui=underline guisp=#F5BB89
    hi Statement        guibg=NONE guifg=#AF0032 gui=NONE
    hi StatusLine       guibg=#8A4B53 guifg=#F5BB89 gui=bold
    hi StatusLineNC     guibg=#F5BB89 guifg=#A67458 gui=bold
    hi String           guibg=NONE guifg=#573E55 gui=NONE
    hi TabLineFill      guibg=#F5BB89 guifg=#3D241F gui=NONE
    hi Todo             guibg=NONE guifg=#8A7B85 gui=bold
    hi Underlined       guibg=NONE guifg=NONE gui=underline
    hi Visual           guibg=#F5BB89 guifg=NONE gui=NONE
    hi WildMenu         guibg=#E0CCAE guifg=#BF472C gui=NONE

else
    hi Comment          guibg=NONE guifg=#8A4B53 gui=NONE
    hi Constant         guibg=NONE guifg=#ECCD9D gui=NONE
    hi Cursor           guibg=#ECCD9D guifg=#0F0809 gui=NONE
    hi CursorLine       guibg=#3D241F guifg=NONE gui=NONE
    hi CursorLineNr     guibg=#3D241F guifg=#D47D49 gui=bold
    hi DiffAdd          guibg=#577E2A guifg=NONE gui=NONE
    hi DiffDelete       guibg=NONE guifg=#FF7477 gui=NONE
    hi Directory        guibg=NONE guifg=#D47D49 gui=NONE
    hi EndOfBuffer      guibg=#3D241F guifg=#9F939B gui=NONE
    hi Error            guibg=NONE guifg=#FF7477 gui=NONE
    hi ErrorMsg         guibg=#AF0032 guifg=#ECCD9D gui=NONE
    hi Function         guibg=NONE guifg=#BF9169 gui=NONE
    hi Identifier       guibg=NONE guifg=#F5BB89 gui=NONE
    hi Ignore           guibg=NONE guifg=NONE gui=NONE
    hi IncSearch        guibg=#66292F guifg=#ECCD9D gui=NONE
    hi LineNr           guibg=#3D241F guifg=#8A4B53 gui=NONE
    hi ModeMsg          guibg=NONE guifg=#D47D49 gui=bold
    hi MoreMsg          guibg=NONE guifg=#BF9169 gui=bold
    hi NonText          guibg=#3D241F guifg=#FF7477 gui=NONE
    hi Normal           guibg=#0F0809 guifg=#ECCD9D gui=NONE
    hi Pmenu            guibg=#3D241F guifg=#8A4B53 gui=NONE
    hi PmenuSel         guibg=#66292F guifg=#FF7477 gui=NONE
    hi PmenuThumb       guibg=#8A4B53 guifg=#66292F gui=NONE
    hi Special          guibg=NONE guifg=#9F939B gui=NONE
    hi SpellBad         guibg=#0F0809 guifg=#AF0032 gui=underline guisp=#FF7477
    hi SpellCap         guibg=#0F0809 guifg=#D3C1A6 gui=underline guisp=#9F939B
    hi SpellLocal       guibg=#0F0809 guifg=#D47D49 gui=underline guisp=#D47D49
    hi SpellRare        guibg=#0F0809 guifg=#896186 gui=underline guisp=#896186
    hi Statement        guibg=NONE guifg=#BF472C gui=NONE
    hi StatusLine       guibg=#66292F guifg=#D47D49 gui=bold
    hi StatusLineNC     guibg=#3D241F guifg=#8A4B53 gui=bold
    hi String           guibg=NONE guifg=#D3C1A6 gui=NONE
    hi TabLineFill      guibg=#3D241F guifg=#3D241F gui=NONE
    hi Todo             guibg=NONE guifg=#9F939B gui=bold
    hi Underlined       guibg=NONE guifg=NONE gui=underline
    hi Visual           guibg=#66292F guifg=NONE gui=NONE
    hi WildMenu         guibg=#3D241F guifg=#D47D49 gui=NONE
endif

" Define linked groups. {{{1

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
hi! link PmenuSbar TabLineFill
hi! link PreProc Identifier
hi! link Question ModeMsg
hi! link QuickFixLine Underlined
hi! link Search IncSearch
hi! link SignColumn CursorLine
hi! link SpecialKey Special
hi! link StatusLineTerm StatusLine
hi! link StatusLineTermNC StatusLineNC
hi! link TabLine StatusLineNC
hi! link TabLineSel StatusLine
hi! link Terminal Normal
hi! link Title Ignore
hi! link Type Function
hi! link VertSplit StatusLineNC
hi! link VisualNOS Error
hi! link WarningMsg Error
hi! link helpLeadBlank StatusLineNC
hi! link helpNormal StatusLineNC

" Set terminal colors. {{{1

if g:mellow_terminal_colors
    if &background ==# 'light'
        if has("nvim")
            let g:terminal_color_0 = '#0F0908'
            let g:terminal_color_1 = '#AF0032'
            let g:terminal_color_2 = '#4C6E25'
            let g:terminal_color_3 = '#A67458'
            let g:terminal_color_4 = '#573E55'
            let g:terminal_color_5 = '#66292F'
            let g:terminal_color_6 = '#BF472C'
            let g:terminal_color_7 = '#E0CCAE'
            let g:terminal_color_8 = '#3D241F'
            let g:terminal_color_9 = '#FF7477'
            let g:terminal_color_10 = '#84BF40'
            let g:terminal_color_11 = '#F5BB89'
            let g:terminal_color_12 = '#8A7B85'
            let g:terminal_color_13 = '#8A4B53'
            let g:terminal_color_14 = '#D47D49'
            let g:terminal_color_15 = '#F2DDBC'
        elseif has("terminal")
            let g:terminal_ansi_colors = [
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
        endif

    else
        if has("nvim")
            let g:terminal_color_0 = '#0F0908'
            let g:terminal_color_1 = '#AF0032'
            let g:terminal_color_2 = '#577E2A'
            let g:terminal_color_3 = '#BF9169'
            let g:terminal_color_4 = '#896186'
            let g:terminal_color_5 = '#66292F'
            let g:terminal_color_6 = '#BF472C'
            let g:terminal_color_7 = '#D3C1A6'
            let g:terminal_color_8 = '#3D241F'
            let g:terminal_color_9 = '#FF7477'
            let g:terminal_color_10 = '#84BF40'
            let g:terminal_color_11 = '#F5BB89'
            let g:terminal_color_12 = '#9F939B'
            let g:terminal_color_13 = '#8A4B53'
            let g:terminal_color_14 = '#D47D49'
            let g:terminal_color_15 = '#ECCD9D'
        elseif has("terminal")
            let g:terminal_ansi_colors = [
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
    endif
endif

" Define optional statusline groups, see :h hl-User1 {{{1

if g:mellow_user_colors
    if &background ==# 'light'
        " 1: StatusLine but boldface.
        hi default User1        guibg=#8A4B53 guifg=#F5BB89 gui=bold
        " 2: StatusLine but with reversed fg<->bg.
        hi default User2        guibg=#8A4B53 guifg=#F5BB89 gui=reverse

        " 3: Pink fg with inherited bg from StatusLine(NC).
        hi default User3        guibg=#8A4B53 guifg=#FF7477 gui=bold
        " 4: Green fg with inherited bg from StatusLine(NC).
        hi default User4        guibg=#8A4B53 guifg=#84BF40 gui=bold

        " 5: Dark magenta bg with inherited fg from StatusLine(NC).
        hi default User5        guibg=#66292F guifg=#F5BB89 gui=bold
        " 6: Dark green bg with inherited bg from StatusLine(NC).
        hi default User6        guibg=#4C6E25 guifg=#F5BB89 gui=bold
        " 7: Orange bg with inherited fg from StatusLine(NC).
        hi default User7        guibg=#D47D49 guifg=#F5BB89 gui=bold
        " 8: Dark red bg with inherited fg from StatusLine(NC).
        hi default User8        guibg=#AF0032 guifg=#F5BB89 gui=bold
        " 9: Dark blue bg with inherited fg from StatusLine(NC).
        hi default User9        guibg=#573E55 guifg=#F5BB89 gui=bold

    else
        " 1: StatusLine but boldface.
        hi default User1        guibg=#66292F guifg=#D47D49 gui=bold
        " 2: StatusLine but with reversed fg<->bg.
        hi default User2        guibg=#66292F guifg=#D47D49 gui=reverse

        " 3: Pink fg with inherited bg from StatusLine(NC).
        hi default User3        guibg=#66292F guifg=#FF7477 gui=bold
        " 4: Green fg with inherited bg from StatusLine(NC).
        hi default User4        guibg=#66292F guifg=#84BF40 gui=bold

        " 5: Magenta bg with dark fg.
        hi default User5        guibg=#8A4B53 guifg=#3D241F gui=bold
        " 6: Dark green bg with dark fg.
        hi default User6        guibg=#577E2A guifg=#3D241F gui=bold
        " 7: Orange bg with dark fg.
        hi default User7        guibg=#D47D49 guifg=#3D241F gui=bold
        " 8: Red bg with dark fg.
        hi default User8        guibg=#AF0032 guifg=#3D241F gui=bold
        " 9: Dark blue bg with dark fg.
        hi default User9        guibg=#896186 guifg=#3D241F gui=bold
    endif
endif

" }}}
