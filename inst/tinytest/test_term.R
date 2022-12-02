
# Testing a data package 
# validation rules?
# missing values?
# min-max ranges?

# Un-comment when manually checking 
library(tinytest)

test_term <- function() {
  
  # Setup -------------------------------------------------------------------
  data(term, package = "midfielddata")
  suppressPackageStartupMessages(library(data.table))
  options(datatable.print.class = TRUE)
  
  # Variable class -----------------------------------------------------------
  ans <- sort(c("mcid", "institution", "term", "cip6", "level", "standing", 
                "coop"))
  expect_equal(sort(names(term[ , .SD, .SDcols = is.character])), ans)
  
  ans <- sort(c("hours_term", "hours_term_attempt", "hours_cumul", 
                "hours_cumul_attempt", "gpa_term", "gpa_cumul"))
  expect_equal(sort(names(term[ , .SD, .SDcols = is.numeric])), ans)
  
  # Possible values ---------------------------------------------------------
  
  # term
  min_x <- min(term$term, na.rm = TRUE)
  expect_true(min_x >= "19871")
  expect_equal(unique(nchar(term$term)), 5)
  
  # cip6
  min_x <- min(term$cip6, na.rm = TRUE)
  max_x <- max(term$cip6, na.rm = TRUE)
  expect_true(min_x >= "000000"  & max_x <= "999999")
  expect_equal(unique(nchar(term$cip6)), 6)
  
  # GPA
  min_x <- min(term$gpa_term, na.rm = TRUE)
  max_x <- max(term$gpa_term, na.rm = TRUE)
  expect_true(min_x >= 0  & max_x <= 4.0)
  
  min_x <- min(term$gpa_cumul, na.rm = TRUE)
  max_x <- max(term$gpa_cumul, na.rm = TRUE)
  expect_true(min_x >= 0  & max_x <= 4.0)
  
  # hours
  min_x <- min(term$hours_term, na.rm = TRUE)
  expect_true(min_x >= 0)
  
  min_x <- min(term$hours_term_attempt, na.rm = TRUE)
  expect_true(min_x >= 0)
  
  min_x <- min(term$hours_cumul, na.rm = TRUE)
  expect_true(min_x >= 0)
  
  min_x <- min(term$hours_cumul_attempt, na.rm = TRUE)
  expect_true(min_x >= 0)
  
}

test_term()
