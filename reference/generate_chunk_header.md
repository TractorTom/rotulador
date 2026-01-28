# Generate R chunk header

Function to generate R chunk header for rmarkdown rendering in different
output

## Usage

``` r
generate_chunk_header(...)
```

## Arguments

- ...:

  The different options for R code chunks.

## Value

a string of length 1

## Details

To get the list of all accepted options, you can call
`names(knitr::opts_chunk$get())` and to get the default values you can
call `knitr::opts_chunk$get()`.

More information in the function \#'
[`opts_chunk`](https://rdrr.io/pkg/knitr/man/opts_chunk.html) or
directly <https://yihui.org/knitr/options/#chunk-options> to see all
available options and their descriptions.

## Examples

``` r
generate_chunk_header()
#> [1] "```{r}"
generate_chunk_header(eval = TRUE, echo = TRUE)
#> [1] "```{r, eval = TRUE, echo = TRUE}"
generate_chunk_header(results = "asis")
#> [1] "```{r, results = \"asis\"}"
generate_chunk_header(fig.width = "4px", fig.height = "3px")
#> [1] "```{r, fig.width = \"4px\", fig.height = \"3px\"}"
```
