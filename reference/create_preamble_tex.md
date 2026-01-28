# Create preamble .tex for code font

Create preamble .tex for code font

## Usage

``` r
create_preamble_tex(font_size = 12, monofont_path = get_fira_path())
```

## Arguments

- font_size:

  a numeric. The font size, only available in pdf format.

- monofont_path:

  a string. The path to the font used to render code chunks. It should
  link to a `.ttf` file. Only available in pdf format.

## Value

a vector of characters representing an Rmd file (each element being a
line)

## Examples

``` r
create_preamble_tex()
#> [1] "\\fontsize{12}{12}"                                                                                               
#> [2] "\\setmonofont[ExternalLocation=/home/runner/work/_temp/Library/rotulador/extdata/FiraCode/]{FiraCode-Regular.ttf}"
#> [3] "\\makeatletter"                                                                                                   
#> [4] "\\def\\verbatim@nolig@list{}"                                                                                     
#> [5] "\\makeatother"                                                                                                    
create_preamble_tex(font_size = 18.0)
#> [1] "\\fontsize{18}{18}"                                                                                               
#> [2] "\\setmonofont[ExternalLocation=/home/runner/work/_temp/Library/rotulador/extdata/FiraCode/]{FiraCode-Regular.ttf}"
#> [3] "\\makeatletter"                                                                                                   
#> [4] "\\def\\verbatim@nolig@list{}"                                                                                     
#> [5] "\\makeatother"                                                                                                    
```
