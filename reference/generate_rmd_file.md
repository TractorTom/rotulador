# Generate Rmd file

This function creates the Rmd file which will be rendered in a specific
format.

## Usage

``` r
generate_rmd_file(
  content,
  output_format = c("word", "pdf", "html", "word_document", "pdf_document",
    "html_document"),
  code = TRUE,
  ...
)
```

## Arguments

- content:

  a string. The body of the Rmd file (for example code or text)

- output_format:

  a string representing the output format. The values `"pdf"`, `"html"`
  or `"word"` and their knitr equivalent `"pdf_document"`,
  `"html_document"` or `"word_document"` are accepted.

- code:

  a boolean. Should the `content` string have to be inserted in R chunk
  or is it just text? Default is TRUE (so the `content` will be inserted
  in R chunk).

- ...:

  other arguments passed to R chunk (for example `eval = TRUE`,
  `echo = FALSE`...)

## Value

a vector of characters representing an Rmd file (each element being a
line)

## Details

More information about the argument ... in the documentation of the
function
[`render_code`](https://tractortom.github.io/rotulador/reference/render_code.md).

## Examples

``` r
generate_rmd_file(content = "Bonjour tout le monde",
                  code = FALSE,
                  output_format = "word")
#>  [1] "---"                                 "title: \"Format code\""             
#>  [3] "output: word_document"               "code-block-bg: true"                
#>  [5] "code-block-border-left: \"#31BAE9\"" "---"                                
#>  [7] ""                                    ""                                   
#>  [9] "## Running Code"                     ""                                   
#> [11] ""                                    "Bonjour tout le monde"              
#> [13] ""                                   
generate_rmd_file(content = "print(AirPassengers)",
                  code = TRUE,
                  output_format = "pdf",
                  eval = TRUE,
                  echo = FALSE)
#>  [1] "---"                                 "title: \"Format code\""             
#>  [3] "output: pdf_document"                "code-block-bg: true"                
#>  [5] "code-block-border-left: \"#31BAE9\"" "---"                                
#>  [7] ""                                    ""                                   
#>  [9] "## Running Code"                     ""                                   
#> [11] "```{r, eval = TRUE, echo = FALSE}"   "print(AirPassengers)"               
#> [13] "```"                                
generate_rmd_file(content = "plot(AirPassengers)",
                  code = TRUE,
                  output_format = "html_document",
                  eval = FALSE,
                  echo = TRUE)
#>  [1] "---"                                 "title: \"Format code\""             
#>  [3] "output: html_document"               "code-block-bg: true"                
#>  [5] "code-block-border-left: \"#31BAE9\"" "---"                                
#>  [7] ""                                    ""                                   
#>  [9] "## Running Code"                     ""                                   
#> [11] "```{r, eval = FALSE, echo = TRUE}"   "plot(AirPassengers)"                
#> [13] "```"                                
```
