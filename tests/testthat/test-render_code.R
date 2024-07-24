
Sys.setenv(CLIPR_ALLOW = TRUE)

testthat::test_that("Everything works with default parameters", {

    if (clipr::clipr_available()) {

        clipr::write_clip("plot(AirPassengers)", allow_non_interactive = TRUE)
        paths <- render_code(eval = FALSE)
        rmd_content <- generate_rmd_file(content = "plot(AirPassengers)",
                                         eval = FALSE)
        written_content <- paste0(readLines(paths[1]), collapse = "\n")

        testthat::expect_identical(object = rmd_content,
                                   expected = written_content)


        clipr::write_clip("plot(AirPassengers)", allow_non_interactive = TRUE)
        paths <- render_code(eval = TRUE)
        rmd_content <- generate_rmd_file(content = "plot(AirPassengers)",
                                         eval = TRUE)
        written_content <- paste0(readLines(paths[1]), collapse = "\n")

        testthat::expect_identical(object = rmd_content,
                                   expected = written_content)


        clipr::write_clip("Bonjour les amis", allow_non_interactive = TRUE)
        paths <- render_code(code = FALSE)
        rmd_content <- generate_rmd_file(content = "Bonjour les amis",
                                         code = FALSE)
        written_content <- paste0(readLines(paths[1]), collapse = "\n")

        testthat::expect_identical(object = rmd_content,
                                   expected = written_content)

    }

})
