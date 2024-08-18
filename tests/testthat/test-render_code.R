
Sys.setenv(CLIPR_ALLOW = TRUE)

testthat::test_that("Rmd file is correct", {

    if (clipr::clipr_available()) {

        clipr::write_clip("plot(AirPassengers)", allow_non_interactive = TRUE)
        path_Rmd <- file.path(render_code(eval = FALSE), "template.Rmd")
        rmd_content <- generate_rmd_file(content = "plot(AirPassengers)",
                                         eval = FALSE)
        written_content <- paste0(readLines(path_Rmd), collapse = "\n")

        testthat::expect_identical(object = rmd_content,
                                   expected = written_content)


        clipr::write_clip("plot(AirPassengers)", allow_non_interactive = TRUE)
        path_Rmd <- file.path(render_code(eval = TRUE), "template.Rmd")
        rmd_content <- generate_rmd_file(content = "plot(AirPassengers)",
                                         eval = TRUE)
        written_content <- paste0(readLines(path_Rmd), collapse = "\n")

        testthat::expect_identical(object = rmd_content,
                                   expected = written_content)


        clipr::write_clip("Bonjour les amis", allow_non_interactive = TRUE)
        path_Rmd <- file.path(render_code(code = FALSE), "template.Rmd")
        rmd_content <- generate_rmd_file(content = "Bonjour les amis",
                                         code = FALSE)
        written_content <- paste0(readLines(path_Rmd), collapse = "\n")

        testthat::expect_identical(object = rmd_content,
                                   expected = written_content)

    }

})

testthat::test_that("Rmd file is correct", {

    if (clipr::clipr_available()) {

        clipr::write_clip("plot(AirPassengers)", allow_non_interactive = TRUE)
        path_Rmd <- file.path(render_code(eval = FALSE), "template.Rmd")
        rmd_content <- generate_rmd_file(content = "plot(AirPassengers)",
                                         eval = FALSE)
        written_content <- paste0(readLines(path_Rmd), collapse = "\n")

        testthat::expect_identical(object = rmd_content,
                                   expected = written_content)


        clipr::write_clip("plot(AirPassengers)", allow_non_interactive = TRUE)
        path_Rmd <- file.path(render_code(eval = TRUE), "template.Rmd")
        rmd_content <- generate_rmd_file(content = "plot(AirPassengers)",
                                         eval = TRUE)
        written_content <- paste0(readLines(path_Rmd), collapse = "\n")

        testthat::expect_identical(object = rmd_content,
                                   expected = written_content)


        clipr::write_clip("Bonjour les amis", allow_non_interactive = TRUE)
        path_Rmd <- file.path(render_code(code = FALSE), "template.Rmd")
        rmd_content <- generate_rmd_file(content = "Bonjour les amis",
                                         code = FALSE)
        written_content <- paste0(readLines(path_Rmd), collapse = "\n")

        testthat::expect_identical(object = rmd_content,
                                   expected = written_content)

    }

})

testthat::test_that("Output file is correct", {

    if (clipr::clipr_available()) {

        clipr::write_clip("print(AirPassengers)\nplot(AirPassengers)",
                          allow_non_interactive = TRUE)

        path_html <- file.path(render_code(output_format = "html_document"), "output.html")
        template_html_path <- system.file("tests/output.html",
                                          package = "TBox")
        output_html <- paste0(readLines(path_html), collapse = "\n")
        template_output_html <- paste0(readLines(template_html_path),
                                       collapse = "\n")
        testthat::expect_identical(object = output_html,
                                   expected = template_output_html)

        path_pdf <- file.path(render_code(output_format = "pdf_document"), "output.pdf")
        template_pdf_path <- system.file("tests/output.pdf", package = "TBox")
        output_pdf <- paste0(readLines(path_pdf), collapse = "\n")
        template_output_pdf <- paste0(readLines(template_pdf_path),
                                      collapse = "\n")

        testthat::expect_identical(object = output_pdf,
                                   expected = template_output_pdf)

    }

})
