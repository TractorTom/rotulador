testthat::test_that("path is path", {
    testthat::expect_no_error(normalizePath(get_fira_path(), mustWork = TRUE))
})
