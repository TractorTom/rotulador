# The latex engine

This function returns the latex engine available to render .tex file
into pdf.

## Usage

``` r
get_latex_engine()
```

## Value

a character vector of length 1 representing the latex engine.

## Details

If several latex engine are available, the choice will be done in this
order:

- xelatex;

- lualatex;

- pdflatex;

- tectonic.

## Examples

``` r
get_latex_engine()
#> [1] "xelatex"
```
