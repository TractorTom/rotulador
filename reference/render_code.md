# Generate a file with formatted code

Format a piece of code to copy it into an email, a pdf, a document, etc.

## Usage

``` r
render_code(
  output_format = c("word", "pdf", "html", "word_document", "pdf_document",
    "html_document"),
  browser = getOption("browser"),
  font_size = 12,
  code = TRUE,
  open = TRUE,
  monofont_path = get_fira_path(),
  word_template_path = get_word_template_path(),
  ...
)
```

## Arguments

- output_format:

  a string representing the output format. The values "pdf", "html" or
  "word" and their knitr equivalent "pdf_document", "html_document" or
  "word_document" are accepted.

- browser:

  a string. The path to the browser which will open the generated file
  format

- font_size:

  a numeric. The font size, only available in pdf format.

- code:

  a boolean. Should the copied content have to be inserted in R chunk or
  is it just text? Default is TRUE (so the copied content will be
  inserted in R chunk).

- open:

  a boolean. Default is TRUE meaning that the document will open
  automatically after being generated.

- monofont_path:

  a string. The path to the font used to render code chunks. It should
  link to a `.ttf` file. Only available in pdf format.

- word_template_path:

  a string. The path to the word template file used when rendering with
  word. By default, the template used is the one included in the
  package. Only used with word output.

- ...:

  other arguments passed to R chunk (for example eval = TRUE, echo =
  FALSE...)

## Value

This function returns invisibly (with
[`invisible()`](https://rdrr.io/r/base/invisible.html)) a vector of
length two with two element:

- the path of the created rmarkdown (template) document (`.Rmd`);

- the path of the created output (in the format `.pdf`, `.docx` or
  `.html`).

## Details

This function allows the user to generate formatted code (for email,
document, copy, message, etc.) on the fly.

It accepts mainly word, pdf and html formats, but any format accepted by
rmarkdown on the computer.

To use this function, simply copy a piece of code and run
`render_code()` with the arguments that interest us. If you want content
that is not R code, use the `code` argument to `FALSE`. In pdf format,
you can change the font size using the `font_size` argument. Also, you
can change the browser that opens the file by default with the `browser`
argument.

With the argument ..., you can specify knitr arguments to be included in
the chunk. For example, you can add `eval = TRUE` (if you want the R
code to be evaluated (and the result displayed)), `echo = FALSE` (if you
don't want to display the code)...

More information in the function
[`opts_chunk`](https://rdrr.io/pkg/knitr/man/opts_chunk.html) or
directly <https://yihui.org/knitr/options/#chunk-options> to see all
available options and their descriptions.

If the `open` argument is set to `FALSE` then the `browser` argument
will be ignored.

## Examples

``` r
# Copy a snippet of code
if (clipr::clipr_available()) {
    clipr::write_clip("plot(AirPassengers)", allow_non_interactive = TRUE)
}

render_code(
    output_format = "word",
    echo = TRUE
)
#> CLIPR_ALLOW has not been set, so clipr will not run interactively

render_code(
    output_format = "html",
    eval = FALSE
)
#> CLIPR_ALLOW has not been set, so clipr will not run interactively

# \donttest{
render_code(
    output = "pdf",
    eval = TRUE,
    font_size = 16
)
#> CLIPR_ALLOW has not been set, so clipr will not run interactively
# }
```
