# =============================================================================
# Make sure to wrap column names in quotes because that's how it's being handed
# down from codebook via cb_add_summary_stats
# =============================================================================

df <- cb_summary_stats_few_cats(study, "sex", digits = 2)

testthat::test_that("Dimensions of the object returned by cb_summary_stats_few_cats are as expected", {
  testthat::expect_equal(nrow(df), 3L)
  testthat::expect_equal(ncol(df), 4L)
})

testthat::test_that("The expected column names are returned by cb_summary_stats_few_cats", {
  testthat::expect_equal(names(df), c("cat", "n", "cum_freq", "percent" ))
})

testthat::test_that("The expected category levels are returned by cb_summary_stats_few_cats", {
  levels <- df$cat
  testthat::expect_equal(levels, c("Female", "Male", "Missing"))
})

testthat::test_that("The expected default statistics are returned by cb_summary_stats_few_cats", {
  testthat::expect_equal(df$n,    c("11", " 8", " 1"))
  testthat::expect_equal(df$cum_freq, c("11", "19", "20"))
  testthat::expect_equal(df$percent, c("55.00", "40.00", " 5.00"))
})

# =============================================================================
# Clean up
# =============================================================================
rm(df)
