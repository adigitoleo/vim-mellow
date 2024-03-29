# Mellow


### A warm, minimalist colorscheme for (neo)vim

`Plug 'adigitoleo/vim-mellow', { 'tag': '*' }`


## Screenshots

Taken on alacritty with LiberationMono font:

<p align="center" style="margin: 4%;">
    <img src="./img/syntax_light.png" width="48%" />
    <img src="./img/syntax_dark.png" width="48%" />
</p>

For more screenshots, check the [wiki].


## Installation

*NOTE: It is recommended to install a tagged release. The master branch is not
guaranteed to be stable.*

If you use a vim plugin manager, consult the relevant documentation.
Here are some links to popular plugin managers:
- [Pathogen]
- [NeoBundle]
- [Vundle]
- [vim-plug]

**After installing the colorscheme, please read `:help mellow` for information
on usage and available options.**


### Statusline integration

Two statusline plugins are currently supported:
- [Lightline] : set the Lightline colorscheme to `'mellow'`, requires
  `termguicolors`
- [mellow statusline] : simple ASCII statusline, requires
  `let g:mellow_user_colors = 1`


## Miscellaneous

This theme was first motivated by a lack of `bg=light` option in [vim-farout],
which uses a similar minimalist set of warm red and yellow colors. I wanted a
light theme with moderate contrast and warm colors, that didn't make me want to
change every single syntax file. To me, Mellow lies mid-way between `:syntax
off` and popular themes like [solarized] or [gruvbox].

And that's just the way I like it :)

Since the theme uses only 16 colors, you can use the same colors in your
terminal of choice. Check the [wiki] for an example Alacritty theme, as well as
experimental Mellow colorschemes for some other Linux stuff.


[NOTE]: # ( ------------ PUT ALL EXTERNAL LINKS BELOW THIS LINE ------------ )

[wiki]: https://github.com/adigitoleo/vim-mellow/wiki

[Pathogen]: https://github.com/tpope/vim-pathogen

[NeoBundle]: https://github.com/Shougo/neobundle.vim

[Vundle]: https://github.com/gmarik/vundle

[vim-plug]: https://github.com/junegunn/vim-plug

[vim-farout]: https://github.com/fcpg/vim-farout

[solarized]: https://en.wikipedia.org/wiki/Solarized_(color_scheme)

[gruvbox]: https://github.com/morhetz/gruvbox

[mellow statusline]: https://github.com/adigitoleo/vim-mellow-statusline

[ALE]: https://github.com/dense-analysis/ale

[Lightline]: https://github.com/itchyny/lightline.vim
