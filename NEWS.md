# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.1.0/), and this project adheres
to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased]

## [0.2.1] - 25/03/2025

### Changed

* add `keep-tex` to keep the .tex filegenerated with pdf output


## [0.2.0] - 22/01/2025

### Fixed

* Linting

### Changed

* Minimal R version for tests (devel)

### Added

* New functions to import and export data in csv format


## [0.1.3] - 23/08/2024

### Removed

* pipe usage for R versions older than 4.1

### Added 

* new tests for all functions
* new inputs checks for `render_code()`
* test coverage with complete tests
* new argument `open` to open  (or not) the generated document
* template for word generated files


## [0.1.2] - 14/06/2024

### Added 

* hidden functions `generate_chunk_header()` and `generate_rmd_file()` to refactor the code and simplify the visibility.
* hidden functions `get_fira_path()` to get the path to the folder which contains the `.ttf` files
* new tests
* test coverage with `pandoc`, **{tinytex}** and `xclip` (for **Ubuntu**) installed


## [0.1.1]

### Changed

* `render_code()` now accept **knitr** chunk option as function arguments
* Add new dependencies: **knitr**` and **checkmate** to get all the different knitr options and to check the inputs of our functions


## [0.1.0] - CRAN release

### Added

* Initial commit
* new function render_code to render some code on-the-fly to produce PDF, HTML, word and other format quickly by using the clickboard


[Unreleased]: https://github.com/TanguyBarthelemy/TBox/compare/v0.2.0...HEAD
[0.1.2]: https://github.com/TanguyBarthelemy/TBox/compare/v0.1.3...v0.2.0
[0.1.3]: https://github.com/TanguyBarthelemy/TBox/compare/v0.1.2...v0.1.3
[0.1.2]: https://github.com/TanguyBarthelemy/TBox/compare/v0.1.1...v0.1.2
[0.1.1]: https://github.com/TanguyBarthelemy/TBox/compare/v0.1.0...v0.1.1
[0.1.0]: https://github.com/TanguyBarthelemy/TBox/releases/tag/v0.1.0
