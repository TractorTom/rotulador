
<!-- README.md is generated from README.Rmd. Please edit that file -->

# {rotulador}

<!-- badges: start -->

[![CRAN
status](https://www.r-pkg.org/badges/version/rotulador)](https://CRAN.R-project.org/package=rotulador)

[![R-CMD-check](https://github.com/TractorTom/rotulador/actions/workflows/R-CMD-check.yaml/badge.svg)](https://github.com/TractorTom/rotulador/actions/workflows/R-CMD-check.yaml)
[![Test
coverage](https://codecov.io/gh/TractorTom/rotulador/branch/main/graph/badge.svg)](https://app.codecov.io/gh/TractorTom/rotulador?branch=main)
[![CodeFactor](https://www.codefactor.io/repository/github/tractortom/rotulador/badge/main)](https://www.codefactor.io/repository/github/tractortom/rotulador/overview/main)
[![lint](https://github.com/TractorTom/rotulador/actions/workflows/lint.yaml/badge.svg)](https://github.com/TractorTom/rotulador/actions/workflows/lint.yaml)
[![GH Pages
built](https://github.com/TractorTom/rotulador/actions/workflows/pkgdown.yaml/badge.svg)](https://github.com/TractorTom/rotulador/actions/workflows/pkgdown.yaml)
<!-- badges: end -->

The goal of **{rotulador}** is to provide functions for programming and
generating documents in R. It’s a tools to help developers and producers
manipulate R objects and outputs.

## Installation

You can install the development version of rotulador from
[GitHub](https://github.com/) with:

``` r
# install.packages("remotes")
remotes::install_github("TractorTom/rotulador")
```

## Example

Formating code top include in a document:

``` r
library("rotulador")

code <- "x <- 1:10\nmean(x)"
clipr::write_clip(code)
render_code(code, format = "html")
```
