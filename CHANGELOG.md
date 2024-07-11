# Changelog

All notable changes to this project will be documented in this file.

For versions prior to v1.0.0, information can be found in the git tag messages.

Versions after v1.3.0 use a new autoloaded palette function and are therefore
backwards-incompatible (in hindsight, that should have been a v2 release...)

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [1.6.1] : 2024-07-11

### Added
- Optional names for the color codes output by the palette API

## [1.6.0] : 2024-05-28

### Added
- Defined or linked many new highlight groups required in NeoVim (diagnostics,
  LSP, tree-sitter), since default NeoVim links are not always sensible or
  reliable (see e.g. <https://github.com/neovim/neovim/issues/29013>)

## [1.5.9] : 2024-05-26

### Added
- Manual highlight definition for `@variable`, which is unfortunately
  hard-coded to `NvimLightGrey2` in the new NeoVim 0.10 default themes

## [1.5.8] : 2024-05-26

### Changed
- Streamline README documentation and disaffirm affiliation with mellow.nvim

## [1.5.7] : 2024-05-26

### Added
- Highlight links to restore previous look for `Delimiter` and `Operator`
  groups, which were given their own colors in NeoVim 0.10
- Highlight links for the new NeoVim 0.10 group names: `Added`, `Changed` and
  `Removed` (which are mostly used for diff buffers)

## [1.5.6] : 2024-02-11

### Added
- Highlight links for the basic set of neovim's LSP diagnostics

### Changed
- Softer color for underlines

## [1.5.5] : 2023-07-26

### Added
- 'command' mode colors for the lightline theme
- 'Whitespace' group colors (used for e.g. indent guides, "non-printed" chars)

## [1.5.4] : 2022-11-02

### Changed
- Fixed vim8 errors due to unsupported string concatenation syntax

## [1.5.2] : 2022-04-11

### Changed
- Update UserColors 3 and 4 ("subtle" colors on statusline background)
  to better accommodate v1.5 changes in vim-mellow-statusline

## [1.5.1] : 2022-03-15

### Fixed
- Update screenshots in README and github wiki

## [1.5.0] : 2022-03-14

### Changed
- Light yellow, to be easier to read on the light theme background

### Fixed
- Lightline colorscheme, to be responsive to `background` changes,
  [@mvanderkamp](https://github.com/mvanderkamp).

## [1.4.3] : 2021-06-14

### Changed
- Improve documentation

## [1.4.2] : 2021-03-05

### Changed
- Update maintainer email

## [1.4.1] : 2021-02-22

### Changed
- Link hl-Title to hl-ModeMsg instead of hl-Ignore (distinct title color)

## [1.4.0] : 2021-02-01

### Added
- Vim helpfile.

### Changed
- New ASCII logo.
- Overhaul of lightline themes.

## [1.3.0] : 2021-01-23

### Changed
- Standardise Lightline themes to use bold colors and three left sections,
  [@mvanderkamp](https://github.com/mvanderkamp).
- Refactor to load color definitions from a central autoload function.

## [1.2.1] : 2020-11-06

### Changed
- Fix dark Lightline theme to use blue color for percentage block background.


## [1.2.0] : 2020-11-04

### Added
- Lightline themes by [@toniz4](https://github.com/toniz4).

## [1.1.0] : 2020-11-02

### Added
- Option `g:mellow_cterm_ansi` to set the type of fallback codes.


## [1.0.0] : 2020-11-01

### Added
- Fallback color codes (ANSI or 256) when `termguicolors` is unset.
- Highlight setter function `s:hi`
- README documentation for the `g:mellow_user_colors` option.

### Changed
- Make DiffDelete and Error color groups consistent across dark and light
  themes.
- Refactor to handle most highlight commands (excluding links) through the
  setter function.

### Removed
- Check for (enabled) `termguicolors` setting.
