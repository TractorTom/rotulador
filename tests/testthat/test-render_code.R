
withr::with_envvar(new = c(CLIPR_ALLOW = TRUE), {
    testthat::test_that("Rmd file is correct", {

        if (clipr::clipr_available()) {

            clipr::write_clip("plot(AirPassengers)",
                              allow_non_interactive = TRUE)
            path_rmd <- file.path(render_code(eval = FALSE), "template.Rmd")
            rmd_content <- generate_rmd_file(content = "plot(AirPassengers)",
                                             eval = FALSE)
            written_content <- paste0(readLines(path_rmd), collapse = "\n")

            testthat::expect_identical(object = rmd_content,
                                       expected = written_content)


            clipr::write_clip("plot(AirPassengers)",
                              allow_non_interactive = TRUE)
            path_rmd <- file.path(render_code(eval = TRUE), "template.Rmd")
            rmd_content <- generate_rmd_file(content = "plot(AirPassengers)",
                                             eval = TRUE)
            written_content <- paste0(readLines(path_rmd), collapse = "\n")

            testthat::expect_identical(object = rmd_content,
                                       expected = written_content)


            clipr::write_clip("Bonjour les amis",
                              allow_non_interactive = TRUE)
            path_rmd <- file.path(render_code(code = FALSE), "template.Rmd")
            rmd_content <- generate_rmd_file(content = "Bonjour les amis",
                                             code = FALSE)
            written_content <- paste0(readLines(path_rmd), collapse = "\n")

            testthat::expect_identical(object = rmd_content,
                                       expected = written_content)

        }

    })

    testthat::test_that("Rmd file is correct", {

        if (clipr::clipr_available()) {

            clipr::write_clip("plot(AirPassengers)",
                              allow_non_interactive = TRUE)
            path_rmd <- file.path(render_code(eval = FALSE), "template.Rmd")
            rmd_content <- generate_rmd_file(content = "plot(AirPassengers)",
                                             eval = FALSE)
            written_content <- paste0(readLines(path_rmd), collapse = "\n")

            testthat::expect_identical(object = rmd_content,
                                       expected = written_content)


            clipr::write_clip("plot(AirPassengers)",
                              allow_non_interactive = TRUE)
            path_rmd <- file.path(render_code(eval = TRUE), "template.Rmd")
            rmd_content <- generate_rmd_file(content = "plot(AirPassengers)",
                                             eval = TRUE)
            written_content <- paste0(readLines(path_rmd), collapse = "\n")

            testthat::expect_identical(object = rmd_content,
                                       expected = written_content)


            clipr::write_clip("Bonjour les amis", allow_non_interactive = TRUE)
            path_rmd <- file.path(render_code(code = FALSE), "template.Rmd")
            rmd_content <- generate_rmd_file(content = "Bonjour les amis",
                                             code = FALSE)
            written_content <- paste0(readLines(path_rmd), collapse = "\n")

            testthat::expect_identical(object = rmd_content,
                                       expected = written_content)

        }

    })

    testthat::test_that("Output file is correct", {

        if (clipr::clipr_available()) {

            # Check HTML file
            clipr::write_clip("print(AirPassengers)\nplot(AirPassengers)",
                              allow_non_interactive = TRUE)

            path_html <- file.path(render_code(output_format = "html_document"),
                                   "output.html")
            path_template_html <- system.file("tests", "output.html",
                                              package = "TBox")
            output_html <- paste0(readLines(path_html), collapse = "\n")
            template_output_html <- paste0(readLines(path_template_html),
                                           collapse = "\n")
            testthat::expect_identical(object = output_html,
                                       expected = template_output_html)

            # Check PDF file
            path_pdf <- file.path(render_code(output_format = "pdf_document"),
                                  "output.pdf")
            path_template_pdf <- system.file("tests", "output.pdf",
                                             package = "TBox")
            output_pdf <- paste0(readLines(path_pdf), collapse = "\n")
            template_output_pdf <- paste0(readLines(path_template_pdf),
                                          collapse = "\n")

            testthat::expect_identical(object = output_pdf,
                                       expected = template_output_pdf)

        }

    })

})
