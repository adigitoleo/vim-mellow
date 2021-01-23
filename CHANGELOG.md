# Changelog

All notable changes to this project will be documented in this file.

For versions prior to v1.0.0, information can be found in the git tag messages.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [1.3.0] : 2021-01-23

### Changed
- Standardise Lightline themes to use bold colors and three left sections.
- Refactor to load color definitions from a central autoload function.

## [1.2.1] : 2020-11-06

### Changed
- Fix README typo in tagged release installation instructions.
- Fix dark Lightline theme to use blue color for percentage block background.


## [1.2.0] : 2020-11-04

### Added
- Lightline themes by [@toniz4](https://github.com/toniz4).

### Changed
- README now recommends installation of tagged releases.


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
