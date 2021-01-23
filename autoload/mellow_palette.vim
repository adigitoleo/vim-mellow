" Color definitions for Mellow:
" <https://github.com/adigitoleo/vim-mellow>

function mellow_palette#Light(...)
    if a:0 && a:1 == "256"
        " xterm-256 conversions: https://codegolf.stackexchange.com/a/156985
        return [
                    \ 232, 125, 58, 137, 240, 236, 130, 187,
                    \ 235, 210, 107, 216, 102, 95, 173, 223
                    \ ]
    else
        return [
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
endfunction

function mellow_palette#Dark(...)
    if a:0 && a:1 == "256"
        " xterm-256 conversions: https://codegolf.stackexchange.com/a/156985
        return [
                    \ 232, 125, 64, 137, 96, 236, 130, 181,
                    \ 235, 210, 107, 216, 247, 95, 173, 223
                    \ ]
    else
        return [
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
endfunction
