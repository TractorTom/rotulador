# The path to the font Fira Code

This function returns the path to the font Fira Code installed with the
package rotulador.

## Usage

``` r
get_fira_path()
```

## Value

a character vector of length 1 representing the path

## Details

This function helps the other functions to find the path to the font
Fira Code to render documents and use this font by default for code
chunks.

## Examples

``` r
get_fira_path()
#> [1] "/home/runner/work/_temp/Library/rotulador/extdata/FiraCode/FiraCode-Regular.ttf"
```
