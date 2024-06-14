
testthat::test_that("Everything works with default parameters", {
    testthat::expect_identical(
        object = generate_rmd_file(output = "word",
                                   content = "plot(AirPassengers)"),
        expected = "---\ntitle: \"Format code\"\noutput:\n  word_document:\n    highlight: arrow\nmonofont: \"Fira Code\"\ncode-block-bg: true\ncode-block-border-left: \"#31BAE9\"\n---\n\n## Running Code\n\n```{r}\nplot(AirPassengers)\n```\n"
    )
    testthat::expect_identical(
        object = generate_rmd_file(output = "html",
                                   content = "plot(AirPassengers)"),
        expected = "---\ntitle: \"Format code\"\noutput:\n  html_document:\n    highlight: arrow\nmonofont: \"Fira Code\"\ncode-block-bg: true\ncode-block-border-left: \"#31BAE9\"\n---\n\n## Running Code\n\n```{r}\nplot(AirPassengers)\n```\n"
    )
    testthat::expect_identical(
        object = generate_rmd_file(output = "pdf",
                                   content = "plot(AirPassengers)",
                                   fira_path = "User"),
        expected = "---\ntitle: \"Format code\"\noutput:\n  pdf_document:\n    highlight: arrow\n    latex_engine: xelatex\ncode-block-bg: true\ncode-block-border-left: \"#31BAE9\"\n---\n\n\\fontsize{12}{12}\n\\setmonofont[ExternalLocation=User/]{FiraCode-Regular.ttf}\n\n## Running Code\n\n```{r}\nplot(AirPassengers)\n```\n"
    )
})

testthat::test_that("Everything works with custom parameters", {
    testthat::expect_identical(
        object = generate_rmd_file(output = "word",
                                   content = "Bonjour tout le monde",
                                   code = FALSE),
        expected = "---\ntitle: \"Format code\"\noutput:\n  word_document:\n    highlight: arrow\nmonofont: \"Fira Code\"\ncode-block-bg: true\ncode-block-border-left: \"#31BAE9\"\n---\n\n## Running Code\n\n\nBonjour tout le monde\n\n"
    )
    testthat::expect_identical(
        object = generate_rmd_file(output = "html",
                                   content = "Bonjour tout le monde",
                                   code = FALSE),
        expected = "---\ntitle: \"Format code\"\noutput:\n  html_document:\n    highlight: arrow\nmonofont: \"Fira Code\"\ncode-block-bg: true\ncode-block-border-left: \"#31BAE9\"\n---\n\n## Running Code\n\n\nBonjour tout le monde\n\n"
    )
    testthat::expect_identical(
        object = generate_rmd_file(output = "pdf",
                                   content = "Bonjour tout le monde",
                                   code = FALSE, fira_path = "User"),
        expected = "---\ntitle: \"Format code\"\noutput:\n  pdf_document:\n    highlight: arrow\n    latex_engine: xelatex\ncode-block-bg: true\ncode-block-border-left: \"#31BAE9\"\n---\n\n\\fontsize{12}{12}\n\\setmonofont[ExternalLocation=User/]{FiraCode-Regular.ttf}\n\n## Running Code\n\n\nBonjour tout le monde\n\n"
    )
    testthat::expect_identical(
        object = generate_rmd_file(output = "word",
                                   content = "plot(AirPassengers)",
                                   eval = TRUE),
        expected = "---\ntitle: \"Format code\"\noutput:\n  word_document:\n    highlight: arrow\nmonofont: \"Fira Code\"\ncode-block-bg: true\ncode-block-border-left: \"#31BAE9\"\n---\n\n## Running Code\n\n```{r, eval = TRUE}\nplot(AirPassengers)\n```\n"
    )
    testthat::expect_identical(
        object = generate_rmd_file(output = "html",
                                   content = "plot(AirPassengers)",
                                   eval = TRUE),
        expected = "---\ntitle: \"Format code\"\noutput:\n  html_document:\n    highlight: arrow\nmonofont: \"Fira Code\"\ncode-block-bg: true\ncode-block-border-left: \"#31BAE9\"\n---\n\n## Running Code\n\n```{r, eval = TRUE}\nplot(AirPassengers)\n```\n"
    )
    testthat::expect_identical(
        object = generate_rmd_file(output = "pdf",
                                   content = "plot(AirPassengers)",
                                   eval = TRUE, fira_path = "User"),
        expected = "---\ntitle: \"Format code\"\noutput:\n  pdf_document:\n    highlight: arrow\n    latex_engine: xelatex\ncode-block-bg: true\ncode-block-border-left: \"#31BAE9\"\n---\n\n\\fontsize{12}{12}\n\\setmonofont[ExternalLocation=User/]{FiraCode-Regular.ttf}\n\n## Running Code\n\n```{r, eval = TRUE}\nplot(AirPassengers)\n```\n"
    )
})
