testthat::test_that("path is correct", {
    testthat::expect_no_error(normalizePath(get_word_template_path(),
                                            mustWork = TRUE))
    testthat::expect_identical(
        object = tools::file_ext(get_word_template_path()),
        expected = "docx"
    )
})
