"                   _ _                      _
"    _ __ ___   ___| | | _____      ____   _(_)_ __ ___
"   | '_ ` _ \ / _ \ | |/ _ \ \ /\ / /\ \ / / | '_ ` _ \
"   | | | | | |  __/ | | (_) \ V  V /  \ V /| | | | | | |
"   |_| |_| |_|\___|_|_|\___/ \_/\_(_)  \_/ |_|_| |_| |_|
"
" Maintainer: adigitoleo <adigitoleo@protonmail.com>
" Version: 0.1
" Description: A warm, minimalist light colorscheme for (neo)vim


let s:script_name = expand("<sfile>:t:r")

" Check requirements. {{{1

" Don't set termguicolors unless re-sourcing.
if !has('termguicolors') && !has('gui_running')
    throw "RGB colors unavailable"
elseif !&termguicolors && g:colors_name != s:script_name
    throw "RGB colors are not enabled, see :h 'termguicolors'"
else
    set termguicolors
endif

" Don't set background unless re-sourcing.
if &background ==# 'dark' && g:colors_name != s:script_name
    throw "Not compatible with background=dark"
else
    set background=light
endif

" Initialize and set options. {{{1

hi clear

if v:version > 580
    if exists("g:syntax_on")
        syntax reset
    endif
endif

let g:colors_name = s:colors_name

if !exists('g:mellow_terminal_colors')
    let g:mellow_terminal_colors = 1
endif

" Define main colors. {{{1

hi Comment          guibg=NONE guifg=#D47D49 gui=NONE
hi Constant        	guibg=NONE guifg=#0F0908 gui=NONE
hi Cursor          	guibg=#0F0908 guifg=#F2DDBC gui=NONE
hi CursorLine      	guibg=#E0CCAE guifg=NONE gui=NONE
hi CursorLineNr 	guibg=#E0CCAE guifg=#BF472C gui=bold
hi DiffAdd      	guibg=#84BF40 guifg=NONE gui=NONE
hi DiffDelete   	guibg=#FF7477 guifg=NONE gui=NONE
hi Directory        guibg=NONE guifg=#BF472C gui=NONE
hi EndOfBuffer   	guibg=#E0CCAE guifg=#8A7B85 gui=NONE
hi Error   		    guibg=#FF7477 guifg=#0F0908 gui=NONE
hi ErrorMsg   		guibg=#AF0032 guifg=#F2DDBC gui=NONE
hi Function   		guibg=NONE guifg=#66292F gui=NONE
hi Identifier   	guibg=NONE guifg=#8A4B53 gui=NONE
hi Ignore   		guibg=NONE guifg=NONE gui=NONE
hi IncSearch   		guibg=#F5BB89 guifg=#0F0908 gui=NONE
hi LineNr   		guibg=#E0CCAE guifg=#D47D49 gui=NONE
hi ModeMsg   		guibg=NONE guifg=#BF472C gui=bold
hi MoreMsg   		guibg=NONE guifg=#A67458 gui=bold
hi NonText   		guibg=#E0CCAE guifg=#FF7477 gui=NONE
hi Normal   		guibg=#F2DDBC guifg=#0F0908 gui=NONE
hi Pmenu   		    guibg=#E0CCAE guifg=#A67458 gui=NONE
hi PmenuSel   		guibg=#F5BB89 guifg=#BF472C gui=NONE
hi PmenuThumb   	guibg=#8A4B53 guifg=#F5BB89 gui=NONE
hi Special   		guibg=NONE guifg=#8A7B85 gui=NONE
hi SpellBad   		guibg=#F2DDBC guifg=#AF0032 gui=underline guisp=#FF7477
hi SpellCap   		guibg=#F2DDBC guifg=#573E55 gui=underline guisp=#8A7B85
hi SpellLocal   	guibg=#F2DDBC guifg=#BF472C gui=underline guisp=#D47D49
hi SpellRare   		guibg=#F2DDBC guifg=#A67458 gui=underline guisp=#F5BB89
hi Statement   		guibg=NONE guifg=#AF0032 gui=NONE
hi StatusLine   	guibg=#8A4B53 guifg=#F2DDBC gui=NONE
hi StatusLineNC   	guibg=#F5BB89 guifg=#A67458 gui=NONE
hi String   		guibg=NONE guifg=#573E55 gui=NONE
hi TabLineFill   	guibg=#F5BB89 guifg=#291916 gui=NONE
hi Todo   		    guibg=NONE guifg=#8A7B85 gui=bold
hi Underlined   	guibg=NONE guifg=NONE gui=underline
hi Visual   		guibg=#F5BB89 guifg=NONE gui=NONE
hi WildMenu   		guibg=#E0CCAE guifg=#BF472C gui=NONE

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
    if has('nvim')
        let g:terminal_color_0 = '#0F0908'
        let g:terminal_color_1 = '#AF0032'
        let g:terminal_color_2 = '#4C6E25'
        let g:terminal_color_3 = '#A67458'
        let g:terminal_color_4 = '#573E55'
        let g:terminal_color_5 = '#66292F'
        let g:terminal_color_6 = '#BF472C'
        let g:terminal_color_7 = '#E0CCAE'
        let g:terminal_color_8 = '#291916'
        let g:terminal_color_9 = '#FF7477'
        let g:terminal_color_10 = '#84BF40'
        let g:terminal_color_11 = '#F5BB89'
        let g:terminal_color_12 = '#8A7B85'
        let g:terminal_color_13 = '#8A4B53'
        let g:terminal_color_14 = '#D47D49'
        let g:terminal_color_15 = '#F2DDBC'
    else
        let g:terminal_ansi_colors = [
                    \ '#0F0908',
                    \ '#AF0032',
                    \ '#4C6E25',
                    \ '#A67458',
                    \ '#573E55',
                    \ '#66292F',
                    \ '#BF472C',
                    \ '#E0CCAE',
                    \ '#291916',
                    \ '#FF7477',
                    \ '#84BF40',
                    \ '#F5BB89',
                    \ '#8A7B85',
                    \ '#8A4B53',
                    \ '#D47D49',
                    \ '#F2DDBC',
                    \ ]
    endif
endif

" }}}
