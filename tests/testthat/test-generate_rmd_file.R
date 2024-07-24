
testthat::test_that("Everything works with default parameters", {

    exp1 <- paste0("---\ntitle: \"Format code\"\n",
                   "output:\n",
                   "  word_document:\n",
                   "    highlight: arrow\n",
                   "    reference_docx: \"User/template.docx\"\n",
                   "code-block-bg: true\n",
                   "code-block-border-left: \"#31BAE9\"\n",
                   "---\n\n",
                   "## Running Code\n\n",
                   "```{r}\n",
                   "plot(AirPassengers)\n",
                   "```\n")
    obj1_a <- generate_rmd_file(output = "word", content = "plot(AirPassengers)", word_template_path = "User/template.docx")
    obj1_b <- generate_rmd_file(output = "word_document", content = "plot(AirPassengers)", word_template_path = "User/template.docx")

    testthat::expect_identical(object = obj1_a, expected = exp1)
    testthat::expect_identical(object = obj1_b, expected = exp1)


    exp2 <- paste0("---\ntitle: \"Format code\"\n",
                   "output:\n",
                   "  html_document:\n",
                   "    highlight: arrow\n",
                   "monofont: \"Fira Code\"\n",
                   "code-block-bg: true\n",
                   "code-block-border-left: \"#31BAE9\"\n",
                   "---\n\n",
                   "## Running Code\n\n",
                   "```{r}\n",
                   "plot(AirPassengers)\n",
                   "```\n")
    obj2_a <- generate_rmd_file(output = "html", content = "plot(AirPassengers)")
    obj2_b <- generate_rmd_file(output = "html_document", content = "plot(AirPassengers)")

    testthat::expect_identical(object = obj2_a, expected = exp2)
    testthat::expect_identical(object = obj2_b, expected = exp2)


    exp3 <- paste0("---\n",
                   "title: \"Format code\"\n",
                   "output:\n  ",
                   "pdf_document:\n",
                   "    highlight: arrow\n",
                   "    latex_engine: xelatex\n",
                   "code-block-bg: true\n",
                   "code-block-border-left: \"#31BAE9\"\n",
                   "---\n\n",
                   "\\fontsize{12}{12}\n\\setmonofont[",
                   "ExternalLocation=User/]{FiraCode-Regular.ttf}",
                   "\n\n",
                   "## Running Code\n\n",
                   "```{r}\n",
                   "plot(AirPassengers)\n",
                   "```\n")
    obj3_a <- generate_rmd_file(output = "pdf", content = "plot(AirPassengers)", fira_path = "User")
    obj3_b <- generate_rmd_file(output = "pdf_document", content = "plot(AirPassengers)", fira_path = "User")

    testthat::expect_identical(object = obj3_a, expected = exp3)
    testthat::expect_identical(object = obj3_b, expected = exp3)
})

testthat::test_that("Everything works with custom parameters", {

    exp1 <- paste0("---\n",
                   "title: \"Format code\"\n",
                   "output:\n",
                   "  word_document:\n",
                   "    highlight: arrow\n",
                   "    reference_docx: \"User/template.docx\"\n",
                   "code-block-bg: true\n",
                   "code-block-border-left: \"#31BAE9\"\n",
                   "---\n\n",
                   "## Running Code\n\n\n",
                   "Bonjour tout le monde\n\n")
    obj1_a <- generate_rmd_file(output = "word",
                                content = "Bonjour tout le monde",
                                code = FALSE, word_template_path = "User/template.docx")
    obj1_b <- generate_rmd_file(output = "word_document",
                                content = "Bonjour tout le monde",
                                code = FALSE, word_template_path = "User/template.docx")

    testthat::expect_identical(object = obj1_a, expected = exp1)
    testthat::expect_identical(object = obj1_b, expected = exp1)


    exp2 <- paste0("---\n",
                   "title: \"Format code\"\n",
                   "output:\n",
                   "  html_document:\n",
                   "    highlight: arrow\n",
                   "monofont: \"Fira Code\"\n",
                   "code-block-bg: true\n",
                   "code-block-border-left: \"#31BAE9\"\n",
                   "---\n\n",
                   "## Running Code\n\n\n",
                   "Bonjour tout le monde\n\n")
    obj2_a <- generate_rmd_file(output = "html",
                                content = "Bonjour tout le monde",
                                code = FALSE)
    obj2_b <- generate_rmd_file(output = "html_document",
                                content = "Bonjour tout le monde",
                                code = FALSE)

    testthat::expect_identical(object = obj2_a, expected = exp2)
    testthat::expect_identical(object = obj2_b, expected = exp2)


    exp3 <- paste0("---\n",
                   "title: \"Format code\"\n",
                   "output:\n",
                   "  pdf_document:\n",
                   "    highlight: arrow\n",
                   "    latex_engine: xelatex\n",
                   "code-block-bg: true\n",
                   "code-block-border-left: \"#31BAE9\"\n",
                   "---\n\n",
                   "\\fontsize{12}{12}\n\\setmonofont[",
                   "ExternalLocation=User/]{FiraCode-Regular.ttf}\n\n",
                   "## Running Code\n\n\n",
                   "Bonjour tout le monde\n\n")
    obj3_a <- generate_rmd_file(output = "pdf",
                                content = "Bonjour tout le monde",
                                code = FALSE, fira_path = "User")
    obj3_b <- generate_rmd_file(output = "pdf_document",
                                content = "Bonjour tout le monde",
                                code = FALSE, fira_path = "User")

    testthat::expect_identical(object = obj3_a, expected = exp3)
    testthat::expect_identical(object = obj3_b, expected = exp3)


    exp4 <- paste0("---\n",
                   "title: \"Format code\"\n",
                   "output:\n",
                   "  word_document:\n",
                   "    highlight: arrow\n",
                   "    reference_docx: \"User/template.docx\"\n",
                   "code-block-bg: true\n",
                   "code-block-border-left: \"#31BAE9\"\n",
                   "---\n\n",
                   "## Running Code\n\n",
                   "```{r, eval = TRUE}\n",
                   "plot(AirPassengers)\n",
                   "```\n")
    obj4_a <- generate_rmd_file(output = "word",
                                content = "plot(AirPassengers)",
                                eval = TRUE, word_template_path = "User/template.docx")
    obj4_b <- generate_rmd_file(output = "word_document",
                                content = "plot(AirPassengers)",
                                eval = TRUE, word_template_path = "User/template.docx")

    testthat::expect_identical(object = obj4_a, expected = exp4)
    testthat::expect_identical(object = obj4_b, expected = exp4)


    exp5 <- paste0("---\n",
                   "title: \"Format code\"\n",
                   "output:\n",
                   "  html_document:\n",
                   "    highlight: arrow\n",
                   "monofont: \"Fira Code\"\n",
                   "code-block-bg: true\n",
                   "code-block-border-left: \"#31BAE9\"\n",
                   "---\n\n",
                   "## Running Code\n\n",
                   "```{r, eval = TRUE}\n",
                   "plot(AirPassengers)\n",
                   "```\n")
    obj5_a <- generate_rmd_file(output = "html",
                                content = "plot(AirPassengers)",
                                eval = TRUE)
    obj5_b <- generate_rmd_file(output = "html_document",
                                content = "plot(AirPassengers)",
                                eval = TRUE)

    testthat::expect_identical(object = obj5_a, expected = exp5)
    testthat::expect_identical(object = obj5_b, expected = exp5)


    exp6 <- paste0("---\n",
                   "title: \"Format code\"\n",
                   "output:\n",
                   "  pdf_document:\n",
                   "    highlight: arrow\n",
                   "    latex_engine: xelatex\n",
                   "code-block-bg: true\n",
                   "code-block-border-left: \"#31BAE9\"\n",
                   "---\n\n",
                   "\\fontsize{12}{12}\n",
                   "\\setmonofont[",
                   "ExternalLocation=User/]{FiraCode-Regular.ttf}\n\n",
                   "## Running Code\n\n",
                   "```{r, eval = TRUE}\n",
                   "plot(AirPassengers)\n",
                   "```\n")
    obj6_a <- generate_rmd_file(output = "pdf",
                                content = "plot(AirPassengers)",
                                eval = TRUE, fira_path = "User")
    obj6_b <- generate_rmd_file(output = "pdf_document",
                                content = "plot(AirPassengers)",
                                eval = TRUE, fira_path = "User")

    testthat::expect_identical(object = obj6_a, expected = exp6)
    testthat::expect_identical(object = obj6_b, expected = exp6)
})
