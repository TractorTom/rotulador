# The path to the word template

This function returns the path to the word template installed with the
package rotulador.

## Usage

``` r
get_word_template_path()
```

## Value

a character vector of length 1 representing the path

## Details

This function helps the other functions to find the template of the word
document used to render in `.docx` output.

## Examples

``` r
get_word_template_path()
#> [1] "/home/runner/work/_temp/Library/rotulador/extdata/template.docx"
```
