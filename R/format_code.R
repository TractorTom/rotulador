
#' @title Format code
#' @description
#' Formatter un bout de code pour le recopier dans un mail, un pdf, un document...
#'
#' @export
#' @examples
#' render_code(
#'     output = "pdf",
#'     browser = "C:\\Program Files\\Adobe\\Adobe Illustrator CC 2015\\Support Files\\Contents\\Windows\\Illustrator.exe",
#'     eval = FALSE,
#'     font_size = 16
#' )
#'
#'
render_code <- function(
        output = "word",
        browser = getOption("browser"),
        eval = FALSE,
        font_size = 12) {

    template_first <- paste0(
        '---
title: \"Format code in mail / word\"
output:
  ', output ,
        '_document:
    highlight: arrow',
        if (output == "pdf") '

    latex_engine: xelatex
    include:
      in_header: preamble.tex', '
monofont: "Fira Code"
code-block-bg: true
code-block-border-left: \"#31BAE9\"
---

\\fontsize{', font_size, '}{', font_size, '}

## Running Code

```{r, echo = TRUE, eval = ', eval, '}
')
    template_last <- '
```
'
    ext <- switch(
        output,
        word = ".docx",
        html = ".html",
        pdf = ".pdf"
    )

    content <- utils::readClipboard(format = 1) |>
        paste(collapse = "\n") |>
        paste(template_first, ... = _, template_last, sep = "\n")

    path_preamble <- file.path(system.file("extdata", package = "TBox"),
                               "./preamble.tex")
    file.copy(path_preamble, tempdir())
    rmd_file <- tempfile(pattern = "template", fileext = ".Rmd")
    out_file <- tempfile(pattern = "output", fileext = ext)

    write(content, file = rmd_file)
    b <- rmarkdown::render(input = rmd_file, output_file = out_file)
    utils::browseURL(
        url = out_file |> normalizePath(mustWork = TRUE),
        browser = browser
    )

    return(invisible(NULL))
}
