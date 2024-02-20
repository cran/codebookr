# codebookr 0.1.8

* Fix issue where the word "Codebook" that was previously printed at the top of the codebook document printed at the bottom of the codebook document. Additionally, if there was a title or subtitle, that was printed at the bottom of the codebook as well.

# codebookr 0.1.7

* Fix dplyr warning, "Warning: Returning more (or less) than 1 row per `summarise()` group was deprecated in
dplyr 1.1.0. Please use `reframe()` instead." (#45)

* Fix dplyr warning, "The `...` argument of `across()` is deprecated as of dplyr 1.1.0. Supply arguments directly to `.fns` through an anonymous function instead."

# codebookr 0.1.6

* Improve help documentation for `cb_add_col_attributes()` and `codebook()` (#6)

* Fix failed CRAN package check (#40)

# codebookr 0.1.5

* Fix bug where percent column doesn't correctly round when column type is categorical few cats (#29).

* Make the column number column wider #10. So that the column number won't wrap to a new line when there are more than 1,000 columns in the data frame.

* Fix (!mode_char) error #15

# codebookr 0.1.4

* Add option to prevent summary stats table for selected columns. The `no_summary_stats` argument of the `codebook()` function will prevent the summary statistics from being added to column attributes table for any column passed to this argument.

* Update `cb_summary_stats_time()`. Previously, if the mode value for a date/time column was NA, then the Value in the summary stats table looked blank. Now, the mode of non-missing values is returned instead. Additionally, if all values are `NA`, then the summary stats table says that explicitly. 

# codebookr 0.1.3

* Add column numbers to the column attributes tables. See: https://github.com/brad-cannell/codebookr/issues/10

* Make time (i.e., class = hms) columns display in a human readable format as opposed to the underlying numeric value.

* Add support for a 'pkgdown' site.

# codebookr 0.1.2

* Speed up the `codebook()` function when there are many columns. See: https://github.com/brad-cannell/codebookr/issues/17

# codebookr 0.1.1

* Add haven (>= 2.5.0) to DESCRIPTION Imports. This is to prevent errors related to https://github.com/tidyverse/haven/issues/520

# codebookr 0.1.0

* First CRAN submission
