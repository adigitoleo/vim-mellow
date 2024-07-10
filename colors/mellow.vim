"                  __ __
"    _  _    ___  /  /  /______    ___
"   / \/ \  / _ \/  /  / _  \  \/\/  /
"  /      \/ ___/  /  / /_/ /\      /
" /__/\/\__\___/__/__/\____/  \_/\_/
"
" Maintainer: adigitoleo <adigitoleo@posteo.net>
" Description: A warm, minimalist colorscheme for (neo)vim
" Homepage: https://github.com/adigitoleo/vim-mellow

" Clear highlights and set options. {{{1

if $TERM ==# 'linux'
    finish
endif

hi clear

if v:version > 580
    if exists('g:syntax_on')
        syntax reset
    endif
endif

let g:colors_name = 'mellow'

function! s:setopt(suffix, default) abort
    if has('nvim')
        return get(g:, g:colors_name . a:suffix, a:default)
    else
        return get(g:, g:colors_name . a:suffix, a:default)
    endif
endfunction

" By default, DO define colors for :terminal.
let s:opt_terminal_colors = s:setopt('_terminal_colors', 1)

" By default, DO NOT define User1-9 colors for statusline.
let s:opt_user_colors = s:setopt('_user_colors', 0)

" By default, DO NOT use ANSI colors as a fallback (uses 256 colors instead).
let s:opt_cterm_ansi = s:setopt('_cterm_ansi', 0)

" Load color palette. {{{1

if &background ==# 'light'
    let s:colors = mellow_palette#Light()
    let s:colors_fallback = s:opt_cterm_ansi ?
                \ range(16) : mellow_palette#Light('256')
else
    let s:colors = mellow_palette#Dark()
    let s:colors_fallback = s:opt_cterm_ansi ?
                \ range(16) : mellow_palette#Dark('256')
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
                \ 'hi %s ctermbg=%s guibg=%s ctermfg=%s guifg=%s',
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
            let l:colors .= printf(' guisp=%s', s:colors[l:opt])
        endif
    endfor

    return printf('%s cterm=%s gui=%s', l:colors, l:options, l:options)
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
    exe s:hi('Underlined',      'NONE',     'NONE',     'underline', 12)
    exe s:hi('VertSplit',       7,          3,          'bold')
    exe s:hi('Visual',          11,         'NONE')
    exe s:hi('WildMenu',        7,          6)
    exe s:hi('Whitespace',      'NONE',     7)

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
    exe s:hi('Underlined',      'NONE',     'NONE',     'underline', 12)
    exe s:hi('VertSplit',       8,          13,         'bold')
    exe s:hi('Visual',          5,          'NONE')
    exe s:hi('WildMenu',        8,          14)
    exe s:hi('Whitespace',      'NONE',     8)
endif

if has('nvim')
    exe s:hi('DiagnosticUnderlineError', 'NONE', 'NONE', 'underline', 1)
    exe s:hi('DiagnosticUnderlineWarn', 'NONE', 'NONE', 'underline', 6)
    exe s:hi('DiagnosticUnderlineInfo', 'NONE', 'NONE', 'underline', 3)
    exe s:hi('DiagnosticUnderlineHint', 'NONE', 'NONE', 'underline', 4)
    exe s:hi('DiagnosticUnderlineOk', 'NONE', 'NONE', 'underline', 2)
    " NOTE: This treesitter stuff seem to be hardcoded to something sensible:
    " @markup.strong
    " @markup.italic
    " @markup.strikethrough
    " @markup.underline
endif

" Set linked groups. {{{1

hi! link Added DiffAdd
hi! link Changed DiffChanged
hi! link ColorColumn CursorLine
hi! link Conceal Special
hi! link CursorColumn CursorLine
hi! link CursorIM Cursor
hi! link Delimiter Special
hi! link DiffText Visual
hi! link Directory DiffChange
hi! link Error DiffDelete
hi! link FoldColumn EndOfBuffer
hi! link Folded EndOfBuffer
hi! link MatchParen PmenuSel
hi! link Number Constant
hi! link Operator Statement
hi! link PmenuSbar Pmenu
hi! link PreProc Identifier
hi! link Question ModeMsg
hi! link QuickFixLine Underlined
hi! link Removed DiffDelete
hi! link Search IncSearch
hi! link SignColumn CursorLine
hi! link SpecialKey Special
hi! link StatusLineTerm StatusLine
hi! link StatusLineTermNC StatusLineNC
hi! link TabLine StatusLineNC
hi! link TabLineFill StatusLineNC
hi! link TabLineSel StatusLine
hi! link Terminal Normal
hi! link Title ModeMsg
hi! link Type Function
hi! link VisualNOS Error
hi! link WarningMsg Error
hi! link helpLeadBlank StatusLineNC
hi! link helpNormal StatusLineNC

" In NeoVim, we need to additionally set highlight groups from:
" :h diagnostic-highlights
" :h lsp-highlight
" :h treesitter-highlight-groups
" As well as all (Normal)Float* and Win* groups from :h highlight-groups.
if has('nvim')
    hi! link DiagnosticError ErrorMsg
    hi! link DiagnosticHint Special
    hi! link DiagnosticInfo MoreMsg
    hi! link DiagnosticOk DiffAdd
    hi! link DiagnosticWarn WarningMsg
    " The other Diagnostic* groups should link to the above by default,
    " except DiagnosticUnderline*, which are given explicit values earlier.
    hi! link NormalFloat Normal
    hi! link FloatBorder MoreMsg
    hi! link FloatTitle Title
    hi! link FloatFooter Title
    hi! link WinSeparator VertSplit
    hi! link WinBar StatusLine
    hi! link WinBarNC StatusLineNC

    hi! link LspReferenceText Visual
    hi! link LspReferenceRead WildMenu
    hi! link LspReferenceWrite PmenuSel
    hi! link LspInlayHint EndOfBuffer
    hi! link LspCodeLens NonText
    hi! link LspCodeLensSeparator NonText
    hi! link LspSignatureActiveParameter Visual
    " The @lsp.type.* and @lsp.mod.* groups from :h lsp-semantic-highlight
    " seem to be sensible links by default, and @lsp.typemod.* groups are
    " missing from the helpfile so I assume they are basically experimental.
    " Either way that stuff is arguably too exotic to be expected of a
    " colorscheme by default.
    hi! link @variable Identifier
    hi! link @variable.builtin Special
    hi! link @variable.parameter Identifier
    hi! link @variable.parameter.builtin Special
    hi! link @variable.member Identifier
    hi! link @constant Constant
    hi! link @constant.builtin Special
    hi! link @constant.macro Macro
    hi! link @module Structure
    hi! link @module.builtin Special
    hi! link @label Label
    hi! link @string String
    hi! link @string.documentation Comment
    hi! link @string.regexp Special
    hi! link @string.escape Special
    hi! link @string.special Special
    hi! link @string.special.symbol Special
    hi! link @string.special.path Special
    hi! link @string.special.url Underline
    hi! link @character Character
    hi! link @character.special SpecialChar
    hi! link @boolean Boolean
    hi! link @number Number
    hi! link @number.float Float
    hi! link @type Type
    hi! link @type.builtin Special
    hi! link @type.definition Typedef
    hi! link @attribute Macro
    hi! link @attribute.builtin Special
    hi! link @property Identifier
    hi! link @function Function
    hi! link @function.builtin Special
    hi! link @function.call Function
    hi! link @function.macro Macro
    hi! link @function.method Function
    hi! link @function.method.call Function
    hi! link @constructor Function
    hi! link @operator Operator
    hi! link @keyword Keyword
    hi! link @keyword.coroutine Keyword
    hi! link @keyword.function Keyword
    hi! link @keyword.operator Keyword
    hi! link @keyword.import Keyword
    hi! link @keyword.type Keyword
    hi! link @keyword.modifier Keyword
    hi! link @keyword.repeat Keyword
    hi! link @keyword.return Keyword
    hi! link @keyword.debug Keyword
    hi! link @keyword.exception Keyword
    hi! link @keyword.conditional Keyword
    hi! link @keyword.conditional.ternary Keyword
    hi! link @keyword.directive Keyword
    hi! link @keyword.directive.define Keyword
    hi! link @punctuation.delimiter Delimiter
    hi! link @punctuation.bracket Delimiter
    hi! link @punctuation.special Special
    hi! link @comment Comment
    hi! link @comment.documentation Comment
    hi! link @comment.error ErrorMsg
    hi! link @comment.warning WarningMsg
    hi! link @comment.todo Todo
    hi! link @comment.note MoreMsg
    hi! link @markup.heading Title
    hi! link @markup.heading.1 Title
    hi! link @markup.heading.2 Title
    hi! link @markup.heading.3 Title
    hi! link @markup.heading.4 Title
    hi! link @markup.heading.5 Title
    hi! link @markup.heading.6 Title
    hi! link @markup.quote Special
    hi! link @markup.math Special
    hi! link @markup.link Underlined
    hi! link @markup.link.label Underlined
    hi! link @markup.link.url Underlined
    hi! link @markup.raw Special
    hi! link @markup.raw.block Special
    hi! link @markup.list Operator
    hi! link @markup.list.checked Operator
    hi! link @markup.list.unchecked Operator
    hi! link @diff.plus DiffAdd
    hi! link @diff.minus DiffDelete
    hi! link @diff.delta DiffChange
    hi! link @tag Tag
    hi! link @tag.builtin Tag
    hi! link @tag.attribute Tag
    hi! link @tag.delimiter Tag
endif

" Set terminal colors. {{{1

if s:opt_terminal_colors
    if has('nvim')
        for idx in range(16)
            call nvim_set_var('terminal_color_' . idx, s:colors[idx])
        endfor
    elseif has('terminal')
        let g:terminal_ansi_colors = s:colors
    endif
endif

" Set optional statusline groups, see :h hl-User1 {{{1

if s:opt_user_colors
    if &background ==# 'light'
        " Colors for statusline diagnostics: red (1) and green (2).
        exe s:hi('default User1',   11, 1,  'bold')
        exe s:hi('default User2',   11, 2,  'bold')
        " Subtle colors for miscellaneous indicators: sand (3) and gray (4).
        exe s:hi('default User3',   11, 3)
        exe s:hi('default User4',   11, 12)
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
        " Subtle colors for miscellaneous indicators: sand (3) and gray (4).
        exe s:hi('default User3',   5,  3)
        exe s:hi('default User4',   5,  12)
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
