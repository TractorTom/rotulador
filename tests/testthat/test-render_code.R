
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

            print(getOption("width"))

            clipr::write_clip(content = "print(AirPassengers)
plot(AirPassengers)
print(mtcars)",
                              allow_non_interactive = TRUE)

            # Check HTML file
            path_html <- file.path(render_code(output_format = "html_document"),
                                   "output.html")
            path_template_html <- system.file("tests", "output.html",
                                              package = "TBox")
            txt_output_html <- htm2txt::gettxt(path_html)
            txt_template_output_html <- htm2txt::gettxt(path_template_html)

            testthat::expect_identical(object = txt_output_html,
                                       expected = txt_template_output_html)

            # Check PDF file
            path_pdf <- file.path(render_code(output_format = "pdf_document"),
                                  "output.pdf")
            path_template_pdf <- system.file("tests", "output.pdf",
                                             package = "TBox")
            txt_output_pdf <- pdftools::pdf_data(path_pdf)
            txt_template_output_pdf <- pdftools::pdf_data(path_template_pdf)

            testthat::expect_identical(object = txt_output_pdf,
                                       expected = txt_template_output_pdf)
        }

    })

})
