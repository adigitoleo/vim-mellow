# Changelog

All notable changes to this project will be documented in this file.

For versions prior to v1.0.0, information can be found in the git tag messages.

Versions after v1.3.0 use a new autoloaded palette function and are therefore
backwards-incompatible (in hindsight, that should have been a v2 release...)

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

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
